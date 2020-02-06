all:
	gcc ./source/qsort.c -o ./bin/qsort
	cd ./pintools/source/tools/ManualExamples && $(MAKE) && mv ./obj-intel64/inst_cat.* ../../../../bin/
	gcc ./source/conv_benchmark.c -o ./bin/conv_benchmark -lm -pthread
	gcc ./source/kann_benchmark.c -o ./bin/kann_benchmark -lm
	gcc ./source/empty.c -o ./bin/empty
	gcc -S ./source/conv_benchmark.c -o ./assembly/x86/conv_benchmark.s -lm -pthread
	gcc -S ./source/kann_benchmark.c -o ./assembly/x86/kann_benchmark.s -lm
	

conv:
	time ./bin/conv_benchmark

clean:
	rm -f ./bin/*;
	cd ./pintools/source/tools/ManualExamples && $(MAKE) clean;


