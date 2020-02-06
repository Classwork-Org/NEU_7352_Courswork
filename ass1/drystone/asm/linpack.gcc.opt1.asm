	.file	"linpack.c"
# GNU C (GCC) version 4.8.5 20150623 (Red Hat 4.8.5-16) (x86_64-redhat-linux)
#	compiled by GNU C version 4.8.5 20150623 (Red Hat 4.8.5-16), GMP version 6.0.0, MPFR version 3.1.1, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  ../source/linpack.c -mtune=generic -march=x86-64
# -auxbase-strip ../asm/linpack.gcc.opt1.asm -O1 -fverbose-asm
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
# -maccumulate-outgoing-args -malign-stringops -mfancy-math-387
# -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4
# -mpush-args -mred-zone -msse -msse2 -mtls-direct-seg-refs

	.text
	.globl	cpu_time
	.type	cpu_time, @function
cpu_time:
.LFB24:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
	call	clock	#
	cvtsi2sdq	%rax, %xmm0	# D.4666, D.4667
	divsd	.LC0(%rip), %xmm0	#, value
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	cpu_time, .-cpu_time
	.globl	daxpy
	.type	daxpy, @function
daxpy:
.LFB25:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	testl	%edi, %edi	# n
	jle	.L3	#,
	ucomisd	.LC1(%rip), %xmm0	#, da
	jp	.L17	#,
	je	.L3	#,
.L17:
	cmpl	$1, %edx	#, incx
	jne	.L18	#,
	cmpl	$1, %r8d	#, incy
	.p2align 4,,4
	je	.L6	#,
.L18:
	movl	$0, %eax	#, ix
	testl	%edx, %edx	# incx
	jns	.L8	#,
	movb	$1, %al	#,
	subl	%edi, %eax	# n, D.4691
	imull	%edx, %eax	# incx, ix
.L8:
	movl	$0, %r9d	#, iy
	testl	%r8d, %r8d	# incy
	jns	.L9	#,
	movb	$1, %r9b	#,
	subl	%edi, %r9d	# n, D.4691
	imull	%r8d, %r9d	# incy, iy
	jmp	.L9	#
.L14:
	movslq	%r9d, %r11	# iy, D.4692
	leaq	(%rcx,%r11,8), %r11	#, D.4693
	movslq	%eax, %rbx	# ix, D.4692
	movapd	%xmm0, %xmm1	# da, D.4694
	mulsd	(%rsi,%rbx,8), %xmm1	# *_32, D.4694
	addsd	(%r11), %xmm1	# *_27, D.4694
	movsd	%xmm1, (%r11)	# D.4694, *_27
	addl	%edx, %eax	# incx, ix
	addl	%r8d, %r9d	# incy, iy
	addl	$1, %r10d	#, i
	cmpl	%edi, %r10d	# n, i
	jne	.L14	#,
	jmp	.L3	#
.L6:
	movl	%edi, %eax	# n, tmp151
	sarl	$31, %eax	#, tmp151
	shrl	$30, %eax	#, tmp152
	leal	(%rdi,%rax), %r8d	#, tmp153
	andl	$3, %r8d	#, tmp154
	subl	%eax, %r8d	# tmp152, tmp155
	movl	%r8d, %edx	# tmp155, i
	testl	%r8d, %r8d	# tmp155
	jle	.L11	#,
	movl	$0, %eax	#, ivtmp.39
.L12:
	movapd	%xmm0, %xmm1	# da, D.4694
	mulsd	(%rsi,%rax,8), %xmm1	# MEM[base: dx_31(D), index: ivtmp.39_98, step: 8, offset: 0B], D.4694
	addsd	(%rcx,%rax,8), %xmm1	# MEM[base: dy_24(D), index: ivtmp.39_98, step: 8, offset: 0B], D.4694
	movsd	%xmm1, (%rcx,%rax,8)	# D.4694, MEM[base: dy_24(D), index: ivtmp.39_98, step: 8, offset: 0B]
	addq	$1, %rax	#, ivtmp.39
	cmpl	%eax, %edx	# ivtmp.39, i
	jg	.L12	#,
.L11:
	cmpl	%r8d, %edi	# tmp155, n
	jle	.L3	#,
.L13:
	movslq	%edx, %r9	# i, D.4692
	leaq	0(,%r9,8), %rax	#, D.4692
	leaq	(%rcx,%rax), %r8	#, D.4693
	movapd	%xmm0, %xmm1	# da, D.4694
	mulsd	(%rsi,%r9,8), %xmm1	# *_58, D.4694
	addsd	(%r8), %xmm1	# *_54, D.4694
	movsd	%xmm1, (%r8)	# D.4694, *_54
	leaq	8(%rcx,%rax), %r8	#, D.4693
	movapd	%xmm0, %xmm1	# da, D.4694
	mulsd	8(%rsi,%rax), %xmm1	# *_69, D.4694
	addsd	(%r8), %xmm1	# *_66, D.4694
	movsd	%xmm1, (%r8)	# D.4694, *_66
	leaq	16(%rcx,%rax), %r8	#, D.4693
	movapd	%xmm0, %xmm1	# da, D.4694
	mulsd	16(%rsi,%rax), %xmm1	# *_78, D.4694
	addsd	(%r8), %xmm1	# *_76, D.4694
	movsd	%xmm1, (%r8)	# D.4694, *_76
	leaq	24(%rcx,%rax), %r8	#, D.4693
	movapd	%xmm0, %xmm1	# da, D.4694
	mulsd	24(%rsi,%rax), %xmm1	# *_87, D.4694
	addsd	(%r8), %xmm1	# *_85, D.4694
	movsd	%xmm1, (%r8)	# D.4694, *_85
	addl	$4, %edx	#, i
	cmpl	%edx, %edi	# i, n
	jg	.L13	#,
	jmp	.L3	#
.L9:
	movl	$0, %r10d	#, i
	jmp	.L14	#
.L3:
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	.p2align 4,,4
	ret
	.cfi_endproc
.LFE25:
	.size	daxpy, .-daxpy
	.globl	ddot
	.type	ddot, @function
ddot:
.LFB26:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorpd	%xmm0, %xmm0	# dtemp
	testl	%edi, %edi	# n
	jle	.L36	#,
	cmpl	$1, %edx	#, incx
	jne	.L35	#,
	cmpl	$1, %r8d	#, incy
	je	.L22	#,
.L35:
	movl	$0, %r9d	#, ix
	testl	%edx, %edx	# incx
	jns	.L24	#,
	movb	$1, %r9b	#,
	subl	%edi, %r9d	# n, D.4718
	imull	%edx, %r9d	# incx, ix
.L24:
	movl	$0, %r10d	#, iy
	testl	%r8d, %r8d	# incy
	jns	.L25	#,
	movb	$1, %r10b	#,
	subl	%edi, %r10d	# n, D.4718
	imull	%r8d, %r10d	# incy, iy
	jmp	.L25	#
