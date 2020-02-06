/* Modified 9/25/85 - use MAXNUM-1 for quick, eliminate 3 statements in quick */

#include <stdio.h>
#define MAXNUM 100 
#define COUNT 10
#define MODULUS ((long) 0x20000)
#define C 13849L
#define A 25173L
#define DEBUG 1

static long seed = 7L;
long random();
long buffer[MAXNUM] = {0};

void quick(int, int, long[]);

void print_buff(char*);

int main()
{
	int i,j;
	long temp;

	if(DEBUG)
		printf("Filling array and sorting %d times \n",COUNT); 


	for(i=0;i<COUNT;++i)
	{
		for(j=0;j<MAXNUM;++j)
		{
			temp=random(MODULUS);
			if (temp<0L)
				temp=(-temp);
			buffer[j]=temp;
		}

		if(DEBUG)
		{
			print_buff("BEFORE SORTING....");
		}

		/* printf("Buffer full,iteration %d\n",i); */
		quick(0,MAXNUM-1,buffer);

		if(DEBUG)
		{
			print_buff("AFTER SORTING....");
		}
	}

	return 0;
}



void quick(int lo, int hi, long base[])
{
	int i,j;
	long pivot,temp;

	if(lo<hi)
	{
		for(i=lo,j=hi,pivot=base[hi];i<j;)
		{
			while(i<j && base[i]<=pivot)
				++i;
			while(j>i && base[j]>=pivot)
				--j;
			if(i<j)
			{
				temp = base[i];
				base[i]=base[j];
				base[j]=temp;
			}
		}
		quick(lo,i-1,base);
		quick(i+1,hi,base);
	}
}

long random(size)
long size;
{
	seed=seed *A+C;
	return(seed%size);
}

void print_buff(char *msg)
{
	printf("%s\n", msg);
	printf("%s\n", "PRINTING BUFFER");
	int i;
	for (i = 0; i < MAXNUM; ++i)
	{
		printf("%ld ", buffer[i]);
	}
	printf("\n");
}