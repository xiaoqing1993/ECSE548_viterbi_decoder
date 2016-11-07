#include "../inc/encoder.h"

void encoder_encode(uint8_t **c, uint8_t *m, code_t code) {
	int n,k;
	
	for(n=0 ; n<code.N ; n++) {
		(*c)[n] = 0;
		for(k=0 ; k<code.K ; k++)
			(*c)[n] ^= m[k]&code.G[k][n];
	}
}