.L30:
	movslq	%r9d, %rbx	# ix, D.4719
	movslq	%r10d, %rax	# iy, D.4719
	movsd	(%rsi,%rbx,8), %xmm1	# *_26, *_26
	mulsd	(%rcx,%rax,8), %xmm1	# *_32, D.4721
	addsd	%xmm1, %xmm0	# D.4721, dtemp
	addl	%edx, %r9d	# incx, ix
	addl	%r8d, %r10d	# incy, iy
	addl	$1, %r11d	#, i
	cmpl	%edi, %r11d	# n, i
	jne	.L30	#,
	jmp	.L36	#
.L22:
	movl	$1717986919, %edx	#, tmp147
	movl	%edi, %eax	# n, tmp170
	imull	%edx	# tmp147
	sarl	%edx	# tmp148
	movl	%edi, %eax	# n, tmp149
	sarl	$31, %eax	#, tmp149
	subl	%eax, %edx	# tmp149, i
	leal	(%rdx,%rdx,4), %eax	#, tmp152
	movl	%edi, %edx	# n, i
	subl	%eax, %edx	# tmp152, i
	xorpd	%xmm0, %xmm0	# dtemp
	testl	%edx, %edx	# i
	jle	.L27	#,
	movl	$0, %r8d	#, ivtmp.60
	xorpd	%xmm0, %xmm0	# dtemp
.L28:
	movsd	(%rsi,%r8,8), %xmm1	# MEM[base: dx_25(D), index: ivtmp.60_49, step: 8, offset: 0B], MEM[base: dx_25(D), index: ivtmp.60_49, step: 8, offset: 0B]
	mulsd	(%rcx,%r8,8), %xmm1	# MEM[base: dy_31(D), index: ivtmp.60_49, step: 8, offset: 0B], D.4721
	addsd	%xmm1, %xmm0	# D.4721, dtemp
	addq	$1, %r8	#, ivtmp.60
	cmpl	%r8d, %edx	# ivtmp.60, i
	jg	.L28	#,
	jmp	.L27	#
.L27:
	cmpl	%edx, %edi	# i, n
	jle	.L36	#,
.L29:
	movslq	%edx, %r9	# i, D.4719
	leaq	0(,%r9,8), %r8	#, D.4719
	movsd	(%rsi,%r9,8), %xmm1	# *_52, *_52
	mulsd	(%rcx,%r9,8), %xmm1	# *_56, D.4721
	addsd	%xmm1, %xmm0	# D.4721, D.4721
	movsd	8(%rsi,%r8), %xmm1	# *_63, *_63
	mulsd	8(%rcx,%r8), %xmm1	# *_65, D.4721
	addsd	%xmm1, %xmm0	# D.4721, D.4721
	movsd	16(%rsi,%r8), %xmm1	# *_71, *_71
	mulsd	16(%rcx,%r8), %xmm1	# *_73, D.4721
	addsd	%xmm1, %xmm0	# D.4721, D.4721
	movsd	24(%rsi,%r8), %xmm1	# *_79, *_79
	mulsd	24(%rcx,%r8), %xmm1	# *_81, D.4721
	addsd	%xmm1, %xmm0	# D.4721, D.4721
	movsd	32(%rsi,%r8), %xmm1	# *_87, *_87
	mulsd	32(%rcx,%r8), %xmm1	# *_89, D.4721
	addsd	%xmm1, %xmm0	# D.4721, dtemp
	addl	$5, %edx	#, i
	cmpl	%edx, %edi	# i, n
	jg	.L29	#,
	jmp	.L36	#
.L25:
	movl	$0, %r11d	#, i
	xorpd	%xmm0, %xmm0	# dtemp
	jmp	.L30	#
.L36:
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE26:
	.size	ddot, .-ddot
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
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 72
	movq	%rdi, %rbp	# a, a
	movl	%esi, 12(%rsp)	# lda, %sfp
	movl	%edx, %r13d	# n, n
	movq	%rcx, %r15	# ipvt, ipvt
	movq	%r8, %rbx	# b, b
	testl	%r9d, %r9d	# job
	je	.L39	#,
	testl	%edx, %edx	# n
	jg	.L40	#,
	jmp	.L41	#
.L39:
	leal	-1(%rdx), %eax	#, D.4757
	movl	%eax, (%rsp)	# D.4757, %sfp
	testl	%eax, %eax	# D.4757
	jle	.L42	#,
	movl	12(%rsp), %eax	# %sfp, lda
	movl	%eax, 4(%rsp)	# lda, %sfp
	movl	$0, %r14d	#, ivtmp.79
	movl	$1, %r12d	#, k
.L44:
	movslq	%r12d, %rax	# k, D.4758
	movl	-4(%r15,%rax,4), %edx	# *_20, l
	movslq	%edx, %rcx	# l, D.4758
	leaq	-8(%rbx,%rcx,8), %rcx	#, D.4761
	movsd	(%rcx), %xmm0	# *_26, t
	cmpl	%r12d, %edx	# k, l
	je	.L43	#,
	leaq	-8(%rbx,%rax,8), %rdx	#, D.4761
	movsd	(%rdx), %xmm1	# *_30, D.4762
	movsd	%xmm1, (%rcx)	# D.4762, *_26
	movsd	%xmm0, (%rdx)	# t, *_30
.L43:
	leaq	(%rbx,%rax,8), %rcx	#, D.4761
	movslq	%r14d, %rdx	# ivtmp.79, D.4759
	addq	%rdx, %rax	# D.4759, D.4759
	leaq	0(%rbp,%rax,8), %rsi	#, D.4761
	movl	%r13d, %edi	# n, D.4756
	subl	%r12d, %edi	# k, D.4756
	movl	$1, %r8d	#,
	movl	$1, %edx	#,
	call	daxpy	#
	addl	$1, %r12d	#, k
	addl	4(%rsp), %r14d	# %sfp, ivtmp.79
	cmpl	(%rsp), %r12d	# %sfp, k
	jle	.L44	#,
.L42:
	testl	%r13d, %r13d	# n
	jle	.L38	#,
	movl	12(%rsp), %r15d	# %sfp, lda
	movl	%r15d, %r14d	# lda, D.4756
	notl	%r14d	# D.4756
	leal	1(%r15), %r12d	#, D.4757
	movl	(%rsp), %esi	# %sfp, D.4757
	imull	%esi, %r12d	# D.4757, ivtmp.71
	movl	%r15d, %edi	# lda, D.4756
	negl	%edi	# D.4756
	movl	%edi, (%rsp)	# D.4756, %sfp
	imull	%esi, %r15d	# D.4757, ivtmp.73
.L46:
	movslq	%r13d, %rax	# n, D.4758
	leaq	-8(%rbx,%rax,8), %rax	#, D.4761
	subl	$1, %r13d	#, n
	movslq	%r12d, %rdx	# ivtmp.71, D.4758
	movsd	(%rax), %xmm0	# *_51, *_51
	divsd	0(%rbp,%rdx,8), %xmm0	# *_58, D.4762
	movsd	%xmm0, (%rax)	# D.4762, *_51
	movslq	%r15d, %rax	# ivtmp.73, D.4758
	leaq	0(%rbp,%rax,8), %rsi	#, D.4761
	xorpd	.LC2(%rip), %xmm0	#, t
	movl	$1, %r8d	#,
	movq	%rbx, %rcx	# b,
	movl	$1, %edx	#,
	movl	%r13d, %edi	# n,
	call	daxpy	#
	addl	%r14d, %r12d	# D.4756, ivtmp.71
	addl	(%rsp), %r15d	# %sfp, ivtmp.73
	testl	%r13d, %r13d	# n
	jne	.L46	#,
	jmp	.L38	#
