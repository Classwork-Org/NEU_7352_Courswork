	.file	"linpack.c"
# GNU C (GCC) version 4.8.5 20150623 (Red Hat 4.8.5-16) (x86_64-redhat-linux)
#	compiled by GNU C version 4.8.5 20150623 (Red Hat 4.8.5-16), GMP version 6.0.0, MPFR version 3.1.1, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  ../source/linpack.c -mtune=generic -march=x86-64
# -auxbase-strip ../asm/linpack.gcc.opt2.asm -O2 -fverbose-asm
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
# -malign-stringops -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc
# -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse
# -msse2 -mtls-direct-seg-refs

	.text
	.p2align 4,,15
	.globl	cpu_time
	.type	cpu_time, @function
cpu_time:
.LFB24:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
	call	clock	#
	cvtsi2sdq	%rax, %xmm0	# D.4714, value
	divsd	.LC0(%rip), %xmm0	#, value
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	cpu_time, .-cpu_time
	.p2align 4,,15
	.globl	daxpy
	.type	daxpy, @function
daxpy:
.LFB25:
	.cfi_startproc
	testl	%edi, %edi	# n
	jle	.L3	#,
	ucomisd	.LC1(%rip), %xmm0	#, da
	jnp	.L24	#,
	cmpl	$1, %edx	#, incx
	jne	.L19	#,
.L25:
	cmpl	$1, %r8d	#, incy
	jne	.L19	#,
	movl	%edi, %edx	# n, i
	andl	$3, %edx	#, i
	je	.L12	#,
	xorl	%eax, %eax	# ivtmp.54
	.p2align 4,,10
	.p2align 3
.L14:
	movsd	(%rsi,%rax,8), %xmm1	# MEM[base: dx_26(D), index: ivtmp.54_6, step: 8, offset: 0B], D.4765
	mulsd	%xmm0, %xmm1	# da, D.4765
	addsd	(%rcx,%rax,8), %xmm1	# MEM[base: dy_19(D), index: ivtmp.54_6, step: 8, offset: 0B], D.4765
	movsd	%xmm1, (%rcx,%rax,8)	# D.4765, MEM[base: dy_19(D), index: ivtmp.54_6, step: 8, offset: 0B]
	addq	$1, %rax	#, ivtmp.54
	cmpl	%eax, %edx	# ivtmp.54, i
	jg	.L14	#,
	cmpl	%edx, %edi	# i, n
	jle	.L3	#,
.L12:
	subl	$1, %edi	#, D.4768
	movslq	%edx, %r8	# i, D.4764
	subq	%rdx, %rdi	# i, D.4767
	leaq	8(,%r8,8), %r9	#, D.4764
	andl	$4294967292, %edi	#, D.4767
	addq	%r8, %rdi	# D.4764, D.4767
	leaq	(%rcx,%r9), %rax	#, ivtmp.47
	addq	%r9, %rsi	# D.4764, ivtmp.48
	leaq	40(%rcx,%rdi,8), %rdx	#, D.4767
	.p2align 4,,10
	.p2align 3
.L15:
	movsd	-8(%rsi), %xmm1	# MEM[base: _126, offset: -8B], D.4765
	addq	$32, %rax	#, ivtmp.47
	addq	$32, %rsi	#, ivtmp.48
	mulsd	%xmm0, %xmm1	# da, D.4765
	addsd	-40(%rax), %xmm1	# MEM[base: _127, offset: -8B], D.4765
	movsd	%xmm1, -40(%rax)	# D.4765, MEM[base: _127, offset: -8B]
	movsd	-32(%rsi), %xmm1	# MEM[base: _126, offset: 0B], D.4765
	mulsd	%xmm0, %xmm1	# da, D.4765
	addsd	-32(%rax), %xmm1	# MEM[base: _127, offset: 0B], D.4765
	movsd	%xmm1, -32(%rax)	# D.4765, MEM[base: _127, offset: 0B]
	movsd	-24(%rsi), %xmm1	# MEM[base: _126, offset: 8B], D.4765
	mulsd	%xmm0, %xmm1	# da, D.4765
	addsd	-24(%rax), %xmm1	# MEM[base: _127, offset: 8B], D.4765
	movsd	%xmm1, -24(%rax)	# D.4765, MEM[base: _127, offset: 8B]
	movsd	-16(%rsi), %xmm1	# MEM[base: _126, offset: 16B], D.4765
	mulsd	%xmm0, %xmm1	# da, D.4765
	addsd	-16(%rax), %xmm1	# MEM[base: _127, offset: 16B], D.4765
	movsd	%xmm1, -16(%rax)	# D.4765, MEM[base: _127, offset: 16B]
	cmpq	%rdx, %rax	# D.4767, ivtmp.47
	jne	.L15	#,
.L3:
	rep ret
	.p2align 4,,10
	.p2align 3
.L24:
	je	.L3	#,
	cmpl	$1, %edx	#, incx
	.p2align 4,,8
	je	.L25	#,
.L19:
	xorl	%r9d, %r9d	# ix
	testl	%edx, %edx	# incx
	.p2align 4,,3
	js	.L26	#,
.L9:
	xorl	%eax, %eax	# iy
	testl	%r8d, %r8d	# incy
	js	.L27	#,
.L10:
	movslq	%r9d, %r9	# ix, D.4770
	movslq	%r8d, %r8	# incy, D.4770
	cltq
	movslq	%edx, %rdx	# incx, D.4770
	leaq	(%rsi,%r9,8), %rsi	#, ivtmp.36
	leaq	(%rcx,%rax,8), %rax	#, ivtmp.34
	salq	$3, %r8	#, D.4770
	salq	$3, %rdx	#, D.4770
	xorl	%ecx, %ecx	# i
	.p2align 4,,10
	.p2align 3
.L11:
	movsd	(%rsi), %xmm1	# MEM[base: _133, offset: 0B], D.4765
	addl	$1, %ecx	#, i
	addq	%rdx, %rsi	# D.4770, ivtmp.36
	mulsd	%xmm0, %xmm1	# da, D.4765
	addsd	(%rax), %xmm1	# MEM[base: _134, offset: 0B], D.4765
	movsd	%xmm1, (%rax)	# D.4765, MEM[base: _134, offset: 0B]
	addq	%r8, %rax	# D.4770, ivtmp.34
	cmpl	%edi, %ecx	# n, i
	jne	.L11	#,
	rep ret
	.p2align 4,,10
	.p2align 3
.L27:
	movb	$1, %al	#,
	subl	%edi, %eax	# n, iy
	imull	%r8d, %eax	# incy, iy
	jmp	.L10	#
	.p2align 4,,10
	.p2align 3
.L26:
	movb	$1, %r9b	#,
	subl	%edi, %r9d	# n, ix
	imull	%edx, %r9d	# incx, ix
	jmp	.L9	#
	.cfi_endproc
.LFE25:
	.size	daxpy, .-daxpy
	.p2align 4,,15
	.globl	ddot
	.type	ddot, @function
ddot:
.LFB26:
	.cfi_startproc
	testl	%edi, %edi	# n
	jle	.L39	#,
	cmpl	$1, %edx	#, incx
	jne	.L43	#,
	cmpl	$1, %r8d	#, incy
	je	.L30	#,
.L43:
	xorl	%r9d, %r9d	# ix
	testl	%edx, %edx	# incx
	js	.L44	#,
.L32:
	xorl	%eax, %eax	# iy
	testl	%r8d, %r8d	# incy
	js	.L45	#,
.L33:
	xorpd	%xmm0, %xmm0	# dtemp
	movslq	%edx, %rdx	# incx, D.4814
	movslq	%r9d, %r9	# ix, D.4814
	movslq	%r8d, %r8	# incy, D.4814
	cltq
	leaq	(%rsi,%r9,8), %r9	#, ivtmp.70
	salq	$3, %rdx	#, D.4814
	leaq	(%rcx,%rax,8), %rsi	#, ivtmp.72
	salq	$3, %r8	#, D.4814
	xorl	%ecx, %ecx	# i
	.p2align 4,,10
	.p2align 3
.L34:
	movsd	(%r9), %xmm1	# MEM[base: _187, offset: 0B], D.4811
	addl	$1, %ecx	#, i
	addq	%rdx, %r9	# D.4814, ivtmp.70
	mulsd	(%rsi), %xmm1	# MEM[base: _186, offset: 0B], D.4811
	addq	%r8, %rsi	# D.4814, ivtmp.72
	cmpl	%edi, %ecx	# n, i
	addsd	%xmm1, %xmm0	# D.4811, dtemp
	jne	.L34	#,
	rep ret
	.p2align 4,,10
	.p2align 3
