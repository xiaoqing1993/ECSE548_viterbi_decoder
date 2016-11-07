#include "../inc/channel.h"

#define NSUM 25

double awgn_clt(double sigma) {
	int i;
	double n = 0;		
	for(i = 0; i < NSUM; i++)
		n += ((double)rand()/(double)RAND_MAX);
	n -= ((double)NSUM/(double)2.0);
	n /= (sqrt(((double)NSUM/(double)((double)12.0))));
	n *= sigma;
	
	return n;
}

void awgn_add(double **y, int8_t *u, double EbNo, code_t code) {
	int i;
	double sigma = sqrt((double)code.N/(2*(double)code.K*pow(10,(EbNo/10))));
	
	for(i=0 ; i<code.N ; i++)
		(*y)[i] = u[i] + awgn_clt(sigma);
}

void channel_transmit(double **y, int8_t *c, double EbNo, code_t code, channel_t channel) {
	if(channel == AWGN){
		awgn_add(y, c, EbNo, code);
	}
	
	if(channel == ERASURE) {
		//make
	}
}


