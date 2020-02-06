	.file	"drystone.c"
# GNU C (GCC) version 4.8.5 20150623 (Red Hat 4.8.5-16) (x86_64-redhat-linux)
#	compiled by GNU C version 4.8.5 20150623 (Red Hat 4.8.5-16), GMP version 6.0.0, MPFR version 3.1.1, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  ../source/drystone.c -march=corei7
# -auxbase-strip ../asm/drystone.gcc.opt2.asm -O2 -fverbose-asm
# options enabled:  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fcaller-saves -fcombine-stack-adjustments -fcommon -fcompare-elim
# -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
# -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
# -fif-conversion -fif-conversion2 -findirect-inlining -finline
# -finline-atomics -finline-functions-called-once -finline-small-functions
# -fipa-cp -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -fmath-errno
# -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
# -fomit-frame-pointer -foptimize-register-move -foptimize-sibling-calls
# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
# -fprefetch-loop-arrays -free -freg-struct-return -fregmove
# -freorder-blocks -freorder-functions -frerun-cse-after-loop
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
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
# -ftree-slp-vectorize -ftree-slsr -ftree-sra -ftree-switch-conversion
# -ftree-tail-merge -ftree-ter -ftree-vect-loop-version -ftree-vrp
# -funit-at-a-time -funwind-tables -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -maccumulate-outgoing-args
# -malign-stringops -mcx16 -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc
# -mieee-fp -mlong-double-80 -mmmx -mpopcnt -mpush-args -mred-zone -msahf
# -msse -msse2 -msse3 -msse4 -msse4.1 -msse4.2 -mssse3
# -mtls-direct-seg-refs

	.text
	.p2align 4,,15
	.globl	Proc2
	.type	Proc2, @function
Proc2:
.LFB23:
	.cfi_startproc
	cmpb	$65, Char1Glob(%rip)	#, Char1Glob
	movl	(%rdi), %eax	# *IntParIO_3(D), D.3212
	je	.L5	#,
	rep ret
	.p2align 4,,10
	.p2align 3
.L5:
	addl	$9, %eax	#, D.3212
	subl	IntGlob(%rip), %eax	# IntGlob, D.3212
	movl	%eax, (%rdi)	# D.3212, *IntParIO_3(D)
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
	je	.L7	#,
	movq	(%rax), %rax	# PtrGlb.16_3->PtrComp, D.3215
	movl	IntGlob(%rip), %ecx	# IntGlob, tmp67
	movq	%rax, (%rdi)	# D.3215, *PtrParOut_5(D)
	movq	PtrGlb(%rip), %rax	# PtrGlb, D.3216
	leal	12(%rcx), %edx	#, D.3217
	movl	%edx, 16(%rax)	# D.3217, MEM[(OneToFifty *)_15 + 16B]
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	xorl	%eax, %eax	# D.3216
	movl	$112, %edx	#, D.3217
	movl	$100, IntGlob(%rip)	#, IntGlob
	movl	%edx, 16(%rax)	# D.3217, MEM[(OneToFifty *)_15 + 16B]
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
	je	.L12	#,
	cmpl	$1, %edi	#, EnumParIn
	movl	$3, (%rsi)	#, *EnumParOut_3(D)
	je	.L14	#,
	jb	.L18	#,
	cmpl	$4, %edi	#, EnumParIn
	jne	.L19	#,
	movl	$2, (%rsi)	#, *EnumParOut_3(D)
.L17:
	.p2align 4,,2
	rep ret
	.p2align 4,,10
	.p2align 3
.L14:
	cmpl	$100, IntGlob(%rip)	#, IntGlob
	jle	.L17	#,
.L18:
	movl	$0, (%rsi)	#, *EnumParOut_3(D)
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	movl	$1, (%rsi)	#, *EnumParOut_3(D)
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	rep ret
	.cfi_endproc
.LFE27:
	.size	Proc6, .-Proc6
	.p2align 4,,15
	.globl	Proc1
	.type	Proc1, @function
