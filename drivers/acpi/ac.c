/*
 *  acpi_ac.c - ACPI AC Adapter Driver ($Revision: 27 $)
 *
 *  Copyright (C) 2001, 2002 Andy Grover <andrew.grover@intel.com>
 *  Copyright (C) 2001, 2002 Paul Diefenbaugh <paul.s.diefenbaugh@intel.com>
 *
 * ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or (at
 *  your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful, but
 *  WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License along
 *  with this program; if not, write to the Free Software Foundation, Inc.,
 *  59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.
 *
 * ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 */

#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/slab.h>
#include <linux/init.h>
#include <linux/types.h>
#include <linux/dmi.h>
#include <linux/delay.h>
#include <linux/platform_device.h>
#include <linux/power_supply.h>
#include <linux/acpi.h>

#define PREFIX "ACPI: "

#define ACPI_AC_CLASS			"ac_adapter"
#define ACPI_AC_DEVICE_NAME		"AC Adapter"
#define ACPI_AC_FILE_STATE		"state"
#define ACPI_AC_NOTIFY_STATUS		0x80
#define ACPI_AC_STATUS_OFFLINE		0x00
#define ACPI_AC_STATUS_ONLINE		0x01
#define ACPI_AC_STATUS_UNKNOWN		0xFF

#define _COMPONENT		ACPI_AC_COMPONENT
ACPI_MODULE_NAME("ac");

MODULE_AUTHOR("Paul Diefenbaugh");
MODULE_DESCRIPTION("ACPI AC Adapter Driver");
MODULE_LICENSE("GPL");

static int acpi_ac_add(struct acpi_device *device);
static int acpi_ac_remove(struct acpi_device *device);
static void acpi_ac_notify(struct acpi_device *device, u32 event);

static const struct acpi_device_id ac_device_ids[] = {
	{"ACPI0003", 0},
	{"", 0},
};
MODULE_DEVICE_TABLE(acpi, ac_device_ids);

#ifdef CONFIG_PM_SLEEP
static int acpi_ac_resume(struct device *dev);
#endif
static SIMPLE_DEV_PM_OPS(acpi_ac_pm, NULL, acpi_ac_resume);

static int ac_sleep_before_get_state_ms;

static struct acpi_driver acpi_ac_driver = {
	.name = "ac",
	.class = ACPI_AC_CLASS,
	.ids = ac_device_ids,
	.flags = ACPI_DRIVER_ALL_NOTIFY_EVENTS,
	.ops = {
		.add = acpi_ac_add,
		.remove = acpi_ac_remove,
		.notify = acpi_ac_notify,
		},
	.drv.pm = &acpi_ac_pm,
};

struct acpi_ac {
	struct power_supply charger;
	struct acpi_device * device;
	unsigned long long state;
};

#define to_acpi_ac(x) container_of(x, struct acpi_ac, charger)

/* --------------------------------------------------------------------------
                               AC Adapter Management
   -------------------------------------------------------------------------- */

static int acpi_ac_get_state(struct acpi_ac *ac)
{
	acpi_status status = AE_OK;

	if (!ac)
		return -EINVAL;

	status = acpi_evaluate_integer(ac->device->handle, "_PSR", NULL,
				       &ac->state);
	if (ACPI_FAILURE(status)) {
		ACPI_EXCEPTION((AE_INFO, status,
				"Error reading AC Adapter state"));
		ac->state = ACPI_AC_STATUS_UNKNOWN;
		return -ENODEV;
	}

	return 0;
}

/* --------------------------------------------------------------------------
                            sysfs I/F
   -------------------------------------------------------------------------- */
static int get_ac_property(struct power_supply *psy,
			   enum power_supply_property psp,
			   union power_supply_propval *val)
{
	struct acpi_ac *ac = to_acpi_ac(psy);

	if (!ac)
		return -ENODEV;

	if (acpi_ac_get_state(ac))
		return -ENODEV;

	switch (psp) {
	case POWER_SUPPLY_PROP_ONLINE:
		val->intval = ac->state;
		break;
	default:
		return -EINVAL;
	}
	return 0;
}

static enum power_supply_property ac_props[] = {
	POWER_SUPPLY_PROP_ONLINE,
};

/* --------------------------------------------------------------------------
                                   Driver Model
   -------------------------------------------------------------------------- */

