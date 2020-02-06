#!/bin/bash

# FOR X86_64
#options="-fno-aggressive-loop-optimizations -fno-align-functions -fno-align-jumps -fno-align-labels -fno-align-loops -fno-asynchronous-unwind-tables -fno-branch-count-reg -fno-caller-saves -fno-combine-stack-adjustments -fno-common -fno-compare-elim -fno-cprop-registers -fno-crossjumping -fno-cse-follow-jumps -fno-dce -fno-defer-pop -fno-delete-null-pointer-checks -fno-devirtualize -fno-dse -fno-early-inlining -fno-expensive-optimizations -fno-forward-propagate -fno-gcse -fno-gcse-after-reload -fno-gcse-lm -fno-guess-branch-probability -fno-hoist-adjacent-loads -fno-if-conversion -fno-if-conversion2 -fno-inline -fno-inline-atomics -fno-inline-functions -fno-inline-functions-called-once -fno-inline-small-functions -fno-ipa-cp -fno-ipa-cp-clone -fno-ipa-profile -fno-ipa-pure-const -fno-ipa-reference -fno-ipa-sra -fno-ira-hoist-pressure -fno-ivopts -fno-jump-tables -fno-math-errno -fno-merge-constants -fno-move-loop-invariants -fno-optimize-register-move -fno-optimize-sibling-calls -fno-optimize-strlen -fno-peephole -fno-peephole2 -fno-predictive-commoning -fno-prefetch-loop-arrays -fno-regmove -fno-rename-registers -fno-reorder-blocks -fno-reorder-functions -fno-rerun-cse-after-loop -fno-rtti -fno-sched-critical-path-heuristic -fno-sched-dep-count-heuristic -fno-sched-group-heuristic -fno-sched-interblock -fno-sched-last-insn-heuristic -fno-sched-rank-heuristic -fno-sched-spec -fno-sched-spec-insn-heuristic -fno-sched-stalled-insns-dep -fno-schedule-insns2 -fno-short-enums -fno-shrink-wrap -fno-signed-zeros -fno-split-ivs-in-unroller -fno-split-wide-types -fno-strict-aliasing -fno-thread-jumps -fno-threadsafe-statics -fno-toplevel-reorder -fno-trapping-math -fno-tree-bit-ccp -fno-tree-builtin-call-dce -fno-tree-ccp -fno-tree-ch -fno-tree-coalesce-vars -fno-tree-copy-prop -fno-tree-copyrename -fno-tree-cselim -fno-tree-dce -fno-tree-dominator-opts -fno-tree-dse -fno-tree-forwprop -fno-tree-fre -fno-tree-loop-distribute-patterns -fno-tree-loop-if-convert -fno-tree-loop-im -fno-tree-loop-ivcanon -fno-tree-loop-optimize -fno-tree-partial-pre -fno-tree-phiprop -fno-tree-pre -fno-tree-pta -fno-tree-reassoc -fno-tree-scev-cprop -fno-tree-sink -fno-tree-slp-vectorize -fno-tree-slsr -fno-tree-sra -fno-tree-switch-conversion -fno-tree-tail-merge -fno-tree-ter -fno-tree-vect-loop-version -fno-tree-vectorize -fno-tree-vrp -fno-unit-at-a-time -fno-unswitch-loops -fno-var-tracking -fno-var-tracking-assignments -fno-vect-cost-model -fno-web -ffast-math" 

source="conv_benchmark.c";
i=0

# echo -e "Optimization\tl1_icache\tl1_dcache\tl2_ucache\tl3_ucache"
printf "%-40s | %-10s | %-10s | %-10s | %-10s\n" "Optimization" "l1_icache" "l1_dcache" "l2_ucache" "l3_ucache"
	
#for option in $options; do
     
    # echo -e "Testing\t$option\t$i/120";
    data=$((gcc -O3 $source -o test -pthread -lm && pin -t allcache.so -- ./test) 2>&1);
    l1_icache=$(echo $data | grep -Po "Total Miss Rate: +\K([0-9]+\.[0-9]+)" | head -3 | tail -1)
    l1_dcache=$(echo $data | grep -Po "Total Miss Rate: +\K([0-9]+\.[0-9]+)" | head -4 | tail -1)
    l2_ucache=$(echo $data | grep -Po "Total Miss Rate: +\K([0-9]+\.[0-9]+)" | head -5 | tail -1)
    l3_ucache=$(echo $data | grep -Po "Total Miss Rate: +\K([0-9]+\.[0-9]+)" | head -6 | tail -1)
	printf "%-40s | %-10s | %-10s | %-10s | %-10s\n" "Baseline O3" $l1_icache $l1_dcache $l2_ucache $l3_ucache
    i=$((i+1))

#done

rm ./test;