.L30:
	movl	%edi, %eax	# n, tmp171
	movl	$1717986919, %edx	#, tmp147
	imull	%edx	# tmp147
	movl	%edi, %eax	# n, tmp149
	sarl	$31, %eax	#, tmp149
	sarl	%edx	# i
	subl	%eax, %edx	# tmp149, i
	leal	(%rdx,%rdx,4), %eax	#, tmp152
	movl	%edi, %edx	# n, i
	subl	%eax, %edx	# tmp152, i
	je	.L42	#,
	xorpd	%xmm0, %xmm0	# dtemp
	xorl	%r8d, %r8d	# ivtmp.91
	.p2align 4,,10
	.p2align 3
.L37:
	movsd	(%rsi,%r8,8), %xmm1	# MEM[base: dx_25(D), index: ivtmp.91_50, step: 8, offset: 0B], D.4811
	mulsd	(%rcx,%r8,8), %xmm1	# MEM[base: dy_31(D), index: ivtmp.91_50, step: 8, offset: 0B], D.4811
	addq	$1, %r8	#, ivtmp.91
	cmpl	%r8d, %edx	# ivtmp.91, i
	addsd	%xmm1, %xmm0	# D.4811, dtemp
	jg	.L37	#,
	cmpl	%edx, %edi	# i, n
	jle	.L46	#,
.L35:
	movslq	%edx, %rax	# i, D.4810
	leaq	8(,%rax,8), %rax	#, D.4810
	addq	%rax, %rsi	# D.4810, ivtmp.82
	addq	%rax, %rcx	# D.4810, ivtmp.83
	.p2align 4,,10
	.p2align 3
.L38:
	movsd	-8(%rsi), %xmm1	# MEM[base: _181, offset: -8B], D.4811
	addl	$5, %edx	#, i
	addq	$40, %rsi	#, ivtmp.82
	addq	$40, %rcx	#, ivtmp.83
	mulsd	-48(%rcx), %xmm1	# MEM[base: _180, offset: -8B], D.4811
	addsd	%xmm1, %xmm0	# D.4811, dtemp
	movsd	-40(%rsi), %xmm1	# MEM[base: _181, offset: 0B], D.4811
	mulsd	-40(%rcx), %xmm1	# MEM[base: _180, offset: 0B], D.4811
	addsd	%xmm1, %xmm0	# D.4811, dtemp
	movsd	-32(%rsi), %xmm1	# MEM[base: _181, offset: 8B], D.4811
	mulsd	-32(%rcx), %xmm1	# MEM[base: _180, offset: 8B], D.4811
	addsd	%xmm1, %xmm0	# D.4811, dtemp
	movsd	-24(%rsi), %xmm1	# MEM[base: _181, offset: 16B], D.4811
	mulsd	-24(%rcx), %xmm1	# MEM[base: _180, offset: 16B], D.4811
	addsd	%xmm1, %xmm0	# D.4811, dtemp
	movsd	-16(%rsi), %xmm1	# MEM[base: _181, offset: 24B], D.4811
	mulsd	-16(%rcx), %xmm1	# MEM[base: _180, offset: 24B], D.4811
	cmpl	%edx, %edi	# i, n
	addsd	%xmm1, %xmm0	# D.4811, dtemp
	jg	.L38	#,
	rep ret
	.p2align 4,,10
	.p2align 3
.L39:
	xorpd	%xmm0, %xmm0	# dtemp
	ret
	.p2align 4,,10
	.p2align 3
.L45:
	movb	$1, %al	#,
	subl	%edi, %eax	# n, iy
	imull	%r8d, %eax	# incy, iy
	jmp	.L33	#
	.p2align 4,,10
	.p2align 3
.L44:
	movb	$1, %r9b	#,
	subl	%edi, %r9d	# n, ix
	imull	%edx, %r9d	# incx, ix
	jmp	.L32	#
.L46:
	rep ret
.L42:
	xorpd	%xmm0, %xmm0	# dtemp
	jmp	.L35	#
	.cfi_endproc
.LFE26:
	.size	ddot, .-ddot
	.p2align 4,,15
	.globl	dgesl
	.type	dgesl, @function
dgesl:
.LFB28:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%r8, %rbx	# b, b
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
	testl	%r9d, %r9d	# job
	movq	%rdi, 16(%rsp)	# a, %sfp
	movl	%esi, 32(%rsp)	# lda, %sfp
	movl	%edx, 8(%rsp)	# n, %sfp
	movq	%rcx, 24(%rsp)	# ipvt, %sfp
	je	.L48	#,
	testl	%edx, %edx	#
	jle	.L74	#,
	movl	8(%rsp), %esi	# %sfp, n
	movslq	32(%rsp), %r12	# %sfp, D.4870
	xorl	%r15d, %r15d	# ivtmp.142
	movq	16(%rsp), %rax	# %sfp, a
	leal	-1(%rsi), %ebp	#, n
	salq	$3, %r12	#, D.4870
	movl	%ebp, %r13d	# n, D.4875
	leaq	8(%r12), %rdi	#, D.4870
	movl	%ebp, 36(%rsp)	# n, %sfp
	leaq	1(%r13), %rsi	#, D.4875
	movq	%r12, %r14	# D.4870, D.4870
	movq	%rax, %r13	# a, ivtmp.149
	movq	%rax, %rbp	# ivtmp.145, ivtmp.145
	movq	%rdi, %r12	# D.4870, D.4870
	movq	%rsi, (%rsp)	# D.4875, %sfp
	.p2align 4,,10
	.p2align 3
.L58:
	movq	%rbp, %rsi	# ivtmp.145,
	movl	%r15d, %edi	# ivtmp.142,
	movl	$1, %r8d	#,
	movq	%rbx, %rcx	# b,
	movl	$1, %edx	#,
	addq	%r14, %rbp	# D.4870, ivtmp.145
	call	ddot	#
	movsd	(%rbx,%r15,8), %xmm1	# MEM[base: b_24(D), index: ivtmp.142_95, step: 8, offset: 0B], D.4873
	subsd	%xmm0, %xmm1	# t, D.4873
	divsd	0(%r13), %xmm1	# MEM[base: _135, offset: 0B], D.4873
	addq	%r12, %r13	# D.4870, ivtmp.149
	movsd	%xmm1, (%rbx,%r15,8)	# D.4873, MEM[base: b_24(D), index: ivtmp.142_95, step: 8, offset: 0B]
	addq	$1, %r15	#, ivtmp.142
	cmpq	(%rsp), %r15	# %sfp, ivtmp.142
	jne	.L58	#,
	movl	36(%rsp), %ebp	# %sfp, n
.L57:
	testl	%ebp, %ebp	# k
	jle	.L47	#,
	movl	32(%rsp), %r15d	# %sfp, lda
	movslq	%ebp, %rdx	# k, D.4870
	movl	$1, %r14d	#, ivtmp.134
	leaq	-8(%rbx,%rdx,8), %r13	#, ivtmp.131
	movl	%r15d, %eax	# lda, D.4874
	negl	%eax	# D.4874
	cltq
	leaq	-8(,%rax,8), %rax	#, D.4872
	movq	%rax, (%rsp)	# D.4872, %sfp
	movl	8(%rsp), %eax	# %sfp, D.4874
	movq	%rbx, 8(%rsp)	# b, %sfp
	subl	$2, %eax	#, D.4874
	imull	%eax, %r15d	# D.4874, D.4874
	movq	16(%rsp), %rax	# %sfp, a
	movslq	%r15d, %r15	# D.4874, D.4872
	addq	%rdx, %r15	# D.4870, D.4872
	leaq	(%rax,%r15,8), %r12	#, ivtmp.135
	movq	24(%rsp), %rax	# %sfp, ipvt
	leaq	-4(%rax,%rdx,4), %r15	#, ivtmp.137
	.p2align 4,,10
	.p2align 3
.L72:
	leaq	8(%r13), %rcx	#, D.4875
	movl	$1, %edx	#,
	movl	$1, %r8d	#,
	movq	%r12, %rsi	# ivtmp.135,
	movl	%r14d, %edi	# ivtmp.134,
	movl	%ebp, %ebx	# k, k
	call	ddot	#
	addsd	0(%r13), %xmm0	# MEM[base: _143, offset: 0B], D.4873
	movslq	(%r15), %rdx	# MEM[base: _139, offset: 0B],
	leal	-1(%rbp), %ebp	#, k
	cmpl	%ebx, %edx	# k, l
	movsd	%xmm0, 0(%r13)	# D.4873, MEM[base: _143, offset: 0B]
	je	.L59	#,
	movq	8(%rsp), %rax	# %sfp, b
	leaq	-8(%rax,%rdx,8), %rax	#, D.4871
	movsd	(%rax), %xmm1	# *_111, t
	movsd	%xmm0, (%rax)	# D.4873, *_111
	movsd	%xmm1, 0(%r13)	# t, MEM[base: _143, offset: 0B]