static void acpi_ac_notify(struct acpi_device *device, u32 event)
{
	struct acpi_ac *ac = acpi_driver_data(device);

	if (!ac)
		return;

	switch (event) {
	default:
		ACPI_DEBUG_PRINT((ACPI_DB_INFO,
				  "Unsupported event [0x%x]\n", event));
	case ACPI_AC_NOTIFY_STATUS:
	case ACPI_NOTIFY_BUS_CHECK:
	case ACPI_NOTIFY_DEVICE_CHECK:
		/*
		 * A buggy BIOS may notify AC first and then sleep for
		 * a specific time before doing actual operations in the
		 * EC event handler (_Qxx). This will cause the AC state
		 * reported by the ACPI event to be incorrect, so wait for a
		 * specific time for the EC event handler to make progress.
		 */
		if (ac_sleep_before_get_state_ms > 0)
			msleep(ac_sleep_before_get_state_ms);

		acpi_ac_get_state(ac);
		acpi_bus_generate_netlink_event(device->pnp.device_class,
						  dev_name(&device->dev), event,
						  (u32) ac->state);
		acpi_notifier_call_chain(device, event, (u32) ac->state);
		kobject_uevent(&ac->charger.dev->kobj, KOBJ_CHANGE);
	}

	return;
}

static int thinkpad_e530_quirk(const struct dmi_system_id *d)
{
	ac_sleep_before_get_state_ms = 1000;
	return 0;
}

static struct dmi_system_id ac_dmi_table[] = {
	{
	.callback = thinkpad_e530_quirk,
	.ident = "thinkpad e530",
	.matches = {
		DMI_MATCH(DMI_SYS_VENDOR, "LENOVO"),
		DMI_MATCH(DMI_PRODUCT_NAME, "32597CG"),
		},
	},
	{},
};

static int acpi_ac_add(struct acpi_device *device)
{
	int result = 0;
	struct acpi_ac *ac = NULL;


	if (!device)
		return -EINVAL;

	ac = kzalloc(sizeof(struct acpi_ac), GFP_KERNEL);
	if (!ac)
		return -ENOMEM;

	ac->device = device;
	strcpy(acpi_device_name(device), ACPI_AC_DEVICE_NAME);
	strcpy(acpi_device_class(device), ACPI_AC_CLASS);
	device->driver_data = ac;

	result = acpi_ac_get_state(ac);
	if (result)
		goto end;

	ac->charger.name = acpi_device_bid(device);
	ac->charger.type = POWER_SUPPLY_TYPE_MAINS;
	ac->charger.properties = ac_props;
	ac->charger.num_properties = ARRAY_SIZE(ac_props);
	ac->charger.get_property = get_ac_property;
	result = power_supply_register(&ac->device->dev, &ac->charger);
	if (result)
		goto end;

	printk(KERN_INFO PREFIX "%s [%s] (%s)\n",
	       acpi_device_name(device), acpi_device_bid(device),
	       ac->state ? "on-line" : "off-line");

end:
	if (result)
		kfree(ac);

	dmi_check_system(ac_dmi_table);
	return result;
}

#ifdef CONFIG_PM_SLEEP
static int acpi_ac_resume(struct device *dev)
{
	struct acpi_ac *ac;
	unsigned old_state;

	if (!dev)
		return -EINVAL;

	ac = acpi_driver_data(to_acpi_device(dev));
	if (!ac)
		return -EINVAL;

	old_state = ac->state;
	if (acpi_ac_get_state(ac))
		return 0;
	if (old_state != ac->state)
		kobject_uevent(&ac->charger.dev->kobj, KOBJ_CHANGE);
	return 0;
}
#else
#define acpi_ac_resume NULL
#endif

static int acpi_ac_remove(struct acpi_device *device)
{
	struct acpi_ac *ac = NULL;


	if (!device || !acpi_driver_data(device))
		return -EINVAL;

	ac = acpi_driver_data(device);

	if (ac->charger.dev)
		power_supply_unregister(&ac->charger);

	kfree(ac);

	return 0;
}

static int __init acpi_ac_init(void)
{
	int result;

	if (acpi_disabled)
		return -ENODEV;

	result = acpi_bus_register_driver(&acpi_ac_driver);
	if (result < 0)
		return -ENODEV;

	return 0;
}

static void __exit acpi_ac_exit(void)
{
	acpi_bus_unregister_driver(&acpi_ac_driver);
}
module_init(acpi_ac_init);
module_exit(acpi_ac_exit);
