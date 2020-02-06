#!/bin/bash
 
compiler=$1;
source=$2;

if [[ ($compiler == "icc") ]] || [[ ($compiler == "gcc") ]] || [[ ($compiler == "arm_gcc") ]] || [[ ($compiler == "32_gcc") ]]; then
        
        	echo "Compiler set as ${compiler}";
        	
		rm -f ../bin/$source.$compiler.*;
		rm -f ../asm/$source.$compiler.*;

		if [[ ($compiler == "arm_gcc") ]]; then 
			compiler="gcc";
			compiler_file_name="arm_gcc";
		elif [[ ($compiler == "32_gcc") ]]; then 
			compiler="gcc";
			compiler_file_name="32_gcc";
		else
			compiler_file_name=$compiler;
		fi


		for i in {0..3};
		do 
			$compiler -O$i -S ../source/$source.c -fverbose-asm -o ../asm/$source.$compiler_file_name.opt$i.asm; 
			$compiler -O$i -pg ../source/$source.c -o ../bin/$source.$compiler_file_name.opt$i.bin;
		done

else
        echo "invalid compiler set";
fi
