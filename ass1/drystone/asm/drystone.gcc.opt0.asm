	.file	"drystone.c"
# GNU C (GCC) version 4.8.5 20150623 (Red Hat 4.8.5-16) (x86_64-redhat-linux)
#	compiled by GNU C version 4.8.5 20150623 (Red Hat 4.8.5-16), GMP version 6.0.0, MPFR version 3.1.1, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  ../source/drystone.c -march=corei7
# -auxbase-strip ../asm/drystone.gcc.opt0.asm -O0 -fverbose-asm
# options enabled:  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg -fcommon
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -ffunction-cse -fgcse-lm -fgnu-runtime
# -fgnu-unique -fident -finline-atomics -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -fmath-errno
# -fmerge-debug-strings -fmove-loop-invariants -fpeephole
# -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fshow-column -fsigned-zeros
# -fsplit-ivs-in-unroller -fstrict-volatile-bitfields -fsync-libcalls
# -ftrapping-math -ftree-coalesce-vars -ftree-cselim -ftree-forwprop
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
# -ftree-reassoc -ftree-scev-cprop -ftree-slp-vectorize
# -ftree-vect-loop-version -funit-at-a-time -funwind-tables -fverbose-asm
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -maccumulate-outgoing-args -malign-stringops -mcx16 -mfancy-math-387
# -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp -mlong-double-80 -mmmx -mpopcnt
# -mpush-args -mred-zone -msahf -msse -msse2 -msse3 -msse4 -msse4.1
# -msse4.2 -mssse3 -mtls-direct-seg-refs

	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# argc, argc
	movq	%rsi, -16(%rbp)	# argv, argv
	movl	$0, %eax	#,
	call	Proc0	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.comm	IntGlob,4,4
	.comm	BoolGlob,4,4
	.comm	Char1Glob,1,1
	.comm	Char2Glob,1,1
	.comm	Array1Glob,204,32
	.comm	Array2Glob,10404,32
	.comm	PtrGlb,8,8
	.comm	PtrGlbNext,8,8
	.section	.rodata
	.align 8
.LC0:
	.string	"Dhrystone time for %ld passes = %ld\n"
	.align 8
.LC1:
	.string	"This machine benchmarks at %ld dhrystones/second\n"
	.text
	.globl	Proc0
	.type	Proc0, @function
Proc0:
.LFB3:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$168, %rsp	#,
	.cfi_offset 3, -24
	leaq	-176(%rbp), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	times	#
	movq	-176(%rbp), %rax	# tms.tms_utime, tmp101
	movq	%rax, -32(%rbp)	# tmp101, starttime
	movl	$0, %ebx	#, i
	jmp	.L3	#
.L4:
	addl	$1, %ebx	#, i
.L3:
	cmpl	$499999999, %ebx	#, i
	jbe	.L4	#,
	leaq	-176(%rbp), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	times	#
	movq	-176(%rbp), %rax	# tms.tms_utime, D.3137
	subq	-32(%rbp), %rax	# starttime, tmp104
	movq	%rax, -40(%rbp)	# tmp104, nulltime
	movl	$56, %edi	#,
	call	malloc	#
	movq	%rax, PtrGlbNext(%rip)	# PtrGlbNext.0, PtrGlbNext
	movl	$56, %edi	#,
	call	malloc	#
	movq	%rax, PtrGlb(%rip)	# PtrGlb.1, PtrGlb
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.2
	movq	PtrGlbNext(%rip), %rdx	# PtrGlbNext, PtrGlbNext.3
	movq	%rdx, (%rax)	# PtrGlbNext.3, PtrGlb.2_11->PtrComp
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.4
	movl	$0, 8(%rax)	#, PtrGlb.4_13->Discr
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.5
	movl	$2, 12(%rax)	#, PtrGlb.5_14->EnumComp
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.6
	movl	$40, 16(%rax)	#, PtrGlb.6_15->IntComp
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.7
	addq	$20, %rax	#, D.3138
	movabsq	$5642821575076104260, %rbx	#, tmp134
	movq	%rbx, (%rax)	# tmp134, MEM[(void *)_17]
	movabsq	$4706902966564560965, %rcx	#, tmp135
	movq	%rcx, 8(%rax)	# tmp135, MEM[(void *)_17]
	movabsq	$2325349785699101773, %rsi	#, tmp136
	movq	%rsi, 16(%rax)	# tmp136, MEM[(void *)_17]
	movl	$1230132307, 24(%rax)	#, MEM[(void *)_17]
	movw	$18254, 28(%rax)	#, MEM[(void *)_17]
	movb	$0, 30(%rax)	#, MEM[(void *)_17]
	leaq	-176(%rbp), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	times	#
	movq	-176(%rbp), %rax	# tms.tms_utime, tmp108
	movq	%rax, -32(%rbp)	# tmp108, starttime
	movl	$0, %ebx	#, i
	jmp	.L5	#