.L59:
	subq	$8, %r13	#, ivtmp.131
	addl	$1, %r14d	#, ivtmp.134
	addq	(%rsp), %r12	# %sfp, ivtmp.135
	subq	$4, %r15	#, ivtmp.137
	testl	%ebp, %ebp	# k
	jne	.L72	#,
.L47:
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L48:
	.cfi_restore_state
	cmpl	$1, 8(%rsp)	#, %sfp
	jle	.L75	#,
	movl	8(%rsp), %eax	# %sfp, n
	movq	24(%rsp), %r10	# %sfp, ivtmp.114
	leaq	8(%r8), %r12	#, ivtmp.124
	movl	$1, %r15d	#, k
	leal	-1(%rax), %ebp	#, n
	movslq	32(%rsp), %rax	# %sfp, D.4872
	movl	%ebp, %r14d	# n, ivtmp.118
	movl	%ebp, 24(%rsp)	# n, %sfp
	movq	%r10, %rbp	# ivtmp.114, ivtmp.114
	leaq	8(,%rax,8), %rax	#, D.4872
	movq	%rax, (%rsp)	# D.4872, %sfp
	movq	16(%rsp), %rax	# %sfp, a
	leaq	8(%rax), %r13	#, ivtmp.121
	.p2align 4,,10
	.p2align 3
.L55:
	movl	0(%rbp), %edx	# MEM[base: _168, offset: 0B], l
	movslq	%edx, %rcx	# l, D.4870
	cmpl	%r15d, %edx	# k, l
	leaq	-8(%rbx,%rcx,8), %rcx	#, D.4871
	movsd	(%rcx), %xmm0	# *_25, t
	je	.L54	#,
	movsd	-8(%r12), %xmm1	# MEM[base: _167, offset: -8B], D.4873
	movsd	%xmm1, (%rcx)	# D.4873, *_25
	movsd	%xmm0, -8(%r12)	# t, MEM[base: _167, offset: -8B]
.L54:
	movq	%r12, %rcx	# ivtmp.124,
	movq	%r13, %rsi	# ivtmp.121,
	movl	%r14d, %edi	# ivtmp.118,
	movl	$1, %r8d	#,
	movl	$1, %edx	#,
	addl	$1, %r15d	#, k
	call	daxpy	#
	addq	$4, %rbp	#, ivtmp.114
	addq	(%rsp), %r13	# %sfp, ivtmp.121
	addq	$8, %r12	#, ivtmp.124
	subl	$1, %r14d	#, ivtmp.118
	jne	.L55	#,
	movl	24(%rsp), %ebp	# %sfp, n
.L53:
	movl	32(%rsp), %r15d	# %sfp, lda
	movq	16(%rsp), %rsi	# %sfp, a
	movslq	8(%rsp), %rdx	# %sfp, D.4870
	movl	%r15d, %eax	# lda, lda
	movl	%r15d, %r12d	# lda, D.4874
	addl	$1, %eax	#, D.4874
	negl	%r12d	# D.4874
	movl	%eax, %r13d	# D.4874, D.4874
	movslq	%r12d, %r12	# D.4874, D.4870
	leaq	-8(%rbx,%rdx,8), %r14	#, ivtmp.103
	imull	%ebp, %eax	# n, D.4874
	negl	%r13d	# D.4874
	salq	$3, %r12	#, D.4870
	imull	%ebp, %r15d	# n, D.4874
	movslq	%r13d, %r13	# D.4874, D.4870
	leaq	0(,%r13,8), %rdi	#, D.4870
	cltq
	leaq	(%rsi,%rax,8), %r13	#, ivtmp.106
	movslq	%r15d, %r15	# D.4874, D.4870
	movq	%rbx, %rax	# b, b
	movq	%rdi, (%rsp)	# D.4870, %sfp
	leaq	(%rsi,%r15,8), %r15	#, ivtmp.108
	movq	%r13, %rbx	# ivtmp.106, ivtmp.106
	movq	%rax, %r13	# b, b
	jmp	.L56	#
	.p2align 4,,10
	.p2align 3
.L76:
	subl	$1, %ebp	#, n
.L56:
	movsd	(%r14), %xmm0	# MEM[base: _180, offset: 0B], D.4873
	movq	%r15, %rsi	# ivtmp.108,
	movl	$1, %r8d	#,
	movq	%r13, %rcx	# b,
	movl	$1, %edx	#,
	movl	%ebp, %edi	# n,
	divsd	(%rbx), %xmm0	# MEM[base: _179, offset: 0B], D.4873
	subq	$8, %r14	#, ivtmp.103
	addq	%r12, %r15	# D.4870, ivtmp.108
	movsd	%xmm0, 8(%r14)	# D.4873, MEM[base: _180, offset: 0B]
	xorpd	.LC2(%rip), %xmm0	#, t
	call	daxpy	#
	addq	(%rsp), %rbx	# %sfp, ivtmp.106
	testl	%ebp, %ebp	# n
	jne	.L76	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
.L74:
	.cfi_restore_state
	leal	-1(%rdx), %ebp	#, n
	jmp	.L57	#
.L75:
	movl	8(%rsp), %eax	# %sfp,
	testl	%eax, %eax	#
	jle	.L47	#,
	movl	8(%rsp), %eax	# %sfp, n
	leal	-1(%rax), %ebp	#, n
	jmp	.L53	#
	.cfi_endproc
.LFE28:
	.size	dgesl, .-dgesl
	.p2align 4,,15
	.globl	dscal
	.type	dscal, @function
dscal:
.LFB29:
	.cfi_startproc
	testl	%edi, %edi	# n
	jle	.L77	#,
	cmpl	$1, %edx	#, incx
	je	.L91	#,
	xorl	%eax, %eax	# ix
	testl	%edx, %edx	# incx
	js	.L92	#,
.L85:
	movslq	%edx, %rdx	# incx, D.4906
	cltq
	leaq	(%rsi,%rax,8), %rcx	#, ivtmp.175
	salq	$3, %rdx	#, D.4906
	xorl	%esi, %esi	# i
	.p2align 4,,10
	.p2align 3
.L86:
	movsd	(%rcx), %xmm1	# MEM[base: _86, offset: 0B], D.4907
	addl	$1, %esi	#, i
	mulsd	%xmm0, %xmm1	# sa, D.4907
	movsd	%xmm1, (%rcx)	# D.4907, MEM[base: _86, offset: 0B]
	addq	%rdx, %rcx	# D.4906, ivtmp.175
	cmpl	%edi, %esi	# n, i
	jne	.L86	#,
.L77:
	rep ret
	.p2align 4,,10
	.p2align 3
.L91:
	movl	%edi, %eax	# n, tmp140
	movl	$1717986919, %edx	#, tmp108
	imull	%edx	# tmp108
	movl	%edi, %eax	# n, tmp110
	sarl	$31, %eax	#, tmp110
	sarl	%edx	# i
	subl	%eax, %edx	# tmp110, i
	leal	(%rdx,%rdx,4), %eax	#, tmp113
	movl	%edi, %edx	# n, i
	subl	%eax, %edx	# tmp113, i
	je	.L80	#,
	leal	-1(%rdx), %eax	#, D.4909
	movq	%rsi, %rcx	# x, ivtmp.167
	leaq	8(%rsi,%rax,8), %rax	#, D.4909
	.p2align 4,,10
	.p2align 3
.L83:
	movsd	(%rcx), %xmm1	# MEM[base: _36, offset: 0B], D.4907
	addq	$8, %rcx	#, ivtmp.167
	mulsd	%xmm0, %xmm1	# sa, D.4907
	movsd	%xmm1, -8(%rcx)	# D.4907, MEM[base: _36, offset: 0B]
	cmpq	%rax, %rcx	# D.4909, ivtmp.167
	jne	.L83	#,
	cmpl	%edx, %edi	# i, n
	jle	.L77	#,
.L80:
	movslq	%edx, %rax	# i, D.4913
	leaq	8(%rsi,%rax,8), %rcx	#, ivtmp.160
	.p2align 4,,10
	.p2align 3
