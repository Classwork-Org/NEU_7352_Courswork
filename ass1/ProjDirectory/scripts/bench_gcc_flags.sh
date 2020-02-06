#!/bin/bash
# FOR ARM:
# options="-fno-aggressive-loop-optimizations -fno-align-functions -fno-align-jumps -fno-align-labels -fno-align-loops -fno-auto-inc-dec -fno-branch-count-reg -fno-caller-saves -fno-combine-stack-adjustments -fno-compare-elim -fno-cprop-registers -fno-crossjumping -fno-cse-follow-jumps -fno-dce -fno-defer-pop -fno-delete-null-pointer-checks -fno-devirtualize -fno-devirtualize-speculatively -fno-dse -fno-early-inlining -fno-expensive-optimizations -fno-forward-propagate -fno-function-cse -fno-gcse -fno-gcse-after-reload -fno-gcse-lm -fno-guess-branch-probability -fno-hoist-adjacent-loads -fno-if-conversion -fno-if-conversion2 -fno-indirect-inlining -fno-inline -fno-inline-atomics -fno-inline-functions -fno-inline-functions-called-once -fno-inline-small-functions -fno-ipa-cp -fno-ipa-cp-alignment -fno-ipa-cp-clone -fno-ipa-icf -fno-ipa-icf-functions -fno-ipa-profile -fno-ipa-pure-const -fno-ipa-ra -fno-ipa-reference -fno-ipa-sra -fno-ira-hoist-pressure -fno-ira-share-save-slots -fno-ira-share-spill-slots -fno-isolate-erroneous-paths-dereference -fno-ivopts -fno-jump-tables -fno-lifetime-dse -fno-lra-remat -fno-math-errno -fno-move-loop-invariants -fno-optimize-sibling-calls -fno-optimize-strlen -fno-partial-inlining -fno-peephole -fno-peephole2 -fno-plt -fno-predictive-commoning -fno-prefetch-loop-arrays -fno-reg-struct-return -fno-rename-registers -fno-reorder-blocks -fno-reorder-functions -fno-rerun-cse-after-loop -fno-rtti -fno-sched-critical-path-heuristic -fno-sched-dep-count-heuristic -fno-sched-group-heuristic -fno-sched-interblock -fno-sched-last-insn-heuristic -fno-sched-pressure -fno-sched-rank-heuristic -fno-sched-spec -fno-sched-spec-insn-heuristic -fno-sched-stalled-insns-dep -fno-schedule-fusion -fno-schedule-insns -fno-schedule-insns2 -fno-section-anchors -fno-short-enums -fno-shrink-wrap -fno-signed-zeros -fno-split-ivs-in-unroller -fno-split-wide-types -fno-ssa-phiopt -fno-stdarg-opt -fno-strict-aliasing -fno-strict-overflow -fno-strict-volatile-bitfields -fno-thread-jumps -fno-threadsafe-statics -fno-trapping-math -fno-tree-bit-ccp -fno-tree-builtin-call-dce -fno-tree-ccp -fno-tree-ch -fno-tree-coalesce-vars -fno-tree-copy-prop -fno-tree-copyrename -fno-tree-cselim -fno-tree-dce -fno-tree-dominator-opts -fno-tree-dse -fno-tree-forwprop -fno-tree-fre -fno-tree-loop-distribute-patterns -fno-tree-loop-if-convert -fno-tree-loop-im -fno-tree-loop-ivcanon -fno-tree-loop-optimize -fno-tree-loop-vectorize -fno-tree-partial-pre -fno-tree-phiprop -fno-tree-pre -fno-tree-pta -fno-tree-reassoc -fno-tree-scev-cprop -fno-tree-sink -fno-tree-slp-vectorize -fno-tree-slsr -fno-tree-sra -fno-tree-switch-conversion -fno-tree-tail-merge -fno-tree-ter -fno-tree-vrp -fno-unswitch-loops -fno-var-tracking -fno-var-tracking-assignments -fno-web"


