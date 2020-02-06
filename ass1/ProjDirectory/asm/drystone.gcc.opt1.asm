	.file	"drystone.c"
# GNU C (GCC) version 4.8.5 20150623 (Red Hat 4.8.5-16) (x86_64-redhat-linux)
#	compiled by GNU C version 4.8.5 20150623 (Red Hat 4.8.5-16), GMP version 6.0.0, MPFR version 3.1.1, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  ../source/drystone.c -march=corei7
# -auxbase-strip ../asm/drystone.gcc.opt1.asm -O1 -fverbose-asm
# options enabled:  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
# -fdefer-pop -fdelete-null-pointer-checks -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-types -fforward-propagate
# -ffunction-cse -fgcse-lm -fgnu-runtime -fgnu-unique
# -fguess-branch-probability -fident -fif-conversion -fif-conversion2
# -finline -finline-atomics -finline-functions-called-once -fipa-profile
# -fipa-pure-const -fipa-reference -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -fpeephole -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fshow-column -fshrink-wrap -fsigned-zeros
# -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-volatile-bitfields
# -fsync-libcalls -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
# -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
# -ftree-parallelize-loops= -ftree-phiprop -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-slsr -ftree-sra
# -ftree-ter -ftree-vect-loop-version -funit-at-a-time -funwind-tables
# -fverbose-asm -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -maccumulate-outgoing-args -malign-stringops -mcx16 -mfancy-math-387
# -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp -mlong-double-80 -mmmx -mpopcnt
# -mpush-args -mred-zone -msahf -msse -msse2 -msse3 -msse4 -msse4.1
# -msse4.2 -mssse3 -mtls-direct-seg-refs

	.text
	.globl	Proc2
	.type	Proc2, @function
Proc2:
.LFB23:
	.cfi_startproc
	movl	(%rdi), %eax	# *IntParIO_3(D), D.3166
	cmpb	$65, Char1Glob(%rip)	#, Char1Glob
	jne	.L3	#,
	addl	$9, %eax	#, IntLoc
	subl	IntGlob(%rip), %eax	# IntGlob, D.3166
	movl	%eax, (%rdi)	# D.3166, *IntParIO_3(D)
.L3:
	rep ret
	.cfi_endproc
.LFE23:
	.size	Proc2, .-Proc2
	.globl	Proc3
	.type	Proc3, @function
Proc3:
.LFB24:
	.cfi_startproc
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.15
	testq	%rax, %rax	# PtrGlb.15
	je	.L5	#,
	movq	(%rax), %rax	# PtrGlb.15_3->PtrComp, D.3173
	movq	%rax, (%rdi)	# D.3173, *PtrParOut_5(D)
	jmp	.L6	#
.L5:
	movl	$100, IntGlob(%rip)	#, IntGlob
.L6:
	movl	IntGlob(%rip), %eax	# IntGlob, tmp71
	leal	12(%rax), %edx	#, D.3174
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb
	movl	%edx, 16(%rax)	# D.3174, MEM[(OneToFifty *)PtrGlb.15_8 + 16B]
	ret
	.cfi_endproc
.LFE24:
	.size	Proc3, .-Proc3
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
	.globl	Proc6
	.type	Proc6, @function
Proc6:
.LFB27:
	.cfi_startproc
	cmpl	$2, %edi	#, EnumParIn
	je	.L10	#,
	movl	$3, (%rsi)	#, *EnumParOut_4(D)
	cmpl	$1, %edi	#, EnumParIn
	je	.L12	#,
	cmpl	$1, %edi	#, EnumParIn
	jb	.L13	#,
	cmpl	$2, %edi	#, EnumParIn
	je	.L10	#,
	cmpl	$4, %edi	#, EnumParIn
	.p2align 4,,2
	je	.L14	#,
	.p2align 4,,5
	rep ret
.L13:
	movl	$0, (%rsi)	#, *EnumParOut_4(D)
	.p2align 4,,2
	ret
.L12:
	cmpl	$101, IntGlob(%rip)	#, IntGlob
	setl	%al	#, tmp64
	movzbl	%al, %eax	# tmp64, tmp64
	leal	(%rax,%rax,2), %eax	#, tmp64
	movl	%eax, (%rsi)	# tmp64, *EnumParOut_4(D)
	ret
.L10:
	movl	$1, (%rsi)	#, *EnumParOut_4(D)
	ret
.L14:
	movl	$2, (%rsi)	#, *EnumParOut_4(D)
	ret
	.cfi_endproc
.LFE27:
	.size	Proc6, .-Proc6
	.globl	Proc1
	.type	Proc1, @function