.L11:
	movl	$0, %eax	#,
	call	Proc5	#
	movl	$0, %eax	#,
	call	Proc4	#
	movl	$2, -60(%rbp)	#, IntLoc1
	movl	$3, -44(%rbp)	#, IntLoc2
	movabsq	$5642821575076104260, %rax	#, tmp137
	movq	%rax, -144(%rbp)	# tmp137, MEM[(char * {ref-all})&String2Loc]
	movabsq	$4706902966564560965, %rax	#, tmp138
	movq	%rax, -136(%rbp)	# tmp138, MEM[(char * {ref-all})&String2Loc]
	movabsq	$2325069237881678925, %rax	#, tmp139
	movq	%rax, -128(%rbp)	# tmp139, MEM[(char * {ref-all})&String2Loc]
	movl	$1230132307, -120(%rbp)	#, MEM[(char * {ref-all})&String2Loc]
	movw	$18254, -116(%rbp)	#, MEM[(char * {ref-all})&String2Loc]
	movb	$0, -114(%rbp)	#, MEM[(char * {ref-all})&String2Loc]
	movl	$1, -68(%rbp)	#, EnumLoc
	leaq	-144(%rbp), %rdx	#, tmp109
	leaq	-112(%rbp), %rax	#, tmp110
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	movl	$0, %eax	#,
	call	Func2	#
	testl	%eax, %eax	# D.3139
	sete	%al	#, D.3140
	movzbl	%al, %eax	# D.3140, BoolGlob.8
	movl	%eax, BoolGlob(%rip)	# BoolGlob.8, BoolGlob
	jmp	.L6	#
.L7:
	movl	-60(%rbp), %edx	# IntLoc1, IntLoc1.9
	movl	%edx, %eax	# IntLoc1.9, tmp111
	sall	$2, %eax	#, tmp111
	addl	%edx, %eax	# IntLoc1.9, D.3139
	subl	-44(%rbp), %eax	# IntLoc2, IntLoc3.10
	movl	%eax, -64(%rbp)	# IntLoc3.10, IntLoc3
	movl	-60(%rbp), %eax	# IntLoc1, IntLoc1.11
	leaq	-64(%rbp), %rdx	#, tmp112
	movl	-44(%rbp), %ecx	# IntLoc2, tmp113
	movl	%ecx, %esi	# tmp113,
	movl	%eax, %edi	# IntLoc1.11,
	movl	$0, %eax	#,
	call	Proc7	#
	movl	-60(%rbp), %eax	# IntLoc1, IntLoc1.12
	addl	$1, %eax	#, IntLoc1.13
	movl	%eax, -60(%rbp)	# IntLoc1.13, IntLoc1
.L6:
	movl	-60(%rbp), %eax	# IntLoc1, IntLoc1.14
	cmpl	-44(%rbp), %eax	# IntLoc2, IntLoc1.14
	jl	.L7	#,
	movl	-64(%rbp), %edx	# IntLoc3, IntLoc3.15
	movl	-60(%rbp), %eax	# IntLoc1, IntLoc1.16
	movl	%edx, %ecx	# IntLoc3.15,
	movl	%eax, %edx	# IntLoc1.16,
	movl	$Array2Glob, %esi	#,
	movl	$Array1Glob, %edi	#,
	movl	$0, %eax	#,
	call	Proc8	#
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.17
	movq	%rax, %rdi	# PtrGlb.17,
	movl	$0, %eax	#,
	call	Proc1	#
	movb	$65, -17(%rbp)	#, CharIndex
	jmp	.L8	#
