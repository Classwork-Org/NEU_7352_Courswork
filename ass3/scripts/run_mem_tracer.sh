#!/bin/sh

../pintools/pin -t ../bin/mem_trace.so -o ../data/$1.inst_count -- ../bin/$1;