.L40:
	movl	12(%rsp), %eax	# %sfp, lda
	movl	%eax, 4(%rsp)	# lda, %sfp
	addl	$1, %eax	#, D.4756
	movl	%eax, 8(%rsp)	# D.4756, %sfp
	movl	$0, %r14d	#, ivtmp.97
	movl	$0, (%rsp)	#, %sfp
	movl	$1, %r12d	#, k
.L47:
	movslq	(%rsp), %rax	# %sfp, D.4758
	leaq	0(%rbp,%rax,8), %rsi	#, D.4761
	leal	-1(%r12), %edi	#, D.4756
	movl	$1, %r8d	#,
	movq	%rbx, %rcx	# b,
	movl	$1, %edx	#,
	call	ddot	#
	movslq	%r12d, %rax	# k, D.4758
	leaq	-8(%rbx,%rax,8), %rax	#, D.4761
	movsd	(%rax), %xmm1	# *_78, *_78
	subsd	%xmm0, %xmm1	# t, D.4762
	movapd	%xmm1, %xmm0	# D.4762, D.4762
	movslq	%r14d, %rdx	# ivtmp.97, D.4758
	divsd	0(%rbp,%rdx,8), %xmm0	# *_85, D.4762
	movsd	%xmm0, (%rax)	# D.4762, *_78
	addl	$1, %r12d	#, k
	movl	4(%rsp), %eax	# %sfp, D.4756
	addl	%eax, (%rsp)	# D.4756, %sfp
	addl	8(%rsp), %r14d	# %sfp, ivtmp.97
	cmpl	%r12d, %r13d	# k, n
	jge	.L47	#,
.L41:
	leal	-1(%r13), %r12d	#, k
	testl	%r12d, %r12d	# k
	jle	.L38	#,
	movl	12(%rsp), %edi	# %sfp, lda
	movl	%edi, %eax	# lda, D.4756
	negl	%eax	# D.4756
	movl	%eax, 12(%rsp)	# D.4756, %sfp
	subl	$2, %r13d	#, D.4757
	imull	%edi, %r13d	# lda, ivtmp.89
	movl	%r13d, (%rsp)	# ivtmp.89, %sfp
	movl	$1, 4(%rsp)	#, %sfp
.L49:
	movslq	%r12d, %r13	# k, D.4758
	leaq	0(,%r13,8), %rcx	#, D.4758
	leaq	-8(%rbx,%rcx), %r14	#, D.4761
	leal	-1(%r12), %eax	#, k
	movl	%eax, 8(%rsp)	# k, %sfp
	addq	%rbx, %rcx	# b, D.4761
	movslq	(%rsp), %rax	# %sfp, D.4759
	addq	%r13, %rax	# D.4758, D.4759
	leaq	0(%rbp,%rax,8), %rsi	#, D.4761
	movl	$1, %r8d	#,
	movl	$1, %edx	#,
	movl	4(%rsp), %edi	# %sfp,
	call	ddot	#
	addsd	(%r14), %xmm0	# *_94, D.4762
	movsd	%xmm0, (%r14)	# D.4762, *_94
	movl	-4(%r15,%r13,4), %eax	# *_109, l
	cmpl	%r12d, %eax	# k, l
	je	.L48	#,
	cltq
	leaq	-8(%rbx,%rax,8), %rax	#, D.4761
	movsd	(%rax), %xmm1	# *_114, t
	movsd	%xmm0, (%rax)	# D.4762, *_114
	movsd	%xmm1, (%r14)	# t, *_94
.L48:
	movl	12(%rsp), %eax	# %sfp, D.4756
	addl	%eax, (%rsp)	# D.4756, %sfp
	addl	$1, 4(%rsp)	#, %sfp
	movl	8(%rsp), %r12d	# %sfp, k
	testl	%r12d, %r12d	# k
	jne	.L49	#,
.L38:
	addq	$16, %rsp	#,
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
.LFE28:
	.size	dgesl, .-dgesl
	.globl	dscal
	.type	dscal, @function
dscal:
.LFB29:
	.cfi_startproc
	testl	%edi, %edi	# n
	jle	.L51	#,
	cmpl	$1, %edx	#, incx
	jne	.L53	#,
	movl	$1717986919, %edx	#, tmp114
	movl	%edi, %eax	# n, tmp147
	imull	%edx	# tmp114
	sarl	%edx	# tmp115
	movl	%edi, %eax	# n, tmp116
	sarl	$31, %eax	#, tmp116
	subl	%eax, %edx	# tmp116, i
	leal	(%rdx,%rdx,4), %eax	#, tmp119
	movl	%edi, %edx	# n, i
	subl	%eax, %edx	# tmp119, i
	testl	%edx, %edx	# i
	jle	.L54	#,
	movq	%rsi, %rcx	# x, ivtmp.107
	leal	-1(%rdx), %eax	#, D.4781
	leaq	8(%rsi,%rax,8), %rax	#, D.4781
.L55:
	movapd	%xmm0, %xmm1	# sa, D.4783
	mulsd	(%rcx), %xmm1	# MEM[base: _30, offset: 0B], D.4783
	movsd	%xmm1, (%rcx)	# D.4783, MEM[base: _30, offset: 0B]
	addq	$8, %rcx	#, ivtmp.107
	cmpq	%rax, %rcx	# D.4781, ivtmp.107
	jne	.L55	#,
.L54:
	cmpl	%edx, %edi	# i, n
	jle	.L51	#,
.L56:
	movslq	%edx, %rcx	# i, D.4784
	salq	$3, %rcx	#, D.4784
	leaq	(%rsi,%rcx), %rax	#, D.4785
	movapd	%xmm0, %xmm1	# sa, D.4783
	mulsd	(%rax), %xmm1	# *_26, D.4783
	movsd	%xmm1, (%rax)	# D.4783, *_26
	leaq	8(%rsi,%rcx), %rax	#, D.4785
	movapd	%xmm0, %xmm1	# sa, D.4783
	mulsd	(%rax), %xmm1	# *_33, D.4783
	movsd	%xmm1, (%rax)	# D.4783, *_33
	leaq	16(%rsi,%rcx), %rax	#, D.4785
	movapd	%xmm0, %xmm1	# sa, D.4783
	mulsd	(%rax), %xmm1	# *_39, D.4783
	movsd	%xmm1, (%rax)	# D.4783, *_39
	leaq	24(%rsi,%rcx), %rax	#, D.4785
	movapd	%xmm0, %xmm1	# sa, D.4783
	mulsd	(%rax), %xmm1	# *_45, D.4783
	movsd	%xmm1, (%rax)	# D.4783, *_45
	leaq	32(%rsi,%rcx), %rax	#, D.4785
	movapd	%xmm0, %xmm1	# sa, D.4783
	mulsd	(%rax), %xmm1	# *_51, D.4783
	movsd	%xmm1, (%rax)	# D.4783, *_51
	addl	$5, %edx	#, i
	cmpl	%edx, %edi	# i, n
	jg	.L56	#,
	rep ret
