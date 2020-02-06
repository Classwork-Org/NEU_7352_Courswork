#!/bin/bash

source=$1;
flag=$2;

rm -rf ./asm_files;
mkdir ./asm_files;

gcc -O3 -S $flag ../source/$source.c -o ./asm_files/$source.with_flag$flag.asm;
gcc -O3 -S ../source/$source.c -o ./asm_files/$source.no_flag.asm;
