#!/bin/sh

cacheSize=8k
cacheBsize=64
cacheAssoc=4

echo -e "policy\tpdist\tpabort\tImiss\tDmiss"		

for policy in 'a' 'm' 't'; do 
	for (( distance = 0; distance < 20; distance++ )); do
		for (( percentage = 0; percentage < 80; percentage+=10 )); do
			miss=$(dineroIV \
			-l1-isize $cacheSize \
			-l1-ibsize $cacheBsize \
			-l1-iassoc $cacheAssoc \
			-l1-ifetch $policy \
			-l1-ipfdist $distance \
			-l1-ipfabort $percentage \
			-l1-dsize $cacheSize \
			-l1-dbsize $cacheBsize \
			-l1-dassoc $cacheAssoc \
			-l1-dfetch $policy \
			-l1-dpfdist $distance \
			-l1-dpfabort $percentage \
			-informat d < trace \
			| grep -Po 'Demand miss rate\t +\K([0-9]+\.[0-9]+)')
			imiss=$(echo $miss | grep -Po "^([0-9]+\.[0-9]+)")		
			dmiss=$(echo $miss | grep -Po "([0-9]+\.[0-9]+)$")		
			echo -e "${policy}\t${distance}\t${percentage}\t${imiss}\t${dmiss}"		
		done
	done
done