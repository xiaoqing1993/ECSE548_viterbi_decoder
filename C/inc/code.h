#ifndef _CODE
#define _CODE

	#include <stdlib.h>
	#include <stdint.h>
		
	typedef struct {
		int N;
		int K;
		uint8_t **G;
		int8_t **codebook;
	} code_t;
	
	void code_load(code_t *code, int N, int K, uint8_t **G);
	void code_free(code_t *code);
#endif

