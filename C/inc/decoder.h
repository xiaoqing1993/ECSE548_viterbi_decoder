#ifndef _DECODER
#define _DECODER

	#include <stdlib.h>
	#include <math.h>
	#include <float.h>
	
	#include "../inc/code.h"
	#include "../inc/modulator.h"

	typedef enum {
		MLE,
		VITERBI
	} decoder_t;


	void decoder_decode(uint8_t **m_est, double *y, code_t code, decoder_t decoder, modulator_t modulator);

#endif
