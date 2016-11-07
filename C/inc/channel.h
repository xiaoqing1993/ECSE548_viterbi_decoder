#ifndef _CHANNEL
#define _CHANNEL


	#include <stdint.h>
	#include <math.h>
	
	#include "../inc/code.h"

	typedef enum {
		AWGN,
		ERASURE
	} channel_t;
	
	void channel_transmit(double **y, int8_t *c, double EbNo, code_t code, channel_t channel);
#endif

