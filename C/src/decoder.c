#include "../inc/decoder.h"
#include <stdio.h>

void decode_mle(uint8_t **m_est, double *y, code_t code, modulator_t modulator) {
	int k,n,min_index = 0;
	double dist, min = DBL_MAX;
		
	for(k=0 ; k<1<<code.K ; k++) {
		dist = 0;
		for(n=0 ; n<code.N ; n++)
			dist += pow((y[n]-code.codebook[k][n]),2);
		if(dist < min) {
			min = dist;
			min_index = k;
		}
	}
	
	modulator_demodulate(m_est, code.codebook[min_index], code, modulator);
}

void decode_viterbi(uint8_t **m_est, double *y) {
	// Unfortunately this decoder is hardcoded for the Hamming 8,4,4, code
	
	double y01 = y[0]+ y[1];
	double y24 = y[2]+ y[4];
	double y67 = y[6]+ y[7];
	double y35 = y[3]+ y[5];
	
	double y12 = y[1]+ y[2];
	double y04 = y[0]+ y[4];
	double y37 = y[3]+ y[7];
	double y56 = y[5]+ y[6];
	
	double y14 = y[1]+ y[4];
	double y02 = y[0]+ y[2];
	double y57 = y[5]+ y[7];
	double y36 = y[3]+ y[6];
	
	double y0124 = y01 + y24;
	double y3567 = y35 + y67;
	
	double stage_L[4];
	double stage_R[4];
	double stage_LR;
	double stage_M = DBL_MAX;
	
	uint8_t path_L[4];
	uint8_t path_R[4];
	uint8_t path_M;
	
	uint8_t i;

	if(y0124 < 0) {
		stage_L[0] = y0124;
		path_L[0] = 0;
	}
	else {
		stage_L[0] = 0;
		path_L[0] = 1;
	}
	
	if(y01 < y24) {
		stage_L[1] = y01;
		path_L[1] = 0;
	}
	else {
		stage_L[1] = y24;
		path_L[1] = 1;
	}
	
	if(y12 < y04) {
		stage_L[2] = y12;
		path_L[2] = 2;
	}
	else {
		stage_L[2] = y04;
		path_L[2] = 3;
	}
	
	if(y14 < y02) {
		stage_L[3] = y14;
		path_L[3] = 2;
	}
	else {
		stage_L[3] = y02;
		path_L[3] = 3;
	}

	if(y3567 < 0) {
		stage_R[0] = y3567;
		path_R[0] = 0;
	}
	else {
		stage_R[0] = 0;
		path_R[0] = 1;
	}
	
	if(y67 < y35) {
		stage_R[1] = y67;
		path_R[1] = 0;
	}
	else {
		stage_R[1] = y35;
		path_R[1] = 1;
	}
	
	if(y37 < y56) {
		stage_R[2] = y37;
		path_R[2] = 2;
	}
	else {
		stage_R[2] = y56;
		path_R[2] = 3;
	}
	
	if(y57 < y36) {
		stage_R[3] = y57;
		path_R[3] = 2;
	}
	else {
		stage_R[3] = y36;
		path_R[3] = 3;
	}
	
	for(i=0 ; i<4 ; i++) {
		stage_LR = (stage_L[i]+stage_R[i]);
		if(stage_LR < stage_M) {
			stage_M = stage_LR;
			path_M = i;
		}
	}

	(*m_est)[0] = (path_L[path_M] & 1) ^ (path_L[path_M] >> 1);
	(*m_est)[1] = path_L[path_M] & 1;
	(*m_est)[2] = (path_M - path_L[path_M]) == 0 ? 0 : 1;
	(*m_est)[3] = (path_M - path_R[path_M]) == 0 ? 0 : 1;
}