Proc1:
.LFB22:
	.cfi_startproc
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.13
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# PtrParIn, PtrParIn
	movq	(%rdi), %rdx	# PtrParIn_3(D)->PtrComp, D.3246
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
	movq	(%rdi), %rdx	# PtrParIn_3(D)->PtrComp, D.3246
	movl	$5, 16(%rdi)	#, PtrParIn_3(D)->IntComp
	movq	%rdx, (%rdx)	# D.3246, _8->PtrComp
	movl	$5, 16(%rdx)	#, _8->IntComp
	movq	(%rdi), %rdx	# PtrParIn_3(D)->PtrComp, PtrParIn_3(D)->PtrComp
	movq	(%rax), %rax	# PtrGlb.13_5->PtrComp, D.3246
	movq	(%rdx), %rdx	# _11->PtrComp, D.3246
	movq	%rax, (%rdx)	# D.3246, MEM[(struct RecordType * *)_12]
	movl	IntGlob(%rip), %eax	# IntGlob, tmp103
	movq	(%rdi), %rsi	# PtrParIn_3(D)->PtrComp, D.3246
	leal	12(%rax), %edx	#, D.3249
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb
	movl	%edx, 16(%rax)	# D.3249, MEM[(OneToFifty *)PtrGlb.16_29 + 16B]
	movl	8(%rsi), %eax	# _14->Discr,
	testl	%eax, %eax	#
	je	.L25	#,
	movq	(%rsi), %rax	# *_14, *_14
	movq	%rax, (%rdi)	# *_14, *PtrParIn_3(D)
	movq	8(%rsi), %rax	# *_14, *_14
	movq	%rax, 8(%rdi)	# *_14, *PtrParIn_3(D)
	movq	16(%rsi), %rax	# *_14, *_14
	movq	%rax, 16(%rdi)	# *_14, *PtrParIn_3(D)
	movq	24(%rsi), %rax	# *_14, *_14
	movq	%rax, 24(%rdi)	# *_14, *PtrParIn_3(D)
	movq	32(%rsi), %rax	# *_14, *_14
	movq	%rax, 32(%rdi)	# *_14, *PtrParIn_3(D)
	movq	40(%rsi), %rax	# *_14, *_14
	movq	%rax, 40(%rdi)	# *_14, *PtrParIn_3(D)
	movq	48(%rsi), %rax	# *_14, *_14
	movq	%rax, 48(%rdi)	# *_14, *PtrParIn_3(D)
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	.cfi_restore_state
	movl	12(%rdi), %edi	# PtrParIn_3(D)->EnumComp, PtrParIn_3(D)->EnumComp
	movl	$6, 16(%rsi)	#, _14->IntComp
	xorl	%eax, %eax	#
	addq	$12, %rsi	#, D.3248
	call	Proc6	#
	movq	PtrGlb(%rip), %rdx	# PtrGlb, PtrGlb
	movq	(%rbx), %rax	# PtrParIn_3(D)->PtrComp, D.3246
	movq	(%rdx), %rdx	# PtrGlb.13_21->PtrComp, D.3246
	movq	%rdx, (%rax)	# D.3246, _20->PtrComp
	movq	(%rbx), %rax	# PtrParIn_3(D)->PtrComp, D.3246
	addl	$12, 16(%rax)	#, MEM[(OneToFifty *)_24 + 16B]
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.size	Proc1, .-Proc1
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
	movslq	%r8d, %r9	# IntIndex, D.3256
	leaq	0(,%r9,4), %rax	#, D.3256
	leaq	(%rdi,%rax), %r10	#, D.3257
	movl	%ecx, (%r10)	# IntParI2, *_8
	movl	%ecx, 4(%rdi,%rax)	# IntParI2, *_14
	movl	%r8d, 120(%rdi,%rax)	# IntIndex, *_18
	imulq	$204, %r9, %rdi	#, D.3256, D.3256
	addq	%rsi, %rax	# Array2Par, tmp92
	leaq	(%rsi,%rdi), %rcx	#, D.3255
	movl	%r8d, (%rcx,%r9,4)	# IntIndex, *_2
	leal	6(%rdx), %r9d	#, IntIndex
	addl	$4, %edx	#, D.3259
	movslq	%r9d, %r9	# IntIndex, IntIndex
	movslq	%edx, %rdx	# D.3259, D.3258
	movl	%r8d, (%rcx,%r9,4)	# IntIndex, *_2
	addl	$1, (%rcx,%rdx,4)	#, MEM[(int[51] *)_40]
	movl	(%r10), %edx	# *_8, D.3259
	movl	%edx, 4080(%rdi,%rax)	# D.3259, *_33
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
	xorl	%eax, %eax	# D.3262
	cmpb	%sil, %dil	# CharPar2, CharPar1
	sete	%al	#, D.3262
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
	je	.L32	#,
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
	call	strcmp	#
	testl	%eax, %eax	# D.3269
	setg	%al	#, D.3271
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	movzbl	%al, %eax	# D.3271, D.3271
	ret
