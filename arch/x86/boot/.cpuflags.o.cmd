cmd_arch/x86/boot/cpuflags.o := gcc -Wp,-MD,arch/x86/boot/.cpuflags.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-redhat-linux/4.8.2/include -I/localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include -Iarch/x86/include/generated  -Iinclude -I/localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi -Iarch/x86/include/generated/uapi -I/localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi -Iinclude/generated/uapi -include /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/linux/kconfig.h -D__KERNEL__ -m32 -include /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/boot/code16gcc.h -fno-toplevel-reorder -g -Os -D__KERNEL__ -DDISABLE_BRANCH_PROFILING -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -ffreestanding -fno-stack-protector -D_SETUP    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(cpuflags)"  -D"KBUILD_MODNAME=KBUILD_STR(cpuflags)" -c -o arch/x86/boot/cpuflags.o arch/x86/boot/cpuflags.c

source_arch/x86/boot/cpuflags.o := arch/x86/boot/cpuflags.c

deps_arch/x86/boot/cpuflags.o := \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/boot/code16gcc.h \
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
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/x86/32.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/posix_types_64.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi/asm-generic/posix_types.h \
  arch/x86/boot/bitops.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/processor-flags.h \
    $(wildcard include/config/vm86.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/processor-flags.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi/linux/const.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/required-features.h \
    $(wildcard include/config/x86/minimum/cpu/family.h) \
    $(wildcard include/config/math/emulation.h) \
    $(wildcard include/config/x86/pae.h) \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/x86/cmpxchg64.h) \
    $(wildcard include/config/x86/cmov.h) \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/x86/p6/nop.h) \
    $(wildcard include/config/matom.h) \
    $(wildcard include/config/paravirt.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi/asm/msr-index.h \
  arch/x86/boot/cpuflags.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/cpufeature.h \
    $(wildcard include/config/x86/debug/static/cpu/has.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/asm.h \
  include/linux/bitops.h \

arch/x86/boot/cpuflags.o: $(deps_arch/x86/boot/cpuflags.o)

$(deps_arch/x86/boot/cpuflags.o):
