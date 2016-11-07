#ifndef _SIMPARAMS
#define _SIMPARAMS

	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
	#include <dirent.h>
	#include <sys/types.h>
	
	#include "../inc/code.h"
	#include "../inc/channel.h"
	#include "../inc/modulator.h"
	#include "../inc/decoder.h"
	
	#define FILE_DIR "./simparams"
	
	typedef struct {
		int num_files;
		char **files;
	} simfiles_t;
	
	typedef struct {
		int N;
		int K;
		uint8_t **G;
		int EbNo_STEPS;
		double *EbNo_VALS;
		int MIN_FRAMES;
		int MIN_ERRORS;
		channel_t CHANNEL;
		modulator_t MODULATOR;
		decoder_t DECODER;
		int Q_N;
		int Q_M;
	} simparams_t;
	void simparams_loadfiles(simfiles_t* simfiles);
	void simparams_freefiles(simfiles_t* simfiles);
	void simparams_load(simparams_t *simparams, char *file);
	void simparams_free(simparams_t *simparams);

#endif