.L53:
	movl	$0, %ecx	#, ix
	testl	%edx, %edx	# incx
	jns	.L57	#,
	movb	$1, %cl	#,
	subl	%edi, %ecx	# n, D.4788
	imull	%edx, %ecx	# incx, ix
	jmp	.L57	#
.L59:
	movslq	%ecx, %r9	# ix, D.4784
	leaq	(%rsi,%r9,8), %r9	#, D.4785
	movapd	%xmm0, %xmm1	# sa, D.4783
	mulsd	(%r9), %xmm1	# *_62, D.4783
	movsd	%xmm1, (%r9)	# D.4783, *_62
	addl	%edx, %ecx	# incx, ix
	addl	$1, %r8d	#, i
	cmpl	%edi, %r8d	# n, i
	jne	.L59	#,
	rep ret
.L57:
	movl	$0, %r8d	#, i
	jmp	.L59	#
.L51:
	.p2align 4,,5
	rep ret
	.cfi_endproc
.LFE29:
	.size	dscal, .-dscal
	.globl	idamax
	.type	idamax, @function
idamax:
.LFB30:
	.cfi_startproc
	testl	%edi, %edi	# n
	jle	.L74	#,
	testl	%edx, %edx	# incx
	jle	.L74	#,
	cmpl	$1, %edi	#, n
	je	.L75	#,
	cmpl	$1, %edx	#, incx
	.p2align 4,,3
	jne	.L63	#,
	movsd	(%rsi), %xmm1	# *dx_20(D), dmax
	ucomisd	.LC1(%rip), %xmm1	#, dmax
	jnb	.L64	#,
	movsd	.LC2(%rip), %xmm0	#, tmp97
	xorpd	%xmm0, %xmm1	# tmp97, dmax
.L64:
	cmpl	$1, %edi	#, n
	jle	.L76	#,
	addq	$8, %rsi	#, ivtmp.120
	addl	$1, %edi	#, D.4812
	movl	$2, %edx	#, ivtmp.118
	movl	$1, %eax	#, value
	xorpd	%xmm2, %xmm2	# tmp112
	movsd	.LC2(%rip), %xmm3	#, tmp113
.L68:
	movsd	(%rsi), %xmm0	# MEM[base: _9, offset: 0B], dmax
	ucomisd	%xmm2, %xmm0	# tmp112, dmax
	jnb	.L65	#,
	xorpd	%xmm3, %xmm0	# tmp113, dmax
.L65:
	ucomisd	%xmm1, %xmm0	# dmax, dmax
	jbe	.L66	#,
	movl	%edx, %eax	# ivtmp.118, value
	movapd	%xmm0, %xmm1	# dmax, dmax
.L66:
	addl	$1, %edx	#, ivtmp.118
	addq	$8, %rsi	#, ivtmp.120
	cmpl	%edi, %edx	# D.4812, ivtmp.118
	jne	.L68	#,
	rep ret
.L63:
	movsd	(%rsi), %xmm1	# *dx_20(D), dmax
	ucomisd	.LC1(%rip), %xmm1	#, dmax
	jnb	.L69	#,
	movsd	.LC2(%rip), %xmm0	#, tmp105
	xorpd	%xmm0, %xmm1	# tmp105, dmax
.L69:
	cmpl	$1, %edi	#, n
	jle	.L78	#,
	addl	$1, %edi	#, D.4812
	movl	%edx, %r8d	# incx, incx
	movl	$2, %ecx	#, ivtmp.127
	movl	$1, %eax	#, value
	xorpd	%xmm2, %xmm2	# tmp114
	movsd	.LC2(%rip), %xmm3	#, tmp115
.L73:
	movslq	%r8d, %r9	# incx, D.4817
	movsd	(%rsi,%r9,8), %xmm0	# *_34, dmax
	ucomisd	%xmm2, %xmm0	# tmp114, dmax
	jnb	.L70	#,
	xorpd	%xmm3, %xmm0	# tmp115, dmax
.L70:
	ucomisd	%xmm1, %xmm0	# dmax, dmax
	jbe	.L71	#,
	movl	%ecx, %eax	# ivtmp.127, value
	movapd	%xmm0, %xmm1	# dmax, dmax
.L71:
	addl	%edx, %r8d	# incx, incx
	addl	$1, %ecx	#, ivtmp.127
	cmpl	%edi, %ecx	# D.4812, ivtmp.127
	jne	.L73	#,
	rep ret
.L74:
	movl	$0, %eax	#, D.4814
	ret
.L75:
	movl	$1, %eax	#, D.4814
	.p2align 4,,2
	ret
.L76:
	movl	$1, %eax	#, D.4814
	ret
.L78:
	movl	$1, %eax	#, D.4814
	ret
	.cfi_endproc
.LFE30:
	.size	idamax, .-idamax
	.globl	dgefa
	.type	dgefa, @function
dgefa:
.LFB27:
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
	movq	%rdi, %r14	# a, a
	movl	%esi, %edi	# lda, lda
	movl	%esi, 68(%rsp)	# lda, %sfp
	movl	%edx, %eax	# n, n
	movl	%edx, 4(%rsp)	# n, %sfp
	movq	%rcx, 48(%rsp)	# ipvt, %sfp
	leal	-1(%rdx), %esi	#, D.4842
	movl	%esi, 44(%rsp)	# D.4842, %sfp
	testl	%esi, %esi	# D.4842
	jle	.L92	#,
	movl	%edi, 8(%rsp)	# lda, %sfp
	addl	$1, %edi	#, D.4840
	movl	%edi, 56(%rsp)	# D.4840, %sfp
	movl	$0, 40(%rsp)	#, %sfp
	movl	$0, 36(%rsp)	#, %sfp
	movl	$1, %r13d	#, n
	movl	$0, 64(%rsp)	#, %sfp
	addl	$1, %eax	#, D.4840
	movl	%eax, 60(%rsp)	# D.4840, %sfp
.L89:
	movslq	%r13d, %rax	# n, D.4841
	movq	%rax, %rbx	# D.4841, D.4841
	movq	%rax, 16(%rsp)	# D.4841, %sfp
	movslq	36(%rsp), %rbp	# %sfp, D.4841
	addq	%rax, %rbp	# D.4841, D.4841
	salq	$3, %rbp	#, D.4841
	movl	%r13d, %r12d	# n, D.4840
	movl	4(%rsp), %eax	# %sfp, D.4842
	subl	%r13d, %eax	# n, D.4842
	movl	%eax, 32(%rsp)	# D.4842, %sfp
	leaq	-8(%r14,%rbp), %rsi	#, D.4843
	movl	60(%rsp), %edi	# %sfp, D.4840
	subl	%r13d, %edi	# n, D.4840
	movl	$1, %edx	#,
	call	idamax	#
	leal	(%rax,%r13), %r15d	#, D.4842
	leal	-1(%r15), %eax	#, l
	movl	%eax, %esi	# l, l
	movl	%eax, 12(%rsp)	# l, %sfp
	movq	48(%rsp), %rdi	# %sfp, ipvt
	movl	%esi, -4(%rdi,%rbx,4)	# l, *_32
	leal	-2(%r15), %ebx	#, D.4842
	movl	36(%rsp), %eax	# %sfp, ivtmp.146
	addl	%ebx, %eax	# D.4842, D.4842
	cltq
	leaq	(%r14,%rax,8), %rax	#, D.4843
	movsd	(%rax), %xmm0	# *_38, D.4846
	xorpd	%xmm2, %xmm2	# tmp222
	ucomisd	%xmm2, %xmm0	# tmp222, D.4846
	jp	.L94	#,
	je	.L93	#,
