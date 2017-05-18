#include <stdio.h>
#include <linux/unistd.h>
#include <sys/syscall.h>

#define _SHAR_GATHER_ 319 

int main(int argc, char *argv[])
{
	long i;
	int count = 0, lim = 100;
	int pid = 1; // Does not matter 
  
	if (argc > 1)
	{
		lim = atoi(argv[1]);
	}
  
	while(1)
	{
 		i = syscall(_SHAR_GATHER_ ,8  , pid , 0);
		usleep(lim*1000);
		count++;
	}
   	return 0;
}
