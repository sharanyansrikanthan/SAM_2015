#include <stdio.h>
#include <linux/unistd.h>
#include <sys/syscall.h>

#define _SHAR_TEST_ 316 

int main(int argc, char *argv[])
{
	long i;
	int pid = 100;
	printf("\nDiving to kernel level\n\n");

	if (argc > 1)
	{
		pid = atoi(argv[1]);
	}

	i = syscall(_SHAR_TEST_ , pid, pid);
	printf("\nRising to user level %ld\n\n",i);
	return 0;
}
