#ifndef _MODULATOR
#define _MODULATOR

	#include <stdint.h>

	#include "../inc/code.h"

	typedef enum {
		BPSK
	} modulator_t;

	void modulator_modulate(int8_t **x, uint8_t *c, code_t code, modulator_t modulator);
	void modulator_demodulate(uint8_t **x, int8_t *c, code_t code, modulator_t modulator);
	void modulator_modulate_codebook(code_t *code, modulator_t modulator);
#endif

