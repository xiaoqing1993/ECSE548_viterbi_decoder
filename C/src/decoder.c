#include "../inc/decoder.h"

void decode_mle(uint8_t **m_est, double *y, code_t code, modulator_t modulator) {
	int k,n,min_index = 0;
	double dist, min = DBL_MAX;
		
	for(k=0 ; k<1<<code.K ; k++) {
		dist = 0;
		for(n=0 ; n<code.N ; n++)
			dist += pow((y[n]-code.codebook[k][n]),2);
		if(dist < min) {
			min = dist;
			min_index = k;
		}
	}
	
	modulator_demodulate(m_est, code.codebook[min_index], code, modulator);
}

void decode_viterbi(uint8_t **m_est, double *y, code_t code, modulator_t modulator) {
	int k,n,min_index = 0;
	double dist, min = 0;
		
	for(k=0 ; k<1<<code.K ; k++) {
		dist = 0;
		for(n=0 ; n<code.N ; n++)
			dist += pow((y[n]-code.codebook[k][n]),2);
		if(min < dist) {
			min = dist;
			min_index = k;
		}
	}
	for(k=0 ; k<code.K ; k++)
		(*m_est)[k] = code.codebook[min_index][k];
		
	modulator_demodulate(m_est, code.codebook[min_index], code, modulator);
}

void decoder_decode(uint8_t **m_est, double *y, code_t code, decoder_t decoder, modulator_t modulator) {
	if(decoder == MLE)
		decode_mle(m_est, y, code, modulator);
		
	if(decoder == VITERBI)
		decode_viterbi(m_est, y, code, modulator);
}