.L10:
	movsbl	-17(%rbp), %eax	# CharIndex, D.3139
	movl	$67, %esi	#,
	movl	%eax, %edi	# D.3139,
	movl	$0, %eax	#,
	call	Func1	#
	movl	-68(%rbp), %edx	# EnumLoc, EnumLoc.18
	cmpl	%edx, %eax	# EnumLoc.18, D.3141
	jne	.L9	#,
	leaq	-68(%rbp), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	Proc6	#
.L9:
	addb	$1, -17(%rbp)	#, CharIndex
.L8:
	movzbl	Char2Glob(%rip), %eax	# Char2Glob, Char2Glob.19
	cmpb	%al, -17(%rbp)	# Char2Glob.19, CharIndex
	jle	.L10	#,
	movl	-60(%rbp), %eax	# IntLoc1, IntLoc1.20
	imull	-44(%rbp), %eax	# IntLoc2, IntLoc3.21
	movl	%eax, -64(%rbp)	# IntLoc3.21, IntLoc3
	movl	-64(%rbp), %eax	# IntLoc3, IntLoc3.22
	movl	-60(%rbp), %ecx	# IntLoc1, IntLoc1.23
	cltd
	idivl	%ecx	# IntLoc1.23
	movl	%eax, -44(%rbp)	# tmp115, IntLoc2
	movl	-64(%rbp), %eax	# IntLoc3, IntLoc3.24
	subl	-44(%rbp), %eax	# IntLoc2, D.3139
	movl	%eax, %edx	# D.3139, D.3139
	movl	%edx, %eax	# D.3139, tmp117
	sall	$3, %eax	#, tmp118
	subl	%edx, %eax	# D.3139, D.3139
	movl	%eax, %edx	# D.3139, D.3139
	movl	-60(%rbp), %eax	# IntLoc1, IntLoc1.25
	subl	%eax, %edx	# IntLoc1.25, tmp119
	movl	%edx, %eax	# tmp119, tmp119
	movl	%eax, -44(%rbp)	# tmp119, IntLoc2
	leaq	-60(%rbp), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	movl	$0, %eax	#,
	call	Proc2	#
	addl	$1, %ebx	#, i
.L5:
	cmpl	$499999999, %ebx	#, i
	jbe	.L11	#,
	leaq	-176(%rbp), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	times	#
	movq	-176(%rbp), %rax	# tms.tms_utime, D.3137
	subq	-32(%rbp), %rax	# starttime, D.3137
	subq	-40(%rbp), %rax	# nulltime, tmp123
	movq	%rax, -56(%rbp)	# tmp123, benchtime
	movq	-56(%rbp), %rcx	# benchtime, tmp124
	movabsq	$-8608480567731124087, %rdx	#, tmp126
	movq	%rcx, %rax	# tmp124, tmp133
	imulq	%rdx	# tmp126
	leaq	(%rdx,%rcx), %rax	#, tmp127
	sarq	$5, %rax	#, tmp128
	movq	%rax, %rdx	# tmp128, tmp128
	movq	%rcx, %rax	# tmp124, tmp129
	sarq	$63, %rax	#, tmp129
	subq	%rax, %rdx	# tmp129, D.3137
	movq	%rdx, %rax	# D.3137, D.3137
	movq	%rax, %rdx	# D.3137,
	movl	$500000000, %esi	#,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	movabsq	$30000000000, %rax	#, tmp132
	cqto
	idivq	-56(%rbp)	# benchtime
	movq	%rax, %rsi	# D.3137,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	addq	$168, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Proc0, .-Proc0
	.globl	Proc1
	.type	Proc1, @function