.L94:
	cmpl	%r13d, 12(%rsp)	# n, %sfp
	je	.L86	#,
	movslq	40(%rsp), %rdx	# %sfp, D.4844
	leaq	(%r14,%rdx,8), %rdx	#, D.4843
	movsd	(%rdx), %xmm1	# *_44, D.4846
	movsd	%xmm1, (%rax)	# D.4846, *_38
	movsd	%xmm0, (%rdx)	# D.4846, *_44
.L86:
	leaq	(%r14,%rbp), %rax	#, D.4843
	movq	%rax, %rsi	# D.4843, D.4843
	movq	%rax, 24(%rsp)	# D.4843, %sfp
	movslq	40(%rsp), %rax	# %sfp, D.4844
	movsd	.LC3(%rip), %xmm0	#, t
	divsd	(%r14,%rax,8), %xmm0	# *_52, t
	movl	$1, %edx	#,
	movl	32(%rsp), %edi	# %sfp,
	call	dscal	#
	leal	1(%r12), %eax	#, D.4840
	movl	%eax, %ebp	# D.4840, j
	cmpl	%eax, 4(%rsp)	# D.4840, %sfp
	jl	.L84	#,
	movl	36(%rsp), %edx	# %sfp, D.4840
	addl	8(%rsp), %edx	# %sfp, D.4840
	addl	%edx, %ebx	# D.4840, ivtmp.135
	movl	$2, %r12d	#, tmp192
	subl	%r15d, %r12d	# D.4842, D.4840
	subl	%r15d, %eax	# D.4842, D.4840
	movl	%eax, %r15d	# D.4840, D.4840
.L88:
	leal	(%r12,%rbx), %ecx	#, D.4842
	movslq	%ebx, %rax	# ivtmp.135, D.4844
	leaq	(%r14,%rax,8), %rax	#, D.4843
	movsd	(%rax), %xmm0	# *_63, t
	cmpl	%r13d, 12(%rsp)	# n, %sfp
	je	.L87	#,
	leal	(%r15,%rbx), %edx	#, D.4840
	movslq	%edx, %rdx	# D.4840, D.4844
	leaq	(%r14,%rdx,8), %rdx	#, D.4843
	movsd	(%rdx), %xmm1	# *_68, D.4846
	movsd	%xmm1, (%rax)	# D.4846, *_63
	movsd	%xmm0, (%rdx)	# t, *_68
.L87:
	movslq	%ecx, %rax	# D.4842, D.4841
	addq	16(%rsp), %rax	# %sfp, D.4841
	leaq	(%r14,%rax,8), %rcx	#, D.4843
	movl	$1, %r8d	#,
	movl	$1, %edx	#,
	movq	24(%rsp), %rsi	# %sfp,
	movl	32(%rsp), %edi	# %sfp,
	call	daxpy	#
	addl	$1, %ebp	#, j
	addl	8(%rsp), %ebx	# %sfp, ivtmp.135
	cmpl	%ebp, 4(%rsp)	# j, %sfp
	jge	.L88	#,
	jmp	.L84	#
.L93:
	movl	%r13d, 64(%rsp)	# n, %sfp
.L84:
	addl	$1, %r13d	#, n
	movl	8(%rsp), %eax	# %sfp, D.4840
	addl	%eax, 36(%rsp)	# D.4840, %sfp
	movl	56(%rsp), %eax	# %sfp, D.4840
	addl	%eax, 40(%rsp)	# D.4840, %sfp
	cmpl	44(%rsp), %r13d	# %sfp, n
	jle	.L89	#,
	jmp	.L83	#
.L92:
	movl	$0, 64(%rsp)	#, %sfp
.L83:
	movl	4(%rsp), %edi	# %sfp, n
	movslq	%edi, %rax	# n, D.4844
	movq	48(%rsp), %rsi	# %sfp, ipvt
	movl	%edi, -4(%rsi,%rax,4)	# n, *_82
	movl	68(%rsp), %eax	# %sfp, D.4842
	addl	$1, %eax	#, D.4842
	imull	44(%rsp), %eax	# %sfp, D.4842
	cltq
	xorpd	%xmm0, %xmm0	# tmp189
	ucomisd	(%r14,%rax,8), %xmm0	# *_88, tmp189
	jp	.L95	#,
	je	.L90	#,
.L95:
	movl	64(%rsp), %eax	# %sfp, n
	movl	%eax, 4(%rsp)	# n, %sfp
.L90:
	movl	4(%rsp), %eax	# %sfp,
	addq	$72, %rsp	#,
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
.LFE27:
	.size	dgefa, .-dgefa
	.globl	r8_abs
	.type	r8_abs, @function
r8_abs:
.LFB31:
	.cfi_startproc
	ucomisd	.LC1(%rip), %xmm0	#, x
	jnb	.L98	#,
	movsd	.LC2(%rip), %xmm1	#, tmp64
	xorpd	%xmm1, %xmm0	# tmp64, x
.L98:
	rep ret
	.cfi_endproc
.LFE31:
	.size	r8_abs, .-r8_abs
	.globl	r8_epsilon
	.type	r8_epsilon, @function
r8_epsilon:
.LFB32:
	.cfi_startproc
	movl	$53, %eax	#, D.4858
	movsd	.LC4(%rip), %xmm0	#, r
	movsd	.LC5(%rip), %xmm1	#, tmp67
.L101:
	mulsd	%xmm1, %xmm0	# tmp67, r
	subl	$1, %eax	#, D.4858
	jne	.L101	#,
	addsd	%xmm0, %xmm0	# r, r
	ret
	.cfi_endproc
.LFE32:
	.size	r8_epsilon, .-r8_epsilon
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
	.globl	r8_random
	.type	r8_random, @function
