#!/bin/python

import math

INS_IF	= 2
DAT_RD	= 0
DAT_WR	= 1

addr_bits	=	64
byte		=	1
kbyte		=	byte*1024

cache_size	=	16*kbyte
block_size	=	16*byte
cache_way	=	4

offset_bits	=	int(math.log(block_size,2))
index_bits	=	int(math.log(cache_size/(block_size*cache_way), 2))
max_index	=	int(2**index_bits)
max_offset	=	int(2**offset_bits)
tag_bits	=	int(addr_bits-index_bits-offset_bits) 

def hexpack(tag, idx, blck):
	dec_pieces	= (tag, idx, blck)
	dec_sizes	= (tag_bits,index_bits,offset_bits)
	addr = []
	for dec, sz in zip(dec_pieces,dec_sizes):
		if sz != 0:
			addr.append(format(dec, '0%db' % (sz)))
	bin_addr	= ''.join(addr)
	int_addr	= int(bin_addr,2)
	hex_addr	= format(int_addr,'0%dx' % (addr_bits/8)) 
	return hex_addr

def addr_ref(op, addr):
	return str(op)+' '+addr

def trace_gen_1():
	addr_trace	=	[]
	for index in range(max_index):
		addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 0, idx = index, blck = 0))) #M
	return addr_trace	

def trace_gen_2():
	addr_trace	=	[]
	for index in range(max_index):
		addr_trace.append(addr_ref(op = INS_IF, 
			addr = hexpack(tag = 0, idx = index, blck = 0))) #M
		addr_trace.append(addr_ref(op = INS_IF, 
			addr = hexpack(tag = 1, idx = index, blck = 0))) #M
		addr_trace.append(addr_ref(op = INS_IF, 
			addr = hexpack(tag = 0, idx = index, blck = 0))) #H
		addr_trace.append(addr_ref(op = INS_IF, 
			addr = hexpack(tag = 1, idx = index, blck = 0))) #H
		addr_trace.append(addr_ref(op = INS_IF, 
			addr = hexpack(tag = 0, idx = index, blck = 0))) #H
		addr_trace.append(addr_ref(op = INS_IF, 
			addr = hexpack(tag = 1, idx = index, blck = 0))) #H
		addr_trace.append(addr_ref(op = INS_IF, 
			addr = hexpack(tag = 2, idx = index, blck = 0))) #M
	return addr_trace

def trace_gen_3():
	addr_trace	=	[]
	for index in range(max_index):
		addr_trace.append(addr_ref(op = INS_IF, 
			addr = hexpack(tag = 0, idx = index, blck = 0))) #M
		addr_trace.append(addr_ref(op = INS_IF, 
			addr = hexpack(tag = 0, idx = index, blck = 0))) #H
		addr_trace.append(addr_ref(op = INS_IF, 
			addr = hexpack(tag = 1, idx = index, blck = 0))) #M
		addr_trace.append(addr_ref(op = INS_IF, 
			addr = hexpack(tag = 1, idx = index, blck = 0))) #H
		addr_trace.append(addr_ref(op = INS_IF, 
			addr = hexpack(tag = 2, idx = index, blck = 0))) #M
		addr_trace.append(addr_ref(op = INS_IF, 
			addr = hexpack(tag = 2, idx = index, blck = 0))) #H
		addr_trace.append(addr_ref(op = INS_IF, 
			addr = hexpack(tag = 0, idx = index, blck = 0))) #M
		addr_trace.append(addr_ref(op = INS_IF, 
			addr = hexpack(tag = 0, idx = index, blck = 0))) #H
		addr_trace.append(addr_ref(op = INS_IF, 
			addr = hexpack(tag = 1, idx = index, blck = 0))) #M
		addr_trace.append(addr_ref(op = INS_IF, 
			addr = hexpack(tag = 1, idx = index, blck = 0))) #H
	return addr_trace