Proc1:
.LFB4:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# PtrParIn, PtrParIn
	movq	-8(%rbp), %rax	# PtrParIn, tmp82
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.3145
	movq	PtrGlb(%rip), %rdx	# PtrGlb, PtrGlb.26
	movq	(%rdx), %rcx	# *PtrGlb.26_3, tmp83
	movq	%rcx, (%rax)	# tmp83, *_2
	movq	8(%rdx), %rcx	# *PtrGlb.26_3, tmp84
	movq	%rcx, 8(%rax)	# tmp84, *_2
	movq	16(%rdx), %rcx	# *PtrGlb.26_3, tmp85
	movq	%rcx, 16(%rax)	# tmp85, *_2
	movq	24(%rdx), %rcx	# *PtrGlb.26_3, tmp86
	movq	%rcx, 24(%rax)	# tmp86, *_2
	movq	32(%rdx), %rcx	# *PtrGlb.26_3, tmp87
	movq	%rcx, 32(%rax)	# tmp87, *_2
	movq	40(%rdx), %rcx	# *PtrGlb.26_3, tmp88
	movq	%rcx, 40(%rax)	# tmp88, *_2
	movq	48(%rdx), %rdx	# *PtrGlb.26_3, tmp89
	movq	%rdx, 48(%rax)	# tmp89, *_2
	movq	-8(%rbp), %rax	# PtrParIn, tmp90
	movl	$5, 16(%rax)	#, PtrParIn_1(D)->IntComp
	movq	-8(%rbp), %rax	# PtrParIn, tmp91
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.3145
	movq	-8(%rbp), %rdx	# PtrParIn, tmp92
	movl	16(%rdx), %edx	# PtrParIn_1(D)->IntComp, D.3146
	movl	%edx, 16(%rax)	# D.3146, _4->IntComp
	movq	-8(%rbp), %rax	# PtrParIn, tmp93
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.3145
	movq	-8(%rbp), %rdx	# PtrParIn, tmp94
	movq	(%rdx), %rdx	# PtrParIn_1(D)->PtrComp, D.3145
	movq	%rdx, (%rax)	# D.3145, _6->PtrComp
	movq	-8(%rbp), %rax	# PtrParIn, tmp95
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.3145
	movq	(%rax), %rax	# _8->PtrComp, D.3145
	movq	%rax, %rdi	# D.3145,
	movl	$0, %eax	#,
	call	Proc3	#
	movq	-8(%rbp), %rax	# PtrParIn, tmp96
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.3145
	movl	8(%rax), %eax	# _10->Discr, D.3147
	testl	%eax, %eax	# D.3147
	jne	.L13	#,
	movq	-8(%rbp), %rax	# PtrParIn, tmp97
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.3145
	movl	$6, 16(%rax)	#, _12->IntComp
	movq	-8(%rbp), %rax	# PtrParIn, tmp98
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.3145
	leaq	12(%rax), %rdx	#, D.3148
	movq	-8(%rbp), %rax	# PtrParIn, tmp99
	movl	12(%rax), %eax	# PtrParIn_1(D)->EnumComp, D.3147
	movq	%rdx, %rsi	# D.3148,
	movl	%eax, %edi	# D.3147,
	movl	$0, %eax	#,
	call	Proc6	#
	movq	-8(%rbp), %rax	# PtrParIn, tmp100
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.3145
	movq	PtrGlb(%rip), %rdx	# PtrGlb, PtrGlb.27
	movq	(%rdx), %rdx	# PtrGlb.27_17->PtrComp, D.3145
	movq	%rdx, (%rax)	# D.3145, _16->PtrComp
	movq	-8(%rbp), %rax	# PtrParIn, tmp101
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.3145
	leaq	16(%rax), %rdx	#, D.3149
	movq	-8(%rbp), %rax	# PtrParIn, tmp102
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.3145
	movl	16(%rax), %eax	# _21->IntComp, D.3146
	movl	$10, %esi	#,
	movl	%eax, %edi	# D.3146,
	movl	$0, %eax	#,
	call	Proc7	#
	jmp	.L15	#