r8_random:
.LFB34:
	.cfi_startproc
	movl	12(%rdi), %eax	# MEM[(int *)iseed_1(D) + 12B], D.4866
	imull	$2549, %eax, %edx	#, D.4866, it4
	leal	4095(%rdx), %ecx	#, tmp106
	testl	%edx, %edx	# it4
	cmovns	%edx, %ecx	# tmp106,, it4, it4
	sarl	$12, %ecx	#, tmp107
	movl	%ecx, %esi	# tmp107, D.4866
	sall	$12, %esi	#, D.4866
	subl	%esi, %edx	# D.4866, it4
	movl	%edx, %r8d	# it4, it4
	movl	8(%rdi), %esi	# MEM[(int *)iseed_1(D) + 8B], D.4866
	imull	$2549, %esi, %edx	#, D.4866, D.4866
	addl	%edx, %ecx	# D.4866, D.4866
	imull	$2508, %eax, %edx	#, D.4866, D.4866
	addl	%edx, %ecx	# D.4866, it3
	leal	4095(%rcx), %edx	#, tmp112
	testl	%ecx, %ecx	# it3
	cmovns	%ecx, %edx	# tmp112,, it3, it3
	sarl	$12, %edx	#, tmp113
	movl	%edx, %r9d	# tmp113, D.4866
	sall	$12, %r9d	#, D.4866
	subl	%r9d, %ecx	# D.4866, it3
	movl	4(%rdi), %r9d	# MEM[(int *)iseed_1(D) + 4B], D.4866
	imull	$2549, %r9d, %r10d	#, D.4866, D.4866
	addl	%r10d, %edx	# D.4866, D.4866
	imull	$2508, %esi, %r10d	#, D.4866, D.4866
	addl	%r10d, %edx	# D.4866, D.4866
	imull	$322, %eax, %r10d	#, D.4866, D.4866
	addl	%r10d, %edx	# D.4866, it2
	leal	4095(%rdx), %r10d	#, tmp120
	testl	%edx, %edx	# it2
	cmovns	%edx, %r10d	# tmp120,, it2, it2
	sarl	$12, %r10d	#, tmp121
	movl	%r10d, %r11d	# tmp121, D.4866
	sall	$12, %r11d	#, D.4866
	subl	%r11d, %edx	# D.4866, it2
	imull	$2549, (%rdi), %r11d	#, *iseed_1(D), D.4866
	addl	%r11d, %r10d	# D.4866, D.4866
	imull	$2508, %r9d, %r9d	#, D.4866, D.4866
	addl	%r10d, %r9d	# D.4866, D.4866
	imull	$322, %esi, %esi	#, D.4866, D.4866
	addl	%r9d, %esi	# D.4866, D.4866
	imull	$494, %eax, %eax	#, D.4866, D.4866
	addl	%esi, %eax	# D.4866, it1
	movl	%eax, %r9d	# it1, tmp130
	sarl	$31, %r9d	#, tmp130
	shrl	$20, %r9d	#, tmp131
	addl	%r9d, %eax	# tmp131, tmp132
	andl	$4095, %eax	#, tmp133
	subl	%r9d, %eax	# tmp131, tmp134
	movl	%eax, (%rdi)	# tmp134, *iseed_1(D)
	movl	%edx, 4(%rdi)	# it2, MEM[(int *)iseed_1(D) + 4B]
	movl	%ecx, 8(%rdi)	# it3, MEM[(int *)iseed_1(D) + 8B]
	movl	%r8d, 12(%rdi)	# it4, MEM[(int *)iseed_1(D) + 12B]
	cvtsi2sd	%eax, %xmm2	# tmp134, D.4867
	cvtsi2sd	%edx, %xmm3	# it2, D.4867
	cvtsi2sd	%ecx, %xmm4	# it3, D.4867
	cvtsi2sd	%r8d, %xmm1	# it4, D.4867
	movsd	.LC6(%rip), %xmm0	#, tmp141
	mulsd	%xmm0, %xmm1	# tmp141, D.4867
	addsd	%xmm4, %xmm1	# D.4867, D.4867
	mulsd	%xmm0, %xmm1	# tmp141, D.4867
	addsd	%xmm3, %xmm1	# D.4867, D.4867
	mulsd	%xmm0, %xmm1	# tmp141, D.4867
	addsd	%xmm2, %xmm1	# D.4867, D.4867
	mulsd	%xmm1, %xmm0	# D.4867, value
	ret
	.cfi_endproc
.LFE34:
	.size	r8_random, .-r8_random
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
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
	movl	%edi, %ebx	# lda, lda
	movl	%esi, %r13d	# n, n
	movl	$1, 16(%rsp)	#, init
	movl	$2, 20(%rsp)	#, init
	movl	$3, 24(%rsp)	#, init
	movl	$1325, 28(%rsp)	#, init
	imull	%esi, %edi	# n, D.4881
	movslq	%edi, %rdi	# D.4881, D.4882
	salq	$3, %rdi	#, D.4882
	call	malloc	#
	movq	%rax, %r14	#, a
	testl	%r13d, %r13d	# n
	jle	.L108	#,
	movl	%ebx, 12(%rsp)	# lda, %sfp
	movl	$0, %r12d	#, ivtmp.171
	movl	$1, %r15d	#, j
	jmp	.L109	#
.L111:
	leal	(%r12,%rbx), %eax	#, D.4880
	cltq
	leaq	(%r14,%rax,8), %rbp	#, D.4883
	leaq	16(%rsp), %rdi	#,
	call	r8_random	#
	subsd	.LC5(%rip), %xmm0	#, D.4884
	movsd	%xmm0, 0(%rbp)	# D.4884, *_24
	addq	$1, %rbx	#, ivtmp.163
	leal	1(%rbx), %eax	#, D.4880
	cmpl	%r13d, %eax	# n, D.4880
	jle	.L111	#,
	addl	$1, %r15d	#, j
	addl	12(%rsp), %r12d	# %sfp, ivtmp.171
	cmpl	%r15d, %r13d	# j, n
	jl	.L108	#,
.L109:
	movl	$0, %ebx	#, ivtmp.163
	jmp	.L111	#
.L108:
	movq	%r14, %rax	# a,
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
	.globl	timestamp
	.type	timestamp, @function
timestamp:
.LFB36:
	.cfi_startproc
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movl	$0, %edi	#,
	call	time	#
	movq	%rax, 8(%rsp)	# now.0, now
	leaq	8(%rsp), %rdi	#, tmp62
	call	localtime	#
	movq	%rax, %rcx	# tm,
	movl	$.LC7, %edx	#,
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
.LC8:
	.string	"LINPACK_BENCH"
.LC9:
	.string	"  C version"
.LC10:
	.string	"  The LINPACK benchmark."
.LC11:
	.string	"  Language: C"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC12:
	.string	"  Datatype: Double precision real"
	.align 8
.LC13:
	.string	"  Matrix order N               = %d\n"
	.align 8
.LC14:
	.string	"  Leading matrix dimension LDA = %d\n"
	.section	.rodata.str1.1
.LC15:
	.string	"LINPACK_BENCH - Fatal error!"
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"  The matrix A is apparently singular."
	.section	.rodata.str1.1
.LC17:
	.string	"  Abnormal end of execution."
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"     Norm. Resid      Resid           MACHEP         X[1]          X[N]"
	.align 8
.LC21:
	.string	"  %14f  %14f  %14e  %14f  %14f\n"
	.align 8
.LC22:
	.string	"      Factor     Solve      Total     MFLOPS       Unit      Cray-Ratio"
	.align 8
.LC25:
	.string	"  %9f  %9f  %9f  %9f  %9f  %9f\n"
	.section	.rodata.str1.1