Proc1:
.LFB22:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# PtrParIn, PtrParIn
	movq	(%rdi), %rax	# PtrParIn_3(D)->PtrComp, D.3190
	movq	PtrGlb(%rip), %rdx	# PtrGlb, PtrGlb.12
	movq	(%rdx), %rcx	# *PtrGlb.12_5, *PtrGlb.12_5
	movq	%rcx, (%rax)	# *PtrGlb.12_5, *_4
	movq	8(%rdx), %rcx	# *PtrGlb.12_5, *PtrGlb.12_5
	movq	%rcx, 8(%rax)	# *PtrGlb.12_5, *_4
	movq	16(%rdx), %rcx	# *PtrGlb.12_5, *PtrGlb.12_5
	movq	%rcx, 16(%rax)	# *PtrGlb.12_5, *_4
	movq	24(%rdx), %rcx	# *PtrGlb.12_5, *PtrGlb.12_5
	movq	%rcx, 24(%rax)	# *PtrGlb.12_5, *_4
	movq	32(%rdx), %rcx	# *PtrGlb.12_5, *PtrGlb.12_5
	movq	%rcx, 32(%rax)	# *PtrGlb.12_5, *_4
	movq	40(%rdx), %rcx	# *PtrGlb.12_5, *PtrGlb.12_5
	movq	%rcx, 40(%rax)	# *PtrGlb.12_5, *_4
	movq	48(%rdx), %rdx	# *PtrGlb.12_5, *PtrGlb.12_5
	movq	%rdx, 48(%rax)	# *PtrGlb.12_5, *_4
	movl	$5, 16(%rdi)	#, PtrParIn_3(D)->IntComp
	movq	(%rdi), %rax	# PtrParIn_3(D)->PtrComp, D.3190
	movl	$5, 16(%rax)	#, _8->IntComp
	movq	(%rdi), %rax	# PtrParIn_3(D)->PtrComp, D.3190
	movq	%rax, (%rax)	# D.3190, _10->PtrComp
	movq	(%rdi), %rax	# PtrParIn_3(D)->PtrComp, PtrParIn_3(D)->PtrComp
	movq	(%rax), %rdi	# _12->PtrComp,
	movl	$0, %eax	#,
	call	Proc3	#
	movq	(%rbx), %rax	# PtrParIn_3(D)->PtrComp, D.3190
	cmpl	$0, 8(%rax)	#, _15->Discr
	jne	.L18	#,
	movl	$6, 16(%rax)	#, _15->IntComp
	movq	(%rbx), %rax	# PtrParIn_3(D)->PtrComp, tmp97
	leaq	12(%rax), %rsi	#, D.3192
	movl	12(%rbx), %edi	# PtrParIn_3(D)->EnumComp, PtrParIn_3(D)->EnumComp
	movl	$0, %eax	#,
	call	Proc6	#
	movq	(%rbx), %rax	# PtrParIn_3(D)->PtrComp, D.3190
	movq	PtrGlb(%rip), %rdx	# PtrGlb, PtrGlb
	movq	(%rdx), %rdx	# PtrGlb.12_23->PtrComp, D.3190
	movq	%rdx, (%rax)	# D.3190, _22->PtrComp
	movq	(%rbx), %rax	# PtrParIn_3(D)->PtrComp, D.3190
	addl	$12, 16(%rax)	#, MEM[(OneToFifty *)_26 + 16B]
	jmp	.L20	#
.L18:
	movq	(%rax), %rdx	# *_15, *_15
	movq	%rdx, (%rbx)	# *_15, *PtrParIn_3(D)
	movq	8(%rax), %rdx	# *_15, *_15
	movq	%rdx, 8(%rbx)	# *_15, *PtrParIn_3(D)
	movq	16(%rax), %rdx	# *_15, *_15
	movq	%rdx, 16(%rbx)	# *_15, *PtrParIn_3(D)
	movq	24(%rax), %rdx	# *_15, *_15
	movq	%rdx, 24(%rbx)	# *_15, *PtrParIn_3(D)
	movq	32(%rax), %rdx	# *_15, *_15
	movq	%rdx, 32(%rbx)	# *_15, *PtrParIn_3(D)
	movq	40(%rax), %rdx	# *_15, *_15
	movq	%rdx, 40(%rbx)	# *_15, *PtrParIn_3(D)
	movq	48(%rax), %rax	# *_15, *_15
	movq	%rax, 48(%rbx)	# *_15, *PtrParIn_3(D)
.L20:
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.size	Proc1, .-Proc1
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
	.globl	Proc8
	.type	Proc8, @function