.L32:
	jmp	.L32	#
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
	leaq	64(%rsp), %rdi	#, tmp122
	call	times	#
	leaq	64(%rsp), %rdi	#, tmp123
	movq	64(%rsp), %rbx	# tms.tms_utime, starttime
	call	times	#
	movq	64(%rsp), %rbp	# tms.tms_utime, nulltime
	movl	$56, %edi	#,
	call	malloc	#
	movl	$56, %edi	#,
	movq	%rax, PtrGlbNext(%rip)	# tmp90, PtrGlbNext
	subq	%rbx, %rbp	# starttime, nulltime
	movq	%rax, %rbx	#, tmp90
	call	malloc	#
	leaq	64(%rsp), %rdi	#, tmp127
	movabsq	$5642821575076104260, %rcx	#, tmp124
	movq	%rcx, 20(%rax)	# tmp124, MEM[(void *)PtrGlb.1_17 + 20B]
	movabsq	$4706902966564560965, %rcx	#, tmp125
	movq	%rcx, 28(%rax)	# tmp125, MEM[(void *)PtrGlb.1_17 + 20B]
	movabsq	$2325349785699101773, %rcx	#, tmp126
	movq	%rcx, 36(%rax)	# tmp126, MEM[(void *)PtrGlb.1_17 + 20B]
	movl	$18254, %ecx	#,
	movq	%rbx, (%rax)	# tmp90, MEM[(struct RecordType *)PtrGlb.1_17].PtrComp
	movl	$500000000, %ebx	#, D.3310
	movl	$0, 8(%rax)	#, MEM[(struct RecordType *)PtrGlb.1_17].Discr
	movl	$2, 12(%rax)	#, MEM[(struct RecordType *)PtrGlb.1_17].EnumComp
	movl	$40, 16(%rax)	#, MEM[(struct RecordType *)PtrGlb.1_17].IntComp
	movl	$1230132307, 44(%rax)	#, MEM[(void *)PtrGlb.1_17 + 20B]
	movw	%cx, 48(%rax)	#, MEM[(void *)PtrGlb.1_17 + 20B]
	movb	$0, 50(%rax)	#, MEM[(void *)PtrGlb.1_17 + 20B]
	movq	%rax, PtrGlb(%rip)	# tmp91, PtrGlb
	call	times	#
	movq	64(%rsp), %r12	# tms.tms_utime, starttime
	.p2align 4,,10
	.p2align 3
.L38:
	leaq	32(%rsp), %rsi	#, tmp131
	movq	%rsp, %rdi	#,
	movb	$65, Char1Glob(%rip)	#, Char1Glob
	movabsq	$5642821575076104260, %rax	#, tmp128
	movb	$66, Char2Glob(%rip)	#, Char2Glob
	movq	%rax, 32(%rsp)	# tmp128, MEM[(char * {ref-all})&String2Loc]
	movabsq	$4706902966564560965, %rax	#, tmp129
	movq	%rax, 40(%rsp)	# tmp129, MEM[(char * {ref-all})&String2Loc]
	movabsq	$2325069237881678925, %rax	#, tmp130
	movq	%rax, 48(%rsp)	# tmp130, MEM[(char * {ref-all})&String2Loc]
	movl	$18254, %eax	#,
	movw	%ax, 60(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	xorl	%eax, %eax	#
	movl	$0, BoolGlob(%rip)	#, BoolGlob
	movl	$1230132307, 56(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	movb	$0, 62(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	call	Func2	#
	movl	$3, %edx	#,
	movl	$7, %ecx	#,
	testl	%eax, %eax	# D.3307
	movl	$Array2Glob, %esi	#,
	movl	$Array1Glob, %edi	#,
	sete	%al	#, D.3308
	movzbl	%al, %eax	# D.3308, D.3308
	movl	%eax, BoolGlob(%rip)	# D.3308, BoolGlob
	xorl	%eax, %eax	#
	call	Proc8	#
	movq	PtrGlb(%rip), %rdi	# PtrGlb,
	xorl	%eax, %eax	#
	call	Proc1	#
	movzbl	Char2Glob(%rip), %edx	# Char2Glob, Char2Glob.11
	cmpb	$64, %dl	#, Char2Glob.11
	jle	.L35	#,
	movl	$65, %eax	#, CharIndex
	.p2align 4,,10
	.p2align 3
.L36:
	addl	$1, %eax	#, CharIndex
	cmpb	%al, %dl	# CharIndex, Char2Glob.11
	jge	.L36	#,
.L35:
	subl	$1, %ebx	#, D.3310
	jne	.L38	#,
	leaq	64(%rsp), %rdi	#, tmp132
	call	times	#
	movq	64(%rsp), %rbx	# tms.tms_utime, benchtime
	movl	$500000000, %esi	#,
	movabsq	$-8608480567731124087, %rdx	#, tmp109
	movl	$.LC0, %edi	#,
	subq	%r12, %rbx	# starttime, benchtime
	subq	%rbp, %rbx	# nulltime, benchtime
	movq	%rbx, %rax	# benchtime, tmp121
	imulq	%rdx	# tmp109
	movq	%rbx, %rax	# benchtime, tmp112
	sarq	$63, %rax	#, tmp112
	addq	%rbx, %rdx	# benchtime, D.3305
	sarq	$5, %rdx	#, D.3305
	subq	%rax, %rdx	# tmp112, D.3305
	xorl	%eax, %eax	#
	call	printf	#
	movl	$.LC1, %edi	#,
	movabsq	$30000000000, %rax	#, tmp116
	cqto
	idivq	%rbx	# benchtime
	movq	%rax, %rsi	# D.3305, D.3305
	xorl	%eax, %eax	#
	call	printf	#
	addq	$96, %rsp	#,
	.cfi_def_cfa_offset 32
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
	.globl	Func3
	.type	Func3, @function
Func3:
.LFB32:
	.cfi_startproc
	xorl	%eax, %eax	# D.3318
	cmpl	$2, %edi	#, EnumParIn
	sete	%al	#, D.3318
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
