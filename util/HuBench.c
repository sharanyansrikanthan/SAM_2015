#define _GNU_SOURCE
#include <pthread.h>
#include <stdio.h>
#include <sched.h>
#include <stdlib.h>
#define NUM_THREADS 4 
#define NUM_ITER 2000000 // For elongating the run
#define NUM_ITER_IDLE 10
#define INNER_ITER 20
#define SIZE_CRIT 32

int ARRAY_SIZE = 8;
int sum[NUM_THREADS];
int sum_ex = NUM_THREADS*NUM_ITER*INNER_ITER;
pthread_mutex_t mutexsum[NUM_THREADS];
int shared_array[NUM_THREADS][SIZE_CRIT];
pthread_mutex_t mut[NUM_THREADS]; // = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t cond[NUM_THREADS]; // = PTHREAD_COND_INITIALIZER;
int barrier_arrived[NUM_THREADS][32];
	
void *PrintHello(void *threadid)
{
   long tid;
   int cnt = 0;
   int spin_time = 0;
   tid = (long)threadid;
   char flnm[10];
   cpu_set_t  mask;
   CPU_ZERO(&mask);

   int int_a, int_b, int_sum;

   printf("Hello World! It's me, thread #%ld!\n", tid);
   int i, j, k;
   for(i=0; i<NUM_ITER; i++)
   {
		for (j=0; j<INNER_ITER; j++)
		{
			cnt++;
			if (tid%2 == 1)
			{
				while(barrier_arrived[tid-1][0] == cnt-1)
					spin_time++;
			}	
			for (k=0; k<SIZE_CRIT; k=k+SIZE_CRIT)	
			{
				shared_array[tid][k] += 1;
				if (tid%2 == 1)
				{
					shared_array[tid-1][k] += 1;
				}
				else
				{
					shared_array[tid+1][k] += 1;
				}
			}
					
			barrier_arrived[tid][0] += 1;
			for (k=0;k<ARRAY_SIZE*NUM_ITER_IDLE;k++)
			{
				int_a = k;
				int_b = int_a*k;
				int_sum = int_a * int_b;
			}

			if (tid%2 == 0)
			{
				while(barrier_arrived[tid+1][0] == cnt-1)
				spin_time++;
			}		

		}
	}
    sum[tid] = spin_time/(NUM_ITER*INNER_ITER);

	printf("Thread %d done \n",tid);
    pthread_exit(NULL);
}

int main (int argc, char *argv[])
{
   	pthread_t threads[NUM_THREADS];
   	int rc;
   	long t;
   	void *status;
   	pthread_mutex_init(&mutexsum[1], NULL);
   	pthread_mutex_init(&mutexsum[0], NULL);
   	
	//if (argc > 1)
   	//ARRAY_SIZE = atoi(argv[1]);
   	printf("\n Array Size %d \n", ARRAY_SIZE);
   	for(t=0; t<NUM_THREADS; t++)
   	{
   	printf("In main: creating thread %ld\n", t);
   	rc = pthread_create(&threads[t], NULL, PrintHello, (void *)(t+4));
	if (rc)
		{
			printf("ERROR; return code from pthread_create() is %d\n", rc);
			return -1;
		}
   	}

   	for(t=0; t<NUM_THREADS; t++)
   	{
		pthread_join(threads[t], &status);
   	}

   	fprintf(stderr,"\n\n");
   	for(t=0; t<NUM_THREADS; t++)
		fprintf(stderr,"%d \t \n",sum[t]);
}
