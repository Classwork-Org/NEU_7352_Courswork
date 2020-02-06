import pdb

last_addr = 0
i = 0
next_addr = 0
c = 0
target_set = set()
two_entry_hits = 0
with open('../trace/itrace.out','r') as file:
	for next_addr in file:
		if i > 0:
			if last_addr == '0x4008fe\n':
				target_set.update([int(next_addr.strip(),16)])
				if(len(target_set) > 1):
					two_entry_hits += 1
				c += 1

		last_addr = next_addr
		i+=1
print(sorted(target_set), c, two_entry_hits)