import re

with open('../data/drystone.gcc.results', 'r') as file:

	res = []

	data = file.read()
	
	for eachOpt in range(0,4):
		temp = re.findall(r'Running drystone.gcc.opt%s.bin[, \w\n]+Dhrystone time for 500000000 passes = [0-9]+\nThis machine benchmarks at ([0-9]+) dhrystones/second' % str(eachOpt), data)
		temp = [int(x) for x in temp]
		average = sum(temp)/len(temp)
		res.append('Opt %s, average dhrystones: %f\n' %(eachOpt, average))

	with open('../data/drystone.gcc.averages', 'w+') as destination:
		for eachLine in res:
			destination.write(eachLine)


		
	
			