.LC26:
	.string	"  Normal end of execution."
	.text
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
	movl	$.LC8, %edi	#,
	call	puts	#
	movl	$.LC9, %edi	#,
	call	puts	#
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC10, %edi	#,
	call	puts	#
	movl	$.LC11, %edi	#,
	call	puts	#
	movl	$.LC12, %edi	#,
	call	puts	#
	movl	$1500, %esi	#,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	movl	$1501, %esi	#,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	movl	$1500, %esi	#,
	movl	$1501, %edi	#,
	call	r8mat_gen	#
	movq	%rax, %rbp	#, a
	movl	$12000, %edi	#,
	call	malloc	#
	movq	%rax, %rbx	#, b
	movl	$6000, %edi	#,
	call	malloc	#
	movq	%rax, %r15	#, ipvt
	movl	$12000, %edi	#,
	call	malloc	#
	movq	%rax, %r14	#, resid
	movl	$12000, %edi	#,
	call	malloc	#
	movq	%rax, %r13	#, rhs
	movl	$12000, %edi	#,
	call	malloc	#
	movq	%rax, %r12	#, x
	movl	$0, %ecx	#, ivtmp.276
	xorpd	%xmm4, %xmm4	# a_max
	movsd	%xmm4, 8(%rsp)	# a_max, %sfp
	jmp	.L116	#
.L121:
	leal	(%rax,%rcx), %edx	#, D.5012
	movslq	%edx, %rdx	# D.5012, D.5010
	movsd	0(%rbp,%rdx,8), %xmm0	# *_55, a_max
	movsd	8(%rsp), %xmm6	# %sfp, a_max
	maxsd	%xmm0, %xmm6	# a_max, a_max
	movsd	%xmm6, 8(%rsp)	# a_max, %sfp
	addl	$1, %eax	#, i
	cmpl	$1500, %eax	#, i
	jne	.L121	#,
	addl	$1501, %ecx	#, ivtmp.276
	cmpl	$2251500, %ecx	#, ivtmp.276
	je	.L120	#,
.L116:
	movl	$0, %eax	#, i
	jmp	.L121	#
.L120:
	movl	$0, %eax	#, ivtmp.262
	movsd	.LC4(%rip), %xmm0	#, tmp230
.L123:
	movsd	%xmm0, (%r12,%rax)	# tmp230, MEM[base: x_50, index: ivtmp.262_245, offset: 0B]
	addq	$8, %rax	#, ivtmp.262
	cmpq	$12000, %rax	#, ivtmp.262
	jne	.L123	#,
	movl	$0, %ecx	#, ivtmp.248
	xorpd	%xmm1, %xmm1	# tmp229
.L127:
	movsd	%xmm1, (%rbx,%rcx,8)	# tmp229, MEM[base: b_42, index: ivtmp.248_252, step: 8, offset: 0B]
	movl	%ecx, %edx	# ivtmp.248, ivtmp.243
	movl	$0, %eax	#, ivtmp.246
.L125:
	movslq	%edx, %rsi	# ivtmp.243, D.5010
	movsd	0(%rbp,%rsi,8), %xmm0	# *_74, *_74
	mulsd	(%r12,%rax), %xmm0	# MEM[base: x_50, index: ivtmp.246_239, offset: 0B], D.5013
	addsd	(%rbx,%rcx,8), %xmm0	# MEM[base: b_42, index: ivtmp.248_252, step: 8, offset: 0B], D.5013
	movsd	%xmm0, (%rbx,%rcx,8)	# D.5013, MEM[base: b_42, index: ivtmp.248_252, step: 8, offset: 0B]
	addl	$1501, %edx	#, ivtmp.243
	addq	$8, %rax	#, ivtmp.246
	cmpq	$12000, %rax	#, ivtmp.246
	jne	.L125	#,
	addq	$1, %rcx	#, ivtmp.248
	cmpq	$1500, %rcx	#, ivtmp.248
	jne	.L127	#,
	call	cpu_time	#
	movsd	%xmm0, 16(%rsp)	#, %sfp
	movq	%r15, %rcx	# ipvt,
	movl	$1500, %edx	#,
	movl	$1501, %esi	#,
	movq	%rbp, %rdi	# a,
	call	dgefa	#
	testl	%eax, %eax	# info
	je	.L128	#,
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC15, %edi	#,
	call	puts	#
	movl	$.LC16, %edi	#,
	call	puts	#
	movl	$.LC17, %edi	#,
	call	puts	#
	movl	$1, %eax	#, D.5009
	jmp	.L129	#
.L128:
	call	cpu_time	#
	subsd	16(%rsp), %xmm0	# %sfp, D.5013
	movsd	%xmm0, 32(%rsp)	# D.5013, %sfp
	call	cpu_time	#
	movsd	%xmm0, 16(%rsp)	#, %sfp
	movl	$0, %r9d	#,
	movq	%rbx, %r8	# b,
	movq	%r15, %rcx	# ipvt,
	movl	$1500, %edx	#,
	movl	$1501, %esi	#,
	movq	%rbp, %rdi	# a,
	call	dgesl	#
	call	cpu_time	#
	movapd	%xmm0, %xmm3	# t2, D.5013
	subsd	16(%rsp), %xmm3	# %sfp, D.5013
	movsd	%xmm3, 48(%rsp)	# D.5013, %sfp
	movsd	32(%rsp), %xmm0	# %sfp, total
	addsd	%xmm3, %xmm0	# D.5013, total
	movsd	%xmm0, 40(%rsp)	# total, %sfp
	movq	%rbp, %rdi	# a,
	call	free	#
	movl	$1500, %esi	#,
	movl	$1501, %edi	#,
	call	r8mat_gen	#
	movq	%rax, %rbp	#, a
	movl	$0, %eax	#, ivtmp.236
	movsd	.LC4(%rip), %xmm0	#, tmp228
.L131:
	movsd	%xmm0, (%r12,%rax)	# tmp228, MEM[base: x_50, index: ivtmp.236_247, offset: 0B]
	addq	$8, %rax	#, ivtmp.236
	cmpq	$12000, %rax	#, ivtmp.236
	jne	.L131	#,
	movl	$0, %esi	#, ivtmp.222
	xorpd	%xmm2, %xmm2	# D__lsm.175
.L135:
	movl	%esi, %edx	# ivtmp.222, ivtmp.217
	movl	$0, %eax	#, ivtmp.220
	movapd	%xmm2, %xmm0	# D__lsm.175, D__lsm.175
.L133:
	movslq	%edx, %rcx	# ivtmp.217, D.5010
	movsd	0(%rbp,%rcx,8), %xmm1	# *_122, *_122
	mulsd	(%r12,%rax), %xmm1	# MEM[base: x_50, index: ivtmp.220_259, offset: 0B], D.5013
	addsd	%xmm1, %xmm0	# D.5013, D.5013
	addl	$1501, %edx	#, ivtmp.217
	addq	$8, %rax	#, ivtmp.220
	cmpq	$12000, %rax	#, ivtmp.220
	jne	.L133	#,
	movsd	%xmm0, 0(%r13,%rsi,8)	# D.5013, MEM[base: rhs_48, index: ivtmp.222_253, step: 8, offset: 0B]
	addq	$1, %rsi	#, ivtmp.222
	cmpq	$1500, %rsi	#, ivtmp.222
	jne	.L135	#,
	movw	$0, %si	#,
	movsd	.LC2(%rip), %xmm2	#, tmp226
