#!/bin/sh

# echo -e "ThrdCnt\tTime(s)"
# for((i=1;i<=4096;i*=2));
# do
#     t=$((time (./pi 1000000 $i)) |&  grep -Po "real\t[0-9]+m\K([0-9]+\.[0-9]+)")
#     echo -e "${i}\t${t}"
# done


echo -e "ThrdCnt\tTime(s)"
for((i=1;i<=128;i*=2));
do
    t=$((time (./sum 32768 $i)) |&  grep -Po "real\t[0-9]+m\K([0-9]+\.[0-9]+)")
    echo -e "${i}\t${t}"
done
