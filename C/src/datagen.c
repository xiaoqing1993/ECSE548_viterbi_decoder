#include "../inc/datagen.h"

void datagen_random(uint8_t **d, int K) {
	int i;

	for(i=0 ; i<K ; i++)
		(*d)[i] = (uint8_t)(rand()%2);
}

void datagen_generate(uint8_t **d, int K) {
	//support more datagen eg bernoulli etc...
	
	datagen_random(d, K);
}
