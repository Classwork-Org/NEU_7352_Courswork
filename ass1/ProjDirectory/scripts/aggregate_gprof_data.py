import glob
import re
import csv
import sys

section_Regex = r'^Flat profile:(.|\n)+ % +the'
data_Regex = r'(?P<ptime>[0-9]+\.?[0-9]*) +(?P<cumulative_time>[0-9]+\.?[0-9]*) +(?P<self_time>[0-9]+\.*[0-9]+) +(?P<calls>[0-9]*) +(?P<self_calls>[0-9]*\.*[0-9]*) +(?P<total_self_calls>[0-9]*\.*[0-9]*) +(?P<name>[a-zA-Z0-9\_]+)\n'


source_file = sys.argv[2]
compiler = sys.argv[1]

opt_dic = dict()


for each_optimization in range(0,4):

		glob_dir = '../data/%s.%s.o%s%s' %(source_file, compiler, str(each_optimization),'.i*.l5E8*')
		file_dir = glob.glob(glob_dir)
		number_of_iterations = len(file_dir)
		func_dict = dict()
	
		for each_iteration in file_dir:

			with open(each_iteration, 'r') as file:

				data = file.read()
				section = re.search(section_Regex,data).group(0)

				for each_match in re.finditer(data_Regex, section):

						func_ptime = float(each_match.group('ptime'))
						func_cumulative_time = float(each_match.group('cumulative_time'))
						func_self_time = float(each_match.group('self_time'))
						func_calls = float(each_match.group('calls') if (len(each_match.group('calls')) > 0 ) else 0)
						func_self_calls = float(each_match.group('self_calls') if (len(each_match.group('self_calls')) > 0) else 0)
						func_total_self_calls = float(each_match.group('total_self_calls') if (len(each_match.group('total_self_calls')) > 0) else 0)		
						func_name = each_match.group('name')

						if(func_name not in func_dict):

							func_data = {
								'ptime' : func_ptime,
								'cumulative_time' : func_cumulative_time,
								'self_time' : func_self_time,
								'calls' : func_calls,
								'self_calls' : func_self_calls,
								'total_self_calls' : func_total_self_calls
							}
							func_dict[func_name] = func_data

						else:

							func_data = func_dict[func_name]
							func_data['ptime'] += func_ptime
							func_data['cumulative_time'] += func_cumulative_time
							func_data['self_time'] += func_self_time
							func_data['calls'] += func_calls
							func_data['self_calls'] += func_self_calls
							func_data['total_self_calls'] += func_total_self_calls

		for each_func in func_dict:
			func_dict[each_func] = {name: value / number_of_iterations for name, value in func_dict[each_func].iteritems()}
 

		opt_dic[each_optimization] = func_dict


with open('../data/%s.%s.profiler_analysis.csv' %(source_file, compiler), 'wb') as csv_file:

	file_writer = csv.writer(csv_file, delimiter=',',quotechar='|', quoting=csv.QUOTE_MINIMAL)

	file_writer.writerow(['Source', 'Compiler'])
	file_writer.writerow([source_file, compiler])

	for each_optimization in opt_dic:
		
		file_writer.writerow([' '])
		file_writer.writerow(['Optimization level', each_optimization])
		file_writer.writerow(['name','%','cumulative_time','self_time','calls','self_calls','total_self_calls'])

		func_data = opt_dic[each_optimization]

		for each_func in func_data:

			func_ptime = func_data[each_func]['ptime']
			func_cumulative_time = func_data[each_func]['cumulative_time']
			func_self_time = func_data[each_func]['self_time']
			func_calls = func_data[each_func]['calls']
			func_self_calls = func_data[each_func]['self_calls']
			func_total_self_calls = func_data[each_func]['total_self_calls']

			file_writer.writerow([each_func,func_ptime,func_cumulative_time,func_self_time,func_calls,func_self_calls,func_total_self_calls])