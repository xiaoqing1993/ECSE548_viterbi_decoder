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
	uint8_t i;
	
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
	double stage_LR[4];
	double stage_LR01, stage_LR23;
	
	uint8_t m0_0, m0_1, m0_2, m0_3, m0_01, m0_23;
	uint8_t m1_0, m1_1, m1_2, m1_3, m1_01, m1_23;
	uint8_t m2_0, m2_1, m2_2, m2_3, m2_01, m2_23;
	uint8_t m3_0, m3_1, m3_2, m3_3, m3_01, m3_23;
	

	if(y0124 < 0) {
		stage_L[0] = y0124;
		m0_0 = 0;
		m1_0 = 0;
		m2_0 = 0;
	}
	else {
		stage_L[0] = 0;
		m0_0 = 1;
		m1_0 = 1;
		m2_0 = 1;
	}
	
	if(y01 < y24) {
		stage_L[1] = y01;
		m0_1 = 0;
		m1_1 = 0;
		m2_1 = 1;
	}
	else {
		stage_L[1] = y24;
		m0_1 = 1;
		m1_1 = 1;
		m2_1 = 0;
	}
	
	if(y12 < y04) {
		stage_L[2] = y12;
		m0_2 = 1;
		m1_2 = 0;
		m2_2 = 0;
	}
	else {
		stage_L[2] = y04;
		m0_2 = 0;
		m1_2 = 1;
		m2_2 = 1;
	}
	
	if(y14 < y02) {
		stage_L[3] = y14;
		m0_3 = 1;
		m1_3 = 0;
		m2_3 = 1;
	}
	else {
		stage_L[3] = y02;
		m0_3 = 0;
		m1_3 = 1;
		m2_3 = 0;
	}

	if(y3567 < 0) {
		stage_R[0] = y3567;
		m3_0 = 0;
	}
	else {
		stage_R[0] = 0;
		m3_0 = 1;
	}
	
	if(y67 < y35) {
		stage_R[1] = y67;
		m3_1 = 1;
	}
	else {
		stage_R[1] = y35;
		m3_1 = 0;
	}
	
	if(y37 < y56) {
		stage_R[2] = y37;
		m3_2 = 0;
	}
	else {
		stage_R[2] = y56;
		m3_2 = 1;
	}
	
	if(y57 < y36) {
		stage_R[3] = y57;
		m3_3 = 1;
	}
	else {
		stage_R[3] = y36;
		m3_3 = 0;
	}
	
	for(i=0 ; i<4 ; i++)
		stage_LR[i] = stage_L[i] + stage_R[i];
	
	if(stage_LR[0] < stage_LR[1]) {
		stage_LR01 = stage_LR[0];
		m0_01 = m0_0;
		m1_01 = m1_0;
		m2_01 = m2_0;
		m3_01 = m3_0;
	}
	else {
		stage_LR01 = stage_LR[1];
		m0_01 = m0_1;
		m1_01 = m1_1;
		m2_01 = m2_1;
		m3_01 = m3_1;
	}
	
	if(stage_LR[2] < stage_LR[3]) {
		stage_LR23 = stage_LR[2];
		m0_23 = m0_2;
		m1_23 = m1_2;
		m2_23 = m2_2;
		m3_23 = m3_2;
	}
	else {
		stage_LR23 = stage_LR[3];
		m0_23 = m0_3;
		m1_23 = m1_3;
		m2_23 = m2_3;
		m3_23 = m3_3;
	}
	
	if(stage_LR01 < stage_LR23) {
		(*m_est)[0] = m0_01;
		(*m_est)[1] = m1_01;
		(*m_est)[2] = m2_01;
		(*m_est)[3] = m3_01;
	}
	else {
		(*m_est)[0] = m0_23;
		(*m_est)[1] = m1_23;
		(*m_est)[2] = m2_23;
		(*m_est)[3] = m3_23;
	}
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
	int stage_LR[4];
	int stage_LR01, stage_LR23;
	
	uint8_t m0_0, m0_1, m0_2, m0_3, m0_01, m0_23;
	uint8_t m1_0, m1_1, m1_2, m1_3, m1_01, m1_23;
	uint8_t m2_0, m2_1, m2_2, m2_3, m2_01, m2_23;
	uint8_t m3_0, m3_1, m3_2, m3_3, m3_01, m3_23;
	

	if(y0124 < 0) {
		stage_L[0] = y0124;
		m0_0 = 0;
		m1_0 = 0;
		m2_0 = 0;
	}
	else {
		stage_L[0] = 0;
		m0_0 = 1;
		m1_0 = 1;
		m2_0 = 1;
	}
	
	if(y01 < y24) {
		stage_L[1] = y01;
		m0_1 = 0;
		m1_1 = 0;
		m2_1 = 1;
	}
	else {
		stage_L[1] = y24;
		m0_1 = 1;
		m1_1 = 1;
		m2_1 = 0;
	}
	
	if(y12 < y04) {
		stage_L[2] = y12;
		m0_2 = 1;
		m1_2 = 0;
		m2_2 = 0;
	}
	else {
		stage_L[2] = y04;
		m0_2 = 0;
		m1_2 = 1;
		m2_2 = 1;
	}
	
	if(y14 < y02) {
		stage_L[3] = y14;
		m0_3 = 1;
		m1_3 = 0;
		m2_3 = 1;
	}
	else {
		stage_L[3] = y02;
		m0_3 = 0;
		m1_3 = 1;
		m2_3 = 0;
	}

	if(y3567 < 0) {
		stage_R[0] = y3567;
		m3_0 = 0;
	}
	else {
		stage_R[0] = 0;
		m3_0 = 1;
	}
	
	if(y67 < y35) {
		stage_R[1] = y67;
		m3_1 = 1;
	}
	else {
		stage_R[1] = y35;
		m3_1 = 0;
	}
	
	if(y37 < y56) {
		stage_R[2] = y37;
		m3_2 = 0;
	}
	else {
		stage_R[2] = y56;
		m3_2 = 1;
	}
	
	if(y57 < y36) {
		stage_R[3] = y57;
		m3_3 = 1;
	}
	else {
		stage_R[3] = y36;
		m3_3 = 0;
	}
	
	for(i=0 ; i<4 ; i++)
		stage_LR[i] = fixedpoint_add(stage_L[i], stage_R[i], Q_N, Q_M);
	
	if(stage_LR[0] < stage_LR[1]) {
		stage_LR01 = stage_LR[0];
		m0_01 = m0_0;
		m1_01 = m1_0;
		m2_01 = m2_0;
		m3_01 = m3_0;
	}
	else {
		stage_LR01 = stage_LR[1];
		m0_01 = m0_1;
		m1_01 = m1_1;
		m2_01 = m2_1;
		m3_01 = m3_1;
	}
	
	if(stage_LR[2] < stage_LR[3]) {
		stage_LR23 = stage_LR[2];
		m0_23 = m0_2;
		m1_23 = m1_2;
		m2_23 = m2_2;
		m3_23 = m3_2;
	}
	else {
		stage_LR23 = stage_LR[3];
		m0_23 = m0_3;
		m1_23 = m1_3;
		m2_23 = m2_3;
		m3_23 = m3_3;
	}
	
	if(stage_LR01 < stage_LR23) {
		(*m_est)[0] = m0_01;
		(*m_est)[1] = m1_01;
		(*m_est)[2] = m2_01;
		(*m_est)[3] = m3_01;
	}
	else {
		(*m_est)[0] = m0_23;
		(*m_est)[1] = m1_23;
		(*m_est)[2] = m2_23;
		(*m_est)[3] = m3_23;
	}
}

void decoder_decode(uint8_t **m_est, double *y, code_t code, decoder_t decoder, modulator_t modulator, int Q_N, int Q_M) {
	if(decoder == MLE)
		decode_mle(m_est, y, code, modulator);
		
	if(decoder == VITERBI)
		decode_viterbi(m_est, y);
		
	if(decoder == VITERBI_FIXEDPOINT)
		decode_viterbi_fixedpoint(m_est, y, Q_N, Q_M);
		
}
