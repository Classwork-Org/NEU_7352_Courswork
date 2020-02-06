	.file	"drystone.c"
# GNU C (GCC) version 4.8.5 20150623 (Red Hat 4.8.5-16) (x86_64-redhat-linux)
#	compiled by GNU C version 4.8.5 20150623 (Red Hat 4.8.5-16), GMP version 6.0.0, MPFR version 3.1.1, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  ../source/drystone.c -march=corei7
# -auxbase-strip ../asm/drystone.gcc.opt3.asm -O3 -fverbose-asm
# options enabled:  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fcaller-saves -fcombine-stack-adjustments -fcommon -fcompare-elim
# -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm
# -fgnu-runtime -fgnu-unique -fguess-branch-probability
# -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-atomics -finline-functions
# -finline-functions-called-once -finline-small-functions -fipa-cp
# -fipa-cp-clone -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -fmath-errno
# -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
# -fomit-frame-pointer -foptimize-register-move -foptimize-sibling-calls
# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
# -fpredictive-commoning -fprefetch-loop-arrays -free -freg-struct-return
# -fregmove -freorder-blocks -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-insns2 -fshow-column -fshrink-wrap
# -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
# -fstrict-aliasing -fstrict-overflow -fstrict-volatile-bitfields
# -fsync-libcalls -fthread-jumps -ftoplevel-reorder -ftrapping-math
# -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp -ftree-ch
# -ftree-coalesce-vars -ftree-copy-prop -ftree-copyrename -ftree-cselim
# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-distribute-patterns -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
# -ftree-partial-pre -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-slsr -ftree-sra
# -ftree-switch-conversion -ftree-tail-merge -ftree-ter
# -ftree-vect-loop-version -ftree-vectorize -ftree-vrp -funit-at-a-time
# -funswitch-loops -funwind-tables -fvect-cost-model -fverbose-asm
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -maccumulate-outgoing-args -malign-stringops -mcx16 -mfancy-math-387
# -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp -mlong-double-80 -mmmx -mpopcnt
# -mpush-args -mred-zone -msahf -msse -msse2 -msse3 -msse4 -msse4.1
# -msse4.2 -mssse3 -mtls-direct-seg-refs

	.text
	.p2align 4,,15
	.globl	Proc1
	.type	Proc1, @function
Proc1:
.LFB22:
	.cfi_startproc
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.13
	movq	(%rdi), %rdx	# PtrParIn_3(D)->PtrComp, D.3249
	movq	(%rax), %rcx	# *PtrGlb.13_5, *PtrGlb.13_5
	movq	%rcx, (%rdx)	# *PtrGlb.13_5, *_4
	movq	8(%rax), %rcx	# *PtrGlb.13_5, *PtrGlb.13_5
	movq	%rcx, 8(%rdx)	# *PtrGlb.13_5, *_4
	movq	16(%rax), %rcx	# *PtrGlb.13_5, *PtrGlb.13_5
	movq	%rcx, 16(%rdx)	# *PtrGlb.13_5, *_4
	movq	24(%rax), %rcx	# *PtrGlb.13_5, *PtrGlb.13_5
	movq	%rcx, 24(%rdx)	# *PtrGlb.13_5, *_4
	movq	32(%rax), %rcx	# *PtrGlb.13_5, *PtrGlb.13_5
	movq	%rcx, 32(%rdx)	# *PtrGlb.13_5, *_4
	movq	40(%rax), %rcx	# *PtrGlb.13_5, *PtrGlb.13_5
	movq	%rcx, 40(%rdx)	# *PtrGlb.13_5, *_4
	movq	48(%rax), %rcx	# *PtrGlb.13_5, *PtrGlb.13_5
	movq	%rcx, 48(%rdx)	# *PtrGlb.13_5, *_4
	movq	(%rdi), %rdx	# PtrParIn_3(D)->PtrComp, D.3249
	movl	$5, 16(%rdi)	#, PtrParIn_3(D)->IntComp
	movl	IntGlob(%rip), %ecx	# IntGlob, IntGlob.17
	movq	%rdx, (%rdx)	# D.3249, _8->PtrComp
	movl	$5, 16(%rdx)	#, _8->IntComp
	movq	(%rdi), %rdx	# PtrParIn_3(D)->PtrComp, PtrParIn_3(D)->PtrComp
	movq	(%rax), %rax	# PtrGlb.13_5->PtrComp, D.3249
	movq	(%rdx), %rdx	# _11->PtrComp, D.3249
	movq	%rax, (%rdx)	# D.3249, MEM[(struct RecordType * *)_12]
	leal	12(%rcx), %eax	#, tmp85
	movq	PtrGlb(%rip), %rdx	# PtrGlb, PtrGlb.16
	movl	%eax, 16(%rdx)	# tmp85, MEM[(OneToFifty *)PtrGlb.16_29 + 16B]
	movq	(%rdi), %rax	# PtrParIn_3(D)->PtrComp, D.3249
	movl	8(%rax), %esi	# _14->Discr,
	testl	%esi, %esi	#
	je	.L12	#,
	movq	(%rax), %rdx	# *_14, *_14
	movq	%rdx, (%rdi)	# *_14, *PtrParIn_3(D)
	movq	8(%rax), %rdx	# *_14, *_14
	movq	%rdx, 8(%rdi)	# *_14, *PtrParIn_3(D)
	movq	16(%rax), %rdx	# *_14, *_14
	movq	%rdx, 16(%rdi)	# *_14, *PtrParIn_3(D)
	movq	24(%rax), %rdx	# *_14, *_14
	movq	%rdx, 24(%rdi)	# *_14, *PtrParIn_3(D)
	movq	32(%rax), %rdx	# *_14, *_14
	movq	%rdx, 32(%rdi)	# *_14, *PtrParIn_3(D)
	movq	40(%rax), %rdx	# *_14, *_14
	movq	%rdx, 40(%rdi)	# *_14, *PtrParIn_3(D)
	movq	48(%rax), %rax	# *_14, *_14
	movq	%rax, 48(%rdi)	# *_14, *PtrParIn_3(D)
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	movl	12(%rdi), %esi	# PtrParIn_3(D)->EnumComp, D.3250
	movl	$6, 16(%rax)	#, _14->IntComp
	cmpl	$2, %esi	#, D.3250
	je	.L3	#,
	cmpl	$1, %esi	#, D.3250
	movl	$3, 12(%rax)	#, MEM[(Enumeration *)_14 + 12B]
	je	.L5	#,
	jb	.L10	#,
	cmpl	$4, %esi	#, D.3250
	jne	.L4	#,
	movl	$2, 12(%rax)	#, MEM[(Enumeration *)_14 + 12B]
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L3:
	movl	$1, 12(%rax)	#, MEM[(Enumeration *)_14 + 12B]