.L84:
	movsd	-8(%rcx), %xmm1	# MEM[base: _96, offset: -8B], D.4907
	addl	$5, %edx	#, i
	addq	$40, %rcx	#, ivtmp.160
	mulsd	%xmm0, %xmm1	# sa, D.4907
	movsd	%xmm1, -48(%rcx)	# D.4907, MEM[base: _96, offset: -8B]
	movsd	-40(%rcx), %xmm1	# MEM[base: _96, offset: 0B], D.4907
	mulsd	%xmm0, %xmm1	# sa, D.4907
	movsd	%xmm1, -40(%rcx)	# D.4907, MEM[base: _96, offset: 0B]
	movsd	-32(%rcx), %xmm1	# MEM[base: _96, offset: 8B], D.4907
	mulsd	%xmm0, %xmm1	# sa, D.4907
	movsd	%xmm1, -32(%rcx)	# D.4907, MEM[base: _96, offset: 8B]
	movsd	-24(%rcx), %xmm1	# MEM[base: _96, offset: 16B], D.4907
	mulsd	%xmm0, %xmm1	# sa, D.4907
	movsd	%xmm1, -24(%rcx)	# D.4907, MEM[base: _96, offset: 16B]
	movsd	-16(%rcx), %xmm1	# MEM[base: _96, offset: 24B], D.4907
	mulsd	%xmm0, %xmm1	# sa, D.4907
	movsd	%xmm1, -16(%rcx)	# D.4907, MEM[base: _96, offset: 24B]
	cmpl	%edx, %edi	# i, n
	jg	.L84	#,
	rep ret
	.p2align 4,,10
	.p2align 3
.L92:
	movb	$1, %al	#,
	subl	%edi, %eax	# n, ix
	imull	%edx, %eax	# incx, ix
	jmp	.L85	#
	.cfi_endproc
.LFE29:
	.size	dscal, .-dscal
	.p2align 4,,15
	.globl	idamax
	.type	idamax, @function
idamax:
.LFB30:
	.cfi_startproc
	testl	%edi, %edi	# n
	jle	.L106	#,
	testl	%edx, %edx	# incx
	jle	.L106	#,
	cmpl	$1, %edi	#, n
	je	.L107	#,
	cmpl	$1, %edx	#, incx
	movsd	(%rsi), %xmm1	# *dx_20(D), dmax
	xorpd	%xmm2, %xmm2	# tmp113
	je	.L114	#,
	ucomisd	%xmm2, %xmm1	# tmp113, dmax
	jb	.L115	#,
.L101:
	movslq	%edx, %rdx	# incx, D.4933
	movsd	.LC2(%rip), %xmm4	#, tmp116
	salq	$3, %rdx	#, D.4933
	movl	$2, %ecx	#, ivtmp.192
	movl	$1, %eax	#, value
	addq	%rdx, %rsi	# D.4933, ivtmp.190
	movapd	%xmm4, %xmm5	# tmp116, tmp117
	jmp	.L105	#
	.p2align 4,,10
	.p2align 3
.L102:
	ucomisd	%xmm1, %xmm3	# dmax, dmax
	movl	%ecx, %r8d	# ivtmp.192, D.4930
	jbe	.L104	#,
	ucomisd	%xmm2, %xmm0	# tmp113, dmax
	movl	%ecx, %eax	# ivtmp.192, value
	movl	%ecx, %r8d	# ivtmp.192, D.4930
	movapd	%xmm0, %xmm1	# dmax, dmax
	jb	.L116	#,
.L104:
	addq	%rdx, %rsi	# D.4933, ivtmp.190
	addl	$1, %ecx	#, ivtmp.192
	cmpl	%r8d, %edi	# D.4930, n
	jle	.L117	#,
.L105:
	movsd	(%rsi), %xmm0	# MEM[base: _5, offset: 0B], dmax
	ucomisd	%xmm2, %xmm0	# tmp113, dmax
	movapd	%xmm0, %xmm3	# dmax, dmax
	jnb	.L102	#,
	xorpd	%xmm4, %xmm3	# tmp116, dmax
	jmp	.L102	#
	.p2align 4,,10
	.p2align 3
.L106:
	xorl	%eax, %eax	# D.4930
	ret
	.p2align 4,,10
	.p2align 3
.L116:
	addq	%rdx, %rsi	# D.4933, ivtmp.190
	addl	$1, %ecx	#, ivtmp.192
	cmpl	%r8d, %edi	# D.4930, n
	xorpd	%xmm5, %xmm1	# tmp117, dmax
	jg	.L105	#,
	.p2align 4,,10
	.p2align 3
.L117:
	rep ret
	.p2align 4,,10
	.p2align 3
.L107:
	movl	$1, %eax	#, D.4930
	ret
	.p2align 4,,10
	.p2align 3
.L114:
	ucomisd	%xmm2, %xmm1	# tmp113, dmax
	jb	.L118	#,
.L96:
	movsd	.LC2(%rip), %xmm4	#, tmp114
	addq	$8, %rsi	#, ivtmp.181
	movl	$2, %edx	#, ivtmp.184
	movl	$1, %eax	#, value
	movapd	%xmm4, %xmm5	# tmp114, tmp115
	jmp	.L100	#
	.p2align 4,,10
	.p2align 3
.L97:
	ucomisd	%xmm1, %xmm3	# dmax, dmax
	movl	%edx, %ecx	# ivtmp.184, D.4930
	jbe	.L99	#,
	ucomisd	%xmm2, %xmm0	# tmp113, dmax
	movl	%edx, %eax	# ivtmp.184, value
	movl	%edx, %ecx	# ivtmp.184, D.4930
	movapd	%xmm0, %xmm1	# dmax, dmax
	jb	.L119	#,
.L99:
	addq	$8, %rsi	#, ivtmp.181
	addl	$1, %edx	#, ivtmp.184
	cmpl	%ecx, %edi	# D.4930, n
	jle	.L120	#,
.L100:
	movsd	(%rsi), %xmm0	# MEM[base: _9, offset: 0B], dmax
	ucomisd	%xmm2, %xmm0	# tmp113, dmax
	movapd	%xmm0, %xmm3	# dmax, dmax
	jnb	.L97	#,
	xorpd	%xmm4, %xmm3	# tmp114, dmax
	jmp	.L97	#
	.p2align 4,,10
	.p2align 3
.L119:
	addq	$8, %rsi	#, ivtmp.181
	addl	$1, %edx	#, ivtmp.184
	cmpl	%ecx, %edi	# D.4930, n
	xorpd	%xmm5, %xmm1	# tmp115, dmax
	jg	.L100	#,
	.p2align 4,,10
	.p2align 3
.L120:
	rep ret
	.p2align 4,,10
	.p2align 3
.L115:
	movsd	.LC2(%rip), %xmm0	#, tmp106
	xorpd	%xmm0, %xmm1	# tmp106, dmax
	jmp	.L101	#
	.p2align 4,,10
	.p2align 3
.L118:
	movsd	.LC2(%rip), %xmm0	#, tmp98
	xorpd	%xmm0, %xmm1	# tmp98, dmax
	jmp	.L96	#
	.cfi_endproc
.LFE30:
	.size	idamax, .-idamax
	.p2align 4,,15
	.globl	dgefa
	.type	dgefa, @function
dgefa:
.LFB27:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edx, %r15d	# n, n
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$96, %rsp	#,
	.cfi_def_cfa_offset 152
	cmpl	$1, %edx	#, n
	movq	%rdi, 32(%rsp)	# a, %sfp
	movl	%esi, 44(%rsp)	# lda, %sfp
	movq	%rcx, 48(%rsp)	# ipvt, %sfp
	jle	.L141	#,
	movslq	44(%rsp), %rax	# %sfp,
	xorpd	%xmm4, %xmm4	# tmp163
	movl	$1, %r14d	#, ivtmp.221
	movl	$0, 20(%rsp)	#, %sfp
	movl	$0, 88(%rsp)	#, %sfp
	movl	%edx, 4(%rsp)	# n, %sfp
	movsd	%xmm4, 56(%rsp)	# tmp163, %sfp
	leal	1(%rax), %ecx	#, D.4965
	leaq	8(,%rax,8), %rax	#, D.4969
	movl	%ecx, 92(%rsp)	# D.4965, %sfp
	movq	%rax, 64(%rsp)	# D.4969, %sfp
	subq	$8, %rax	#, D.4969
	movq	32(%rsp), %rcx	# %sfp, a
	movq	%rax, 8(%rsp)	# D.4969, %sfp
	leal	1(%rdx), %eax	#, D.4970
	movl	%eax, 72(%rsp)	# D.4970, %sfp
	leaq	8(%rcx), %rbp	#, ivtmp.216
	movq	%rcx, 24(%rsp)	# a, %sfp
	jmp	.L131	#
	.p2align 4,,10
	.p2align 3
