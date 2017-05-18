cmd_arch/x86/lib/inat.o := gcc -Wp,-MD,arch/x86/lib/.inat.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-redhat-linux/4.8.2/include -I/localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include -Iarch/x86/include/generated  -Iinclude -I/localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi -Iarch/x86/include/generated/uapi -I/localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi -Iinclude/generated/uapi -include /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/linux/kconfig.h -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -m64 -mno-mmx -mno-sse -mpreferred-stack-boundary=3 -mtune=generic -mno-red-zone -mcmodel=kernel -funit-at-a-time -maccumulate-outgoing-args -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1 -DCONFIG_AS_FXSAVEQ=1 -DCONFIG_AS_CRC32=1 -DCONFIG_AS_AVX=1 -DCONFIG_AS_AVX2=1 -pipe -Wno-sign-compare -fno-asynchronous-unwind-tables -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -Wframe-larger-than=2048 -fno-stack-protector -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -DCC_HAVE_ASM_GOTO    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(inat)"  -D"KBUILD_MODNAME=KBUILD_STR(inat)" -c -o arch/x86/lib/inat.o arch/x86/lib/inat.c

source_arch/x86/lib/inat.o := arch/x86/lib/inat.c

deps_arch/x86/lib/inat.o := \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/insn.h \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/x86/32.h) \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/inat.h \
  /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/asm/inat_types.h \
  arch/x86/lib/inat-tables.c \

arch/x86/lib/inat.o: $(deps_arch/x86/lib/inat.o)

$(deps_arch/x86/lib/inat.o):
