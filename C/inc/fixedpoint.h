#ifndef _FIXEDPOINT
#define _FIXEDPOINT

	#include <math.h>
	
	int fixedpoint_double2fixed(double f, int n, int m);
	double fixedpoint_fixed2double(int i, int n, int m);
	int fixedpoint_add(int a, int b, int n, int m);
	int fixedpoint_sub(int a, int b, int n, int m);
	int fixedpoint_mult(int a, int b, int n, int m);

#endif

