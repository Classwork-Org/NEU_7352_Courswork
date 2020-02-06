all:
	cd ./pintools/source/tools/ManualExamples && $(MAKE) && mv ./obj-intel64/mem_trace.* ../../../../bin/
	gcc ./src/fibb.c -o ./bin/fibb.o

clean:
	rm -f ./bin/*;
	cd ./pintools/source/tools/ManualExamples && $(MAKE) clean;


