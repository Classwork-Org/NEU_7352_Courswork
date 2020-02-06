#include <stdio.h>
#include <stdlib.h>
#include <pthread.h> 

/* global variables (shared by all threads */
volatile long long sum = 0.0; /* the approximation, to 31 sigfigs */
pthread_mutex_t sumLock;        /* how we synchronize writes to 'sum' */
long int max_num;         	/* how finely we chop the integration */
int numThreads;                /* how many threads we use */

/* the function a thread executes
 *  * Parameters: arg, a void* storing the address of the thread ID.
 *   */
void *computeSum(void *id)
{
    long localSum = 0;
    int threadID = *((int*)id);
    int i;

    // More Thread Conflict
    for(i = threadID ; i <= max_num; i += numThreads) {
        // localSum += i;
        pthread_mutex_lock(&sumLock);
        sum += i;
        pthread_mutex_unlock(&sumLock); 
    }



    return NULL;
} 

int main(int argc, char **argv)
{

    pthread_t *threads;        /* dynarray of threads */
    void *retval;              /* unused; required for join() */
    int *threadID;             /* dynarray of thread id #s */
    int i;                     /* loop control variable */

   if (argc == 3) {

            printf("With Mutex");
      max_num = atoi(argv[1]); 
      numThreads = atoi(argv[2]); 
      printf("The number of max_num is %i \n", max_num);
      printf("The number of threads is %i \n", numThreads);
      threads = malloc(numThreads*sizeof(pthread_t));
      threadID = malloc(numThreads*sizeof(int));
      pthread_mutex_init(&sumLock, NULL);

      for (i = 0; i < numThreads; i++) {
        threadID[i] = i;
        pthread_create(&threads[i], NULL, computeSum, threadID+i);
      }

      for (i = 0; i < numThreads; i++) {
         pthread_join(threads[i], &retval);
      }
      printf("Value of sum is %d \n", sum);
      printf("actual sum value is %d...\n", (max_num*(max_num+1))/2);
    } else {
      printf("Usage: ./a.out <nummax_num> <numThreads>\n");    
    }

    return 0;
}