#include <stdio.h>


int function()
{
	int a; //eax
	int b; //ebx
	int c; //ecx
	b = 0; 
	c = 0; 
	while(c <= 100)
	{
		a = c;
		b += a;
		c += 1;
		printf("%d\n", a);
	}
	return b;
}

int main(int argc, char const *argv[])
{
	function();
	return 0;
}