.L143:
	jne	.L124	#,
	movl	16(%rsp), %r13d	# %sfp, D.4965
	movl	%r14d, 88(%rsp)	# ivtmp.221, %sfp
	addl	$1, %r13d	#, D.4965
.L126:
	movl	44(%rsp), %eax	# %sfp, lda
	addl	%eax, 20(%rsp)	# lda, %sfp
	addq	$1, %r14	#, ivtmp.221
	movq	64(%rsp), %rax	# %sfp, D.4969
	addq	%rax, 24(%rsp)	# D.4969, %sfp
	addq	%rax, %rbp	# D.4969, ivtmp.216
	cmpl	%r13d, 4(%rsp)	# D.4965, %sfp
	jle	.L142	#,
.L131:
	movl	4(%rsp), %eax	# %sfp, D.4965
	movl	72(%rsp), %edi	# %sfp, D.4970
	leaq	-8(%rbp), %rsi	#, D.4972
	movl	$1, %edx	#,
	movl	%r14d, 16(%rsp)	# ivtmp.221, %sfp
	movl	%r14d, %ebx	# ivtmp.221, D.4970
	subl	%r14d, %eax	# ivtmp.221, D.4965
	subl	%r14d, %edi	# ivtmp.221, D.4970
	movl	%eax, 40(%rsp)	# D.4965, %sfp
	call	idamax	#
	movq	48(%rsp), %rdx	# %sfp, ipvt
	addl	%r14d, %eax	# ivtmp.221, D.4965
	leal	-1(%rax), %r12d	#, l
	leal	-2(%rax), %ecx	#, D.4965
	movl	20(%rsp), %eax	# %sfp, ivtmp.213
	movl	%r12d, -4(%rdx,%r14,4)	# l, MEM[base: ipvt_30(D), index: ivtmp.221_115, step: 4, offset: -4B]
	movq	32(%rsp), %rdx	# %sfp, a
	addl	%ecx, %eax	# D.4965, D.4965
	cltq
	leaq	(%rdx,%rax,8), %rax	#, D.4967
	movsd	(%rax), %xmm0	# *_37, D.4968
	ucomisd	56(%rsp), %xmm0	# %sfp, D.4968
	jnp	.L143	#,
.L124:
	cmpl	16(%rsp), %r12d	# %sfp, l
	je	.L144	#,
	movq	24(%rsp), %rsi	# %sfp, ivtmp.217
	movsd	(%rsi), %xmm1	# MEM[base: _2, offset: 0B], D.4968
	movsd	%xmm1, (%rax)	# D.4968, *_37
	movsd	%xmm0, (%rsi)	# D.4968, MEM[base: _2, offset: 0B]
.L128:
	movsd	.LC3(%rip), %xmm2	#, t
	movl	$1, %edx	#,
	movq	%rbp, %rsi	# ivtmp.216,
	movl	40(%rsp), %edi	# %sfp,
	divsd	%xmm0, %xmm2	# D.4968, t
	movl	%ecx, 80(%rsp)	# D.4965, %sfp
	movapd	%xmm2, %xmm0	# t, t
	call	dscal	#
	leal	1(%rbx), %eax	#, j
	cmpl	%eax, 4(%rsp)	# j, %sfp
	movl	%eax, 76(%rsp)	# j, %sfp
	jl	.L140	#,
	movq	8(%rsp), %rcx	# %sfp, D.4969
	movl	%eax, %r13d	# j, j
	leaq	0(%rbp,%rcx), %r15	#, ivtmp.201
	movl	80(%rsp), %ecx	# %sfp, D.4965
	movq	%r14, 80(%rsp)	# ivtmp.221, %sfp
	movq	%r15, %rax	# ivtmp.201, ivtmp.201
	movl	%r13d, %r15d	# j, j
	movslq	%ecx, %rbx	# D.4965, D.4969
	movq	%rax, %r13	# ivtmp.201, ivtmp.201
	subq	%r14, %rbx	# ivtmp.221, D.4969
	movl	40(%rsp), %r14d	# %sfp, D.4965
	.p2align 4,,10
	.p2align 3
.L130:
	cmpl	16(%rsp), %r12d	# %sfp, l
	movsd	0(%r13,%rbx,8), %xmm0	# MEM[base: _52, index: _133, step: 8, offset: 0B], t
	je	.L129	#,
	movsd	-8(%r13), %xmm1	# MEM[base: _52, index: _128, step: 8, offset: 0B], D.4968
	movsd	%xmm1, 0(%r13,%rbx,8)	# D.4968, MEM[base: _52, index: _133, step: 8, offset: 0B]
	movsd	%xmm0, -8(%r13)	# t, MEM[base: _52, index: _128, step: 8, offset: 0B]
.L129:
	movq	%r13, %rcx	# ivtmp.201,
	movl	$1, %r8d	#,
	movl	$1, %edx	#,
	movq	%rbp, %rsi	# ivtmp.216,
	movl	%r14d, %edi	# D.4965,
	addl	$1, %r15d	#, j
	call	daxpy	#
	addq	8(%rsp), %r13	# %sfp, ivtmp.201
	cmpl	%r15d, 4(%rsp)	# j, %sfp
	jge	.L130	#,
	movq	80(%rsp), %r14	# %sfp, ivtmp.221
.L140:
	movl	76(%rsp), %r13d	# %sfp, D.4965
	jmp	.L126	#
	.p2align 4,,10
	.p2align 3
.L144:
	movq	24(%rsp), %rax	# %sfp, ivtmp.217
	movsd	(%rax), %xmm0	# MEM[base: _4, offset: 0B], D.4968
	jmp	.L128	#
	.p2align 4,,10
	.p2align 3
.L142:
	movl	4(%rsp), %r15d	# %sfp, n
.L123:
	movq	48(%rsp), %rcx	# %sfp, ipvt
	movslq	%r15d, %rax	# n, D.4966
	movsd	56(%rsp), %xmm3	# %sfp, tmp163
	movl	%r15d, -4(%rcx,%rax,4)	# n, *_81
	leal	-1(%r15), %eax	#, D.4965
	movq	32(%rsp), %rcx	# %sfp, a
	imull	92(%rsp), %eax	# %sfp, D.4965
	cltq
	ucomisd	(%rcx,%rax,8), %xmm3	# *_88, tmp163
	jp	.L137	#,
	jne	.L137	#,
.L132:
	addq	$96, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r15d, %eax	# n,
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L137:
	.cfi_restore_state
	movl	88(%rsp), %r15d	# %sfp, n
	jmp	.L132	#
.L141:
	xorpd	%xmm5, %xmm5	# tmp163
	movl	%esi, %eax	# lda, D.4965
	addl	$1, %eax	#, D.4965
	movl	$0, 88(%rsp)	#, %sfp
	movl	%eax, 92(%rsp)	# D.4965, %sfp
	movsd	%xmm5, 56(%rsp)	# tmp163, %sfp
	jmp	.L123	#
	.cfi_endproc
.LFE27:
	.size	dgefa, .-dgefa
	.p2align 4,,15
	.globl	r8_abs
	.type	r8_abs, @function
r8_abs:
.LFB31:
	.cfi_startproc
	ucomisd	.LC1(%rip), %xmm0	#, x
	jb	.L147	#,
	rep ret
	.p2align 4,,10
	.p2align 3
.L147:
	movsd	.LC2(%rip), %xmm1	#, tmp64
	xorpd	%xmm1, %xmm0	# tmp64, x
	ret
	.cfi_endproc
.LFE31:
	.size	r8_abs, .-r8_abs
	.p2align 4,,15
	.globl	r8_epsilon
	.type	r8_epsilon, @function
r8_epsilon:
.LFB32:
	.cfi_startproc
	movsd	.LC4(%rip), %xmm0	#, r
	movl	$53, %eax	#, D.4982
	movsd	.LC5(%rip), %xmm1	#, tmp67
	.p2align 4,,10
	.p2align 3
.L150:
	subl	$1, %eax	#, D.4982
	mulsd	%xmm1, %xmm0	# tmp67, r
	jne	.L150	#,
	addsd	%xmm0, %xmm0	# r, r
	ret
	.cfi_endproc
.LFE32:
	.size	r8_epsilon, .-r8_epsilon
	.p2align 4,,15
	.globl	r8_max
	.type	r8_max, @function
r8_max:
.LFB33:
	.cfi_startproc
	maxsd	%xmm1, %xmm0	# y, x
	ret
	.cfi_endproc
