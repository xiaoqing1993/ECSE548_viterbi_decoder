#!/bin/bash

SRC_DIR=./src
INC_DIR=./inc
PROG_NAME=main
EXE_FILES=*.exe
STACKDUMP_FILES=*.exe.stackdump
CC=gcc
FLAGS=-lm -Ofast -Wall -Wextra
#-lm -lgsl -lgslcblas -pthread -Ofast -Wall -Wextra -g -pg

SRC_FILES=$(SRC_DIR)/*.c
INC_FILES=$(INC_DIR)/*.h

all:
	$(CC) $(SRC_FILES) $(INC_FILES) -o $(PROG_NAME) $(FLAGS)

clean:
	$(RM) $(EXE_FILES)
	$(RM) $(STACKDUMP_FILES)
