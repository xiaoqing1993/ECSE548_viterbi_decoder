#include "../inc/fixedpoint.h"

int saturate(int i, int n, int m) {
	return i<(1<<(m+n-1)) ? i>=(-1<<(m+n-1)) ? i : (-1<<(m+n-1)) : (1<<(m+n-1))-1;
}

int fixedpoint_double2fixed(double f, int n, int m) {
	return saturate((int)roundf(f*(1<<m)), n, m);
}

double fixedpoint_fixed2double(int i, int n, int m) {
	
	int k;
	double f = 0;
	
	for(k=m+n-2 ; k>=0 ; k--) {
		if((i & (0x0000001 << k)) == (0x0000001 << k)) {
			f += 1<<(k-m);
		}
	}
	
	if((i & (0x0000001 << (m+n-1))) == (0x0000001 << (m+n-1)))
		f -= 1<<(n-1);
	
	return f;
}

int fixedpoint_add(int a, int b, int n, int m) {
	return saturate((a+b), n, m);
}

int fixedpoint_sub(int a, int b, int n, int m) {
	return saturate((a-b), n, m);
}

int fixedpoint_mult(int a, int b, int n, int m) {
	return saturate((int)roundf(((double)(a*b))/(1<<m)),n,m);
}