.L13:
	movq	-8(%rbp), %rax	# PtrParIn, tmp103
	movq	(%rax), %rdx	# PtrParIn_1(D)->PtrComp, D.3145
	movq	-8(%rbp), %rax	# PtrParIn, tmp104
	movq	(%rdx), %rcx	# *_23, tmp105
	movq	%rcx, (%rax)	# tmp105, *PtrParIn_1(D)
	movq	8(%rdx), %rcx	# *_23, tmp106
	movq	%rcx, 8(%rax)	# tmp106, *PtrParIn_1(D)
	movq	16(%rdx), %rcx	# *_23, tmp107
	movq	%rcx, 16(%rax)	# tmp107, *PtrParIn_1(D)
	movq	24(%rdx), %rcx	# *_23, tmp108
	movq	%rcx, 24(%rax)	# tmp108, *PtrParIn_1(D)
	movq	32(%rdx), %rcx	# *_23, tmp109
	movq	%rcx, 32(%rax)	# tmp109, *PtrParIn_1(D)
	movq	40(%rdx), %rcx	# *_23, tmp110
	movq	%rcx, 40(%rax)	# tmp110, *PtrParIn_1(D)
	movq	48(%rdx), %rdx	# *_23, tmp111
	movq	%rdx, 48(%rax)	# tmp111, *PtrParIn_1(D)
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Proc1, .-Proc1
	.globl	Proc2
	.type	Proc2, @function
Proc2:
.LFB5:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# IntParIO, IntParIO
	movq	-24(%rbp), %rax	# IntParIO, tmp64
	movl	(%rax), %eax	# *IntParIO_5(D), D.3150
	addl	$10, %eax	#, tmp65
	movl	%eax, -4(%rbp)	# tmp65, IntLoc
.L20:
	movzbl	Char1Glob(%rip), %eax	# Char1Glob, Char1Glob.28
	cmpb	$65, %al	#, Char1Glob.28
	jne	.L17	#,
	subl	$1, -4(%rbp)	#, IntLoc
	movl	IntGlob(%rip), %eax	# IntGlob, IntGlob.29
	movl	-4(%rbp), %edx	# IntLoc, tmp66
	subl	%eax, %edx	# IntGlob.29, D.3150
	movq	-24(%rbp), %rax	# IntParIO, tmp67
	movl	%edx, (%rax)	# D.3150, *IntParIO_5(D)
	movl	$0, -8(%rbp)	#, EnumLoc
.L17:
	cmpl	$0, -8(%rbp)	#, EnumLoc
	jne	.L18	#,
	jmp	.L22	#
.L18:
	jmp	.L20	#
.L22:
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Proc2, .-Proc2
	.globl	Proc3
	.type	Proc3, @function
Proc3:
.LFB6:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# PtrParOut, PtrParOut
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.30
	testq	%rax, %rax	# PtrGlb.30
	je	.L24	#,
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.31
	movq	(%rax), %rdx	# PtrGlb.31_2->PtrComp, D.3151
	movq	-8(%rbp), %rax	# PtrParOut, tmp66
	movq	%rdx, (%rax)	# D.3151, *PtrParOut_4(D)
	jmp	.L25	#
.L24:
	movl	$100, IntGlob(%rip)	#, IntGlob
.L25:
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.32
	leaq	16(%rax), %rdx	#, D.3152
	movl	IntGlob(%rip), %eax	# IntGlob, IntGlob.33
	movl	%eax, %esi	# IntGlob.33,
	movl	$10, %edi	#,
	movl	$0, %eax	#,
	call	Proc7	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Proc3, .-Proc3
	.globl	Proc4
	.type	Proc4, @function
Proc4:
.LFB7:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movzbl	Char1Glob(%rip), %eax	# Char1Glob, Char1Glob.34
	cmpb	$65, %al	#, Char1Glob.34
	sete	%al	#, D.3153
	movzbl	%al, %eax	# D.3153, tmp63
	movl	%eax, -4(%rbp)	# tmp63, BoolLoc
	movl	BoolGlob(%rip), %eax	# BoolGlob, BoolGlob.35
	orl	%eax, -4(%rbp)	# BoolGlob.35, BoolLoc
	movb	$66, Char2Glob(%rip)	#, Char2Glob
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Proc4, .-Proc4
	.globl	Proc5
	.type	Proc5, @function
