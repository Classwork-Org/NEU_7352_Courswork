#!/bin/bash

# TODO: (2) pass all data with more accuracy depending on compiler to data folder
# TODO: (2) Vary loop iterations after before running multiple times



compiler=$1;
source=$2;

if [[ ($compiler == "icc") ]] || [[ ($compiler == "gcc") ]] || [[ ($compiler == "arm_gcc") ]] || [[ ($compiler == "32_gcc") ]]; then

		if [[ ($compiler == "arm_gcc") ]]; then 
			compiler="gcc";
			compiler_file_name="arm_gcc";
		elif [[ ($compiler == "32_gcc") ]]; then 
			compiler="gcc";
			compiler_file_name="32_gcc";
		else
			compiler_file_name=$compiler;
		fi

		printf "\n"        
        echo "Compiler set as ${compiler}";
		rm -f ../data/$source.$compiler_file_name.*;
		rm -f ./gmon.out;

		runNumber=0;

		for opt in {3..3};
		do
			for iter in {0..10};
			do
				printf "\n"
				echo "ITERATION ${runNumber}: Running ${source}.${compiler_file_name}.opt${opt}.bin, iteration num ${iter}, loop count ${loops}" | tee -a ../data/$source.$compiler_file_name.results;
				printf "\n"
				../bin/$source.$compiler_file_name.opt$opt.bin $loops | tee -a ../data/$source.$compiler_file_name.results;
				
				gprof ../bin/$source.$compiler_file_name.opt$opt.bin ./gmon.out > ../data/$source.$compiler_file_name.o$opt.i$iter.l5E8.gprof;
				rm ./gmon.out;
				runNumber=$((runNumber+1));
			done
		done


else
        echo "invalid compiler set";
fi