Proc8:
.LFB29:
	.cfi_startproc
	leal	5(%rdx), %r8d	#, IntIndex
	movslq	%r8d, %r10	# IntIndex, D.3212
	leaq	0(,%r10,4), %rax	#, D.3212
	leaq	(%rdi,%rax), %r11	#, D.3213
	movl	%ecx, (%r11)	# IntParI2, *_8
	movl	%ecx, 4(%rdi,%rax)	# IntParI2, *_14
	movl	%r8d, 120(%rdi,%rax)	# IntIndex, *_18
	leal	6(%rdx), %edi	#, D.3214
	cmpl	%edi, %r8d	# D.3214, IntIndex
	jg	.L24	#,
	imulq	$204, %r10, %r9	#, D.3212, D.3212
	addq	%rsi, %r9	# Array2Par, D.3210
	movl	%r8d, %eax	# IntIndex, IntIndex
.L25:
	movslq	%eax, %rcx	# IntIndex, IntIndex
	movl	%r8d, (%r9,%rcx,4)	# IntIndex, *_23
	addl	$1, %eax	#, IntIndex
	cmpl	%edi, %eax	# D.3214, IntIndex
	jle	.L25	#,
.L24:
	imulq	$204, %r10, %r10	#, D.3212, D.3212
	leaq	(%rsi,%r10), %rax	#, D.3210
	addl	$4, %edx	#, D.3214
	movslq	%edx, %rdx	# D.3214, D.3211
	addl	$1, (%rax,%rdx,4)	#, MEM[(int[51] *)_1]
	movl	(%r11), %edx	# *_8, D.3214
	movslq	%r8d, %r8	# IntIndex, IntIndex
	leaq	(%rsi,%r8,4), %rax	#, tmp99
	movl	%edx, 4080(%r10,%rax)	# D.3214, *_33
	movl	$5, IntGlob(%rip)	#, IntGlob
	ret
	.cfi_endproc
.LFE29:
	.size	Proc8, .-Proc8
	.globl	Func1
	.type	Func1, @function
Func1:
.LFB30:
	.cfi_startproc
	cmpb	%sil, %dil	# CharPar2, CharPar1
	sete	%al	#, D.3221
	movzbl	%al, %eax	# D.3221, D.3221
	ret
	.cfi_endproc
.LFE30:
	.size	Func1, .-Func1
	.globl	Func2
	.type	Func2, @function
Func2:
.LFB31:
	.cfi_startproc
	movzbl	1(%rdi), %eax	# MEM[(char *)StrParI1_10(D) + 1B], tmp71
	cmpb	%al, 2(%rsi)	# tmp71, MEM[(char *)StrParI2_5(D) + 2B]
	jne	.L28	#,
.L29:
	jmp	.L29	#
.L28:
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
	call	strcmp	#
	testl	%eax, %eax	# D.3229
	setg	%al	#, D.3230
	movzbl	%al, %eax	# D.3230, D.3230
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE31:
	.size	Func2, .-Func2
	.section	.rodata.str1.8,"aMS",@progbits,1
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
.LFB21:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$120, %rsp	#,
	.cfi_def_cfa_offset 160
	movq	%rsp, %rdi	#,
	call	times	#
	movq	(%rsp), %rbx	# tms.tms_utime, starttime
	movl	$500000000, %eax	#, D.3267
.L33:
	subl	$1, %eax	#, D.3267
	jne	.L33	#,
	movq	%rsp, %rdi	#,
	call	times	#
	movq	(%rsp), %r13	# tms.tms_utime, nulltime
	subq	%rbx, %r13	# starttime, nulltime
	movl	$56, %edi	#,
	call	malloc	#
	movq	%rax, %rbx	#, tmp100
	movq	%rax, PtrGlbNext(%rip)	# tmp100, PtrGlbNext
	movl	$56, %edi	#,
	call	malloc	#
	movq	%rax, %rdx	#, tmp101
	movq	%rax, PtrGlb(%rip)	# tmp101, PtrGlb
	movq	%rbx, (%rax)	# tmp100, MEM[(struct RecordType *)PtrGlb.1_19].PtrComp
	movl	$0, 8(%rax)	#, MEM[(struct RecordType *)PtrGlb.1_19].Discr
	movl	$2, 12(%rax)	#, MEM[(struct RecordType *)PtrGlb.1_19].EnumComp
	movl	$40, 16(%rax)	#, MEM[(struct RecordType *)PtrGlb.1_19].IntComp
	movabsq	$5642821575076104260, %rcx	#, tmp142
	movq	%rcx, 20(%rdx)	# tmp142, MEM[(void *)PtrGlb.1_19 + 20B]
	movabsq	$4706902966564560965, %rcx	#, tmp143
	movq	%rcx, 28(%rdx)	# tmp143, MEM[(void *)PtrGlb.1_19 + 20B]
	movabsq	$2325349785699101773, %rcx	#, tmp144
	movq	%rcx, 36(%rdx)	# tmp144, MEM[(void *)PtrGlb.1_19 + 20B]
	movl	$1230132307, 44(%rdx)	#, MEM[(void *)PtrGlb.1_19 + 20B]
	movw	$18254, 48(%rdx)	#, MEM[(void *)PtrGlb.1_19 + 20B]
	movb	$0, 50(%rdx)	#, MEM[(void *)PtrGlb.1_19 + 20B]
	movq	%rsp, %rdi	#,
	call	times	#
	movq	(%rsp), %r12	# tms.tms_utime, starttime
	movl	$500000000, %ebp	#, D.3267
