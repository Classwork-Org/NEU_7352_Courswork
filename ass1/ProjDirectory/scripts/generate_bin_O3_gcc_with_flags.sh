#!/bin/bash

new_flag=$1
source=$2

echo "recieved opt flag: $new_flag for compiler and source $source"

gcc -w -O3 $new_flag ../source/$source.c;


