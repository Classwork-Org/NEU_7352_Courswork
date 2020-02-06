#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <math.h>

#define MAX_THREAD 4

unsigned int row;
unsigned int col;
unsigned int depth;
unsigned int krow;
unsigned int kcol;
unsigned int stride;
unsigned int orow;
unsigned int ocol;
unsigned int mrow;
unsigned int mcol;
unsigned int filterNum;
float *input;
float *weights;
float *output;


struct lim_struct
{
	int fstart;
	int fend;
	int thread_num;
};

void *convn(void* limits)
{
	int fstart = ((struct lim_struct*)limits)->fstart;
	int fend = ((struct lim_struct*)limits)->fend;
	int thread_num = ((struct lim_struct*)limits)->thread_num;

	int f,i,j,k,jj,kk,ioffset,ooffset,koffset;
	float sum;

	ooffset=fstart*orow*ocol;

	printf("Thread %d processing filters from %d to %d\n", thread_num, fstart, fend);

	for(f = fstart; f<fend; f++)
	{
		for(j = 0; j<=mrow; j+=stride)
		{
			for(k = 0; k<=mcol; k+=stride)
			{
				sum = 0;
				for(i = 0; i<depth; i++)
				{
					for(jj = 0; jj<krow; jj++)
					{
						for(kk = 0; kk<kcol; kk++)
						{
							koffset = f*(krow*kcol*depth)+i*(krow*kcol)+jj*kcol+kk;
							ioffset = j*col+k+i*(row*col)+jj*col+kk;
							sum+=(input[ioffset]*weights[koffset]);
							// printf("input[%d]:%f kernel[%d]: %f sum:%f f: %d i: %d j: %d k: %d jj: %d kk: %d\n",ioffset,input[ioffset],koffset,weights[koffset],sum,f,i,j,k,jj,kk);
						}
					}
				}
				// ooffset = f*orow*ocol+j*ocol + k;
				output[ooffset++]=sum;
				 // printf("output[%d]: %f\n", ooffset, sum);

			}
		}
	}
}

int main(int argc, char const *argv[])
{

	row = 50;
	col = 50;
	depth = 3;
	krow = 3;
	kcol = 3;
	stride = 1;
	orow = ceil((row-krow+1)/(float)stride); 
	ocol = ceil((col-kcol+1)/(float)stride); 
	mrow = row-krow;
	mcol = col-kcol;
	filterNum = 40;

	input = (float*)malloc(sizeof(float)*row*col*depth);
	weights = (float*)malloc(sizeof(float)*krow*kcol*depth*filterNum);
	output = (float*)malloc(sizeof(float)*orow*ocol*filterNum);

	pthread_t filter_thread[MAX_THREAD];
	struct lim_struct limits[MAX_THREAD];

	int i,f,j;

	for(i=0;i<row*col*depth;i++)
		input[i]=(float)(rand()%(i*100+1))/532.2;

	for(i=0;i<krow*kcol*depth*filterNum;i++)
		weights[i]=(float)(rand()%(i*100+1))/45.64;

	if (filterNum<MAX_THREAD)		
	{
		for(i=0;i<filterNum;i++)
		{
			limits[i].fstart=i;
			limits[i].fend=i+1;
			limits[i].thread_num=i;

			pthread_create( &filter_thread[i], NULL, convn, (void*)&limits[i]);
		}

		for (i = 0; i < filterNum; ++i)
		{
			pthread_join(filter_thread[i], NULL);
		}
	}
	else
	{
		int extra_filters_per_thread=filterNum%MAX_THREAD;
		int min_filters_per_thread=filterNum/MAX_THREAD;
		int filter_idx = 0;
		int filters_per_thread = 0;

		for(i=0;i<MAX_THREAD;i++)
		{

			filters_per_thread = min_filters_per_thread + ((extra_filters_per_thread-- <= 0)?0:1);

			limits[i].fstart = filter_idx;
			limits[i].fend = filter_idx+filters_per_thread;
			limits[i].thread_num = i;

			filter_idx+=filters_per_thread;

			pthread_create( &filter_thread[i], NULL, convn, (void*)&limits[i]);
		}

		for (i = 0; i < MAX_THREAD; ++i)
		{
			pthread_join(filter_thread[i], NULL);
		}
	}


	// for(f=0;f<filterNum;f++)
	// {
	// 	printf("%s : %d\n", "Filter", f);
	// 	for(i=0;i<orow;i++)
	// 	{
	// 		for(j=0;j<ocol;j++)
	// 		{
	// 			printf("%f ", output[f*(orow*ocol)+i*ocol+j]);
	// 		}
	// 		printf("\n");
	// 	}	
	// }


	return 0;
}