.L41:
	movl	$0, %eax	#,
	call	Proc5	#
	movb	$66, Char2Glob(%rip)	#, Char2Glob
	movl	$2, 108(%rsp)	#, IntLoc1
	movabsq	$5642821575076104260, %rax	#, tmp145
	movq	%rax, 32(%rsp)	# tmp145, MEM[(char * {ref-all})&String2Loc]
	movabsq	$4706902966564560965, %rax	#, tmp146
	movq	%rax, 40(%rsp)	# tmp146, MEM[(char * {ref-all})&String2Loc]
	movabsq	$2325069237881678925, %rax	#, tmp147
	movq	%rax, 48(%rsp)	# tmp147, MEM[(char * {ref-all})&String2Loc]
	movl	$1230132307, 56(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	movw	$18254, 60(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	movb	$0, 62(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	movl	$1, 104(%rsp)	#, EnumLoc
	leaq	32(%rsp), %rsi	#, tmp148
	leaq	64(%rsp), %rdi	#, tmp149
	movl	$0, %eax	#,
	call	Func2	#
	testl	%eax, %eax	# D.3270
	sete	%al	#, D.3271
	movzbl	%al, %eax	# D.3271, D.3271
	movl	%eax, BoolGlob(%rip)	# D.3271, BoolGlob
	movl	$2, %eax	#, IntLoc1.5
.L36:
	addl	$1, %eax	#, IntLoc1.7
	cmpl	$3, %eax	#, IntLoc1.7
	jne	.L36	#,
	movl	$3, 108(%rsp)	#, IntLoc1
	movl	$7, %ecx	#,
	movl	$3, %edx	#,
	movl	$Array2Glob, %esi	#,
	movl	$Array1Glob, %edi	#,
	movl	$0, %eax	#,
	call	Proc8	#
	movq	PtrGlb(%rip), %rdi	# PtrGlb,
	movl	$0, %eax	#,
	call	Proc1	#
	cmpb	$64, Char2Glob(%rip)	#, Char2Glob
	jle	.L37	#,
	movl	$65, %ebx	#, CharIndex
.L39:
	cmpb	$67, %bl	#, CharIndex
	sete	%al	#, D.3271
	movzbl	%al, %eax	# D.3271, D.3271
	cmpl	%eax, 104(%rsp)	# D.3271, EnumLoc
	jne	.L38	#,
	leaq	104(%rsp), %rsi	#, tmp150
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	Proc6	#
.L38:
	addl	$1, %ebx	#, CharIndex
	cmpb	%bl, Char2Glob(%rip)	# CharIndex, Char2Glob
	jge	.L39	#,
.L37:
	leaq	108(%rsp), %rdi	#, tmp151
	movl	$0, %eax	#,
	call	Proc2	#
	subl	$1, %ebp	#, D.3267
	jne	.L41	#,
	movq	%rsp, %rdi	#,
	call	times	#
	movq	(%rsp), %rbx	# tms.tms_utime, D.3268
	subq	%r12, %rbx	# starttime, D.3268
	subq	%r13, %rbx	# nulltime, benchtime
	movabsq	$-8608480567731124087, %rdx	#, tmp127
	movq	%rbx, %rax	# benchtime, tmp140
	imulq	%rdx	# tmp127
	addq	%rbx, %rdx	# benchtime, tmp128
	sarq	$5, %rdx	#, tmp129
	movq	%rbx, %rax	# benchtime, tmp130
	sarq	$63, %rax	#, tmp130
	subq	%rax, %rdx	# tmp130, D.3268
	movl	$500000000, %esi	#,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	movabsq	$30000000000, %rax	#, tmp134
	cqto
	idivq	%rbx	# benchtime
	movq	%rax, %rsi	# D.3268, D.3268
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	addq	$120, %rsp	#,
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE21:
	.size	Proc0, .-Proc0
	.globl	main
	.type	main, @function
main:
.LFB20:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
	movl	$0, %eax	#,
	call	Proc0	#
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE20:
	.size	main, .-main
	.globl	Func3
	.type	Func3, @function
Func3:
.LFB32:
	.cfi_startproc
	cmpl	$2, %edi	#, EnumParIn
	sete	%al	#, D.3278
	movzbl	%al, %eax	# D.3278, D.3278
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
