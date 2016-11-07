#include "../inc/modulator.h"

void bpsk_modulate(int8_t **x, uint8_t *c, code_t code) {
	int i;
	
	for(i=0 ; i<code.N ; i++)
		(*x)[i] = 2*c[i] - 1;
}

void bpsk_demodulate(uint8_t **x, int8_t *c, code_t code) {
	int i;
	
	for(i=0 ; i<code.K ; i++)
		(*x)[i] = (c[i] + 1)>>1;
}

void modulator_modulate_codebook(code_t *code, modulator_t modulator) {
	int i;
	
	if(modulator == BPSK)
		for(i=0 ; i<1<<code->K ; i++)
			bpsk_modulate(&(code->codebook[i]), (uint8_t *)code->codebook[i], *code);
}

void modulator_modulate(int8_t **x, uint8_t *c, code_t code, modulator_t modulator) {

	if(modulator == BPSK)
		bpsk_modulate(x, c, code);
}

void modulator_demodulate(uint8_t **x, int8_t *c, code_t code, modulator_t modulator) {

	if(modulator == BPSK)
		bpsk_demodulate(x, c, code);
}