# FOR X86_64
options="-fno-aggressive-loop-optimizations -fno-align-functions -fno-align-jumps -fno-align-labels -fno-align-loops -fno-asynchronous-unwind-tables -fno-branch-count-reg -fno-caller-saves -fno-combine-stack-adjustments -fno-common -fno-compare-elim -fno-cprop-registers -fno-crossjumping -fno-cse-follow-jumps -fno-dce -fno-defer-pop -fno-delete-null-pointer-checks -fno-devirtualize -fno-dse -fno-early-inlining -fno-expensive-optimizations -fno-forward-propagate -fno-gcse -fno-gcse-after-reload -fno-gcse-lm -fno-guess-branch-probability -fno-hoist-adjacent-loads -fno-if-conversion -fno-if-conversion2 -fno-inline -fno-inline-atomics -fno-inline-functions -fno-inline-functions-called-once -fno-inline-small-functions -fno-ipa-cp -fno-ipa-cp-clone -fno-ipa-profile -fno-ipa-pure-const -fno-ipa-reference -fno-ipa-sra -fno-ira-hoist-pressure -fno-ivopts -fno-jump-tables -fno-math-errno -fno-merge-constants -fno-move-loop-invariants -fno-optimize-register-move -fno-optimize-sibling-calls -fno-optimize-strlen -fno-peephole -fno-peephole2 -fno-predictive-commoning -fno-prefetch-loop-arrays -fno-regmove -fno-rename-registers -fno-reorder-blocks -fno-reorder-functions -fno-rerun-cse-after-loop -fno-rtti -fno-sched-critical-path-heuristic -fno-sched-dep-count-heuristic -fno-sched-group-heuristic -fno-sched-interblock -fno-sched-last-insn-heuristic -fno-sched-rank-heuristic -fno-sched-spec -fno-sched-spec-insn-heuristic -fno-sched-stalled-insns-dep -fno-schedule-insns2 -fno-short-enums -fno-shrink-wrap -fno-signed-zeros -fno-split-ivs-in-unroller -fno-split-wide-types -fno-strict-aliasing -fno-thread-jumps -fno-threadsafe-statics -fno-toplevel-reorder -fno-trapping-math -fno-tree-bit-ccp -fno-tree-builtin-call-dce -fno-tree-ccp -fno-tree-ch -fno-tree-coalesce-vars -fno-tree-copy-prop -fno-tree-copyrename -fno-tree-cselim -fno-tree-dce -fno-tree-dominator-opts -fno-tree-dse -fno-tree-forwprop -fno-tree-fre -fno-tree-loop-distribute-patterns -fno-tree-loop-if-convert -fno-tree-loop-im -fno-tree-loop-ivcanon -fno-tree-loop-optimize -fno-tree-partial-pre -fno-tree-phiprop -fno-tree-pre -fno-tree-pta -fno-tree-reassoc -fno-tree-scev-cprop -fno-tree-sink -fno-tree-slp-vectorize -fno-tree-slsr -fno-tree-sra -fno-tree-switch-conversion -fno-tree-tail-merge -fno-tree-ter -fno-tree-vect-loop-version -fno-tree-vectorize -fno-tree-vrp -fno-unit-at-a-time -fno-unswitch-loops -fno-var-tracking -fno-var-tracking-assignments -fno-vect-cost-model -fno-web -ffast-math" 

source=$1;

rm -f ./$source.flag_result.csv;
touch ./$source.flag_result.csv;
	
for option in $options; do
    
    rm -f ./a.out;
	echo "Testing Option: $option";
    ./generate_bin_O3_gcc_with_flags.sh $option $source;
    average_time=0;
    iter_time=0;
    for iter in {0..9}; do
    	iter_time=$(((time ./a.out) |& grep real | grep -Eio "[0-9]+\.[0-9]+") | bc -l)    	
    	average_time=$((echo "$iter_time+$average_time") | bc -l)
    	echo "Run $iter, cumulative_time: $average_time, iteration time $iter_time"
    done;
    average_time=$(echo $average_time/10 | bc -l);

    echo "$option,$average_time" | tee -a ./$source.flag_result.csv;

done


rm ./a.out;

