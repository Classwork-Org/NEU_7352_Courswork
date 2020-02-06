#!/bin/bash

source=$1;

gcc -O3 ../source/$source.c;

sum=0;
for i in {0..19}; do 
	var=$((time ./a.out) |& grep "real" | grep -Eoi "[0-9]+\.[0-9]+"); 
	sum=$(echo "$sum+$var" | bc);
	echo "Iteration $i: runtime: $var";
done


average=$(echo "$sum/20" | bc -l);
echo "Average: $average";

rm ./a.out;
