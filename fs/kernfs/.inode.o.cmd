cmd_fs/kernfs/inode.o := gcc -Wp,-MD,fs/kernfs/.inode.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-redhat-linux/4.8.2/include -I/localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include -Iarch/x86/include/generated  -Iinclude -I/localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi -Iarch/x86/include/generated/uapi -I/localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi -Iinclude/generated/uapi -include /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/linux/kconfig.h -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -m64 -mno-mmx -mno-sse -mpreferred-stack-boundary=3 -mtune=generic -mno-red-zone -mcmodel=kernel -funit-at-a-time -maccumulate-outgoing-args -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1 -DCONFIG_AS_FXSAVEQ=1 -DCONFIG_AS_CRC32=1 -DCONFIG_AS_AVX=1 -DCONFIG_AS_AVX2=1 -pipe -Wno-sign-compare -fno-asynchronous-unwind-tables -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -Wframe-larger-than=2048 -fno-stack-protector -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -DCC_HAVE_ASM_GOTO    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(inode)"  -D"KBUILD_MODNAME=KBUILD_STR(inode)" -c -o fs/kernfs/inode.o fs/kernfs/inode.c

source_fs/kernfs/inode.o := fs/kernfs/inode.c

deps_fs/kernfs/inode.o := \
  include/linux/pagemap.h \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/numa.h) \
  include/linux/mm.h \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/sysctl.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/mem/soft/dirty.h) \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/ppc.h) \
    $(wildcard include/config/parisc.h) \
    $(wildcard include/config/metag.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/ksm.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/debug/vm/rb.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/hugetlbfs.h) \
  include/linux/errno.h \
  include/uapi/linux/errno.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/errno.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi/asm-generic/errno.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi/asm-generic/errno-base.h \
  include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
  include/linux/gfp.h \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/cma.h) \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  include/linux/typecheck.h \
  include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/context/tracking.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  include/linux/linkage.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  include/linux/stringify.h \
  include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/linkage.h \
    $(wildcard include/config/x86/32.h) \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/x86/alignment/16.h) \
  include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  include/uapi/linux/types.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/types.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi/asm-generic/types.h \
  include/asm-generic/int-ll64.h \
  include/uapi/asm-generic/int-ll64.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/uapi/asm-generic/bitsperlong.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi/linux/posix_types.h \
  include/linux/stddef.h \
  include/uapi/linux/stddef.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/posix_types.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/posix_types_64.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi/asm-generic/posix_types.h \
  include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi/linux/const.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/preempt.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/rmwcc.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/percpu.h \
    $(wildcard include/config/x86/64/smp.h) \
    $(wildcard include/config/x86/cmpxchg64.h) \
  include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/panic/timeout.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /usr/lib/gcc/x86_64-redhat-linux/4.8.2/include/stdarg.h \
  include/linux/bitops.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/bitops.h \
    $(wildcard include/config/x86/cmov.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/alternative.h \
    $(wildcard include/config/paravirt.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/asm.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/ptrace.h \
    $(wildcard include/config/x86/debugctlmsr.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/segment.h \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/x86/32/lazy/gs.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
    $(wildcard include/config/x86/internode/cache/shift.h) \
    $(wildcard include/config/x86/vsmp.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/page_types.h \
    $(wildcard include/config/physical/start.h) \
    $(wildcard include/config/physical/align.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/page_64_types.h \
    $(wildcard include/config/randomize/base.h) \
    $(wildcard include/config/randomize/base/max/offset.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/ptrace.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/ptrace-abi.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/processor-flags.h \
    $(wildcard include/config/vm86.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/processor-flags.h \
  include/asm-generic/ptrace.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/cpufeature.h \
    $(wildcard include/config/x86/debug/static/cpu/has.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/required-features.h \
    $(wildcard include/config/x86/minimum/cpu/family.h) \
    $(wildcard include/config/math/emulation.h) \
    $(wildcard include/config/x86/pae.h) \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/x86/p6/nop.h) \
    $(wildcard include/config/matom.h) \
  include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  include/asm-generic/bitops/sched.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/arch_hweight.h \
  include/asm-generic/bitops/const_hweight.h \
  include/asm-generic/bitops/le.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/uapi/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  include/uapi/linux/swab.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/swab.h \
  include/linux/byteorder/generic.h \
  include/asm-generic/bitops/ext2-atomic-setbit.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/printk.h \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
  include/linux/kern_levels.h \
  include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  include/uapi/linux/kernel.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi/linux/sysinfo.h \
  include/linux/dynamic_debug.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  include/uapi/linux/string.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/string.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/string_64.h \
    $(wildcard include/config/kmemcheck.h) \
  include/asm-generic/percpu.h \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/thread_info.h \
    $(wildcard include/config/ia32/emulation.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/page.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/page_64.h \
  include/linux/range.h \
  include/asm-generic/memory_model.h \
  include/asm-generic/getorder.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/processor.h \
    $(wildcard include/config/m486.h) \
    $(wildcard include/config/xen.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/vm86.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/vm86.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/math_emu.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/sigcontext.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/sigcontext.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/current.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/pgtable_types.h \
    $(wildcard include/config/compat/vdso.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/pgtable_64_types.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/sparsemem.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/msr.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/msr.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/msr-index.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi/linux/ioctl.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/ioctl.h \
  include/asm-generic/ioctl.h \
  include/uapi/asm-generic/ioctl.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/cpumask.h \
  include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  include/linux/bitmap.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/desc_defs.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/nops.h \
    $(wildcard include/config/mk7.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/special_insns.h \
  include/linux/personality.h \
  include/uapi/linux/personality.h \
  include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/div64.h \
  include/asm-generic/div64.h \
  include/linux/err.h \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/irqflags.h \
  include/linux/atomic.h \
    $(wildcard include/config/arch/has/atomic/or.h) \
    $(wildcard include/config/generic/atomic64.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/atomic.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/cmpxchg.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/cmpxchg_64.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/atomic64_64.h \
  include/asm-generic/atomic-long.h \
  include/linux/bottom_half.h \
  include/linux/preempt_mask.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/barrier.h \
    $(wildcard include/config/x86/ppro/fence.h) \
  include/linux/spinlock_types.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/spinlock_types.h \
    $(wildcard include/config/paravirt/spinlocks.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/rwlock.h \
  include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/prove/rcu.h) \
  include/linux/rwlock_types.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/spinlock.h \
  include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/paravirt.h \
  include/linux/rwlock.h \
  include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
  include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  include/linux/wait.h \
  include/uapi/linux/wait.h \
  include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  include/linux/seqlock.h \
  include/linux/nodemask.h \
    $(wildcard include/config/movable/node.h) \
  include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/linux/page-flags-layout.h \
  include/generated/bounds.h \
  include/linux/memory_hotplug.h \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  include/linux/notifier.h \
  include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/mutex/spin/on/owner.h) \
  include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/rwsem.h \
  include/linux/srcu.h \
  include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/user/qs.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/no/hz/full/sysidle.h) \
  include/linux/completion.h \
  include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  include/linux/rcutree.h \
  include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/sysfs.h) \
  include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  include/uapi/linux/time.h \
  include/linux/jiffies.h \
  include/linux/timex.h \
  include/uapi/linux/timex.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi/linux/param.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/param.h \
  include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  include/uapi/asm-generic/param.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/timex.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/tsc.h \
    $(wildcard include/config/x86/tsc.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/mmzone.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/mmzone_64.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/smp.h \
    $(wildcard include/config/x86/local/apic.h) \
    $(wildcard include/config/x86/io/apic.h) \
    $(wildcard include/config/x86/32/smp.h) \
    $(wildcard include/config/debug/nmi/selftest.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/mpspec.h \
    $(wildcard include/config/x86/numaq.h) \
    $(wildcard include/config/eisa.h) \
    $(wildcard include/config/x86/mpparse.h) \
    $(wildcard include/config/acpi.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/mpspec_def.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/x86_init.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/bootparam.h \
  include/linux/screen_info.h \
  include/uapi/linux/screen_info.h \
  include/linux/apm_bios.h \
  include/uapi/linux/apm_bios.h \
  include/linux/edd.h \
  include/uapi/linux/edd.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/e820.h \
    $(wildcard include/config/efi.h) \
    $(wildcard include/config/memtest.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/e820.h \
    $(wildcard include/config/intel/txt.h) \
  include/linux/ioport.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/ist.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/ist.h \
  include/video/edid.h \
  include/uapi/video/edid.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/apicdef.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/apic.h \
    $(wildcard include/config/x86/x2apic.h) \
  include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm.h) \
    $(wildcard include/config/pm/runtime.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/fixmap.h \
    $(wildcard include/config/paravirt/clock.h) \
    $(wildcard include/config/provide/ohci1394/dma/init.h) \
    $(wildcard include/config/x86/visws/apic.h) \
    $(wildcard include/config/pci/mmconfig.h) \
    $(wildcard include/config/x86/intel/mid.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/acpi.h \
    $(wildcard include/config/acpi/numa.h) \
  include/acpi/pdc_intel.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/numa.h \
    $(wildcard include/config/numa/emu.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/topology.h \
    $(wildcard include/config/x86/ht.h) \
  include/asm-generic/topology.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/mmu.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/realmode.h \
    $(wildcard include/config/acpi/sleep.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/io.h \
    $(wildcard include/config/mtrr.h) \
  include/asm-generic/iomap.h \
    $(wildcard include/config/has/ioport.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/generic/iomap.h) \
  include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  include/linux/vmalloc.h \
  include/linux/rbtree.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/pvclock.h \
  include/linux/clocksource.h \
    $(wildcard include/config/arch/clocksource/data.h) \
    $(wildcard include/config/clocksource/watchdog.h) \
    $(wildcard include/config/clksrc/of.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/clocksource.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/pvclock-abi.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/vsyscall.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/vsyscall.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/vvar.h \
  include/asm-generic/fixmap.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/idle.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/io_apic.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/irq_vectors.h \
    $(wildcard include/config/have/kvm.h) \
  include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
  include/linux/smp.h \
  include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
  include/linux/pfn.h \
  include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/arch/enable/split/pmd/ptlock.h) \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/want/page/debug/flags.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mm/owner.h) \
    $(wildcard include/config/mmu/notifier.h) \
  include/linux/auxvec.h \
  include/uapi/linux/auxvec.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/auxvec.h \
  include/linux/page-debug-flags.h \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/page/guard.h) \
    $(wildcard include/config/page/debug/something/else.h) \
  include/linux/uprobes.h \
    $(wildcard include/config/uprobes.h) \
  include/linux/bit_spinlock.h \
  include/linux/shrinker.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/pgtable.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/pgtable_64.h \
  include/asm-generic/pgtable.h \
    $(wildcard include/config/have/arch/soft/dirty.h) \
    $(wildcard include/config/arch/uses/numa/prot/none.h) \
  include/linux/page-flags.h \
    $(wildcard include/config/pageflags/extended.h) \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/swap.h) \
  include/linux/huge_mm.h \
  include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
    $(wildcard include/config/debug/tlbflush.h) \
  include/linux/vm_event_item.h \
    $(wildcard include/config/migration.h) \
  include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/debug/writecount.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/fs/xip.h) \
  include/linux/kdev_t.h \
  include/uapi/linux/kdev_t.h \
  include/linux/dcache.h \
  include/linux/rculist.h \
  include/linux/rculist_bl.h \
  include/linux/list_bl.h \
  include/linux/lockref.h \
    $(wildcard include/config/arch/use/cmpxchg/lockref.h) \
  include/linux/path.h \
  include/linux/stat.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/stat.h \
  include/uapi/linux/stat.h \
  include/linux/uidgid.h \
    $(wildcard include/config/user/ns.h) \
  include/linux/highuid.h \
  include/linux/list_lru.h \
  include/linux/radix-tree.h \
  include/linux/pid.h \
  include/linux/capability.h \
  include/uapi/linux/capability.h \
  include/linux/semaphore.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi/linux/fiemap.h \
  include/linux/migrate_mode.h \
  include/linux/percpu-rwsem.h \
  include/linux/blk_types.h \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/blk/dev/integrity.h) \
  include/uapi/linux/fs.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi/linux/limits.h \
  include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  include/linux/percpu_counter.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi/linux/dqblk_xfs.h \
  include/linux/dqblk_v1.h \
  include/linux/dqblk_v2.h \
  include/linux/dqblk_qtree.h \
  include/linux/projid.h \
  include/uapi/linux/quota.h \
  include/linux/nfs_fs_i.h \
  include/linux/fcntl.h \
  include/uapi/linux/fcntl.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/fcntl.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi/asm-generic/fcntl.h \
  include/linux/highmem.h \
    $(wildcard include/config/debug/highmem.h) \
  include/linux/uaccess.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/uaccess.h \
    $(wildcard include/config/x86/intel/usercopy.h) \
    $(wildcard include/config/debug/strict/user/copy/checks.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/smap.h \
    $(wildcard include/config/x86/smap.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/uaccess_64.h \
  include/linux/hardirq.h \
  include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
  include/linux/vtime.h \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/virt/cpu/accounting.h) \
    $(wildcard include/config/irq/time/accounting.h) \
  include/linux/context_tracking_state.h \
  include/linux/static_key.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/hardirq.h \
    $(wildcard include/config/x86/thermal/vector.h) \
    $(wildcard include/config/x86/mce/threshold.h) \
  include/linux/irq.h \
    $(wildcard include/config/generic/pending/irq.h) \
    $(wildcard include/config/hardirqs/sw/resend.h) \
  include/linux/irqreturn.h \
  include/linux/irqnr.h \
  include/uapi/linux/irqnr.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/irq.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/irq_regs.h \
  include/linux/irqdesc.h \
    $(wildcard include/config/irq/preflow/fasteoi.h) \
    $(wildcard include/config/sparse/irq.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/hw_irq.h \
    $(wildcard include/config/irq/remap.h) \
  include/linux/profile.h \
    $(wildcard include/config/profiling.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/sections.h \
    $(wildcard include/config/debug/rodata.h) \
  include/asm-generic/sections.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/cacheflush.h \
    $(wildcard include/config/x86/pat.h) \
    $(wildcard include/config/debug/rodata/test.h) \
  include/asm-generic/cacheflush.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/kmap_types.h \
  include/asm-generic/kmap_types.h \
  include/linux/hugetlb_inline.h \
  include/linux/backing-dev.h \
    $(wildcard include/config/debug/fs.h) \
  include/linux/flex_proportions.h \
  include/linux/sched.h \
    $(wildcard include/config/sched/debug.h) \
    $(wildcard include/config/no/hz/common.h) \
    $(wildcard include/config/lockup/detector.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
    $(wildcard include/config/sched/autogroup.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/no/hz/full.h) \
  include/uapi/linux/sched.h \
  include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/cputime.h \
  include/asm-generic/cputime.h \
  include/asm-generic/cputime_jiffies.h \
  include/linux/sem.h \
  include/uapi/linux/sem.h \
  include/linux/ipc.h \
  include/uapi/linux/ipc.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/ipcbuf.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi/asm-generic/ipcbuf.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/sembuf.h \
  include/linux/signal.h \
    $(wildcard include/config/old/sigaction.h) \
  include/uapi/linux/signal.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/signal.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/signal.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi/asm-generic/signal-defs.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/siginfo.h \
  include/asm-generic/siginfo.h \
  include/uapi/asm-generic/siginfo.h \
  include/linux/proportions.h \
  include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/seccomp/filter.h) \
  include/uapi/linux/seccomp.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/seccomp.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/seccomp_64.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi/linux/unistd.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/unistd.h \
    $(wildcard include/config/x86/x32/abi.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/unistd.h \
  arch/x86/include/generated/uapi/asm/unistd_64.h \
  arch/x86/include/generated/asm/unistd_64_x32.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/ia32_unistd.h \
  arch/x86/include/generated/asm/unistd_32_ia32.h \
  include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  include/linux/resource.h \
  include/uapi/linux/resource.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/resource.h \
  include/asm-generic/resource.h \
  include/uapi/asm-generic/resource.h \
  include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/timerfd.h) \
  include/linux/timerqueue.h \
  include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  include/linux/latencytop.h \
  include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
  include/linux/key.h \
  include/linux/sysctl.h \
  include/uapi/linux/sysctl.h \
  include/linux/assoc_array.h \
    $(wildcard include/config/associative/array.h) \
  include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  include/linux/writeback.h \
  include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/debug/slab.h) \
  include/linux/kmemleak.h \
    $(wildcard include/config/debug/kmemleak.h) \
  include/linux/slub_def.h \
    $(wildcard include/config/slub/stats.h) \
    $(wildcard include/config/memcg/kmem.h) \
  include/linux/kobject.h \
    $(wildcard include/config/debug/kobject/release.h) \
  include/linux/sysfs.h \
  include/linux/kernfs.h \
  include/linux/idr.h \
  include/linux/kobject_ns.h \
  include/linux/kref.h \
  include/linux/xattr.h \
  include/uapi/linux/xattr.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi/linux/libc-compat.h \
  include/linux/security.h \
    $(wildcard include/config/security/path.h) \
    $(wildcard include/config/security/network.h) \
    $(wildcard include/config/security/network/xfrm.h) \
    $(wildcard include/config/securityfs.h) \
    $(wildcard include/config/security/yama.h) \
  fs/kernfs/kernfs-internal.h \

fs/kernfs/inode.o: $(deps_fs/kernfs/inode.o)

$(deps_fs/kernfs/inode.o):