.LFE33:
	.size	r8_max, .-r8_max
	.p2align 4,,15
	.globl	r8_random
	.type	r8_random, @function
r8_random:
.LFB34:
	.cfi_startproc
	movl	12(%rdi), %edx	# MEM[(int *)iseed_1(D) + 12B], D.4987
	movl	8(%rdi), %r8d	# MEM[(int *)iseed_1(D) + 8B], D.4987
	movl	4(%rdi), %r11d	# MEM[(int *)iseed_1(D) + 4B], D.4987
	movsd	.LC6(%rip), %xmm3	#, tmp141
	imull	$2549, %edx, %eax	#, D.4987, it4
	leal	4095(%rax), %ecx	#, tmp106
	testl	%eax, %eax	# it4
	cmovns	%eax, %ecx	# tmp106,, it4, tmp107
	sarl	$12, %ecx	#, tmp107
	movl	%ecx, %esi	# tmp107, D.4987
	sall	$12, %esi	#, D.4987
	subl	%esi, %eax	# D.4987, it4
	movl	%eax, %r9d	# it4, it4
	imull	$2549, %r8d, %eax	#, D.4987, D.4987
	cvtsi2sd	%r9d, %xmm4	# it4, D.4988
	movl	%r9d, 12(%rdi)	# it4, MEM[(int *)iseed_1(D) + 12B]
	addl	%eax, %ecx	# D.4987, D.4987
	imull	$2508, %edx, %eax	#, D.4987, D.4987
	addl	%eax, %ecx	# D.4987, it3
	leal	4095(%rcx), %esi	#, tmp112
	testl	%ecx, %ecx	# it3
	cmovns	%ecx, %esi	# tmp112,, it3, tmp113
	sarl	$12, %esi	#, tmp113
	mulsd	%xmm3, %xmm4	# tmp141, D.4988
	movl	%esi, %eax	# tmp113, D.4987
	sall	$12, %eax	#, D.4987
	subl	%eax, %ecx	# D.4987, it3
	imull	$2549, %r11d, %eax	#, D.4987, D.4987
	movl	%ecx, %r10d	# it3, it3
	cvtsi2sd	%r10d, %xmm2	# it3, D.4988
	movl	%r10d, 8(%rdi)	# it3, MEM[(int *)iseed_1(D) + 8B]
	addl	%eax, %esi	# D.4987, D.4987
	imull	$2508, %r8d, %eax	#, D.4987, D.4987
	addl	%eax, %esi	# D.4987, D.4987
	imull	$322, %edx, %eax	#, D.4987, D.4987
	addl	%eax, %esi	# D.4987, it2
	leal	4095(%rsi), %ecx	#, tmp120
	testl	%esi, %esi	# it2
	addsd	%xmm4, %xmm2	# D.4988, D.4988
	cmovns	%esi, %ecx	# tmp120,, it2, tmp121
	sarl	$12, %ecx	#, tmp121
	movl	%ecx, %eax	# tmp121, D.4987
	mulsd	%xmm3, %xmm2	# tmp141, D.4988
	sall	$12, %eax	#, D.4987
	subl	%eax, %esi	# D.4987, it2
	movl	(%rdi), %eax	# *iseed_1(D),
	imull	$2508, %r11d, %r11d	#, D.4987, D.4987
	cvtsi2sd	%esi, %xmm1	# it2, D.4988
	imull	$322, %r8d, %r8d	#, D.4987, D.4987
	movl	%esi, 4(%rdi)	# it2, MEM[(int *)iseed_1(D) + 4B]
	imull	$2549, %eax, %eax	#,, D.4987
	imull	$494, %edx, %edx	#, D.4987, D.4987
	addl	%ecx, %eax	# tmp121, D.4987
	addl	%r11d, %eax	# D.4987, D.4987
	addl	%r8d, %eax	# D.4987, D.4987
	addl	%edx, %eax	# D.4987, it1
	cltd
	addsd	%xmm2, %xmm1	# D.4988, D.4988
	shrl	$20, %edx	#, tmp131
	addl	%edx, %eax	# tmp131, tmp134
	andl	$4095, %eax	#, tmp134
	subl	%edx, %eax	# tmp131, tmp134
	mulsd	%xmm3, %xmm1	# tmp141, D.4988
	cvtsi2sd	%eax, %xmm0	# tmp134, value
	movl	%eax, (%rdi)	# tmp134, *iseed_1(D)
	addsd	%xmm1, %xmm0	# D.4988, value
	mulsd	%xmm3, %xmm0	# tmp141, value
	ret
	.cfi_endproc
.LFE34:
	.size	r8_random, .-r8_random
	.p2align 4,,15
	.globl	r8mat_gen
	.type	r8mat_gen, @function
r8mat_gen:
.LFB35:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%esi, %ebp	# n, n
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movslq	%edi, %rbx	# lda,
	movl	%ebx, %edi	# lda, D.5005
	imull	%esi, %edi	# n, D.5005
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
	movl	$1, 16(%rsp)	#, init
	movl	$2, 20(%rsp)	#, init
	movl	$3, 24(%rsp)	#, init
	movl	$1325, 28(%rsp)	#, init
	movslq	%edi, %rdi	# D.5005, D.5006
	salq	$3, %rdi	#, D.5006
	call	malloc	#
	testl	%ebp, %ebp	# n
	movq	%rax, 8(%rsp)	# a, %sfp
	jle	.L157	#,
	leaq	0(,%rbx,8), %r14	#, D.5006
	movq	%rax, %r13	# a, ivtmp.247
	movl	$1, %r12d	#, j
	.p2align 4,,10
	.p2align 3
.L158:
	movq	%r13, %r15	# ivtmp.247, ivtmp.241
	movl	$1, %ebx	#, i
	.p2align 4,,10
	.p2align 3
.L160:
	leaq	16(%rsp), %rdi	#,
	addl	$1, %ebx	#, i
	addq	$8, %r15	#, ivtmp.241
	call	r8_random	#
	subsd	.LC5(%rip), %xmm0	#, D.5007
	movsd	%xmm0, -8(%r15)	# D.5007, MEM[base: _35, offset: 0B]
	cmpl	%ebx, %ebp	# i, n
	jge	.L160	#,
	addl	$1, %r12d	#, j
	addq	%r14, %r13	# D.5006, ivtmp.247
	cmpl	%r12d, %ebp	# j, n
	jge	.L158	#,
.L157:
	movq	8(%rsp), %rax	# %sfp,
	addq	$40, %rsp	#,
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE35:
	.size	r8mat_gen, .-r8mat_gen
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"%d %B %Y %I:%M:%S %p"
	.text
	.p2align 4,,15
	.globl	timestamp
	.type	timestamp, @function
timestamp:
.LFB36:
	.cfi_startproc
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	xorl	%edi, %edi	#
	call	time	#
	leaq	8(%rsp), %rdi	#, tmp62
	movq	%rax, 8(%rsp)	# now.0, now
	call	localtime	#
	movl	$.LC7, %edx	#,
	movq	%rax, %rcx	# tm,
	movl	$40, %esi	#,
	movl	$time_buffer.4190, %edi	#,
	call	strftime	#
	movl	$time_buffer.4190, %edi	#,
	call	puts	#
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE36:
	.size	timestamp, .-timestamp
	.section	.rodata.str1.1
.LC9:
	.string	"LINPACK_BENCH"
.LC10:
	.string	"  C version"
.LC11:
	.string	"  The LINPACK benchmark."
.LC12:
	.string	"  Language: C"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC13:
	.string	"  Datatype: Double precision real"
	.align 8
.LC14:
	.string	"  Matrix order N               = %d\n"
	.align 8
.LC15:
	.string	"  Leading matrix dimension LDA = %d\n"
	.section	.rodata.str1.1
.LC16:
	.string	"LINPACK_BENCH - Fatal error!"
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"  The matrix A is apparently singular."
	.section	.rodata.str1.1
.LC18:
	.string	"  Abnormal end of execution."
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"     Norm. Resid      Resid           MACHEP         X[1]          X[N]"
	.align 8
.LC23:
	.string	"  %14f  %14f  %14e  %14f  %14f\n"
	.align 8
.LC24:
	.string	"      Factor     Solve      Total     MFLOPS       Unit      Cray-Ratio"
	.align 8
.LC26:
	.string	"  %9f  %9f  %9f  %9f  %9f  %9f\n"
	.section	.rodata.str1.1
