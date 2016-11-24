#include "../inc/simparams.h"

void simparams_loadfiles(simfiles_t* simfiles) {
	DIR *dir;
	struct dirent *ent;
	
	simfiles->num_files = 0;
	simfiles->files = (char **)malloc(sizeof(*(simfiles->files)));
		
	if ((dir = opendir (FILE_DIR)) != NULL) {
 		while ((ent = readdir (dir)) != NULL) {
   		if(strcmp(ent->d_name, ".") && strcmp(ent->d_name, "..") && strcmp(ent->d_name, "ignore")) {
   			simfiles->num_files++;
   			simfiles->files = realloc(simfiles->files, simfiles->num_files*sizeof(*(simfiles->files)));
				simfiles->files[simfiles->num_files - 1] = (char *)malloc((strlen(ent->d_name)+1)*sizeof(**(simfiles->files)));
   			strcpy(simfiles->files[simfiles->num_files - 1], ent->d_name);
   			}
  	}
  	closedir (dir);
	} else {
  	printf("Simulation Directory Does Not Exist!!\n");
	}
}

void simparams_freefiles(simfiles_t* simfiles) {
	int i;
	
	for(i=0 ; i<simfiles->num_files ; i++)
		free(simfiles->files[i]);
	free(simfiles->files);
}

void set_N(FILE *fp, simparams_t *simparams) {
	int i;
	
	fscanf(fp, "%d", &i);
	simparams->N = i;
}

void set_K(FILE *fp, simparams_t *simparams) {
	int i;
	
	fscanf(fp, "%d", &i);
	simparams->K = i;
}

void set_G(FILE *fp, simparams_t *simparams) {
	int n,k;
	
	simparams->G = (uint8_t **)malloc(simparams->K*(sizeof(*(simparams->G))));
	for(k=0 ; k<simparams->K ; k++)
		simparams->G[k] = (uint8_t *)malloc(simparams->N*(sizeof(**(simparams->G))));
		
	for(k=0 ; k<simparams->K ; k++)
		for(n=0 ; n<simparams->N ; n++)
			fscanf(fp, "%hhu", &(simparams->G[k][n]));
}

void set_EbNo_STEPS(FILE *fp, simparams_t *simparams) {
	int i;
	
	fscanf(fp, "%d", &i);
	simparams->EbNo_STEPS = i;
}

void set_EbNo_VALS(FILE *fp, simparams_t *simparams) {
	int i;
	
	simparams->EbNo_VALS = (double *)malloc(simparams->EbNo_STEPS*(sizeof(*(simparams->EbNo_VALS))));
	
	for(i=0 ; i<simparams->EbNo_STEPS ; i++)
		fscanf(fp, "%lf", &(simparams->EbNo_VALS[i]));
}

void set_MIN_FRAMES(FILE *fp, simparams_t *simparams) {
	int i;
	
	fscanf(fp, "%d", &i);
	simparams->MIN_FRAMES = i;
}

void set_MIN_ERRORS(FILE *fp, simparams_t *simparams) {
	int i;
	
	fscanf(fp, "%d", &i);
	simparams->MIN_ERRORS = i;
}

void set_CHANNEL(FILE *fp, simparams_t *simparams) {
	char str[10];

	fscanf(fp, "%s", str);
	
	if(!strcmp(str, "AWGN"))
		simparams->CHANNEL = AWGN;

	if(!strcmp(str, "ERASURE"))
		simparams->CHANNEL = ERASURE;
}

void set_MODULATOR(FILE *fp, simparams_t *simparams) {
	char str[10];

	fscanf(fp, "%s", str);
	
	if(!strcmp(str, "BPSK"))
		simparams->MODULATOR = BPSK;
}

void set_DECODER(FILE *fp, simparams_t *simparams) {
	char str[20];

	fscanf(fp, "%s", str);
	
	if(!strcmp(str, "MLE"))
		simparams->DECODER = MLE;
		
	if(!strcmp(str, "VITERBI"))
		simparams->DECODER = VITERBI;
		
	if(!strcmp(str, "VITERBI_FIXEDPOINT"))
		simparams->DECODER = VITERBI_FIXEDPOINT;
}

void set_Q_N(FILE *fp, simparams_t *simparams) {
	int i;
	
	fscanf(fp, "%d", &i);
	simparams->Q_N = i;
}

void set_Q_M(FILE *fp, simparams_t *simparams) {
	int i;
	
	fscanf(fp, "%d", &i);
	simparams->Q_M = i;
}

void set_PRINT_VALS(FILE *fp, simparams_t *simparams) {
	int i;
	
	fscanf(fp, "%d", &i);
	simparams->PRINT_VALS = i;
}

void load_defaults() {

}

void simparams_load(simparams_t *simparams, char *file) {
	FILE *fp;
	char *str;

	str = (char *)malloc((strlen(file) + 13)*sizeof(char));
	str[0] = '\0';
	
	strcat(str, FILE_DIR);
	strcat(str, "/");
	strcat(str, file);
	
	fp = fopen(str, "r");
	if(fp == NULL) {
		printf("No sim_params file found, using defaults...\n");
		goto DEFAULT;	
	}
	
	str = (char *)realloc(str, 20*sizeof(char));
	str[0] = '\0';
	
	while(strcmp(str, "END")) {
		while(fgetc(fp) != '#');
			fscanf(fp, "%s", str);
			
			if(!strcmp(str, "N"))
				set_N(fp, simparams);
			
			if(!strcmp(str, "K"))
				set_K(fp, simparams);
				
			if(!strcmp(str, "G"))
				set_G(fp, simparams);
				
			if(!strcmp(str, "EbNo_STEPS"))
				set_EbNo_STEPS(fp, simparams);
				
			if(!strcmp(str, "EbNo_VALS"))
				set_EbNo_VALS(fp, simparams);
				
			if(!strcmp(str, "MIN_FRAMES"))
				set_MIN_FRAMES(fp, simparams);
				
			if(!strcmp(str, "MIN_ERRORS"))
				set_MIN_ERRORS(fp, simparams);
				
			if(!strcmp(str, "CHANNEL"))
				set_CHANNEL(fp, simparams);

			if(!strcmp(str, "MODULATOR"))
				set_MODULATOR(fp, simparams);

			if(!strcmp(str, "DECODER"))
				set_DECODER(fp, simparams);
			
			if(!strcmp(str, "Q_N"))
				set_Q_N(fp, simparams);
				
			if(!strcmp(str, "Q_M"))
				set_Q_M(fp, simparams);
				
			if(!strcmp(str, "PRINT_VALS"))
				set_PRINT_VALS(fp, simparams);
	}
	fclose(fp);
	goto END;
	
DEFAULT:
	load_defaults();
	goto END;
	
END:
	free(str);
	
}

void simparams_free(simparams_t *simparams) {
	int k;
	
	for(k=0 ; k<simparams->K ; k++)
		free(simparams->G[k]);
	free(simparams->G);
	
	free(simparams->EbNo_VALS);
}


