cmd_arch/x86/vdso/vdso32/note.o := gcc -Wp,-MD,arch/x86/vdso/vdso32/.note.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-redhat-linux/4.8.2/include -I/localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include -Iarch/x86/include/generated  -Iinclude -I/localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/arch/x86/include/uapi -Iarch/x86/include/generated/uapi -I/localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/uapi -Iinclude/generated/uapi -include /localdisk/srikanth/rpmbuild/BUILD/kernel-3.14.fc19.new/ATC/for_release/include/linux/kconfig.h -D__KERNEL__  -D__ASSEMBLY__ -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1 -DCONFIG_AS_FXSAVEQ=1 -DCONFIG_AS_CRC32=1 -DCONFIG_AS_AVX=1 -DCONFIG_AS_AVX2=1      -m32    -c -o arch/x86/vdso/vdso32/note.o arch/x86/vdso/vdso32/note.S

source_arch/x86/vdso/vdso32/note.o := arch/x86/vdso/vdso32/note.S

deps_arch/x86/vdso/vdso32/note.o := \
    $(wildcard include/config/xen.h) \
  include/generated/uapi/linux/version.h \
  include/linux/elfnote.h \

arch/x86/vdso/vdso32/note.o: $(deps_arch/x86/vdso/vdso32/note.o)

$(deps_arch/x86/vdso/vdso32/note.o):