def trace_gen_4():
	addr_trace	=	[]
	for index in range(max_index):
		addr_trace.append(addr_ref(op = DAT_WR, 
			addr = hexpack(tag = 0, idx = index, blck = 0))) #M
		addr_trace.append(addr_ref(op = DAT_WR, 
			addr = hexpack(tag = 1, idx = index, blck = 0))) #M
		addr_trace.append(addr_ref(op = DAT_WR, 
			addr = hexpack(tag = 2, idx = index, blck = 0))) #M
		addr_trace.append(addr_ref(op = DAT_RD, 
			addr = hexpack(tag = 0, idx = index, blck = 0))) #H
		addr_trace.append(addr_ref(op = DAT_RD, 
			addr = hexpack(tag = 1, idx = index, blck = 0))) #H
		addr_trace.append(addr_ref(op = DAT_RD, 
			addr = hexpack(tag = 2, idx = index, blck = 0))) #H
		addr_trace.append(addr_ref(op = DAT_WR, 
			addr = hexpack(tag = 1, idx = index, blck = 0))) #H
		addr_trace.append(addr_ref(op = DAT_WR, 
			addr = hexpack(tag = 2, idx = index, blck = 0))) #H
	return addr_trace

def trace_gen_5():
	addr_trace	=	[]
	# dec_sizes	= (tag_bits,index_bits,offset_bits)
	# print(dec_sizes)
	# for index in range(max_index):
	# 	addr_trace.append(addr_ref(op = DAT_RD, addr = hexpack(tag = 0, idx = index, blck = 0))) #M
	# for index in range(max_index):
	# 	addr_trace.append(addr_ref(op = DAT_RD, addr = hexpack(tag = 0, idx = index, blck = 0))) #M

	# To get cache size, assume size but also assume full associativity or direct mapped
	# Then start filling by reading addresses in multiples of block size, so increment tag
	# or index by block size. Do that until you hit max way size (If fully associative)
	# or max index (if direct mapped). Check address 0, if it's there then the wrong size
	# was predicted. If it's not then that that's the cache size. This works regardles of
	# actual size/ associativity because you're just filling up the cache completey and 
	# that will happen regardless of it's properties.  

	# for way in range(cache_way+1):
	# 	addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = way, idx = 0, blck = 0))) #M
	# addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 0, idx = 0, blck = 0))) #M

	# To get associativity, assume associativity from 1 -> Full @ previously defined cache
	# size. Since you start off with more index bits than actual you overestimate the tag
	# but that doesn't matter since you're checking to see when address 0 is knocked out. 
	# So general flow would be to pick associativity, increment tag at index 0, and depending
	# on assumed associativity check after (assumec way +1) address refernces. If it's address 0 is still
	# there then the assumed associativity was wrong and you have to increment way. Repeat
	# for higher assumed associativity. If it's not there check for conflict miss. 
	for way in range(5+1):
		addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = way, idx = 0, blck = 0))) #M
	addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 0, idx = 0, blck = 0))) #M

	return addr_trace

def trace_gen_6_lru_vs_fifo():
	addr_trace	=	[]

	addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 0, idx = 1, blck = 0))) #M
	addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 1, idx = 1, blck = 0))) #M
	addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 2, idx = 1, blck = 0))) #M
	addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 3, idx = 1, blck = 0))) #M
	addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 0, idx = 1, blck = 0))) #H
	addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 4, idx = 1, blck = 0))) #M
	addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 0, idx = 1, blck = 0))) #H
	return addr_trace

def trace_gen_6_random():
	addr_trace	=	[]
	for index in range(max_index):
		addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 0, idx = index, blck = 0))) #M
		addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 1, idx = index, blck = 0))) #M
		addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 2, idx = index, blck = 0))) #M
		addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 3, idx = index, blck = 0))) #M
		addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 4, idx = index, blck = 0))) #M
		addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 0, idx = index, blck = 0))) #?
	return addr_trace

def trace_gen_split_vs_combined():
	addr_trace	=	[]
	addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 0, idx = 0, blck = 0))) #M
	addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 0, idx = 0, blck = 0))) #M
	addr_trace.append(addr_ref(op = DAT_RD, addr = hexpack(tag = 0, idx = 0, blck = 0))) #M
	addr_trace.append(addr_ref(op = DAT_RD, addr = hexpack(tag = 0, idx = 0, blck = 0))) #M
	return addr_trace

def trace_gen_prefetch_tagged_test():
	addr_trace	=	[]
	# for idx in range(100):		
	addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 0, idx = 0, blck = 0))) #M
	addr_trace.append(addr_ref(op = DAT_RD, addr = hexpack(tag = 0, idx = 0, blck = 0))) #M
	addr_trace.append(addr_ref(op = INS_IF, addr = hexpack(tag = 0, idx = 1, blck = 0))) #M
	addr_trace.append(addr_ref(op = DAT_WR, addr = hexpack(tag = 0, idx = 1, blck = 0))) #M
	return addr_trace


for tr in trace_gen_5():
	print(tr)