Proc5:
.LFB8:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movb	$65, Char1Glob(%rip)	#, Char1Glob
	movl	$0, BoolGlob(%rip)	#, BoolGlob
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Proc5, .-Proc5
	.globl	Proc6
	.type	Proc6, @function
Proc6:
.LFB9:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# EnumParIn, EnumParIn
	movq	%rsi, -16(%rbp)	# EnumParOut, EnumParOut
	movq	-16(%rbp), %rax	# EnumParOut, tmp62
	movl	-4(%rbp), %edx	# EnumParIn, tmp63
	movl	%edx, (%rax)	# tmp63, *EnumParOut_1(D)
	movl	-4(%rbp), %eax	# EnumParIn, tmp64
	movl	%eax, %edi	# tmp64,
	movl	$0, %eax	#,
	call	Func3	#
	testl	%eax, %eax	# D.3154
	jne	.L29	#,
	movq	-16(%rbp), %rax	# EnumParOut, tmp65
	movl	$3, (%rax)	#, *EnumParOut_1(D)
.L29:
	cmpl	$4, -4(%rbp)	#, EnumParIn
	ja	.L39	#,
	movl	-4(%rbp), %eax	# EnumParIn, tmp66
	movq	.L32(,%rax,8), %rax	#, tmp67
	jmp	*%rax	# tmp67
	.section	.rodata
	.align 8
	.align 4
.L32:
	.quad	.L31
	.quad	.L33
	.quad	.L34
	.quad	.L40
	.quad	.L36
	.text
.L31:
	movq	-16(%rbp), %rax	# EnumParOut, tmp68
	movl	$0, (%rax)	#, *EnumParOut_1(D)
	jmp	.L39	#
.L33:
	movl	IntGlob(%rip), %eax	# IntGlob, IntGlob.36
	cmpl	$100, %eax	#, IntGlob.36
	jle	.L37	#,
	movq	-16(%rbp), %rax	# EnumParOut, tmp69
	movl	$0, (%rax)	#, *EnumParOut_1(D)
	jmp	.L39	#
.L37:
	movq	-16(%rbp), %rax	# EnumParOut, tmp70
	movl	$3, (%rax)	#, *EnumParOut_1(D)
	jmp	.L39	#
.L34:
	movq	-16(%rbp), %rax	# EnumParOut, tmp71
	movl	$1, (%rax)	#, *EnumParOut_1(D)
	jmp	.L39	#
.L36:
	movq	-16(%rbp), %rax	# EnumParOut, tmp72
	movl	$2, (%rax)	#, *EnumParOut_1(D)
	jmp	.L39	#
.L40:
	nop
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Proc6, .-Proc6
	.globl	Proc7
	.type	Proc7, @function
Proc7:
.LFB10:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# IntParI1, IntParI1
	movl	%esi, -24(%rbp)	# IntParI2, IntParI2
	movq	%rdx, -32(%rbp)	# IntParOut, IntParOut
	movl	-20(%rbp), %eax	# IntParI1, tmp64
	addl	$2, %eax	#, tmp63
	movl	%eax, -4(%rbp)	# tmp63, IntLoc
	movl	-4(%rbp), %eax	# IntLoc, tmp65
	movl	-24(%rbp), %edx	# IntParI2, tmp66
	addl	%eax, %edx	# tmp65, D.3155
	movq	-32(%rbp), %rax	# IntParOut, tmp67
	movl	%edx, (%rax)	# D.3155, *IntParOut_5(D)
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Proc7, .-Proc7
	.globl	Proc8
	.type	Proc8, @function
