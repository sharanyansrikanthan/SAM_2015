cmd_arch/x86/kernel/cpu/built-in.o :=  ld -m elf_x86_64   -r -o arch/x86/kernel/cpu/built-in.o arch/x86/kernel/cpu/intel_cacheinfo.o arch/x86/kernel/cpu/scattered.o arch/x86/kernel/cpu/topology.o arch/x86/kernel/cpu/proc.o arch/x86/kernel/cpu/capflags.o arch/x86/kernel/cpu/powerflags.o arch/x86/kernel/cpu/common.o arch/x86/kernel/cpu/rdrand.o arch/x86/kernel/cpu/match.o arch/x86/kernel/cpu/bugs_64.o arch/x86/kernel/cpu/intel.o arch/x86/kernel/cpu/amd.o arch/x86/kernel/cpu/centaur.o arch/x86/kernel/cpu/perf_event.o arch/x86/kernel/cpu/perf_event_amd.o arch/x86/kernel/cpu/perf_event_amd_uncore.o arch/x86/kernel/cpu/perf_event_amd_iommu.o arch/x86/kernel/cpu/perf_event_p6.o arch/x86/kernel/cpu/perf_event_knc.o arch/x86/kernel/cpu/perf_event_p4.o arch/x86/kernel/cpu/perf_event_intel_lbr.o arch/x86/kernel/cpu/perf_event_intel_ds.o arch/x86/kernel/cpu/perf_event_intel.o arch/x86/kernel/cpu/perf_event_intel_uncore.o arch/x86/kernel/cpu/perf_event_intel_rapl.o arch/x86/kernel/cpu/mcheck/built-in.o arch/x86/kernel/cpu/mtrr/built-in.o arch/x86/kernel/cpu/microcode/built-in.o arch/x86/kernel/cpu/perfctr-watchdog.o arch/x86/kernel/cpu/perf_event_amd_ibs.o 