.L4:
	movq	(%rdx), %rdx	# PtrGlb.16_29->PtrComp, D.3249
	movq	%rdx, (%rax)	# D.3249, _14->PtrComp
	movq	(%rdi), %rax	# PtrParIn_3(D)->PtrComp, D.3249
	addl	$12, 16(%rax)	#, MEM[(OneToFifty *)_24 + 16B]
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	cmpl	$100, %ecx	#, IntGlob.17
	jle	.L4	#,
.L10:
	movl	$0, 12(%rax)	#, MEM[(Enumeration *)_14 + 12B]
	jmp	.L4	#
	.cfi_endproc
.LFE22:
	.size	Proc1, .-Proc1
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Dhrystone time for %ld passes = %ld\n"
	.align 8
.LC1:
	.string	"This machine benchmarks at %ld dhrystones/second\n"
	.text
	.p2align 4,,15
	.globl	Proc0
	.type	Proc0, @function
Proc0:
.LFB21:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$96, %rsp	#,
	.cfi_def_cfa_offset 128
	leaq	64(%rsp), %rdi	#, tmp140
	call	times	#
	leaq	64(%rsp), %rdi	#, tmp141
	movq	64(%rsp), %rbx	# tms.tms_utime, starttime
	call	times	#
	movq	64(%rsp), %rbp	# tms.tms_utime, nulltime
	movl	$56, %edi	#,
	call	malloc	#
	movl	$56, %edi	#,
	movq	%rax, PtrGlbNext(%rip)	# tmp91, PtrGlbNext
	subq	%rbx, %rbp	# starttime, nulltime
	movq	%rax, %rbx	#, tmp91
	call	malloc	#
	leaq	64(%rsp), %rdi	#, tmp145
	movabsq	$5642821575076104260, %rcx	#, tmp142
	movq	%rcx, 20(%rax)	# tmp142, MEM[(void *)PtrGlb.1_17 + 20B]
	movabsq	$4706902966564560965, %rcx	#, tmp143
	movq	%rcx, 28(%rax)	# tmp143, MEM[(void *)PtrGlb.1_17 + 20B]
	movabsq	$2325349785699101773, %rcx	#, tmp144
	movq	%rcx, 36(%rax)	# tmp144, MEM[(void *)PtrGlb.1_17 + 20B]
	movl	$18254, %ecx	#,
	movq	%rbx, (%rax)	# tmp91, MEM[(struct RecordType *)PtrGlb.1_17].PtrComp
	movl	$0, 8(%rax)	#, MEM[(struct RecordType *)PtrGlb.1_17].Discr
	movl	$2, 12(%rax)	#, MEM[(struct RecordType *)PtrGlb.1_17].EnumComp
	movl	$40, 16(%rax)	#, MEM[(struct RecordType *)PtrGlb.1_17].IntComp
	movl	$1230132307, 44(%rax)	#, MEM[(void *)PtrGlb.1_17 + 20B]
	movw	%cx, 48(%rax)	#, MEM[(void *)PtrGlb.1_17 + 20B]
	movb	$0, 50(%rax)	#, MEM[(void *)PtrGlb.1_17 + 20B]
	movq	%rax, PtrGlb(%rip)	# tmp92, PtrGlb
	call	times	#
	cmpb	$82, 1(%rsp)	#, MEM[(char *)&String1Loc + 1B]
	movl	$18254, %esi	#,
	movabsq	$5642821575076104260, %rax	#, tmp146
	movq	64(%rsp), %r12	# tms.tms_utime, starttime
	movb	$65, Char1Glob(%rip)	#, Char1Glob
	movq	%rax, 32(%rsp)	# tmp146, MEM[(char * {ref-all})&String2Loc]
	movabsq	$4706902966564560965, %rax	#, tmp147
	movq	%rax, 40(%rsp)	# tmp147, MEM[(char * {ref-all})&String2Loc]
	movabsq	$2325069237881678925, %rax	#, tmp148
	movl	$0, BoolGlob(%rip)	#, BoolGlob
	movb	$66, Char2Glob(%rip)	#, Char2Glob
	movq	%rax, 48(%rsp)	# tmp148, MEM[(char * {ref-all})&String2Loc]
	movl	$1230132307, 56(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	movw	%si, 60(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	movb	$0, 62(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	jne	.L25	#,
.L21:
	jmp	.L21	#
.L25:
	movl	$500000000, %ebx	#, D.3297
	.p2align 4,,10
	.p2align 3
.L15:
	leaq	32(%rsp), %rsi	#, tmp153
	movq	%rsp, %rdi	#,
	call	strcmp	#
	movq	PtrGlb(%rip), %rdi	# PtrGlb,
	movl	$7, Array1Glob+32(%rip)	#, MEM[(int *)&Array1Glob + 32B]
	movl	$7, Array1Glob+36(%rip)	#, MEM[(int *)&Array1Glob + 36B]
	testl	%eax, %eax	# D.3298
	movl	$8, Array1Glob+152(%rip)	#, MEM[(int *)&Array1Glob + 152B]
	setle	%al	#, D.3300
	movl	$8, Array2Glob+1664(%rip)	#, Array2Glob
	movzbl	%al, %eax	# D.3300, D.3300
	addl	$1, Array2Glob+1660(%rip)	#, Array2Glob
	movl	%eax, BoolGlob(%rip)	# D.3300, BoolGlob
	xorl	%eax, %eax	#
	movl	$8, Array2Glob+1668(%rip)	#, Array2Glob
	movl	$7, Array2Glob+5744(%rip)	#, Array2Glob
	movl	$5, IntGlob(%rip)	#, IntGlob
	call	Proc1	#
	movzbl	Char2Glob(%rip), %edx	# Char2Glob, Char2Glob.11
	cmpb	$64, %dl	#, Char2Glob.11
	jle	.L19	#,
	movl	$65, %eax	#, CharIndex
	.p2align 4,,10
	.p2align 3
.L20:
	addl	$1, %eax	#, CharIndex
	cmpb	%al, %dl	# CharIndex, Char2Glob.11
	jge	.L20	#,
.L19:
	subl	$1, %ebx	#, D.3297
	je	.L26	#,
	movabsq	$5642821575076104260, %rax	#, tmp154
	movb	$0, 62(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	movq	%rax, 32(%rsp)	# tmp154, MEM[(char * {ref-all})&String2Loc]
	movabsq	$4706902966564560965, %rax	#, tmp155
	movq	%rax, 40(%rsp)	# tmp155, MEM[(char * {ref-all})&String2Loc]
	movabsq	$2325069237881678925, %rax	#, tmp156
	movq	%rax, 48(%rsp)	# tmp156, MEM[(char * {ref-all})&String2Loc]
	movl	$18254, %eax	#,
	movb	$65, Char1Glob(%rip)	#, Char1Glob
	movl	$0, BoolGlob(%rip)	#, BoolGlob
	movb	$66, Char2Glob(%rip)	#, Char2Glob
	movl	$1230132307, 56(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	movw	%ax, 60(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	jmp	.L15	#
.L26:
	leaq	64(%rsp), %rdi	#, tmp149
	call	times	#
	movq	64(%rsp), %rbx	# tms.tms_utime, benchtime
	movl	$500000000, %esi	#,
	movabsq	$-8608480567731124087, %rdx	#, tmp106
	movl	$.LC0, %edi	#,
	subq	%r12, %rbx	# starttime, benchtime
	subq	%rbp, %rbx	# nulltime, benchtime
	movq	%rbx, %rax	# benchtime, tmp139
	imulq	%rdx	# tmp106
	movq	%rbx, %rax	# benchtime, tmp109
	sarq	$63, %rax	#, tmp109
	addq	%rbx, %rdx	# benchtime, D.3294
	sarq	$5, %rdx	#, D.3294
	subq	%rax, %rdx	# tmp109, D.3294
	xorl	%eax, %eax	#
	call	printf	#
	movl	$.LC1, %edi	#,
	movabsq	$30000000000, %rax	#, tmp113
	cqto
	idivq	%rbx	# benchtime
	movq	%rax, %rsi	# D.3294, D.3294
	xorl	%eax, %eax	#
	call	printf	#
	addq	$96, %rsp	#,
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE21:
	.size	Proc0, .-Proc0
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB20:
	.cfi_startproc
	xorl	%eax, %eax	#
	jmp	Proc0	#
	.cfi_endproc
.LFE20:
	.size	main, .-main
	.text
	.p2align 4,,15
	.globl	Proc2
	.type	Proc2, @function
Proc2:
.LFB23:
	.cfi_startproc
	cmpb	$65, Char1Glob(%rip)	#, Char1Glob
	movl	(%rdi), %eax	# *IntParIO_3(D), D.3308
	je	.L31	#,
	rep ret
	.p2align 4,,10
	.p2align 3
.L31:
	addl	$9, %eax	#, D.3308
	subl	IntGlob(%rip), %eax	# IntGlob, D.3308
	movl	%eax, (%rdi)	# D.3308, *IntParIO_3(D)
	ret
	.cfi_endproc
.LFE23:
	.size	Proc2, .-Proc2
	.p2align 4,,15
	.globl	Proc3
	.type	Proc3, @function
Proc3:
.LFB24:
	.cfi_startproc
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.16
	testq	%rax, %rax	# PtrGlb.16
	je	.L33	#,
	movq	(%rax), %rax	# PtrGlb.16_3->PtrComp, D.3311
	movl	IntGlob(%rip), %ecx	# IntGlob, tmp67
	movq	%rax, (%rdi)	# D.3311, *PtrParOut_5(D)
	movq	PtrGlb(%rip), %rax	# PtrGlb, D.3312
	leal	12(%rcx), %edx	#, D.3313
	movl	%edx, 16(%rax)	# D.3313, MEM[(OneToFifty *)_15 + 16B]
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	xorl	%eax, %eax	# D.3312
	movl	$112, %edx	#, D.3313
	movl	$100, IntGlob(%rip)	#, IntGlob
	movl	%edx, 16(%rax)	# D.3313, MEM[(OneToFifty *)_15 + 16B]
	ret
	.cfi_endproc
.LFE24:
	.size	Proc3, .-Proc3
	.p2align 4,,15
	.globl	Proc4
	.type	Proc4, @function
Proc4:
.LFB25:
	.cfi_startproc
	movb	$66, Char2Glob(%rip)	#, Char2Glob
	ret
	.cfi_endproc
.LFE25:
	.size	Proc4, .-Proc4
	.p2align 4,,15
	.globl	Proc5
	.type	Proc5, @function
Proc5:
.LFB26:
	.cfi_startproc
	movb	$65, Char1Glob(%rip)	#, Char1Glob
	movl	$0, BoolGlob(%rip)	#, BoolGlob
	ret
	.cfi_endproc
.LFE26:
	.size	Proc5, .-Proc5
	.p2align 4,,15
	.globl	Proc6
	.type	Proc6, @function
Proc6:
.LFB27:
	.cfi_startproc
	cmpl	$2, %edi	#, EnumParIn
	je	.L38	#,
	cmpl	$1, %edi	#, EnumParIn
	movl	$3, (%rsi)	#, *EnumParOut_3(D)
	je	.L40	#,
	jb	.L44	#,
	cmpl	$4, %edi	#, EnumParIn
	jne	.L45	#,
	movl	$2, (%rsi)	#, *EnumParOut_3(D)
.L43:
	.p2align 4,,2
	rep ret
	.p2align 4,,10
	.p2align 3
.L40:
	cmpl	$100, IntGlob(%rip)	#, IntGlob
	jle	.L43	#,
.L44:
	movl	$0, (%rsi)	#, *EnumParOut_3(D)
	ret
	.p2align 4,,10
	.p2align 3
.L38:
	movl	$1, (%rsi)	#, *EnumParOut_3(D)
	ret
	.p2align 4,,10
	.p2align 3
.L45:
	rep ret
	.cfi_endproc
.LFE27:
	.size	Proc6, .-Proc6
	.p2align 4,,15
	.globl	Proc7
	.type	Proc7, @function
Proc7:
.LFB28:
	.cfi_startproc
	leal	2(%rdi,%rsi), %eax	#, tmp66
	movl	%eax, (%rdx)	# tmp66, *IntParOut_6(D)
	ret
	.cfi_endproc
.LFE28:
	.size	Proc7, .-Proc7
	.p2align 4,,15
	.globl	Proc8
	.type	Proc8, @function
Proc8:
.LFB29:
	.cfi_startproc
	leal	5(%rdx), %r8d	#, IntIndex
	movslq	%r8d, %r9	# IntIndex, D.3336
	leaq	0(,%r9,4), %rax	#, D.3336
	leaq	(%rdi,%rax), %r10	#, D.3337
	movl	%ecx, (%r10)	# IntParI2, *_8
	movl	%ecx, 4(%rdi,%rax)	# IntParI2, *_14
	movl	%r8d, 120(%rdi,%rax)	# IntIndex, *_18
	imulq	$204, %r9, %rdi	#, D.3336, D.3336
	addq	%rsi, %rax	# Array2Par, tmp92
	leaq	(%rsi,%rdi), %rcx	#, D.3335
	movl	%r8d, (%rcx,%r9,4)	# IntIndex, *_2
	leal	6(%rdx), %r9d	#, IntIndex
	addl	$4, %edx	#, D.3339
	movslq	%r9d, %r9	# IntIndex, IntIndex
	movslq	%edx, %rdx	# D.3339, D.3338
	movl	%r8d, (%rcx,%r9,4)	# IntIndex, *_2
	addl	$1, (%rcx,%rdx,4)	#, MEM[(int[51] *)_40]
	movl	(%r10), %edx	# *_8, D.3339
	movl	%edx, 4080(%rdi,%rax)	# D.3339, *_33
	movl	$5, IntGlob(%rip)	#, IntGlob
	ret
	.cfi_endproc
.LFE29:
	.size	Proc8, .-Proc8
	.p2align 4,,15
	.globl	Func1
	.type	Func1, @function
Func1:
.LFB30:
	.cfi_startproc
	xorl	%eax, %eax	# D.3342
	cmpb	%sil, %dil	# CharPar2, CharPar1
	sete	%al	#, D.3342
	ret
	.cfi_endproc
.LFE30:
	.size	Func1, .-Func1
	.p2align 4,,15
	.globl	Func2
	.type	Func2, @function
Func2:
.LFB31:
	.cfi_startproc
	movzbl	1(%rdi), %eax	# MEM[(char *)StrParI1_9(D) + 1B], tmp71
	cmpb	%al, 2(%rsi)	# tmp71, MEM[(char *)StrParI2_5(D) + 2B]
	jne	.L50	#,
.L51:
	jmp	.L51	#
	.p2align 4,,10
	.p2align 3
.L50:
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
	call	strcmp	#
	testl	%eax, %eax	# D.3349
	setg	%al	#, D.3351
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	movzbl	%al, %eax	# D.3351, D.3351
	ret
	.cfi_endproc
.LFE31:
	.size	Func2, .-Func2
	.p2align 4,,15
	.globl	Func3
	.type	Func3, @function
Func3:
.LFB32:
	.cfi_startproc
	xorl	%eax, %eax	# D.3354
	cmpl	$2, %edi	#, EnumParIn
	sete	%al	#, D.3354
	ret
	.cfi_endproc
.LFE32:
	.size	Func3, .-Func3
	.comm	PtrGlbNext,8,8
	.comm	PtrGlb,8,8
	.comm	Array2Glob,10404,32
	.comm	Array1Glob,204,32
	.comm	Char2Glob,1,1
	.comm	Char1Glob,1,1
	.comm	BoolGlob,4,4
	.comm	IntGlob,4,4
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-16)"
	.section	.note.GNU-stack,"",@progbits