.LC27:
	.string	"  Normal end of execution."
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp	#,
	.cfi_def_cfa_offset 128
	call	timestamp	#
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC9, %edi	#,
	call	puts	#
	movl	$.LC10, %edi	#,
	call	puts	#
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC11, %edi	#,
	call	puts	#
	movl	$.LC12, %edi	#,
	call	puts	#
	movl	$.LC13, %edi	#,
	call	puts	#
	movl	$1500, %esi	#,
	movl	$.LC14, %edi	#,
	xorl	%eax, %eax	#
	call	printf	#
	movl	$1501, %esi	#,
	movl	$.LC15, %edi	#,
	xorl	%eax, %eax	#
	call	printf	#
	movl	$1500, %esi	#,
	movl	$1501, %edi	#,
	call	r8mat_gen	#
	movl	$12000, %edi	#,
	movq	%rax, %rbp	#, a
	call	malloc	#
	movl	$6000, %edi	#,
	movq	%rax, %r14	#, b
	call	malloc	#
	movl	$12000, %edi	#,
	movq	%rax, %r12	#, ipvt
	call	malloc	#
	movl	$12000, %edi	#,
	movq	%rax, %r15	#, resid
	call	malloc	#
	movl	$12000, %edi	#,
	movq	%rax, %r13	#, rhs
	call	malloc	#
	xorpd	%xmm9, %xmm9	# tmp232
	movq	%rax, %rbx	#, x
	leaq	18024000(%rbp), %rdi	#, D.5143
	leaq	12000(%rbp), %rax	#, ivtmp.367
	movapd	%xmm9, %xmm4	# tmp232, a_max
	.p2align 4,,10
	.p2align 3
.L165:
	leaq	-12000(%rax), %rdx	#, ivtmp.359
	.p2align 4,,10
	.p2align 3
.L170:
	maxsd	(%rdx), %xmm4	# MEM[base: _60, offset: 0B], a_max
	addq	$8, %rdx	#, ivtmp.359
	cmpq	%rax, %rdx	# ivtmp.367, ivtmp.359
	jne	.L170	#,
	leaq	12008(%rdx), %rax	#, ivtmp.367
	cmpq	%rdi, %rax	# D.5143, ivtmp.367
	jne	.L165	#,
	xorl	%eax, %eax	# ivtmp.352
	.p2align 4,,10
	.p2align 3
.L172:
	movsd	.LC4(%rip), %xmm7	#, tmp240
	movsd	%xmm7, (%rbx,%rax)	# tmp240, MEM[base: x_49, index: ivtmp.352_263, offset: 0B]
	addq	$8, %rax	#, ivtmp.352
	cmpq	$12000, %rax	#, ivtmp.352
	jne	.L172	#,
	movq	%r14, %rsi	# b, D.5145
	leaq	18012000(%rbp), %rcx	#, ivtmp.344
	movapd	%xmm9, %xmm2	# tmp232, D.5146
	subq	%rbp, %rsi	# a, D.5145
	.p2align 4,,10
	.p2align 3
.L176:
	leaq	-18012000(%rcx), %rdx	#, ivtmp.331
	movapd	%xmm2, %xmm1	# D.5146, D.5146
	movq	$0, -18012000(%rsi,%rcx)	#, MEM[base: _71, index: ivtmp.344_270, offset: -18012000B]
	movq	%rbx, %rax	# x, ivtmp.333
	.p2align 4,,10
	.p2align 3
.L174:
	movsd	(%rdx), %xmm0	# MEM[base: _107, offset: 0B], D.5146
	addq	$12008, %rdx	#, ivtmp.331
	addq	$8, %rax	#, ivtmp.333
	mulsd	-8(%rax), %xmm0	# MEM[base: _318, offset: 0B], D.5146
	cmpq	%rcx, %rdx	# ivtmp.344, ivtmp.331
	addsd	%xmm0, %xmm1	# D.5146, D.5146
	movsd	%xmm1, -18012000(%rsi,%rcx)	# D.5146, MEM[base: _71, index: ivtmp.344_270, offset: -18012000B]
	jne	.L174	#,
	leaq	8(%rdx), %rcx	#, ivtmp.344
	cmpq	%rdi, %rcx	# D.5143, ivtmp.344
	jne	.L176	#,
	movsd	%xmm9, 16(%rsp)	# tmp232, %sfp
	movsd	%xmm4, 8(%rsp)	# a_max, %sfp
	call	clock	#
	cvtsi2sdq	%rax, %xmm6	# D.5148, t1
	movq	%r12, %rcx	# ipvt,
	movl	$1500, %edx	#,
	movl	$1501, %esi	#,
	movq	%rbp, %rdi	# a,
	divsd	.LC0(%rip), %xmm6	#, t1
	movsd	%xmm6, (%rsp)	# t1, %sfp
	call	dgefa	#
	testl	%eax, %eax	# info
	movsd	8(%rsp), %xmm4	# %sfp, a_max
	movsd	16(%rsp), %xmm9	# %sfp, tmp232
	jne	.L210	#,
	movsd	%xmm9, 32(%rsp)	# tmp232, %sfp
	movsd	%xmm4, 24(%rsp)	# a_max, %sfp
	call	clock	#
	cvtsi2sdq	%rax, %xmm6	# D.5148, D.5146
	divsd	.LC0(%rip), %xmm6	#, D.5146
	subsd	(%rsp), %xmm6	# %sfp, D.5146
	movsd	%xmm6, 8(%rsp)	# D.5146, %sfp
	call	clock	#
	xorl	%r9d, %r9d	#
	movq	%r14, %r8	# b,
	movq	%r12, %rcx	# ipvt,
	movl	$1500, %edx	#,
	movl	$1501, %esi	#,
	movq	%rbp, %rdi	# a,
	movq	%rax, (%rsp)	# D.5148, %sfp
	call	dgesl	#
	call	clock	#
	movq	(%rsp), %r10	# %sfp, D.5148
	cvtsi2sdq	%rax, %xmm7	# D.5148, D.5146
	movsd	8(%rsp), %xmm6	# %sfp, D.5146
	movq	%rbp, %rdi	# a,
	cvtsi2sdq	%r10, %xmm0	# D.5148, t1
	movapd	%xmm6, %xmm8	# D.5146, total
	movsd	%xmm6, 16(%rsp)	# D.5146, %sfp
	divsd	.LC0(%rip), %xmm7	#, D.5146
	divsd	.LC0(%rip), %xmm0	#, t1
	subsd	%xmm0, %xmm7	# t1, D.5146
	addsd	%xmm7, %xmm8	# D.5146, total
	movsd	%xmm7, 8(%rsp)	# D.5146, %sfp
	movsd	%xmm8, (%rsp)	# total, %sfp
	call	free	#
	movl	$1500, %esi	#,
	movl	$1501, %edi	#,
	call	r8mat_gen	#
	movsd	32(%rsp), %xmm9	# %sfp, tmp232
	movq	%rax, %rbp	#, a
	movsd	24(%rsp), %xmm4	# %sfp, a_max
	xorl	%eax, %eax	# ivtmp.324
	movsd	16(%rsp), %xmm6	# %sfp, D.5146
	movsd	8(%rsp), %xmm7	# %sfp, D.5146
	movsd	(%rsp), %xmm8	# %sfp, total
.L180:
	movsd	.LC4(%rip), %xmm2	#, tmp245
	movsd	%xmm2, (%rbx,%rax)	# tmp245, MEM[base: x_49, index: ivtmp.324_265, offset: 0B]
	addq	$8, %rax	#, ivtmp.324
	cmpq	$12000, %rax	#, ivtmp.324
	jne	.L180	#,
	movq	%rbp, %r9	# a, D.5147
	leaq	18012000(%rbp), %rsi	#, ivtmp.316
	leaq	18024000(%rbp), %rax	#, D.5143
	negq	%r9	# D.5147
	movapd	%xmm9, %xmm0	# tmp232, D.5146
	leaq	0(%r13,%r9), %rdi	#, D.5145
	movq	%rsi, %r8	# ivtmp.316, ivtmp.316
.L184:
	leaq	-18012000(%r8), %rdx	#, ivtmp.303
	movapd	%xmm0, %xmm5	# D.5146, D.5146
	movq	%rbx, %rcx	# x, ivtmp.305
	.p2align 4,,10
	.p2align 3
