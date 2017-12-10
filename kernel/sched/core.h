/*
 *  core.h
 *
 *  Header file for SAM scheduler related data structures
 *
 *  2016-12-21  Sharing Aware Mapper (SAM) code additions.
 *  Contributors: Sharanyan Srikanthan, Sandhya Dwarkadas, and Kai Shen
 *  University of Rochester
 */

/* System calls used for setting up SAM, debugging, etc */
#define _SHAR_RDMSR_ 317
#define _SHAR_WRMSR_ 318 

/* Macros for performance counters and its control registers 
 Refer to the Intel Arch Manual */
#define IA32_FIXED_CTR_CTRL 0x38D
#define IA32_PERF_GLOBAL_CTRL 0x38F
#define PERF_FIXED_CTR0 0x309
#define PERF_FIXED_CTR1 0x30A
#define PERF_FIXED_CTR2 0x30B
#define PerfEvtSel0 0x186
#define PerfEvtSel1 0x187
#define PerfEvtSel2 0x188
#define PerfEvtSel3 0x189
#define IA32_PMC0 0xC1
#define IA32_PMC1 0xC2
#define IA32_PMC2 0xC3
#define IA32_PMC3 0xC4
#define OFFCORE_RSP_0 0x1A6

#define FC0 PERF_FIXED_CTR0
#define FC1 PERF_FIXED_CTR1
#define FC2 PERF_FIXED_CTR2
#define FCC IA32_FIXED_CTR_CTRL
#define GLC IA32_PERF_GLOBAL_CTRL
#define PCC0 PerfEvtSel0
#define PCC1 PerfEvtSel1
#define PCC2 PerfEvtSel2
#define PCC3 PerfEvtSel3
#define PC0 IA32_PMC0
#define PC1 IA32_PMC1
#define PC2 IA32_PMC2
#define PC3 IA32_PMC3
#define OFF0 OFFCORE_RSP_0
/* Machine specific information. 
   Can be exported into config in the future or read
   in real time */

#define MAX_SHAR_NUM_SOCKETS 2
int SHAR_NUM_SOCKETS = MAX_SHAR_NUM_SOCKETS;
#define MAX_SHAR_PROCESSORS_CORE 20
#define DEBUG_SAM 0

int SHAR_PROCESSORS_CORE = MAX_SHAR_PROCESSORS_CORE;
int SHAR_PROCESSORS_CON = MAX_SHAR_PROCESSORS_CORE;

/* Performance counter based threshold. Explained in 
 * USENIX ATC paper 2015 */
int SHAR_MEM_THRESH = 75000000;
int SHAR_COHERENCE_THRESH = 550000;
#define SHAR_REMOTE_THRESH 2700000
#define SHAR_CYCLES 2200000000.0
#define SHAR_COH_IND SHAR_COHERENCE_THRESH/2

/* Enabling SAM. 
   shar_enable: is to be set to 1. Otherwise,
   behaves like a regular kernel. 
   shar_id: is mostly to be used for debugging. It prevents SAM
   from migrating tasks that are equal or less than the set PID. 
   Was used to prevent migration of some kernel threads initially. 
   shar_task: to identify the SAM daemon during debugging.
   shar_ready: used internally.  */

int shar_enable;
int shar_task = 9999;
int shar_id = 5000;
int shar_print = 0;
int shar_ready = 0;
int shar_end;
int shar_end1;
int shar_move = 9999;
int shar_move_enable = 0;

/* Per socket data. Contains number of memory, intra & inter socket 
 * coherence intensive, tasks. Stores consolidated numbers for each socket */
struct shar_per_socket
{
	long tot_mem; // Memory activity
	long tot_crosssoc; // Inter-socket coherence activity
	long tot_snoopsoc; // Intra-socket coherence activity
	int active_processes; // Active tasks
	int snum; // Socket number
	int dnew; // Used for reseting struct
	// Different bottlenecks and number of threads contributing to them
	int mem; 
	int p_remote;	
	int coherence;
	int snoop;
	int p_mem;
	int p_coherence;
	int p_snoop;
};
struct shar_per_socket shar_ps_data[MAX_SHAR_NUM_SOCKETS];

/* Per core data structure. Time multiplexed performance counter information
 * is consolidated per core and stored here. Any task migrations are also stored
 * here */
struct shar_per_core
{	
	int coherence;
	int mem;
	int snoop;
	int active;
	int move_en;
	int move;
	int move_from;
	int remote_mig;
	long coh;
	long snp;
	long mm;
	long rdram;
};

struct shar_mem_map_core
{
	struct mm_struct *mm; // Not relevant for normal use
	int users;
	int pid;
};
struct shar_mem_map_core shar_mmmap[MAX_SHAR_PROCESSORS_CORE*MAX_SHAR_NUM_SOCKETS];
struct shar_per_core shar_pc_data[MAX_SHAR_PROCESSORS_CORE*MAX_SHAR_NUM_SOCKETS];

/* Mark for task migration. 
 * cpu: Destination core
 * tsk: Pointer to the task struct of the task to be moved */
static void move_to_cpu(const int cpu, struct task_struct *tsk);

/* Decide on task migrations using already per core and per socket
 * data. Requires consolidation to be performed. Identifies different
 * task migrations to be performed, which is performed later on in bulk */
static void decide_processes(void);

/* Use mainly during debugging to use consolidated information to flag overall
 * bottlenecks. Does not instruct any task migrations. Needs consolidated performance
 * counter data. */
static void observe_processes(void);

/* Resets data structures as and when necessary. Is performed per socket. 
 * snum: Socket number */