void decode_viterbi_fixedpoint(uint8_t **m_est, double *y_double, int Q_N, int Q_M) {
	// Unfortunately this decoder is hardcoded for the Hamming 8,4,4, code
	uint8_t i;
	int y[8];
	
	for(i=0 ; i<8 ; i++)
		y[i] = fixedpoint_double2fixed(y_double[i], Q_N, Q_M);
	
	int y01 = fixedpoint_add(y[0], y[1], Q_N, Q_M);
	int y24 = fixedpoint_add(y[2], y[4], Q_N, Q_M);
	int y67 = fixedpoint_add(y[6], y[7], Q_N, Q_M);
	int y35 = fixedpoint_add(y[3], y[5], Q_N, Q_M);
	
	int y12 = fixedpoint_add(y[1], y[2], Q_N, Q_M);
	int y04 = fixedpoint_add(y[0], y[4], Q_N, Q_M);
	int y37 = fixedpoint_add(y[3], y[7], Q_N, Q_M);
	int y56 = fixedpoint_add(y[5], y[6], Q_N, Q_M);
	
	int y14 = fixedpoint_add(y[1], y[4], Q_N, Q_M);
	int y02 = fixedpoint_add(y[0], y[2], Q_N, Q_M);
	int y57 = fixedpoint_add(y[5], y[7], Q_N, Q_M);
	int y36 = fixedpoint_add(y[3], y[6], Q_N, Q_M);
	
	int y0124 = fixedpoint_add(y01, y24, Q_N, Q_M);
	int y3567 = fixedpoint_add(y35, y67, Q_N, Q_M);
	
	int stage_L[4];
	int stage_R[4];
	int stage_LR;
	int stage_M = INT_MAX;
	
	uint8_t path_L[4];
	uint8_t path_R[4];
	uint8_t path_M = 0;
	


	if(y0124 < 0) {
		stage_L[0] = y0124;
		path_L[0] = 0;
	}
	else {
		stage_L[0] = 0;
		path_L[0] = 1;
	}
	
	if(y01 < y24) {
		stage_L[1] = y01;
		path_L[1] = 0;
	}
	else {
		stage_L[1] = y24;
		path_L[1] = 1;
	}
	
	if(y12 < y04) {
		stage_L[2] = y12;
		path_L[2] = 2;
	}
	else {
		stage_L[2] = y04;
		path_L[2] = 3;
	}
	
	if(y14 < y02) {
		stage_L[3] = y14;
		path_L[3] = 2;
	}
	else {
		stage_L[3] = y02;
		path_L[3] = 3;
	}

	if(y3567 < 0) {
		stage_R[0] = y3567;
		path_R[0] = 0;
	}
	else {
		stage_R[0] = 0;
		path_R[0] = 1;
	}
	
	if(y67 < y35) {
		stage_R[1] = y67;
		path_R[1] = 0;
	}
	else {
		stage_R[1] = y35;
		path_R[1] = 1;
	}
	
	if(y37 < y56) {
		stage_R[2] = y37;
		path_R[2] = 2;
	}
	else {
		stage_R[2] = y56;
		path_R[2] = 3;
	}
	
	if(y57 < y36) {
		stage_R[3] = y57;
		path_R[3] = 2;
	}
	else {
		stage_R[3] = y36;
		path_R[3] = 3;
	}
	
	for(i=0 ; i<4 ; i++) {
		stage_LR = fixedpoint_add(stage_L[i], stage_R[i], Q_N, Q_M);
		if(stage_LR < stage_M) {
			stage_M = stage_LR;
			path_M = i;
		}
	}

	(*m_est)[0] = (path_L[path_M] & 1) ^ (path_L[path_M] >> 1);
	(*m_est)[1] = path_L[path_M] & 1;
	(*m_est)[2] = (path_M - path_L[path_M]) == 0 ? 0 : 1;
	(*m_est)[3] = (path_M - path_R[path_M]) == 0 ? 0 : 1;
}


void decoder_decode(uint8_t **m_est, double *y, code_t code, decoder_t decoder, modulator_t modulator, int Q_N, int Q_M) {
	if(decoder == MLE)
		decode_mle(m_est, y, code, modulator);
		
	if(decoder == VITERBI)
		decode_viterbi(m_est, y);
		
	if(decoder == VITERBI_FIXEDPOINT)
		decode_viterbi_fixedpoint(m_est, y, Q_N, Q_M);
		
}
