#ifndef _DECODER
#define _DECODER

	#include <stdlib.h>
	#include <math.h>
	#include <float.h>
	#include <limits.h>
	
	#include "../inc/code.h"
	#include "../inc/modulator.h"
	#include "../inc/fixedpoint.h"
	typedef enum {
		MLE,
		VITERBI,
		VITERBI_FIXEDPOINT
	} decoder_t;


	void decoder_decode(uint8_t **m_est, double *y, code_t code, decoder_t decoder, modulator_t modulator, int Q_N, int Q_M);

#endif