Proc8:
.LFB11:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# Array1Par, Array1Par
	movq	%rsi, -32(%rbp)	# Array2Par, Array2Par
	movl	%edx, -36(%rbp)	# IntParI1, IntParI1
	movl	%ecx, -40(%rbp)	# IntParI2, IntParI2
	movl	-36(%rbp), %eax	# IntParI1, tmp96
	addl	$5, %eax	#, tmp95
	movl	%eax, -8(%rbp)	# tmp95, IntLoc
	movl	-8(%rbp), %eax	# IntLoc, tmp97
	cltq
	leaq	0(,%rax,4), %rdx	#, D.3156
	movq	-24(%rbp), %rax	# Array1Par, tmp98
	addq	%rax, %rdx	# tmp98, D.3157
	movl	-40(%rbp), %eax	# IntParI2, tmp99
	movl	%eax, (%rdx)	# tmp99, *_7
	movl	-8(%rbp), %eax	# IntLoc, tmp100
	cltq
	addq	$1, %rax	#, D.3158
	leaq	0(,%rax,4), %rdx	#, D.3158
	movq	-24(%rbp), %rax	# Array1Par, tmp101
	addq	%rax, %rdx	# tmp101, D.3157
	movl	-8(%rbp), %eax	# IntLoc, tmp102
	cltq
	leaq	0(,%rax,4), %rcx	#, D.3156
	movq	-24(%rbp), %rax	# Array1Par, tmp103
	addq	%rcx, %rax	# D.3156, D.3157
	movl	(%rax), %eax	# *_15, D.3159
	movl	%eax, (%rdx)	# D.3159, *_12
	movl	-8(%rbp), %eax	# IntLoc, tmp104
	cltq
	addq	$30, %rax	#, D.3158
	leaq	0(,%rax,4), %rdx	#, D.3158
	movq	-24(%rbp), %rax	# Array1Par, tmp105
	addq	%rax, %rdx	# tmp105, D.3157
	movl	-8(%rbp), %eax	# IntLoc, tmp106
	movl	%eax, (%rdx)	# tmp106, *_20
	movl	-8(%rbp), %eax	# IntLoc, tmp107
	movl	%eax, -4(%rbp)	# tmp107, IntIndex
	jmp	.L43	#
.L44:
	movl	-8(%rbp), %eax	# IntLoc, tmp108
	cltq
	imulq	$204, %rax, %rdx	#, D.3156, D.3156
	movq	-32(%rbp), %rax	# Array2Par, tmp109
	leaq	(%rdx,%rax), %rcx	#, D.3160
	movl	-4(%rbp), %eax	# IntIndex, tmp111
	cltq
	movl	-8(%rbp), %edx	# IntLoc, tmp112
	movl	%edx, (%rcx,%rax,4)	# tmp112, *_26
	addl	$1, -4(%rbp)	#, IntIndex
.L43:
	movl	-8(%rbp), %eax	# IntLoc, tmp113
	addl	$1, %eax	#, D.3159
	cmpl	-4(%rbp), %eax	# IntIndex, D.3159
	jge	.L44	#,
	movl	-8(%rbp), %eax	# IntLoc, tmp114
	cltq
	imulq	$204, %rax, %rdx	#, D.3156, D.3156
	movq	-32(%rbp), %rax	# Array2Par, tmp115
	addq	%rdx, %rax	# D.3156, D.3160
	movl	-8(%rbp), %edx	# IntLoc, tmp116
	subl	$1, %edx	#, D.3159
	movslq	%edx, %rcx	# D.3159, tmp117
	movl	(%rax,%rcx,4), %ecx	# *_30, D.3159
	addl	$1, %ecx	#, D.3159
	movslq	%edx, %rdx	# D.3159, tmp118
	movl	%ecx, (%rax,%rdx,4)	# D.3159, *_30
	movl	-8(%rbp), %eax	# IntLoc, tmp119
	cltq
	imulq	$204, %rax, %rax	#, D.3156, D.3156
	leaq	4080(%rax), %rdx	#, D.3158
	movq	-32(%rbp), %rax	# Array2Par, tmp120
	leaq	(%rdx,%rax), %rcx	#, D.3160
	movl	-8(%rbp), %eax	# IntLoc, tmp121
	cltq
	leaq	0(,%rax,4), %rdx	#, D.3156
	movq	-24(%rbp), %rax	# Array1Par, tmp122
	addq	%rdx, %rax	# D.3156, D.3157
	movl	(%rax), %edx	# *_40, D.3159
	movl	-8(%rbp), %eax	# IntLoc, tmp124
	cltq
	movl	%edx, (%rcx,%rax,4)	# D.3159, *_37
	movl	$5, IntGlob(%rip)	#, IntGlob
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Proc8, .-Proc8
	.globl	Func1
	.type	Func1, @function