.L182:
	movsd	(%rdx), %xmm3	# MEM[base: _300, offset: 0B], D.5146
	addq	$12008, %rdx	#, ivtmp.303
	addq	$8, %rcx	#, ivtmp.305
	mulsd	-8(%rcx), %xmm3	# MEM[base: _153, offset: 0B], D.5146
	cmpq	%r8, %rdx	# ivtmp.316, ivtmp.303
	addsd	%xmm3, %xmm5	# D.5146, D.5146
	jne	.L182	#,
	leaq	8(%rdx), %r8	#, ivtmp.316
	movsd	%xmm5, -18012000(%rdi,%rdx)	# D.5146, MEM[base: _114, index: ivtmp.316_271, offset: -18012000B]
	cmpq	%rax, %r8	# D.5143, ivtmp.316
	jne	.L184	#,
	movsd	.LC2(%rip), %xmm0	#, tmp233
	leaq	(%r15,%r9), %r8	#, D.5145
.L188:
	movsd	-18012000(%rdi,%rsi), %xmm5	# MEM[base: _114, index: ivtmp.296_272, offset: -18012000B], D.5146
	leaq	-18012000(%rsi), %rdx	#, ivtmp.282
	movq	%r14, %rcx	# b, ivtmp.284
	xorpd	%xmm0, %xmm5	# tmp233, D.5146
	.p2align 4,,10
	.p2align 3
.L186:
	movsd	(%rdx), %xmm3	# MEM[base: _157, offset: 0B], D.5146
	addq	$12008, %rdx	#, ivtmp.282
	addq	$8, %rcx	#, ivtmp.284
	mulsd	-8(%rcx), %xmm3	# MEM[base: _123, offset: 0B], D.5146
	cmpq	%rsi, %rdx	# ivtmp.296, ivtmp.282
	addsd	%xmm3, %xmm5	# D.5146, D.5146
	jne	.L186	#,
	leaq	8(%rdx), %rsi	#, ivtmp.296
	movsd	%xmm5, -18012000(%r8,%rdx)	# D.5146, MEM[base: _147, index: ivtmp.296_272, offset: -18012000B]
	cmpq	%rsi, %rax	# ivtmp.296, D.5143
	jne	.L188	#,
	xorl	%eax, %eax	# ivtmp.275
	movapd	%xmm9, %xmm1	# tmp232, resid_max
	jmp	.L193	#
.L189:
	addq	$8, %rax	#, ivtmp.275
	maxsd	%xmm3, %xmm1	# resid_max, resid_max
	cmpq	$12000, %rax	#, ivtmp.275
	je	.L211	#,
.L193:
	movsd	(%r15,%rax), %xmm3	# MEM[base: resid_45, index: ivtmp.275_268, offset: 0B], resid_max
	ucomisd	%xmm9, %xmm3	# tmp232, resid_max
	jnb	.L189	#,
	xorpd	%xmm0, %xmm3	# tmp233, resid_max
	addq	$8, %rax	#, ivtmp.275
	cmpq	$12000, %rax	#, ivtmp.275
	maxsd	%xmm3, %xmm1	# resid_max, resid_max
	jne	.L193	#,
.L211:
	xorl	%edx, %edx	# ivtmp.267
	movapd	%xmm9, %xmm5	# tmp232, b_max
	jmp	.L198	#
.L194:
	addq	$8, %rdx	#, ivtmp.267
	maxsd	%xmm3, %xmm5	# b_max, b_max
	cmpq	$12000, %rdx	#, ivtmp.267
	je	.L212	#,
.L198:
	movsd	(%r14,%rdx), %xmm3	# MEM[base: b_41, index: ivtmp.267_304, offset: 0B], b_max
	ucomisd	%xmm9, %xmm3	# tmp232, b_max
	jnb	.L194	#,
	xorpd	%xmm0, %xmm3	# tmp233, b_max
	jmp	.L194	#
.L212:
	movsd	.LC4(%rip), %xmm0	#, r
	movl	$53, %eax	#, D.5142
	movsd	.LC5(%rip), %xmm2	#, tmp234
.L200:
	subl	$1, %eax	#, D.5142
	mulsd	%xmm2, %xmm0	# tmp234, r
	jne	.L200	#,
	movapd	%xmm0, %xmm2	# r, eps
	ucomisd	%xmm9, %xmm8	# tmp232, total
	addsd	%xmm0, %xmm2	# r, eps
	movapd	%xmm1, %xmm0	# resid_max, residn
	divsd	.LC19(%rip), %xmm0	#, residn
	divsd	%xmm4, %xmm0	# a_max, residn
	divsd	%xmm5, %xmm0	# b_max, residn
	divsd	%xmm2, %xmm0	# eps, residn
	jbe	.L208	#,
	movsd	.LC0(%rip), %xmm3	#, D.5146
	movsd	.LC20(%rip), %xmm9	#, time$3
	mulsd	%xmm8, %xmm3	# total, D.5146
	movsd	.LC21(%rip), %xmm10	#, D.5146
	divsd	%xmm3, %xmm9	# D.5146, time$3
	divsd	%xmm9, %xmm10	# time$3, D.5146
.L201:
	movl	$10, %edi	#,
	movsd	%xmm10, 56(%rsp)	# D.5146, %sfp
	movsd	%xmm9, 32(%rsp)	# time$3, %sfp
	movsd	%xmm8, 16(%rsp)	# total, %sfp
	movsd	%xmm7, 8(%rsp)	# D.5146, %sfp
	movsd	%xmm6, (%rsp)	# D.5146, %sfp
	movsd	%xmm2, 48(%rsp)	# eps, %sfp
	movsd	%xmm1, 40(%rsp)	# resid_max, %sfp
	movsd	%xmm0, 24(%rsp)	# residn, %sfp
	call	putchar	#
	movl	$.LC22, %edi	#,
	call	puts	#
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC23, %edi	#,
	movl	$5, %eax	#,
	movsd	11992(%r14), %xmm4	# MEM[(double *)b_41 + 11992B],
	movsd	(%r14), %xmm3	# *b_41,
	movsd	48(%rsp), %xmm2	# %sfp, eps
	movsd	40(%rsp), %xmm1	# %sfp, resid_max
	movsd	24(%rsp), %xmm0	# %sfp, residn
	call	printf	#
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC24, %edi	#,
	call	puts	#
	movl	$10, %edi	#,
	call	putchar	#
	movsd	16(%rsp), %xmm8	# %sfp, total
	movl	$.LC26, %edi	#,
	movsd	56(%rsp), %xmm10	# %sfp, D.5146
	movl	$6, %eax	#,
	movapd	%xmm8, %xmm5	# total, tmp249
	movsd	32(%rsp), %xmm9	# %sfp, time$3
	movapd	%xmm10, %xmm4	# D.5146,
	divsd	.LC25(%rip), %xmm5	#, tmp249
	movapd	%xmm8, %xmm2	# total,
	movapd	%xmm9, %xmm3	# time$3,
	movsd	8(%rsp), %xmm7	# %sfp, D.5146
	movsd	(%rsp), %xmm6	# %sfp, D.5146
	movapd	%xmm7, %xmm1	# D.5146,
	movapd	%xmm6, %xmm0	# D.5146,
	call	printf	#
	movq	%rbp, %rdi	# a,
	call	free	#
	movq	%r14, %rdi	# b,
	call	free	#
	movq	%r12, %rdi	# ipvt,
	call	free	#
	movq	%r15, %rdi	# resid,
	call	free	#
	movq	%r13, %rdi	# rhs,
	call	free	#
	movq	%rbx, %rdi	# x,
	call	free	#
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC9, %edi	#,
	call	puts	#
	movl	$.LC27, %edi	#,
	call	puts	#
	movl	$10, %edi	#,
	call	putchar	#
	call	timestamp	#
	addq	$72, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax	# D.5141
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
.L210:
	.cfi_restore_state
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC16, %edi	#,
	call	puts	#
	movl	$.LC17, %edi	#,
	call	puts	#
	movl	$.LC18, %edi	#,
	call	puts	#
	addq	$72, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$1, %eax	#, D.5141
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
.L208:
	.cfi_restore_state
	movsd	.LC8(%rip), %xmm10	#, D.5146
	movsd	.LC3(%rip), %xmm9	#, time$3
	jmp	.L201	#
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.local	time_buffer.4190
	.comm	time_buffer.4190,40,32
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1093567616
	.align 8
.LC1:
	.long	0
	.long	0
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC2:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC3:
	.long	0
	.long	-1074790400
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 8
.LC5:
	.long	0
	.long	1071644672
	.align 8
.LC6:
	.long	0
	.long	1060110336
	.align 8
.LC8:
	.long	0
	.long	-1073741824
	.align 8
.LC19:
	.long	0
	.long	1083666432
	.align 8
.LC20:
	.long	89478485
	.long	-1044241187
	.align 8
.LC21:
	.long	0
	.long	1073741824
	.align 8
.LC25:
	.long	824633721
	.long	1068280840
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-16)"
	.section	.note.GNU-stack,"",@progbits
