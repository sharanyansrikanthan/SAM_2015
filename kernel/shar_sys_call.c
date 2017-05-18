#include <linux/kernel.h>
#include "shar_sys_call.h"
extern int shar_enable;
asmlinkage long sys_shar_call_test(int arg0)
{
	printk(" Hello World !");
	printk("--syscall arg %d", arg0);
  
	set_shar_enable();
	printk("Printing shar_enable %d\n",shar_enable);
	return((long) shar_enable);
}