Func1:
.LFB12:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, %edx	# CharPar1, tmp61
	movl	%esi, %eax	# CharPar2, tmp62
	movb	%dl, -20(%rbp)	# tmp61, CharPar1
	movb	%al, -24(%rbp)	# tmp62, CharPar2
	movzbl	-20(%rbp), %eax	# CharPar1, tmp63
	movb	%al, -1(%rbp)	# tmp63, CharLoc1
	movzbl	-1(%rbp), %eax	# CharLoc1, tmp64
	movb	%al, -2(%rbp)	# tmp64, CharLoc2
	movzbl	-2(%rbp), %eax	# CharLoc2, tmp65
	cmpb	-24(%rbp), %al	# CharPar2, tmp65
	je	.L46	#,
	movl	$0, %eax	#, D.3161
	jmp	.L47	#
.L46:
	movl	$1, %eax	#, D.3161
.L47:
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Func1, .-Func1
	.globl	Func2
	.type	Func2, @function
Func2:
.LFB13:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# StrParI1, StrParI1
	movq	%rsi, -32(%rbp)	# StrParI2, StrParI2
	movl	$1, -4(%rbp)	#, IntLoc
	jmp	.L49	#
.L50:
	movl	-4(%rbp), %eax	# IntLoc, tmp72
	cltq
	leaq	1(%rax), %rdx	#, D.3163
	movq	-32(%rbp), %rax	# StrParI2, tmp73
	addq	%rdx, %rax	# D.3163, D.3164
	movzbl	(%rax), %eax	# *_10, D.3165
	movsbl	%al, %edx	# D.3165, D.3166
	movl	-4(%rbp), %eax	# IntLoc, tmp74
	movslq	%eax, %rcx	# tmp74, D.3163
	movq	-24(%rbp), %rax	# StrParI1, tmp75
	addq	%rcx, %rax	# D.3163, D.3164
	movzbl	(%rax), %eax	# *_15, D.3165
	movsbl	%al, %eax	# D.3165, D.3166
	movl	%edx, %esi	# D.3166,
	movl	%eax, %edi	# D.3166,
	movl	$0, %eax	#,
	call	Func1	#
	testl	%eax, %eax	# D.3167
	jne	.L49	#,
	movb	$65, -5(%rbp)	#, CharLoc
	addl	$1, -4(%rbp)	#, IntLoc
.L49:
	cmpl	$1, -4(%rbp)	#, IntLoc
	jle	.L50	#,
	cmpb	$86, -5(%rbp)	#, CharLoc
	jle	.L51	#,
	cmpb	$90, -5(%rbp)	#, CharLoc
	jg	.L51	#,
	movl	$7, -4(%rbp)	#, IntLoc
.L51:
	cmpb	$88, -5(%rbp)	#, CharLoc
	jne	.L52	#,
	movl	$1, %eax	#, D.3162
	jmp	.L53	#
.L52:
	movq	-32(%rbp), %rdx	# StrParI2, tmp76
	movq	-24(%rbp), %rax	# StrParI1, tmp77
	movq	%rdx, %rsi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	strcmp	#
	testl	%eax, %eax	# D.3166
	jle	.L54	#,
	addl	$7, -4(%rbp)	#, IntLoc
	movl	$1, %eax	#, D.3162
	jmp	.L53	#
.L54:
	movl	$0, %eax	#, D.3162
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Func2, .-Func2
	.globl	Func3
	.type	Func3, @function
Func3:
.LFB14:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# EnumParIn, EnumParIn
	movl	-20(%rbp), %eax	# EnumParIn, tmp61
	movl	%eax, -4(%rbp)	# tmp61, EnumLoc
	cmpl	$2, -4(%rbp)	#, EnumLoc
	jne	.L56	#,
	movl	$1, %eax	#, D.3168
	jmp	.L57	#
.L56:
	movl	$0, %eax	#, D.3168
.L57:
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Func3, .-Func3
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-16)"
	.section	.note.GNU-stack,"",@progbits
