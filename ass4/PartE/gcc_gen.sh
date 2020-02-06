#!/bin/sh

gcc -O3 -fno-aggressive-loop-optimizations -fno-inline -fno-guess-branch-probability conv_benchmark.c -o test -pthread -lm && pin -t allcache.so -- ./test &> ABC

gcc -O3 -fno-aggressive-loop-optimizations -fno-guess-branch-probability conv_benchmark.c -o test -pthread -lm && pin -t allcache.so -- ./test &> AC

gcc -O3 -fno-aggressive-loop-optimizations -fno-inline conv_benchmark.c -o test -pthread -lm && pin -t allcache.so -- ./test &> AB

gcc -O3 -fno-inline -fno-guess-branch-probability conv_benchmark.c -o test -pthread -lm && pin -t allcache.so -- ./test &> BC