.L139:
	movsd	0(%r13,%rsi,8), %xmm0	# MEM[base: rhs_48, index: ivtmp.203_254, step: 8, offset: 0B], MEM[base: rhs_48, index: ivtmp.203_254, step: 8, offset: 0B]
	xorpd	%xmm2, %xmm0	# tmp226, D.5013
	movl	%esi, %edx	# ivtmp.203, ivtmp.198
	movl	$0, %eax	#, ivtmp.201
.L137:
	movslq	%edx, %rcx	# ivtmp.198, D.5010
	movsd	0(%rbp,%rcx,8), %xmm1	# *_145, *_145
	mulsd	(%rbx,%rax), %xmm1	# MEM[base: b_42, index: ivtmp.201_162, offset: 0B], D.5013
	addsd	%xmm1, %xmm0	# D.5013, D.5013
	addl	$1501, %edx	#, ivtmp.198
	addq	$8, %rax	#, ivtmp.201
	cmpq	$12000, %rax	#, ivtmp.201
	jne	.L137	#,
	movsd	%xmm0, (%r14,%rsi,8)	# D.5013, MEM[base: resid_46, index: ivtmp.203_254, step: 8, offset: 0B]
	addq	$1, %rsi	#, ivtmp.203
	cmpq	$1500, %rsi	#, ivtmp.203
	jne	.L139	#,
	movl	$0, %eax	#, ivtmp.191
	xorpd	%xmm3, %xmm3	# resid_max
	movsd	%xmm3, 16(%rsp)	# resid_max, %sfp
	movapd	%xmm3, %xmm1	# resid_max, tmp224
	movsd	.LC2(%rip), %xmm2	#, tmp225
.L144:
	movsd	(%r14,%rax), %xmm0	# MEM[base: resid_46, index: ivtmp.191_250, offset: 0B], resid_max
	ucomisd	%xmm1, %xmm0	# tmp224, resid_max
	jnb	.L140	#,
	xorpd	%xmm2, %xmm0	# tmp225, resid_max
.L140:
	movsd	16(%rsp), %xmm7	# %sfp, resid_max
	maxsd	%xmm0, %xmm7	# resid_max, resid_max
	movsd	%xmm7, 16(%rsp)	# resid_max, %sfp
	addq	$8, %rax	#, ivtmp.191
	cmpq	$12000, %rax	#, ivtmp.191
	jne	.L144	#,
	movw	$0, %ax	#,
	xorpd	%xmm4, %xmm4	# b_max
	movsd	%xmm4, 24(%rsp)	# b_max, %sfp
	movapd	%xmm4, %xmm1	# b_max, tmp222
	movsd	.LC2(%rip), %xmm2	#, tmp223
.L149:
	movsd	(%rbx,%rax), %xmm0	# MEM[base: b_42, index: ivtmp.183_25, offset: 0B], b_max
	ucomisd	%xmm1, %xmm0	# tmp222, b_max
	jnb	.L145	#,
	xorpd	%xmm2, %xmm0	# tmp223, b_max
.L145:
	movsd	24(%rsp), %xmm5	# %sfp, b_max
	maxsd	%xmm0, %xmm5	# b_max, b_max
	movsd	%xmm5, 24(%rsp)	# b_max, %sfp
	addq	$8, %rax	#, ivtmp.183
	cmpq	$12000, %rax	#, ivtmp.183
	jne	.L149	#,
	call	r8_epsilon	#
	movapd	%xmm0, %xmm4	#, eps
	movsd	%xmm0, 56(%rsp)	# eps, %sfp
	movsd	16(%rsp), %xmm3	# %sfp, D.5013
	divsd	.LC18(%rip), %xmm3	#, D.5013
	movapd	%xmm3, %xmm0	# D.5013, D.5013
	divsd	8(%rsp), %xmm0	# %sfp, D.5013
	divsd	24(%rsp), %xmm0	# %sfp, D.5013
	movapd	%xmm0, %xmm3	# D.5013, residn
	divsd	%xmm4, %xmm3	# eps, residn
	movsd	%xmm3, 24(%rsp)	# residn, %sfp
	movsd	40(%rsp), %xmm4	# %sfp, total
	ucomisd	.LC1(%rip), %xmm4	#, total
	jbe	.L157	#,
	movsd	.LC19(%rip), %xmm1	#, tmp215
	mulsd	.LC0(%rip), %xmm4	#, D.5013
	divsd	%xmm4, %xmm1	# D.5013, time$3
	movsd	%xmm1, 8(%rsp)	# time$3, %sfp
	jmp	.L150	#
.L157:
	movsd	.LC3(%rip), %xmm7	#, time$3
	movsd	%xmm7, 8(%rsp)	# time$3, %sfp
.L150:
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC20, %edi	#,
	call	puts	#
	movl	$10, %edi	#,
	call	putchar	#
	movsd	11992(%rbx), %xmm4	# MEM[(double *)b_42 + 11992B],
	movsd	(%rbx), %xmm3	# *b_42,
	movsd	56(%rsp), %xmm2	# %sfp,
	movsd	16(%rsp), %xmm1	# %sfp,
	movsd	24(%rsp), %xmm0	# %sfp,
	movl	$.LC21, %edi	#,
	movl	$5, %eax	#,
	call	printf	#
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC22, %edi	#,
	call	puts	#
	movl	$10, %edi	#,
	call	putchar	#
	movsd	40(%rsp), %xmm2	# %sfp, total
	movapd	%xmm2, %xmm5	# total, tmp247
	divsd	.LC23(%rip), %xmm5	#, tmp247
	movsd	.LC24(%rip), %xmm4	#, tmp220
	movsd	8(%rsp), %xmm3	# %sfp, time$3
	divsd	%xmm3, %xmm4	# time$3,
	movsd	48(%rsp), %xmm1	# %sfp,
	movsd	32(%rsp), %xmm0	# %sfp,
	movl	$.LC25, %edi	#,
	movl	$6, %eax	#,
	call	printf	#
	movq	%rbp, %rdi	# a,
	call	free	#
	movq	%rbx, %rdi	# b,
	call	free	#
	movq	%r15, %rdi	# ipvt,
	call	free	#
	movq	%r14, %rdi	# resid,
	call	free	#
	movq	%r13, %rdi	# rhs,
	call	free	#
	movq	%r12, %rdi	# x,
	call	free	#
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC8, %edi	#,
	call	puts	#
	movl	$.LC26, %edi	#,
	call	puts	#
	movl	$10, %edi	#,
	call	putchar	#
	call	timestamp	#
	movl	$0, %eax	#, D.5009
.L129:
	addq	$72, %rsp	#,
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
.LC18:
	.long	0
	.long	1083666432
	.align 8
.LC19:
	.long	89478485
	.long	-1044241187
	.align 8
.LC23:
	.long	824633721
	.long	1068280840
	.align 8
.LC24:
	.long	0
	.long	1073741824
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-16)"
	.section	.note.GNU-stack,"",@progbits
