#include "../inc/code.h"
#include "../inc/datagen.h"
#include "../inc/encoder.h"
#include "../inc/modulator.h"

void code_generate_codebook(code_t *code) {
	int i,k;
	uint8_t *m = (uint8_t *)malloc(code->K*sizeof(*m));

	for(i=0 ; i<1<<code->K ; i++) {
		for(k=0 ; k<code->K ; k++)
			if(i&(1<<k))
				m[code->K-k-1] = 1;
			else
				m[code->K-k-1] = 0;
		
		encoder_encode((uint8_t **)&(code->codebook[i]), m, *code);
	}
	
	free(m);
}

void code_load(code_t *code, int N, int K, uint8_t **G) {
	int n,k;
	//code = (code_t *)malloc(sizeof(*code));
	
	code->N = N;
	code->K = K;
	
	code->G = (uint8_t **)malloc(code->K*(sizeof(*(code->G))));
	for(k=0 ; k<code->K ; k++)
		code->G[k] = (uint8_t *)malloc(code->N*(sizeof(**(code->G))));
		
	code->codebook = (int8_t **)malloc((1<<code->K)*(sizeof(*(code->codebook))));
	for(k=0 ; k<1<<code->K ; k++)
		code->codebook[k] = (int8_t *)malloc(code->N*(sizeof(**(code->codebook))));
		
	for(k=0 ; k<code->K ; k++)
		for(n=0 ; n<code->N ; n++)
			code->G[k][n] = G[k][n];
			
	code_generate_codebook(code);
}

void code_free(code_t *code) {
	int k;
	
	for(k=0 ; k<code->K ; k++)
		free(code->G[k]);
	free(code->G);
	
	for(k=0 ; k<1<<code->K ; k++)
		free(code->codebook[k]);
	free(code->codebook);
	
	//free(code);
}

