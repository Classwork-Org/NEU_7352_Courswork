#!/bin/sh

echo -e "Arch\tCSize\tBSize\tAssoc\tImiss\tDmiss\tUmiss"		

# for (( cacheSize = 8; cacheSize <= 32; cacheSize*=2 )); do
# 	for (( assoc = 2; assoc <= 8; assoc*=2 )); do
# 		for (( blkSize = 16; blkSize <= 512; blkSize*=4 )); do
# 			miss=$(dineroIV \
# 			-l1-isize "${cacheSize}K" \
# 			-l1-ibsize $blkSize \
# 			-l1-iassoc $assoc \
# 			-l1-dbsize $blkSize \
# 			-l1-dsize "${cacheSize}K" \
# 			-l1-dassoc $assoc \
# 			-informat d < trace \
# 			| grep -Po 'Demand miss rate\t +\K([0-9]+\.[0-9]+)')
# 			imiss=$(echo $miss | grep -Po "^([0-9]+\.[0-9]+)")		
# 			dmiss=$(echo $miss | grep -Po "([0-9]+\.[0-9]+)$")		
# 			echo -e "SPLIT\t${cacheSize}K\t$blkSize\t$assoc\t$imiss\t$dmiss\t-"		
# 		done
# 	done
# done

for (( cacheSize = 16; cacheSize <= 16; cacheSize*=2 )); do
	for (( assoc = 2; assoc <= 4; assoc*=2 )); do
		for (( blkSize = 16; blkSize <= 256; blkSize*=4 )); do
			# miss=$(
			dineroIV \
			-l1-usize "${cacheSize}K" \
			-l1-ubsize $blkSize \
			-l1-uassoc $assoc \
			-informat d < trace \
			# | grep -Po 'Demand miss rate\t +\K([0-9]+\.[0-9]+)')
			# echo -e "UNIF\t${cacheSize}K\t$blkSize\t$assoc\t-\t-\t$miss"		
		done
	done
done
