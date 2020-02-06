#include <xmmintrin.h>
#include <math.h>
#include <stdio.h>

#define FLOAT_MAX 1000000
#define ITERATIONS 1000

float kad_sdot(int n, const float *x, const float *y) /* BLAS sdot using SSE */
{
	int i, n8 = n>>3<<3;
	__m128 vs1, vs2;
	float s, t[4];
	vs1 = _mm_setzero_ps();
	vs2 = _mm_setzero_ps();
	for (i = 0; i < n8; i += 8) {
		__m128 vx1, vx2, vy1, vy2;
		vx1 = _mm_loadu_ps(&x[i]);
		vx2 = _mm_loadu_ps(&x[i+4]);
		vy1 = _mm_loadu_ps(&y[i]);
		vy2 = _mm_loadu_ps(&y[i+4]);
		vs1 = _mm_add_ps(vs1, _mm_mul_ps(vx1, vy1));
		vs2 = _mm_add_ps(vs2, _mm_mul_ps(vx2, vy2));
	}
	for (s = 0.; i < n; ++i) s += x[i] * y[i];
	_mm_storeu_ps(t, vs1);
	s += t[0] + t[1] + t[2] + t[3];
	_mm_storeu_ps(t, vs2);
	s += t[0] + t[1] + t[2] + t[3];
	return s;
}

void kad_saxpy_inlined(int n, float a, float *x, float *y) /* BLAS saxpy using SSE */
{
	int i, n8 = n>>3<<3;
	__m128 va;
	va = _mm_set1_ps(a);
	for (i = 0; i < n8; i += 8) {
		__m128 vx1, vx2, vy1, vy2, vt1, vt2;
		vx1 = _mm_loadu_ps(&x[i]);
		vx2 = _mm_loadu_ps(&x[i+4]);
		vy1 = _mm_loadu_ps(&y[i]);
		vy2 = _mm_loadu_ps(&y[i+4]);
		vt1 = _mm_add_ps(_mm_mul_ps(va, vx1), vy1);
		vt2 = _mm_add_ps(_mm_mul_ps(va, vx2), vy2);
		_mm_storeu_ps(&y[i], vt1);
		_mm_storeu_ps(&y[i+4], vt2);
	}
	for (; i < n; ++i) y[i] += a * x[i];
}

int main(int argc, char const *argv[])
{
	float x[FLOAT_MAX];
	float y[FLOAT_MAX];

	int i; 
	for(i = 0; i<FLOAT_MAX; i++)
	{
		x[i]=(float)cos((float)i);
		y[i]=(float)sin((float)i); 
	}	

	for(i = 0; i<ITERATIONS; i++)
	{
		printf("%s : %d\n", "ITERATION", i);
		kad_saxpy_inlined(FLOAT_MAX,5.5,x,y);
		kad_sdot(FLOAT_MAX,x,y);
	}

	return 0;
}
