#include <stdio.h>
#include <stdlib.h>

#define NTIMES 1000
#define NUMBER 24

unsigned fib(int x)
{
        if(x>2)
                return(fib(x-1)+fib(x-2));
        else
                return(1);
}       

int main()
{
        int i;
        unsigned value;
        
        printf("%d iterations:",NTIMES);
        for (i=1;i<=NTIMES;i++)
                value=fib(NUMBER);
        printf("fibonacci(%d)=%u.\n",NUMBER,value);
        exit(0);
}
