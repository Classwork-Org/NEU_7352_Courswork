	.file	"linpack.c"
# GNU C (GCC) version 4.8.5 20150623 (Red Hat 4.8.5-16) (x86_64-redhat-linux)
#	compiled by GNU C version 4.8.5 20150623 (Red Hat 4.8.5-16), GMP version 6.0.0, MPFR version 3.1.1, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  ../source/linpack.c -mtune=generic -march=x86-64
# -auxbase-strip ../asm/linpack.gcc.opt3.asm -O3 -fverbose-asm
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
# -maccumulate-outgoing-args -malign-stringops -mfancy-math-387
# -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4
# -mpush-args -mred-zone -msse -msse2 -mtls-direct-seg-refs

	.text
	.p2align 4,,15
	.type	daxpy.part.0, @function
daxpy.part.0:
.LFB37:
	.cfi_startproc
	movl	%edi, %eax	# n, tmp160
	sarl	$31, %eax	#, tmp160
	shrl	$30, %eax	#, tmp160
	leal	(%rdi,%rax), %r8d	#, tmp163
	andl	$3, %r8d	#, tmp163
	subl	%eax, %r8d	# tmp160, tmp163
	xorl	%eax, %eax	# ivtmp.121
	testl	%r8d, %r8d	# tmp163
	jle	.L5	#,
.L15:
	movsd	(%rsi,%rax,8), %xmm1	# MEM[base: dx_9(D), index: ivtmp.121_124, step: 8, offset: 0B], D.4872
	mulsd	%xmm0, %xmm1	# da, D.4872
	addsd	(%rdx,%rax,8), %xmm1	# MEM[base: dy_6(D), index: ivtmp.121_124, step: 8, offset: 0B], D.4872
	movsd	%xmm1, (%rdx,%rax,8)	# D.4872, MEM[base: dy_6(D), index: ivtmp.121_124, step: 8, offset: 0B]
	addq	$1, %rax	#, ivtmp.121
	cmpl	%eax, %r8d	# ivtmp.121, tmp163
	jg	.L15	#,
.L5:
	cmpl	%r8d, %edi	# tmp163, n
	jle	.L19	#,
	subl	$1, %edi	#, D.4878
	movslq	%r8d, %r9	# tmp163, D.4877
	subl	%r8d, %edi	# tmp163, D.4878
	leaq	0(,%r9,8), %rax	#, D.4877
	shrl	$2, %edi	#,
	leal	1(%rdi), %r10d	#, D.4878
	leaq	(%rsi,%rax), %r8	#, batmp.23
	leaq	(%rdx,%rax), %rcx	#, batmp.26
	cmpl	$2, %r10d	#, D.4878
	jbe	.L7	#,
	leaq	32(%r8), %r10	#, D.4876
	cmpq	%r10, %rcx	# D.4876, batmp.26
	leaq	32(%rcx), %r10	#, D.4876
	setnb	%r11b	#, D.4875
	cmpq	%r10, %r8	# D.4876, batmp.23
	setnb	%r10b	#, D.4875
	orb	%r10b, %r11b	# D.4875, tmp207
	je	.L7	#,
	movl	%edi, %edx	# D.4878, D.4874
	unpcklpd	%xmm0, %xmm0	# vect_cst_.44
	addq	$1, %rdx	#, D.4874
	xorl	%eax, %eax	# ivtmp.97
	salq	$5, %rdx	#, D.4874
	.p2align 4,,10
	.p2align 3
.L9:
	movsd	16(%r8,%rax), %xmm2	# MEM[base: batmp.23_103, index: ivtmp.97_88, offset: 16B], vect_var_.43
	movsd	(%r8,%rax), %xmm3	# MEM[base: batmp.23_103, index: ivtmp.97_88, offset: 0B], vect_var_.43
	movhpd	24(%r8,%rax), %xmm2	# MEM[base: batmp.23_103, index: ivtmp.97_88, offset: 16B], vect_var_.43
	movsd	16(%rcx,%rax), %xmm1	# MEM[base: batmp.26_99, index: ivtmp.97_88, offset: 16B], vect_var_.46
	movhpd	8(%r8,%rax), %xmm3	# MEM[base: batmp.23_103, index: ivtmp.97_88, offset: 0B], vect_var_.43
	mulpd	%xmm0, %xmm2	# vect_cst_.44, vect_var_.43
	movhpd	24(%rcx,%rax), %xmm1	# MEM[base: batmp.26_99, index: ivtmp.97_88, offset: 16B], vect_var_.46
	mulpd	%xmm0, %xmm3	# vect_cst_.44, vect_var_.43
	addpd	%xmm2, %xmm1	# vect_var_.43, vect_var_.46
	movsd	(%rcx,%rax), %xmm2	# MEM[base: batmp.26_99, index: ivtmp.97_88, offset: 0B], vect_var_.46
	movhpd	8(%rcx,%rax), %xmm2	# MEM[base: batmp.26_99, index: ivtmp.97_88, offset: 0B], vect_var_.46
	addpd	%xmm3, %xmm2	# vect_var_.43, vect_var_.46
	movlpd	%xmm1, 16(%rcx,%rax)	# vect_var_.46, MEM[base: batmp.26_99, index: ivtmp.97_88, offset: 16B]
	movhpd	%xmm1, 24(%rcx,%rax)	# vect_var_.46, MEM[base: batmp.26_99, index: ivtmp.97_88, offset: 16B]
	movlpd	%xmm2, (%rcx,%rax)	# vect_var_.46, MEM[base: batmp.26_99, index: ivtmp.97_88, offset: 0B]
	movhpd	%xmm2, 8(%rcx,%rax)	# vect_var_.46, MEM[base: batmp.26_99, index: ivtmp.97_88, offset: 0B]
	addq	$32, %rax	#, ivtmp.97
	cmpq	%rdx, %rax	# D.4874, ivtmp.97
	jne	.L9	#,
	rep ret
	.p2align 4,,10
	.p2align 3
.L7:
	leaq	8(%rax), %rcx	#, D.4874
	leaq	(%rdx,%rcx), %rax	#, ivtmp.86
	addq	%rsi, %rcx	# dx, ivtmp.87
	leaq	(%r9,%rdi,4), %rsi	#, D.4873
	leaq	40(%rdx,%rsi,8), %rdx	#, D.4873
	.p2align 4,,10
	.p2align 3
.L10:
	movsd	-8(%rcx), %xmm1	# MEM[base: _10, offset: -8B], D.4872
	addq	$32, %rax	#, ivtmp.86
	addq	$32, %rcx	#, ivtmp.87
	mulsd	%xmm0, %xmm1	# da, D.4872
	addsd	-40(%rax), %xmm1	# MEM[base: _8, offset: -8B], D.4872
	movsd	%xmm1, -40(%rax)	# D.4872, MEM[base: _8, offset: -8B]
	movsd	-32(%rcx), %xmm1	# MEM[base: _10, offset: 0B], D.4872
	mulsd	%xmm0, %xmm1	# da, D.4872
	addsd	-32(%rax), %xmm1	# MEM[base: _8, offset: 0B], D.4872
	movsd	%xmm1, -32(%rax)	# D.4872, MEM[base: _8, offset: 0B]
	movsd	-24(%rcx), %xmm1	# MEM[base: _10, offset: 8B], D.4872
	mulsd	%xmm0, %xmm1	# da, D.4872
	addsd	-24(%rax), %xmm1	# MEM[base: _8, offset: 8B], D.4872
	movsd	%xmm1, -24(%rax)	# D.4872, MEM[base: _8, offset: 8B]
	movsd	-16(%rcx), %xmm1	# MEM[base: _10, offset: 16B], D.4872
	mulsd	%xmm0, %xmm1	# da, D.4872
	addsd	-16(%rax), %xmm1	# MEM[base: _8, offset: 16B], D.4872
	movsd	%xmm1, -16(%rax)	# D.4872, MEM[base: _8, offset: 16B]
	cmpq	%rdx, %rax	# D.4873, ivtmp.86
	jne	.L10	#,
	rep ret
	.p2align 4,,10
	.p2align 3
.L19:
	rep ret
	.cfi_endproc
.LFE37:
	.size	daxpy.part.0, .-daxpy.part.0
	.p2align 4,,15
	.type	ddot.constprop.4, @function
ddot.constprop.4:
.LFB38:
	.cfi_startproc
	testl	%edi, %edi	# n
	movq	%rdx, %rcx	# dy, dy
	jle	.L27	#,
	movl	%edi, %eax	# n, tmp128
	movl	$1717986919, %r9d	#, tmp104
	imull	%r9d	# tmp104
	movl	%edi, %eax	# n, tmp106
	sarl	$31, %eax	#, tmp106
	sarl	%edx	# i
	subl	%eax, %edx	# tmp106, i
	leal	(%rdx,%rdx,4), %eax	#, tmp109
	movl	%edi, %edx	# n, i
	subl	%eax, %edx	# tmp109, i
	je	.L28	#,
	xorpd	%xmm0, %xmm0	# dtemp
	xorl	%r8d, %r8d	# ivtmp.153
	.p2align 4,,10
	.p2align 3
.L24:
	movsd	(%rsi,%r8,8), %xmm1	# MEM[base: dx_12(D), index: ivtmp.153_41, step: 8, offset: 0B], D.4903
	mulsd	(%rcx,%r8,8), %xmm1	# MEM[base: dy_18(D), index: ivtmp.153_41, step: 8, offset: 0B], D.4903
	addq	$1, %r8	#, ivtmp.153
	cmpl	%r8d, %edx	# ivtmp.153, i
	addsd	%xmm1, %xmm0	# D.4903, dtemp
	jg	.L24	#,
	cmpl	%edx, %edi	# i, n
	jle	.L29	#,
.L22:
	movslq	%edx, %rax	# i, D.4906
	leaq	8(,%rax,8), %rax	#, D.4906
	addq	%rax, %rsi	# D.4906, ivtmp.144
	addq	%rax, %rcx	# D.4906, ivtmp.145
	.p2align 4,,10
	.p2align 3
.L26:
	movsd	-8(%rsi), %xmm1	# MEM[base: _189, offset: -8B], D.4903
	addl	$5, %edx	#, i
	addq	$40, %rsi	#, ivtmp.144
	addq	$40, %rcx	#, ivtmp.145
	mulsd	-48(%rcx), %xmm1	# MEM[base: _188, offset: -8B], D.4903
	addsd	%xmm1, %xmm0	# D.4903, dtemp
	movsd	-40(%rsi), %xmm1	# MEM[base: _189, offset: 0B], D.4903
	mulsd	-40(%rcx), %xmm1	# MEM[base: _188, offset: 0B], D.4903
	addsd	%xmm1, %xmm0	# D.4903, dtemp
	movsd	-32(%rsi), %xmm1	# MEM[base: _189, offset: 8B], D.4903
	mulsd	-32(%rcx), %xmm1	# MEM[base: _188, offset: 8B], D.4903
	addsd	%xmm1, %xmm0	# D.4903, dtemp
	movsd	-24(%rsi), %xmm1	# MEM[base: _189, offset: 16B], D.4903
	mulsd	-24(%rcx), %xmm1	# MEM[base: _188, offset: 16B], D.4903
	addsd	%xmm1, %xmm0	# D.4903, dtemp
	movsd	-16(%rsi), %xmm1	# MEM[base: _189, offset: 24B], D.4903
	mulsd	-16(%rcx), %xmm1	# MEM[base: _188, offset: 24B], D.4903
	cmpl	%edx, %edi	# i, n
	addsd	%xmm1, %xmm0	# D.4903, dtemp
	jg	.L26	#,
	rep ret
	.p2align 4,,10
	.p2align 3
.L27:
	xorpd	%xmm0, %xmm0	# dtemp
	ret
.L28:
	xorpd	%xmm0, %xmm0	# dtemp
	.p2align 4,,4
	jmp	.L22	#
.L29:
	.p2align 4,,4
	rep ret
	.cfi_endproc
.LFE38:
	.size	ddot.constprop.4, .-ddot.constprop.4
	.p2align 4,,15
	.globl	cpu_time
	.type	cpu_time, @function
cpu_time:
.LFB24:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
	call	clock	#
	cvtsi2sdq	%rax, %xmm0	# D.4909, value
	divsd	.LC1(%rip), %xmm0	#, value
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
	jle	.L32	#,
	ucomisd	.LC0(%rip), %xmm0	#, da
	jnp	.L46	#,
.L44:
	cmpl	$1, %edx	#, incx
	jne	.L45	#,
	cmpl	$1, %r8d	#, incy
	jne	.L45	#,
	movq	%rcx, %rdx	# dy,
	jmp	daxpy.part.0	#
	.p2align 4,,10
	.p2align 3
.L46:
	jne	.L44	#,
.L32:
	rep ret
	.p2align 4,,10
	.p2align 3
.L45:
	xorl	%r9d, %r9d	# ix
	testl	%edx, %edx	# incx
	.p2align 4,,6
	js	.L47	#,
.L39:
	xorl	%eax, %eax	# iy
	testl	%r8d, %r8d	# incy
	js	.L48	#,
.L40:
	movslq	%r9d, %r9	# ix, D.4931
	movslq	%r8d, %r8	# incy, D.4931
	cltq
	movslq	%edx, %rdx	# incx, D.4931
	leaq	(%rsi,%r9,8), %rsi	#, ivtmp.173
	leaq	(%rcx,%rax,8), %rax	#, ivtmp.171
	salq	$3, %r8	#, D.4931
	salq	$3, %rdx	#, D.4931
	xorl	%ecx, %ecx	# i
	.p2align 4,,10
	.p2align 3
.L41:
	movsd	(%rsi), %xmm1	# MEM[base: _55, offset: 0B], D.4928
	addl	$1, %ecx	#, i
	addq	%rdx, %rsi	# D.4931, ivtmp.173
	mulsd	%xmm0, %xmm1	# da, D.4928
	addsd	(%rax), %xmm1	# MEM[base: _56, offset: 0B], D.4928
	movsd	%xmm1, (%rax)	# D.4928, MEM[base: _56, offset: 0B]
	addq	%r8, %rax	# D.4931, ivtmp.171
	cmpl	%edi, %ecx	# n, i
	jne	.L41	#,
	rep ret
	.p2align 4,,10
	.p2align 3
.L48:
	movb	$1, %al	#,
	subl	%edi, %eax	# n, iy
	imull	%r8d, %eax	# incy, iy
	jmp	.L40	#
	.p2align 4,,10
	.p2align 3
.L47:
	movb	$1, %r9b	#,
	subl	%edi, %r9d	# n, ix
	imull	%edx, %r9d	# incx, ix
	jmp	.L39	#
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
	jle	.L60	#,
	cmpl	$1, %edx	#, incx
	jne	.L64	#,
	cmpl	$1, %r8d	#, incy
	je	.L51	#,
.L64:
	xorl	%r9d, %r9d	# ix
	testl	%edx, %edx	# incx
	js	.L65	#,
.L53:
	xorl	%eax, %eax	# iy
	testl	%r8d, %r8d	# incy
	js	.L66	#,
.L54:
	xorpd	%xmm0, %xmm0	# dtemp
	movslq	%edx, %rdx	# incx, D.4975
	movslq	%r9d, %r9	# ix, D.4975
	movslq	%r8d, %r8	# incy, D.4975
	cltq
	leaq	(%rsi,%r9,8), %r9	#, ivtmp.186
	salq	$3, %rdx	#, D.4975
	leaq	(%rcx,%rax,8), %rsi	#, ivtmp.188
	salq	$3, %r8	#, D.4975
	xorl	%ecx, %ecx	# i
	.p2align 4,,10
	.p2align 3
.L55:
	movsd	(%r9), %xmm1	# MEM[base: _256, offset: 0B], D.4972
	addl	$1, %ecx	#, i
	addq	%rdx, %r9	# D.4975, ivtmp.186
	mulsd	(%rsi), %xmm1	# MEM[base: _255, offset: 0B], D.4972
	addq	%r8, %rsi	# D.4975, ivtmp.188
	cmpl	%edi, %ecx	# n, i
	addsd	%xmm1, %xmm0	# D.4972, dtemp
	jne	.L55	#,
	rep ret
	.p2align 4,,10
	.p2align 3
.L51:
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
	je	.L63	#,
	xorpd	%xmm0, %xmm0	# dtemp
	xorl	%r8d, %r8d	# ivtmp.207
	.p2align 4,,10
	.p2align 3
.L58:
	movsd	(%rsi,%r8,8), %xmm1	# MEM[base: dx_25(D), index: ivtmp.207_50, step: 8, offset: 0B], D.4972
	mulsd	(%rcx,%r8,8), %xmm1	# MEM[base: dy_31(D), index: ivtmp.207_50, step: 8, offset: 0B], D.4972
	addq	$1, %r8	#, ivtmp.207
	cmpl	%r8d, %edx	# ivtmp.207, i
	addsd	%xmm1, %xmm0	# D.4972, dtemp
	jg	.L58	#,
	cmpl	%edx, %edi	# i, n
	jle	.L67	#,
.L56:
	movslq	%edx, %rax	# i, D.4971
	leaq	8(,%rax,8), %rax	#, D.4971
	addq	%rax, %rsi	# D.4971, ivtmp.198
	addq	%rax, %rcx	# D.4971, ivtmp.199
	.p2align 4,,10
	.p2align 3
.L59:
	movsd	-8(%rsi), %xmm1	# MEM[base: _247, offset: -8B], D.4972
	addl	$5, %edx	#, i
	addq	$40, %rsi	#, ivtmp.198
	addq	$40, %rcx	#, ivtmp.199
	mulsd	-48(%rcx), %xmm1	# MEM[base: _246, offset: -8B], D.4972
	addsd	%xmm1, %xmm0	# D.4972, dtemp
	movsd	-40(%rsi), %xmm1	# MEM[base: _247, offset: 0B], D.4972
	mulsd	-40(%rcx), %xmm1	# MEM[base: _246, offset: 0B], D.4972
	addsd	%xmm1, %xmm0	# D.4972, dtemp
	movsd	-32(%rsi), %xmm1	# MEM[base: _247, offset: 8B], D.4972
	mulsd	-32(%rcx), %xmm1	# MEM[base: _246, offset: 8B], D.4972
	addsd	%xmm1, %xmm0	# D.4972, dtemp
	movsd	-24(%rsi), %xmm1	# MEM[base: _247, offset: 16B], D.4972
	mulsd	-24(%rcx), %xmm1	# MEM[base: _246, offset: 16B], D.4972
	addsd	%xmm1, %xmm0	# D.4972, dtemp
	movsd	-16(%rsi), %xmm1	# MEM[base: _247, offset: 24B], D.4972
	mulsd	-16(%rcx), %xmm1	# MEM[base: _246, offset: 24B], D.4972
	cmpl	%edx, %edi	# i, n
	addsd	%xmm1, %xmm0	# D.4972, dtemp
	jg	.L59	#,
	rep ret
	.p2align 4,,10
	.p2align 3
.L60:
	xorpd	%xmm0, %xmm0	# dtemp
	ret
	.p2align 4,,10
	.p2align 3
.L66:
	movb	$1, %al	#,
	subl	%edi, %eax	# n, iy
	imull	%r8d, %eax	# incy, iy
	jmp	.L54	#
	.p2align 4,,10
	.p2align 3
.L65:
	movb	$1, %r9b	#,
	subl	%edi, %r9d	# n, ix
	imull	%edx, %r9d	# incx, ix
	jmp	.L53	#
.L67:
	rep ret
.L63:
	xorpd	%xmm0, %xmm0	# dtemp
	jmp	.L56	#
	.cfi_endproc
.LFE26:
	.size	ddot, .-ddot
	.p2align 4,,15
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
	movl	%edx, %ebp	# n, n
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$152, %rsp	#,
	.cfi_def_cfa_offset 208
	cmpl	$1, %edx	#, n
	movq	%rdi, 24(%rsp)	# a, %sfp
	movl	%esi, 120(%rsp)	# lda, %sfp
	movq	%rcx, 72(%rsp)	# ipvt, %sfp
	jle	.L143	#,
	movslq	%esi, %rax	# lda,
	xorpd	%xmm1, %xmm1	# tmp406
	leal	1(%rax), %esi	#, D.5133
	movq	%rax, %rdi	# D.5132, D.5132
	movq	%rax, 104(%rsp)	# D.5132, %sfp
	addq	$1, %rax	#, D.5132
	movl	$1, %r13d	#, ivtmp.331
	xorl	%r11d, %r11d	# ivtmp.320
	movq	%rax, 96(%rsp)	# D.5132, %sfp
	salq	$3, %rax	#, D.5132
	movl	%esi, 136(%rsp)	# D.5133, %sfp
	movq	%rax, 88(%rsp)	# D.5132, %sfp
	leal	-1(%rdx), %esi	#, D.5133
	movq	%rax, %rdx	# D.5132, D.5132
	movq	24(%rsp), %rax	# %sfp, a
	movq	%rdi, 80(%rsp)	# D.5132, %sfp
	movq	%r11, %r14	# ivtmp.320, ivtmp.320
	movl	%esi, 140(%rsp)	# D.5133, %sfp
	movl	%esi, %r12d	# D.5133, ivtmp.325
	movl	$0, 12(%rsp)	#, %sfp
	movq	$1, 56(%rsp)	#, %sfp
	movl	$0, 124(%rsp)	#, %sfp
	movq	%rax, %rsi	# a, ivtmp.329
	leaq	8(%rax), %rbx	#, ivtmp.326
	movq	%rax, 16(%rsp)	# a, %sfp
	movq	%rdx, %rax	# D.5132, D.5132
	addq	%rdx, %rsi	# D.5132, ivtmp.329
	movq	%r13, (%rsp)	# ivtmp.331, %sfp
	subq	$8, %rax	#, D.5134
	movq	%rsi, 40(%rsp)	# ivtmp.329, %sfp
	movq	%rax, %r15	# D.5134, D.5134
	.p2align 4,,10
	.p2align 3
.L109:
	movl	%ebp, %r9d	# n, D.5133
	movl	(%rsp), %r8d	# %sfp, n
	movl	%r14d, 32(%rsp)	# ivtmp.320, %sfp
	subl	%r14d, %r9d	# ivtmp.320, D.5133
	testl	%r9d, %r9d	# D.5133
	jle	.L113	#,
	cmpl	$1, %r9d	#, D.5133
	je	.L71	#,
	movsd	-8(%rbx), %xmm2	# MEM[base: _464, offset: -8B], dmax
	ucomisd	%xmm1, %xmm2	# tmp406, dmax
	jb	.L144	#,
.L72:
	movq	%rbx, %rdx	# ivtmp.326, ivtmp.315
	movl	$2, %eax	#, ivtmp.318
	movl	$1, %esi	#, value
	jmp	.L76	#
	.p2align 4,,10
	.p2align 3
.L73:
	ucomisd	%xmm2, %xmm3	# dmax, dmax
	movl	%eax, %ecx	# ivtmp.318, D.5133
	jbe	.L75	#,
	ucomisd	%xmm1, %xmm0	# tmp406, dmax
	movl	%eax, %esi	# ivtmp.318, value
	movl	%eax, %ecx	# ivtmp.318, D.5133
	movapd	%xmm0, %xmm2	# dmax, dmax
	jb	.L145	#,
.L75:
	addq	$8, %rdx	#, ivtmp.315
	addl	$1, %eax	#, ivtmp.318
	cmpl	%r9d, %ecx	# D.5133, D.5133
	jge	.L146	#,
.L76:
	movsd	(%rdx), %xmm0	# MEM[base: _119, offset: 0B], dmax
	ucomisd	%xmm1, %xmm0	# tmp406, dmax
	movapd	%xmm0, %xmm3	# dmax, dmax
	jnb	.L73	#,
	xorpd	.LC2(%rip), %xmm3	#, dmax
	jmp	.L73	#
	.p2align 4,,10
	.p2align 3
.L146:
	movl	%esi, %r9d	# value, D.5133
.L71:
	addl	%r8d, %r9d	# n, D.5133
	movq	72(%rsp), %rax	# %sfp, ipvt
	movq	24(%rsp), %rdi	# %sfp, a
	leal	-1(%r9), %esi	#, l
	leal	-2(%r9), %r11d	#, D.5133
	movl	%esi, (%rax,%r14,4)	# l, MEM[base: ipvt_30(D), index: ivtmp.320_201, step: 4, offset: 0B]
	movl	12(%rsp), %eax	# %sfp, ivtmp.340
	addl	%r11d, %eax	# D.5133, D.5133
	cltq
	leaq	(%rdi,%rax,8), %rax	#, D.5135
	movsd	(%rax), %xmm2	# *_37, D.5136
	ucomisd	%xmm1, %xmm2	# tmp406, D.5136
	jp	.L77	#,
	jne	.L77	#,
	movl	(%rsp), %eax	# %sfp, tmp512
	movl	%r8d, 124(%rsp)	# n, %sfp
	leal	1(%rax), %r13d	#, D.5133
	leal	-1(%r12), %eax	#, ivtmp.325
	movl	%eax, 48(%rsp)	# ivtmp.325, %sfp
	movl	%eax, %r12d	# ivtmp.325, ivtmp.325
.L79:
	movq	88(%rsp), %rax	# %sfp, D.5132
	addq	$1, %r14	#, ivtmp.320
	addq	%rax, 40(%rsp)	# D.5132, %sfp
	addq	%rax, 16(%rsp)	# D.5132, %sfp
	movq	96(%rsp), %rdi	# %sfp, D.5132
	addq	$1, (%rsp)	#, %sfp
	addq	%rax, %rbx	# D.5132, ivtmp.326
	addq	%rdi, 56(%rsp)	# D.5132, %sfp
	movl	120(%rsp), %eax	# %sfp, lda
	addl	%eax, 12(%rsp)	# lda, %sfp
	movq	104(%rsp), %rax	# %sfp, D.5132
	addq	%rax, 80(%rsp)	# D.5132, %sfp
	cmpl	%r13d, %ebp	# D.5133, n
	jg	.L109	#,
.L70:
	movq	72(%rsp), %rsi	# %sfp, ipvt
	movslq	%ebp, %rax	# n, D.5134
	movl	%ebp, -4(%rsi,%rax,4)	# n, *_81
	movl	140(%rsp), %eax	# %sfp, D.5133
	imull	136(%rsp), %eax	# %sfp, D.5133
	movq	24(%rsp), %rsi	# %sfp, a
	cltq
	ucomisd	(%rsi,%rax,8), %xmm1	# *_88, tmp406
	jp	.L127	#,
	jne	.L127	#,
.L130:
	addq	$152, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%ebp, %eax	# n,
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
.L145:
	.cfi_restore_state
	xorpd	.LC2(%rip), %xmm2	#, dmax
	jmp	.L75	#
	.p2align 4,,10
	.p2align 3
.L77:
	cmpl	%r8d, %esi	# n, l
	je	.L147	#,
	movq	16(%rsp), %rdi	# %sfp, ivtmp.336
	movsd	(%rdi), %xmm0	# MEM[base: _454, offset: 0B], D.5136
	movsd	%xmm0, (%rax)	# D.5136, *_37
	movsd	%xmm2, (%rdi)	# D.5136, MEM[base: _454, offset: 0B]
.L81:
	movsd	.LC3(%rip), %xmm0	#, t
	testl	%r12d, %r12d	# ivtmp.325
	divsd	%xmm2, %xmm0	# D.5136, t
	jle	.L139	#,
	movl	$1717986919, %ecx	#, tmp324
	movl	%r12d, %eax	# ivtmp.325, tmp489
	imull	%ecx	# tmp324
	movl	%r12d, %eax	# ivtmp.325, tmp326
	sarl	$31, %eax	#, tmp326
	movl	%edx, %ecx	# i, i
	sarl	%ecx	# i
	subl	%eax, %ecx	# tmp326, i
	leal	(%rcx,%rcx,4), %eax	#, tmp329
	movl	%r12d, %ecx	# ivtmp.325, i
	subl	%eax, %ecx	# tmp329, i
	testl	%ecx, %ecx	# i
	jle	.L94	#,
	movq	%rbx, %rax	# ivtmp.326, D.5141
	movl	%ecx, %edx	# i, prologue_after_cost_adjust.242
	salq	$60, %rax	#, D.5141
	shrq	$63, %rax	#, D.5140
	cmpl	%ecx, %eax	# i, D.5140
	cmova	%ecx, %eax	# D.5140,, i, prolog_loop_niters.241
	cmpl	$4, %ecx	#, i
	je	.L148	#,
.L87:
	movsd	(%rbx), %xmm2	# MEM[base: _54, offset: 0B], D.5136
	cmpl	$1, %edx	#, prologue_after_cost_adjust.242
	movl	$1, %r10d	#, i
	mulsd	%xmm0, %xmm2	# t, D.5136
	movsd	%xmm2, (%rbx)	# D.5136, MEM[base: _54, offset: 0B]
	je	.L89	#,
	movsd	8(%rbx), %xmm2	# MEM[base: _54, offset: 8B], D.5136
	cmpl	$3, %edx	#, prologue_after_cost_adjust.242
	movb	$2, %r10b	#,
	mulsd	%xmm0, %xmm2	# t, D.5136
	movsd	%xmm2, 8(%rbx)	# D.5136, MEM[base: _54, offset: 8B]
	jne	.L89	#,
	movsd	16(%rbx), %xmm2	# MEM[base: _54, offset: 16B], D.5136
	movb	$3, %r10b	#,
	mulsd	%xmm0, %xmm2	# t, D.5136
	movsd	%xmm2, 16(%rbx)	# D.5136, MEM[base: _54, offset: 16B]
.L89:
	cmpl	%edx, %ecx	# prologue_after_cost_adjust.242, i
	je	.L94	#,
	movl	%ecx, %r13d	# i, niters.244
	movl	%edx, %eax	# prologue_after_cost_adjust.242, prolog_loop_adjusted_niters.243
	subl	%edx, %r13d	# prologue_after_cost_adjust.242, niters.244
	movl	%r13d, %r9d	# niters.244, bnd.245
	shrl	%r9d	# bnd.245
	movl	%r9d, %edi	# bnd.245, ratio_mult_vf.246
	addl	%edi, %edi	# ratio_mult_vf.246
	movl	%edi, 48(%rsp)	# ratio_mult_vf.246, %sfp
	jne	.L112	#,
.L91:
	movslq	%r10d, %r10	# i, D.5134
	leaq	(%rbx,%r10,8), %rax	#, D.5135
	movsd	(%rax), %xmm2	# *_358, D.5136
	mulsd	%xmm0, %xmm2	# t, D.5136
	movsd	%xmm2, (%rax)	# D.5136, *_358
.L94:
	cmpl	%ecx, %r12d	# i, ivtmp.325
	jle	.L139	#,
.L85:
	leal	-1(%r12), %eax	#, ivtmp.325
	movl	$-858993459, %edx	#, tmp351
	movl	%eax, %edi	# ivtmp.325, D.5140
	movl	%eax, 48(%rsp)	# ivtmp.325, %sfp
	subl	%ecx, %edi	# i, D.5140
	movl	%edi, %eax	# D.5140, tmp490
	mull	%edx	# tmp351
	shrl	$2, %edx	#, D.5140
	leal	1(%rdx), %edi	#, niters.214
	movl	%edi, %r9d	# niters.214, bnd.215
	shrl	%r9d	# bnd.215
	movl	%r9d, %r10d	# bnd.215, ratio_mult_vf.216
	addl	%r10d, %r10d	# ratio_mult_vf.216
	je	.L96	#,
	cmpl	$1, %edi	#, niters.214
	jbe	.L96	#,
	movslq	%ecx, %rax	# i, D.5132
	addq	56(%rsp), %rax	# %sfp, D.5132
	movq	24(%rsp), %rdx	# %sfp, a
	movapd	%xmm0, %xmm2	# t, vect_cst_.228
	xorl	%r13d, %r13d	# ivtmp.289
	unpcklpd	%xmm2, %xmm2	# vect_cst_.228
	leaq	(%rdx,%rax,8), %rax	#, ivtmp.293
	movq	%rax, %rdx	# ivtmp.293, ivtmp.296
.L99:
	movsd	16(%rax), %xmm6	# MEM[base: _67, offset: 16B], vect_var_.227
	addl	$1, %r13d	#, ivtmp.289
	addq	$80, %rax	#, ivtmp.293
	movsd	-48(%rax), %xmm5	# MEM[base: _67, offset: 32B], vect_var_.227
	addq	$80, %rdx	#, ivtmp.296
	movsd	-32(%rax), %xmm4	# MEM[base: _67, offset: 48B], vect_var_.227
	movhpd	-56(%rax), %xmm6	# MEM[base: _67, offset: 16B], vect_var_.227
	movsd	-16(%rax), %xmm3	# MEM[base: _67, offset: 64B], vect_var_.227
	movhpd	-40(%rax), %xmm5	# MEM[base: _67, offset: 32B], vect_var_.227
	movsd	-80(%rax), %xmm7	# MEM[base: _67, offset: 0B], vect_var_.227
	movhpd	-24(%rax), %xmm4	# MEM[base: _67, offset: 48B], vect_var_.227
	movhpd	-8(%rax), %xmm3	# MEM[base: _67, offset: 64B], vect_var_.227
	mulpd	%xmm2, %xmm6	# vect_cst_.228, vect_var_.227
	movhpd	-72(%rax), %xmm7	# MEM[base: _67, offset: 0B], vect_var_.227
	mulpd	%xmm2, %xmm5	# vect_cst_.228, vect_var_.227
	mulpd	%xmm2, %xmm4	# vect_cst_.228, vect_var_.227
	movlpd	%xmm6, -64(%rdx)	# vect_var_.227, MEM[base: _398, offset: 16B]
	mulpd	%xmm2, %xmm3	# vect_cst_.228, vect_var_.227
	movhpd	%xmm6, -56(%rdx)	# vect_var_.227, MEM[base: _398, offset: 16B]
	movlpd	%xmm5, -48(%rdx)	# vect_var_.227, MEM[base: _398, offset: 32B]
	mulpd	%xmm2, %xmm7	# vect_cst_.228, vect_var_.227
	movhpd	%xmm5, -40(%rdx)	# vect_var_.227, MEM[base: _398, offset: 32B]
	movlpd	%xmm4, -32(%rdx)	# vect_var_.227, MEM[base: _398, offset: 48B]
	movhpd	%xmm4, -24(%rdx)	# vect_var_.227, MEM[base: _398, offset: 48B]
	movlpd	%xmm3, -16(%rdx)	# vect_var_.227, MEM[base: _398, offset: 64B]
	movhpd	%xmm3, -8(%rdx)	# vect_var_.227, MEM[base: _398, offset: 64B]
	movlpd	%xmm7, -80(%rdx)	# vect_var_.227, MEM[base: _398, offset: 0B]
	movhpd	%xmm7, -72(%rdx)	# vect_var_.227, MEM[base: _398, offset: 0B]
	cmpl	%r9d, %r13d	# bnd.215, ivtmp.289
	jb	.L99	#,
	leal	(%r10,%r10,4), %eax	#, D.5133
	addl	%eax, %ecx	# D.5133, i
	cmpl	%r10d, %edi	# ratio_mult_vf.216, niters.214
	je	.L86	#,
.L96:
	movslq	%ecx, %rcx	# i, D.5134
	salq	$3, %rcx	#, D.5134
	leaq	(%rbx,%rcx), %rax	#, D.5135
	movsd	(%rax), %xmm2	# *_39, D.5136
	mulsd	%xmm0, %xmm2	# t, D.5136
	movsd	%xmm2, (%rax)	# D.5136, *_39
	leaq	8(%rcx,%rbx), %rax	#, D.5135
	movsd	(%rax), %xmm2	# *_72, D.5136
	mulsd	%xmm0, %xmm2	# t, D.5136
	movsd	%xmm2, (%rax)	# D.5136, *_72
	leaq	16(%rcx,%rbx), %rax	#, D.5135
	movsd	(%rax), %xmm2	# *_219, D.5136
	mulsd	%xmm0, %xmm2	# t, D.5136
	movsd	%xmm2, (%rax)	# D.5136, *_219
	leaq	24(%rcx,%rbx), %rax	#, D.5135
	movsd	(%rax), %xmm2	# *_213, D.5136
	mulsd	%xmm0, %xmm2	# t, D.5136
	movsd	%xmm2, (%rax)	# D.5136, *_213
	leaq	32(%rcx,%rbx), %rax	#, D.5135
	mulsd	(%rax), %xmm0	# *_207, D.5136
	movsd	%xmm0, (%rax)	# D.5136, *_207
.L86:
	movl	(%rsp), %eax	# %sfp, tmp519
	addl	$1, %eax	#, j
	movl	%eax, 52(%rsp)	# j, %sfp
	movl	32(%rsp), %eax	# %sfp, D.5140
	addl	$2, %eax	#, D.5140
	cmpl	%eax, %ebp	# D.5140, n
	jl	.L137	#,
	cmpl	%r8d, %esi	# n, l
	je	.L149	#,
	testl	%r12d, %r12d	# ivtmp.325
	jle	.L104	#,
	movq	(%rsp), %rsi	# %sfp, ivtmp.331
	movq	40(%rsp), %rax	# %sfp, ivtmp.280
	movq	%r14, %r13	# ivtmp.320, D.5132
	movl	52(%rsp), %ecx	# %sfp, j
	movslq	%r11d, %r9	# D.5133, D.5132
	movq	%r14, 128(%rsp)	# ivtmp.320, %sfp
	movl	%r12d, 112(%rsp)	# ivtmp.325, %sfp
	movq	%rbx, 64(%rsp)	# ivtmp.326, %sfp
	subq	%rsi, %r13	# ivtmp.331, D.5132
	subq	%rsi, %r9	# ivtmp.331, D.5132
	movq	%rax, %r12	# ivtmp.280, ivtmp.280
	movq	%r13, %r14	# D.5132, D.5132
	movq	%r9, %rbx	# D.5132, D.5132
	movl	%ecx, %r13d	# j, j
	jmp	.L107	#
	.p2align 4,,10
	.p2align 3
.L126:
	movq	64(%rsp), %rsi	# %sfp,
	movl	112(%rsp), %edi	# %sfp,
	movq	%r12, %rdx	# ivtmp.280,
	addl	$1, %r13d	#, j
	movsd	%xmm1, 32(%rsp)	# tmp406, %sfp
	addq	%r15, %r12	# D.5134, ivtmp.280
	call	daxpy.part.0	#
	cmpl	%r13d, %ebp	# j, n
	movsd	32(%rsp), %xmm1	# %sfp, tmp406
	jl	.L150	#,
.L107:
	movsd	(%r12,%rbx,8), %xmm0	# MEM[base: _297, index: _154, step: 8, offset: 0B], t
	movsd	(%r12,%r14,8), %xmm2	# MEM[base: _297, index: _159, step: 8, offset: 0B], D.5136
	ucomisd	%xmm1, %xmm0	# tmp406, t
	movsd	%xmm2, (%r12,%rbx,8)	# D.5136, MEM[base: _297, index: _154, step: 8, offset: 0B]
	movsd	%xmm0, (%r12,%r14,8)	# t, MEM[base: _297, index: _159, step: 8, offset: 0B]
	jp	.L126	#,
	jne	.L126	#,
	addl	$1, %r13d	#, j
	addq	%r15, %r12	# D.5134, ivtmp.280
	cmpl	%r13d, %ebp	# j, n
	jge	.L107	#,
.L150:
	movq	128(%rsp), %r14	# %sfp, ivtmp.320
	movq	64(%rsp), %rbx	# %sfp, ivtmp.326
	movl	52(%rsp), %r13d	# %sfp, D.5133
	movl	48(%rsp), %r12d	# %sfp, ivtmp.325
	jmp	.L79	#
	.p2align 4,,10
	.p2align 3
.L113:
	xorl	%r9d, %r9d	# D.5133
	jmp	.L71	#
	.p2align 4,,10
	.p2align 3
.L148:
	testl	%eax, %eax	# prolog_loop_niters.241
	jne	.L151	#,
	xorl	%eax, %eax	# prolog_loop_adjusted_niters.243
	movl	$4, %r13d	#, niters.244
	movl	$2, %r9d	#, bnd.245
	movl	$4, 48(%rsp)	#, %sfp
	xorl	%r10d, %r10d	# i
.L112:
	movapd	%xmm0, %xmm3	# t, vect_cst_.254
	leaq	(%rbx,%rax,8), %rdi	#, vect_p.251
	xorl	%edx, %edx	# ivtmp.305
	xorl	%eax, %eax	# ivtmp.308
	unpcklpd	%xmm3, %xmm3	# vect_cst_.254
.L95:
	movapd	(%rdi,%rax), %xmm2	# MEM[base: vect_p.251_377, index: ivtmp.308_248, offset: 0B], vect_var_.253
	addl	$1, %edx	#, ivtmp.305
	mulpd	%xmm3, %xmm2	# vect_cst_.254, vect_var_.253
	movapd	%xmm2, (%rdi,%rax)	# vect_var_.253, MEM[base: vect_p.251_377, index: ivtmp.308_248, offset: 0B]
	addq	$16, %rax	#, ivtmp.308
	cmpl	%r9d, %edx	# bnd.245, ivtmp.305
	jb	.L95	#,
	movl	48(%rsp), %eax	# %sfp, ratio_mult_vf.246
	addl	%eax, %r10d	# ratio_mult_vf.246, i
	cmpl	%eax, %r13d	# ratio_mult_vf.246, niters.244
	jne	.L91	#,
	cmpl	%ecx, %r12d	# i, ivtmp.325
	jg	.L85	#,
	.p2align 4,,10
	.p2align 3
.L139:
	leal	-1(%r12), %eax	#, ivtmp.325
	movl	%eax, 48(%rsp)	# ivtmp.325, %sfp
	jmp	.L86	#
	.p2align 4,,10
	.p2align 3
.L147:
	movq	16(%rsp), %rax	# %sfp, ivtmp.336
	movsd	(%rax), %xmm2	# MEM[base: _453, offset: 0B], D.5136
	jmp	.L81	#
	.p2align 4,,10
	.p2align 3
.L104:
	movq	80(%rsp), %rax	# %sfp, ivtmp.341
	movq	24(%rsp), %rsi	# %sfp, a
	movslq	%r11d, %rcx	# D.5133, D.5134
	movq	%r14, %rdi	# ivtmp.320, D.5132
	movl	52(%rsp), %edx	# %sfp, j
	subq	%rcx, %rdi	# D.5134, D.5132
	addq	%rcx, %rax	# D.5134, D.5134
	movq	%rdi, %rcx	# D.5132, D.5132
	leaq	(%rsi,%rax,8), %rax	#, ivtmp.285
	leal	1(%rbp), %esi	#, D.5133
	.p2align 4,,10
	.p2align 3
.L108:
	movsd	(%rax), %xmm0	# MEM[base: _226, offset: 0B], t
	addl	$1, %edx	#, j
	movsd	(%rax,%rcx,8), %xmm2	# MEM[base: _226, index: _135, step: 8, offset: 0B], D.5136
	movsd	%xmm2, (%rax)	# D.5136, MEM[base: _226, offset: 0B]
	movsd	%xmm0, (%rax,%rcx,8)	# t, MEM[base: _226, index: _135, step: 8, offset: 0B]
	addq	%r15, %rax	# D.5134, ivtmp.285
	cmpl	%esi, %edx	# D.5133, j
	jne	.L108	#,
.L137:
	movl	52(%rsp), %r13d	# %sfp, D.5133
	movl	48(%rsp), %r12d	# %sfp, ivtmp.325
	jmp	.L79	#
	.p2align 4,,10
	.p2align 3
.L144:
	xorpd	.LC2(%rip), %xmm2	#, dmax
	jmp	.L72	#
	.p2align 4,,10
	.p2align 3
.L149:
	testl	%r12d, %r12d	# ivtmp.325
	jle	.L137	#,
	movslq	%r11d, %r13	# D.5133, D.5132
	subq	(%rsp), %r13	# %sfp, D.5132
	movq	40(%rsp), %rax	# %sfp, ivtmp.266
	movl	52(%rsp), %ecx	# %sfp, j
	movq	%r14, 112(%rsp)	# ivtmp.320, %sfp
	movl	%ebp, %r14d	# n, n
	movl	%r12d, 64(%rsp)	# ivtmp.325, %sfp
	movq	%rbx, %rbp	# ivtmp.326, ivtmp.326
	movq	%rax, %r12	# ivtmp.266, ivtmp.266
	movq	%r13, %rbx	# D.5132, D.5132
	movl	%ecx, %r13d	# j, j
	jmp	.L103	#
	.p2align 4,,10
	.p2align 3
.L125:
	movl	64(%rsp), %edi	# %sfp,
	movq	%r12, %rdx	# ivtmp.266,
	movq	%rbp, %rsi	# ivtmp.326,
	addl	$1, %r13d	#, j
	movsd	%xmm1, 32(%rsp)	# tmp406, %sfp
	addq	%r15, %r12	# D.5134, ivtmp.266
	call	daxpy.part.0	#
	cmpl	%r13d, %r14d	# j, n
	movsd	32(%rsp), %xmm1	# %sfp, tmp406
	jl	.L152	#,
.L103:
	movsd	(%r12,%rbx,8), %xmm0	# MEM[base: _150, index: _7, step: 8, offset: 0B], t
	ucomisd	%xmm1, %xmm0	# tmp406, t
	jp	.L125	#,
	jne	.L125	#,
	addl	$1, %r13d	#, j
	addq	%r15, %r12	# D.5134, ivtmp.266
	cmpl	%r13d, %r14d	# j, n
	jge	.L103	#,
.L152:
	movq	%rbp, %rbx	# ivtmp.326, ivtmp.326
	movl	52(%rsp), %r13d	# %sfp, D.5133
	movl	%r14d, %ebp	# n, n
	movl	48(%rsp), %r12d	# %sfp, ivtmp.325
	movq	112(%rsp), %r14	# %sfp, ivtmp.320
	jmp	.L79	#
	.p2align 4,,10
	.p2align 3
.L127:
	movl	124(%rsp), %ebp	# %sfp, n
	jmp	.L130	#
.L143:
	movl	%esi, %eax	# lda, D.5133
	movl	$0, 124(%rsp)	#, %sfp
	addl	$1, %eax	#, D.5133
	xorpd	%xmm1, %xmm1	# tmp406
	movl	%eax, 136(%rsp)	# D.5133, %sfp
	leal	-1(%rdx), %eax	#, D.5133
	movl	%eax, 140(%rsp)	# D.5133, %sfp
	jmp	.L70	#
.L151:
	movl	%eax, %edx	# prolog_loop_niters.241, prologue_after_cost_adjust.242
	jmp	.L87	#
	.cfi_endproc
.LFE27:
	.size	dgefa, .-dgefa
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
	movq	%r8, %r14	# b, b
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
	movq	%rcx, %rbx	# ipvt, ipvt
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 112
	testl	%r9d, %r9d	# job
	movq	%rdi, 32(%rsp)	# a, %sfp
	movl	%esi, 44(%rsp)	# lda, %sfp
	movl	%edx, 40(%rsp)	# n, %sfp
	je	.L154	#,
	testl	%edx, %edx	#
	jle	.L185	#,
	movslq	44(%rsp), %rbp	# %sfp, D.5216
	movq	32(%rsp), %r13	# %sfp, a
	leaq	0(,%rbp,8), %rax	#, D.5216
	movq	%r13, %rbp	# a, ivtmp.392
	movq	%rax, (%rsp)	# D.5216, %sfp
	addq	$8, %rax	#, D.5216
	movq	%rax, 16(%rsp)	# D.5216, %sfp
	movl	40(%rsp), %eax	# %sfp, n
	leal	-1(%rax), %r15d	#, n
	movl	%r15d, %r12d	# n, D.5221
	leaq	1(%r12), %rax	#, D.5221
	xorl	%r12d, %r12d	# ivtmp.389
	movq	%rax, 24(%rsp)	# D.5221, %sfp
	.p2align 4,,10
	.p2align 3
.L168:
	movq	%rbp, %rsi	# ivtmp.392,
	movl	%r12d, %edi	# ivtmp.389,
	movq	%r14, %rdx	# b,
	call	ddot.constprop.4	#
	movsd	(%r14,%r12,8), %xmm1	# MEM[base: b_24(D), index: ivtmp.389_95, step: 8, offset: 0B], D.5219
	addq	(%rsp), %rbp	# %sfp, ivtmp.392
	subsd	%xmm0, %xmm1	# t, D.5219
	divsd	0(%r13), %xmm1	# MEM[base: _168, offset: 0B], D.5219
	addq	16(%rsp), %r13	# %sfp, ivtmp.396
	movsd	%xmm1, (%r14,%r12,8)	# D.5219, MEM[base: b_24(D), index: ivtmp.389_95, step: 8, offset: 0B]
	addq	$1, %r12	#, ivtmp.389
	cmpq	24(%rsp), %r12	# %sfp, ivtmp.389
	jne	.L168	#,
.L167:
	testl	%r15d, %r15d	# k
	movl	%r15d, %r13d	# n, k
	jle	.L153	#,
	movl	44(%rsp), %ecx	# %sfp, lda
	movslq	%r15d, %rax	# k, D.5216
	leaq	-8(%r14,%rax,8), %rbp	#, ivtmp.378
	movl	%ecx, %edx	# lda, D.5220
	negl	%edx	# D.5220
	movslq	%edx, %rdx	# D.5220, D.5218
	leaq	-8(,%rdx,8), %rdi	#, D.5218
	movl	40(%rsp), %edx	# %sfp, D.5220
	movq	%rdi, (%rsp)	# D.5218, %sfp
	subl	$2, %edx	#, D.5220
	imull	%ecx, %edx	# lda, D.5220
	movq	32(%rsp), %rcx	# %sfp, a
	movslq	%edx, %rdx	# D.5220, D.5218
	addq	%rax, %rdx	# D.5216, D.5218
	leaq	-4(%rbx,%rax,4), %rax	#, ivtmp.384
	movl	$1, %ebx	#, ivtmp.381
	leaq	(%rcx,%rdx,8), %r15	#, ivtmp.382
	jmp	.L170	#
	.p2align 4,,10
	.p2align 3
.L186:
	movl	%r12d, %r13d	# k, k
.L170:
	leaq	8(%rbp), %rdx	#, D.5221
	movq	%r15, %rsi	# ivtmp.382,
	movl	%ebx, %edi	# ivtmp.381,
	movq	%rax, 16(%rsp)	# ivtmp.384, %sfp
	leal	-1(%r13), %r12d	#, k
	call	ddot.constprop.4	#
	movq	16(%rsp), %rax	# %sfp, ivtmp.384
	addsd	0(%rbp), %xmm0	# MEM[base: _177, offset: 0B], D.5219
	movslq	(%rax), %rdx	# MEM[base: _173, offset: 0B],
	movsd	%xmm0, 0(%rbp)	# D.5219, MEM[base: _177, offset: 0B]
	cmpl	%r13d, %edx	# k, l
	je	.L169	#,
	leaq	-8(%r14,%rdx,8), %rdx	#, D.5217
	movsd	(%rdx), %xmm1	# *_111, t
	movsd	%xmm0, (%rdx)	# D.5219, *_111
	movsd	%xmm1, 0(%rbp)	# t, MEM[base: _177, offset: 0B]
.L169:
	subq	$8, %rbp	#, ivtmp.378
	addl	$1, %ebx	#, ivtmp.381
	addq	(%rsp), %r15	# %sfp, ivtmp.382
	subq	$4, %rax	#, ivtmp.384
	testl	%r12d, %r12d	# k
	jne	.L186	#,
.L153:
	addq	$56, %rsp	#,
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
.L154:
	.cfi_restore_state
	cmpl	$1, 40(%rsp)	#, %sfp
	jle	.L187	#,
	movl	40(%rsp), %eax	# %sfp, n
	leaq	8(%r8), %r13	#, ivtmp.369
	xorl	%r12d, %r12d	# ivtmp.358
	xorpd	%xmm2, %xmm2	# tmp242
	leal	-1(%rax), %r15d	#, n
	movslq	44(%rsp), %rax	# %sfp, D.5218
	movl	%r15d, %ebp	# n, ivtmp.363
	leaq	8(,%rax,8), %r10	#, D.5218
	movq	32(%rsp), %rax	# %sfp, a
	leaq	8(%rax), %r9	#, ivtmp.366
	jmp	.L163	#
	.p2align 4,,10
	.p2align 3
.L171:
	movq	%r9, %rsi	# ivtmp.366,
	movq	%r13, %rdx	# ivtmp.369,
	movl	%ebp, %edi	# ivtmp.363,
	movsd	%xmm2, 24(%rsp)	# tmp242, %sfp
	movq	%r10, (%rsp)	# D.5218, %sfp
	movq	%r9, 16(%rsp)	# ivtmp.366, %sfp
	call	daxpy.part.0	#
	movq	(%rsp), %r10	# %sfp, D.5218
	movq	16(%rsp), %r9	# %sfp, ivtmp.366
	movsd	24(%rsp), %xmm2	# %sfp, tmp242
.L161:
	addq	$1, %r12	#, ivtmp.358
	addq	%r10, %r9	# D.5218, ivtmp.366
	addq	$8, %r13	#, ivtmp.369
	subl	$1, %ebp	#, ivtmp.363
	je	.L159	#,
.L163:
	movl	(%rbx,%r12,4), %eax	# MEM[base: ipvt_18(D), index: ivtmp.358_53, step: 4, offset: 0B], l
	leal	1(%r12), %esi	#, D.5222
	movslq	%eax, %rdx	# l, D.5216
	cmpl	%esi, %eax	# D.5222, l
	leaq	-8(%r14,%rdx,8), %rdx	#, D.5217
	movsd	(%rdx), %xmm0	# *_25, t
	je	.L160	#,
	movsd	-8(%r13), %xmm1	# MEM[base: _200, offset: -8B], D.5219
	movsd	%xmm1, (%rdx)	# D.5219, *_25
	movsd	%xmm0, -8(%r13)	# t, MEM[base: _200, offset: -8B]
.L160:
	testl	%ebp, %ebp	# ivtmp.363
	jle	.L161	#,
	ucomisd	%xmm2, %xmm0	# tmp242, t
	jp	.L171	#,
	jne	.L171	#,
	addq	$1, %r12	#, ivtmp.358
	addq	%r10, %r9	# D.5218, ivtmp.366
	addq	$8, %r13	#, ivtmp.369
	subl	$1, %ebp	#, ivtmp.363
	jne	.L163	#,
	.p2align 4,,10
	.p2align 3
.L159:
	movl	44(%rsp), %r13d	# %sfp, lda
	movslq	40(%rsp), %rdx	# %sfp, D.5216
	movq	32(%rsp), %rdi	# %sfp, a
	movsd	.LC2(%rip), %xmm1	#, tmp239
	xorpd	%xmm2, %xmm2	# tmp241
	movl	%r13d, %eax	# lda, lda
	addl	$1, %eax	#, D.5220
	leaq	-8(%r14,%rdx,8), %rbx	#, ivtmp.350
	movl	%eax, %edx	# D.5220, D.5220
	imull	%r15d, %eax	# n, D.5220
	negl	%edx	# D.5220
	movslq	%edx, %rdx	# D.5220, D.5216
	leaq	0(,%rdx,8), %rcx	#, D.5216
	cltq
	leaq	(%rdi,%rax,8), %rbp	#, ivtmp.353
	movl	%r13d, %eax	# lda, lda
	negl	%r13d	# D.5220
	imull	%r15d, %eax	# n, D.5220
	movslq	%r13d, %r13	# D.5220, D.5216
	salq	$3, %r13	#, D.5216
	cltq
	leaq	(%rdi,%rax,8), %r12	#, ivtmp.355
	jmp	.L166	#
	.p2align 4,,10
	.p2align 3
.L172:
	movq	%r14, %rdx	# b,
	movq	%r12, %rsi	# ivtmp.355,
	movl	%r15d, %edi	# n,
	movsd	%xmm2, 24(%rsp)	# tmp241, %sfp
	movq	%rcx, 16(%rsp)	# D.5216, %sfp
	movapd	%xmm1, (%rsp)	# tmp239, %sfp
	call	daxpy.part.0	#
	movq	16(%rsp), %rcx	# %sfp, D.5216
	movsd	24(%rsp), %xmm2	# %sfp, tmp241
	movapd	(%rsp), %xmm1	# %sfp, tmp239
.L164:
	subq	$8, %rbx	#, ivtmp.350
	addq	%rcx, %rbp	# D.5216, ivtmp.353
	addq	%r13, %r12	# D.5216, ivtmp.355
	subl	$1, %r15d	#, n
.L166:
	movsd	(%rbx), %xmm0	# MEM[base: _215, offset: 0B], D.5219
	testl	%r15d, %r15d	# n
	divsd	0(%rbp), %xmm0	# MEM[base: _214, offset: 0B], D.5219
	movsd	%xmm0, (%rbx)	# D.5219, MEM[base: _215, offset: 0B]
	xorpd	%xmm1, %xmm0	# tmp239, t
	je	.L153	#,
	ucomisd	%xmm2, %xmm0	# tmp241, t
	jp	.L172	#,
	jne	.L172	#,
	.p2align 4,,7
	jmp	.L164	#
.L185:
	leal	-1(%rdx), %r15d	#, n
	.p2align 4,,7
	jmp	.L167	#
.L187:
	movl	40(%rsp), %eax	# %sfp,
	testl	%eax, %eax	#
	jle	.L153	#,
	movl	40(%rsp), %eax	# %sfp, n
	leal	-1(%rax), %r15d	#, n
	jmp	.L159	#
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
	jle	.L220	#,
	cmpl	$1, %edx	#, incx
	je	.L221	#,
	xorl	%eax, %eax	# ix
	testl	%edx, %edx	# incx
	js	.L222	#,
.L205:
	movslq	%edx, %rdx	# incx, D.5304
	cltq
	leaq	(%rsi,%rax,8), %rcx	#, ivtmp.475
	salq	$3, %rdx	#, D.5304
	xorl	%esi, %esi	# i
	.p2align 4,,10
	.p2align 3
.L206:
	movsd	(%rcx), %xmm1	# MEM[base: _163, offset: 0B], D.5306
	addl	$1, %esi	#, i
	mulsd	%xmm0, %xmm1	# sa, D.5306
	movsd	%xmm1, (%rcx)	# D.5306, MEM[base: _163, offset: 0B]
	addq	%rdx, %rcx	# D.5304, ivtmp.475
	cmpl	%edi, %esi	# n, i
	jne	.L206	#,
	rep ret
	.p2align 4,,10
	.p2align 3
.L221:
	movl	$1717986919, %ecx	#, tmp169
	movl	%edi, %eax	# n, tmp239
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	imull	%ecx	# tmp169
	movl	%edi, %eax	# n, tmp171
	sarl	$31, %eax	#, tmp171
	movl	%edx, %ecx	# i, i
	sarl	%ecx	# i
	subl	%eax, %ecx	# tmp171, i
	leal	(%rcx,%rcx,4), %eax	#, tmp174
	movl	%edi, %ecx	# n, i
	subl	%eax, %ecx	# tmp174, i
	je	.L191	#,
	movq	%rsi, %rax	# x, D.5312
	salq	$60, %rax	#, D.5312
	shrq	$63, %rax	#, D.5311
	cmpl	%ecx, %eax	# i, D.5311
	cmova	%ecx, %eax	# prolog_loop_niters.427,, i, prolog_loop_niters.427
	cmpl	$4, %ecx	#, i
	movl	%eax, %edx	# prolog_loop_niters.427, prolog_loop_niters.427
	movl	%ecx, %eax	# i, prologue_after_cost_adjust.428
	je	.L223	#,
.L192:
	movsd	(%rsi), %xmm1	# *x_14(D), D.5306
	cmpl	$1, %eax	#, prologue_after_cost_adjust.428
	movl	$1, %r10d	#, i
	mulsd	%xmm0, %xmm1	# sa, D.5306
	movsd	%xmm1, (%rsi)	# D.5306, *x_14(D)
	jbe	.L194	#,
	movsd	8(%rsi), %xmm1	# MEM[(double *)x_14(D) + 8B], D.5306
	cmpl	$2, %eax	#, prologue_after_cost_adjust.428
	movb	$2, %r10b	#,
	mulsd	%xmm0, %xmm1	# sa, D.5306
	movsd	%xmm1, 8(%rsi)	# D.5306, MEM[(double *)x_14(D) + 8B]
	jbe	.L194	#,
	movsd	16(%rsi), %xmm1	# MEM[(double *)x_14(D) + 16B], D.5306
	movb	$3, %r10b	#,
	mulsd	%xmm0, %xmm1	# sa, D.5306
	movsd	%xmm1, 16(%rsi)	# D.5306, MEM[(double *)x_14(D) + 16B]
.L194:
	cmpl	%eax, %ecx	# prologue_after_cost_adjust.428, i
	je	.L195	#,
	movl	%ecx, %ebx	# i, niters.430
	movl	%eax, %edx	# prologue_after_cost_adjust.428, prolog_loop_adjusted_niters.429
	subl	%eax, %ebx	# prologue_after_cost_adjust.428, niters.430
	movl	%ebx, %r9d	# niters.430, bnd.431
	shrl	%r9d	# bnd.431
	movl	%r9d, %r11d	# bnd.431, ratio_mult_vf.432
	addl	%r11d, %r11d	# ratio_mult_vf.432
	jne	.L207	#,
.L196:
	movslq	%r10d, %r10	# i, D.5304
	leaq	(%rsi,%r10,8), %rax	#, D.5305
	movsd	(%rax), %xmm1	# *_202, D.5306
	mulsd	%xmm0, %xmm1	# sa, D.5306
	movsd	%xmm1, (%rax)	# D.5306, *_202
.L195:
	cmpl	%ecx, %edi	# i, n
	jle	.L188	#,
.L191:
	subl	$1, %edi	#, D.5311
	movl	$-858993459, %edx	#, tmp196
	subl	%ecx, %edi	# i, D.5311
	movl	%edi, %eax	# D.5311, tmp240
	mull	%edx	# tmp196
	shrl	$2, %edx	#, D.5311
	leal	1(%rdx), %edi	#, niters.400
	movl	%edi, %r8d	# niters.400, bnd.401
	shrl	%r8d	# bnd.401
	movl	%r8d, %r9d	# bnd.401, ratio_mult_vf.402
	addl	%r9d, %r9d	# ratio_mult_vf.402
	je	.L201	#,
	cmpl	$1, %edi	#, niters.400
	jbe	.L201	#,
	movapd	%xmm0, %xmm1	# sa, vect_cst_.414
	movslq	%ecx, %rax	# i, D.5304
	xorl	%r10d, %r10d	# ivtmp.445
	leaq	(%rsi,%rax,8), %rax	#, ivtmp.450
	unpcklpd	%xmm1, %xmm1	# vect_cst_.414
	movq	%rax, %rdx	# ivtmp.450, ivtmp.451
.L204:
	movsd	16(%rax), %xmm5	# MEM[base: _39, offset: 16B], vect_var_.413
	addl	$1, %r10d	#, ivtmp.445
	addq	$80, %rax	#, ivtmp.450
	movsd	-48(%rax), %xmm4	# MEM[base: _39, offset: 32B], vect_var_.413
	addq	$80, %rdx	#, ivtmp.451
	movsd	-32(%rax), %xmm3	# MEM[base: _39, offset: 48B], vect_var_.413
	movhpd	-56(%rax), %xmm5	# MEM[base: _39, offset: 16B], vect_var_.413
	movsd	-16(%rax), %xmm2	# MEM[base: _39, offset: 64B], vect_var_.413
	movhpd	-40(%rax), %xmm4	# MEM[base: _39, offset: 32B], vect_var_.413
	movsd	-80(%rax), %xmm6	# MEM[base: _39, offset: 0B], vect_var_.413
	movhpd	-24(%rax), %xmm3	# MEM[base: _39, offset: 48B], vect_var_.413
	movhpd	-8(%rax), %xmm2	# MEM[base: _39, offset: 64B], vect_var_.413
	mulpd	%xmm1, %xmm5	# vect_cst_.414, vect_var_.413
	movhpd	-72(%rax), %xmm6	# MEM[base: _39, offset: 0B], vect_var_.413
	mulpd	%xmm1, %xmm4	# vect_cst_.414, vect_var_.413
	mulpd	%xmm1, %xmm3	# vect_cst_.414, vect_var_.413
	movlpd	%xmm5, -64(%rdx)	# vect_var_.413, MEM[base: _45, offset: 16B]
	mulpd	%xmm1, %xmm2	# vect_cst_.414, vect_var_.413
	movhpd	%xmm5, -56(%rdx)	# vect_var_.413, MEM[base: _45, offset: 16B]
	movlpd	%xmm4, -48(%rdx)	# vect_var_.413, MEM[base: _45, offset: 32B]
	mulpd	%xmm1, %xmm6	# vect_cst_.414, vect_var_.413
	movhpd	%xmm4, -40(%rdx)	# vect_var_.413, MEM[base: _45, offset: 32B]
	movlpd	%xmm3, -32(%rdx)	# vect_var_.413, MEM[base: _45, offset: 48B]
	movhpd	%xmm3, -24(%rdx)	# vect_var_.413, MEM[base: _45, offset: 48B]
	movlpd	%xmm2, -16(%rdx)	# vect_var_.413, MEM[base: _45, offset: 64B]
	movhpd	%xmm2, -8(%rdx)	# vect_var_.413, MEM[base: _45, offset: 64B]
	movlpd	%xmm6, -80(%rdx)	# vect_var_.413, MEM[base: _45, offset: 0B]
	movhpd	%xmm6, -72(%rdx)	# vect_var_.413, MEM[base: _45, offset: 0B]
	cmpl	%r8d, %r10d	# bnd.401, ivtmp.445
	jb	.L204	#,
	leal	(%r9,%r9,4), %eax	#, D.5308
	addl	%eax, %ecx	# D.5308, i
	cmpl	%edi, %r9d	# niters.400, ratio_mult_vf.402
	je	.L188	#,
.L201:
	movslq	%ecx, %rcx	# i, D.5304
	salq	$3, %rcx	#, D.5304
	leaq	(%rsi,%rcx), %rax	#, D.5305
	movsd	(%rax), %xmm1	# *_115, D.5306
	mulsd	%xmm0, %xmm1	# sa, D.5306
	movsd	%xmm1, (%rax)	# D.5306, *_115
	leaq	8(%rsi,%rcx), %rax	#, D.5305
	movsd	(%rax), %xmm1	# *_102, D.5306
	mulsd	%xmm0, %xmm1	# sa, D.5306
	movsd	%xmm1, (%rax)	# D.5306, *_102
	leaq	16(%rsi,%rcx), %rax	#, D.5305
	movsd	(%rax), %xmm1	# *_96, D.5306
	mulsd	%xmm0, %xmm1	# sa, D.5306
	movsd	%xmm1, (%rax)	# D.5306, *_96
	leaq	24(%rsi,%rcx), %rax	#, D.5305
	movsd	(%rax), %xmm1	# *_90, D.5306
	mulsd	%xmm0, %xmm1	# sa, D.5306
	movsd	%xmm1, (%rax)	# D.5306, *_90
	leaq	32(%rsi,%rcx), %rax	#, D.5305
	mulsd	(%rax), %xmm0	# *_84, D.5306
	movsd	%xmm0, (%rax)	# D.5306, *_84
.L188:
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.L220:
	rep ret
	.p2align 4,,10
	.p2align 3
.L222:
	movb	$1, %al	#,
	subl	%edi, %eax	# n, ix
	imull	%edx, %eax	# incx, ix
	jmp	.L205	#
	.p2align 4,,10
	.p2align 3
.L223:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	testl	%edx, %edx	# prolog_loop_niters.427
	jne	.L224	#,
	xorl	%edx, %edx	# prolog_loop_adjusted_niters.429
	movl	$4, %ebx	#, niters.430
	movl	$2, %r9d	#, bnd.431
	movl	$4, %r11d	#, ratio_mult_vf.432
	xorl	%r10d, %r10d	# i
.L207:
	movapd	%xmm0, %xmm2	# sa, vect_cst_.440
	leaq	(%rsi,%rdx,8), %r8	#, vect_px.437
	xorl	%eax, %eax	# ivtmp.464
	xorl	%edx, %edx	# ivtmp.461
	unpcklpd	%xmm2, %xmm2	# vect_cst_.440
.L200:
	movapd	(%r8,%rax), %xmm1	# MEM[base: vect_px.437_216, index: ivtmp.464_159, offset: 0B], vect_var_.439
	addl	$1, %edx	#, ivtmp.461
	mulpd	%xmm2, %xmm1	# vect_cst_.440, vect_var_.439
	movapd	%xmm1, (%r8,%rax)	# vect_var_.439, MEM[base: vect_px.437_216, index: ivtmp.464_159, offset: 0B]
	addq	$16, %rax	#, ivtmp.464
	cmpl	%r9d, %edx	# bnd.431, ivtmp.461
	jb	.L200	#,
	addl	%r11d, %r10d	# ratio_mult_vf.432, i
	cmpl	%r11d, %ebx	# ratio_mult_vf.432, niters.430
	jne	.L196	#,
	jmp	.L195	#
.L224:
	movl	%edx, %eax	# prolog_loop_niters.427, prologue_after_cost_adjust.428
	.p2align 4,,3
	jmp	.L192	#
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
	jle	.L238	#,
	testl	%edx, %edx	# incx
	jle	.L238	#,
	cmpl	$1, %edi	#, n
	je	.L239	#,
	cmpl	$1, %edx	#, incx
	movsd	(%rsi), %xmm1	# *dx_20(D), dmax
	xorpd	%xmm2, %xmm2	# tmp113
	je	.L246	#,
	ucomisd	%xmm2, %xmm1	# tmp113, dmax
	jb	.L247	#,
.L233:
	movslq	%edx, %rdx	# incx, D.5333
	movsd	.LC2(%rip), %xmm4	#, tmp116
	salq	$3, %rdx	#, D.5333
	movl	$2, %ecx	#, ivtmp.492
	movl	$1, %eax	#, value
	addq	%rdx, %rsi	# D.5333, ivtmp.490
	movapd	%xmm4, %xmm5	# tmp116, tmp117
	jmp	.L237	#
	.p2align 4,,10
	.p2align 3
.L234:
	ucomisd	%xmm1, %xmm3	# dmax, dmax
	movl	%ecx, %r8d	# ivtmp.492, D.5331
	jbe	.L236	#,
	ucomisd	%xmm2, %xmm0	# tmp113, dmax
	movl	%ecx, %eax	# ivtmp.492, value
	movl	%ecx, %r8d	# ivtmp.492, D.5331
	movapd	%xmm0, %xmm1	# dmax, dmax
	jb	.L248	#,
.L236:
	addq	%rdx, %rsi	# D.5333, ivtmp.490
	addl	$1, %ecx	#, ivtmp.492
	cmpl	%r8d, %edi	# D.5331, n
	jle	.L249	#,
.L237:
	movsd	(%rsi), %xmm0	# MEM[base: _49, offset: 0B], dmax
	ucomisd	%xmm2, %xmm0	# tmp113, dmax
	movapd	%xmm0, %xmm3	# dmax, dmax
	jnb	.L234	#,
	xorpd	%xmm4, %xmm3	# tmp116, dmax
	jmp	.L234	#
	.p2align 4,,10
	.p2align 3
.L238:
	xorl	%eax, %eax	# D.5331
	ret
	.p2align 4,,10
	.p2align 3
.L248:
	addq	%rdx, %rsi	# D.5333, ivtmp.490
	addl	$1, %ecx	#, ivtmp.492
	cmpl	%r8d, %edi	# D.5331, n
	xorpd	%xmm5, %xmm1	# tmp117, dmax
	jg	.L237	#,
	.p2align 4,,10
	.p2align 3
.L249:
	rep ret
	.p2align 4,,10
	.p2align 3
.L239:
	movl	$1, %eax	#, D.5331
	ret
	.p2align 4,,10
	.p2align 3
.L246:
	ucomisd	%xmm2, %xmm1	# tmp113, dmax
	jb	.L250	#,
.L228:
	movsd	.LC2(%rip), %xmm4	#, tmp114
	addq	$8, %rsi	#, ivtmp.481
	movl	$2, %edx	#, ivtmp.484
	movl	$1, %eax	#, value
	movapd	%xmm4, %xmm5	# tmp114, tmp115
	jmp	.L232	#
	.p2align 4,,10
	.p2align 3
.L229:
	ucomisd	%xmm1, %xmm3	# dmax, dmax
	movl	%edx, %ecx	# ivtmp.484, D.5331
	jbe	.L231	#,
	ucomisd	%xmm2, %xmm0	# tmp113, dmax
	movl	%edx, %eax	# ivtmp.484, value
	movl	%edx, %ecx	# ivtmp.484, D.5331
	movapd	%xmm0, %xmm1	# dmax, dmax
	jb	.L251	#,
.L231:
	addq	$8, %rsi	#, ivtmp.481
	addl	$1, %edx	#, ivtmp.484
	cmpl	%ecx, %edi	# D.5331, n
	jle	.L252	#,
.L232:
	movsd	(%rsi), %xmm0	# MEM[base: _11, offset: 0B], dmax
	ucomisd	%xmm2, %xmm0	# tmp113, dmax
	movapd	%xmm0, %xmm3	# dmax, dmax
	jnb	.L229	#,
	xorpd	%xmm4, %xmm3	# tmp114, dmax
	jmp	.L229	#
	.p2align 4,,10
	.p2align 3
.L251:
	addq	$8, %rsi	#, ivtmp.481
	addl	$1, %edx	#, ivtmp.484
	cmpl	%ecx, %edi	# D.5331, n
	xorpd	%xmm5, %xmm1	# tmp115, dmax
	jg	.L232	#,
	.p2align 4,,10
	.p2align 3
.L252:
	rep ret
	.p2align 4,,10
	.p2align 3
.L247:
	movsd	.LC2(%rip), %xmm0	#, tmp106
	xorpd	%xmm0, %xmm1	# tmp106, dmax
	jmp	.L233	#
	.p2align 4,,10
	.p2align 3
.L250:
	movsd	.LC2(%rip), %xmm0	#, tmp98
	xorpd	%xmm0, %xmm1	# tmp98, dmax
	jmp	.L228	#
	.cfi_endproc
.LFE30:
	.size	idamax, .-idamax
	.p2align 4,,15
	.globl	r8_abs
	.type	r8_abs, @function
r8_abs:
.LFB31:
	.cfi_startproc
	ucomisd	.LC0(%rip), %xmm0	#, x
	jb	.L255	#,
	rep ret
	.p2align 4,,10
	.p2align 3
.L255:
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
	movl	$53, %eax	#, D.5343
	movsd	.LC5(%rip), %xmm1	#, tmp67
	.p2align 4,,10
	.p2align 3
.L258:
	subl	$1, %eax	#, D.5343
	mulsd	%xmm1, %xmm0	# tmp67, r
	jne	.L258	#,
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
	movl	12(%rdi), %edx	# MEM[(int *)iseed_1(D) + 12B], D.5357
	movl	8(%rdi), %r8d	# MEM[(int *)iseed_1(D) + 8B], D.5357
	movl	4(%rdi), %r11d	# MEM[(int *)iseed_1(D) + 4B], D.5357
	movsd	.LC6(%rip), %xmm3	#, tmp156
	imull	$2549, %edx, %eax	#, D.5357, it4
	leal	4095(%rax), %ecx	#, tmp121
	testl	%eax, %eax	# it4
	cmovns	%eax, %ecx	# tmp121,, it4, tmp122
	sarl	$12, %ecx	#, tmp122
	movl	%ecx, %esi	# tmp122, D.5357
	sall	$12, %esi	#, D.5357
	subl	%esi, %eax	# D.5357, it4
	movl	%eax, %r9d	# it4, it4
	imull	$2549, %r8d, %eax	#, D.5357, D.5357
	cvtsi2sd	%r9d, %xmm4	# it4, D.5358
	movl	%r9d, 12(%rdi)	# it4, MEM[(int *)iseed_1(D) + 12B]
	addl	%eax, %ecx	# D.5357, D.5357
	imull	$2508, %edx, %eax	#, D.5357, D.5357
	addl	%eax, %ecx	# D.5357, it3
	leal	4095(%rcx), %esi	#, tmp127
	testl	%ecx, %ecx	# it3
	cmovns	%ecx, %esi	# tmp127,, it3, tmp128
	sarl	$12, %esi	#, tmp128
	mulsd	%xmm3, %xmm4	# tmp156, D.5358
	movl	%esi, %eax	# tmp128, D.5357
	sall	$12, %eax	#, D.5357
	subl	%eax, %ecx	# D.5357, it3
	imull	$2549, %r11d, %eax	#, D.5357, D.5357
	movl	%ecx, %r10d	# it3, it3
	cvtsi2sd	%r10d, %xmm2	# it3, D.5358
	movl	%r10d, 8(%rdi)	# it3, MEM[(int *)iseed_1(D) + 8B]
	addl	%eax, %esi	# D.5357, D.5357
	imull	$2508, %r8d, %eax	#, D.5357, D.5357
	addl	%eax, %esi	# D.5357, D.5357
	imull	$322, %edx, %eax	#, D.5357, D.5357
	addl	%eax, %esi	# D.5357, it2
	leal	4095(%rsi), %ecx	#, tmp135
	testl	%esi, %esi	# it2
	addsd	%xmm4, %xmm2	# D.5358, D.5358
	cmovns	%esi, %ecx	# tmp135,, it2, tmp136
	sarl	$12, %ecx	#, tmp136
	movl	%ecx, %eax	# tmp136, D.5357
	mulsd	%xmm3, %xmm2	# tmp156, D.5358
	sall	$12, %eax	#, D.5357
	subl	%eax, %esi	# D.5357, it2
	movl	(%rdi), %eax	# *iseed_1(D),
	imull	$2508, %r11d, %r11d	#, D.5357, D.5357
	cvtsi2sd	%esi, %xmm1	# it2, D.5358
	imull	$322, %r8d, %r8d	#, D.5357, D.5357
	movl	%esi, 4(%rdi)	# it2, MEM[(int *)iseed_1(D) + 4B]
	imull	$2549, %eax, %eax	#,, D.5357
	imull	$494, %edx, %edx	#, D.5357, D.5357
	addl	%ecx, %eax	# tmp136, D.5357
	addl	%r11d, %eax	# D.5357, D.5357
	addl	%r8d, %eax	# D.5357, D.5357
	addl	%edx, %eax	# D.5357, it1
	cltd
	addsd	%xmm2, %xmm1	# D.5358, D.5358
	shrl	$20, %edx	#, tmp146
	addl	%edx, %eax	# tmp146, tmp149
	andl	$4095, %eax	#, tmp149
	subl	%edx, %eax	# tmp146, tmp149
	mulsd	%xmm3, %xmm1	# tmp156, D.5358
	cvtsi2sd	%eax, %xmm0	# tmp149, value
	movl	%eax, (%rdi)	# tmp149, *iseed_1(D)
	addsd	%xmm1, %xmm0	# D.5358, value
	mulsd	%xmm3, %xmm0	# tmp156, value
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
	movslq	%edi, %rbp	# lda,
	movl	%ebp, %edi	# lda, D.5389
	imull	%esi, %edi	# n, D.5389
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, %ebx	# n, n
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
	movslq	%edi, %rdi	# D.5389, D.5390
	salq	$3, %rdi	#, D.5390
	call	malloc	#
	testl	%ebx, %ebx	# n
	movq	%rax, 8(%rsp)	# a, %sfp
	jle	.L265	#,
	leal	-1(%rbx), %ecx	#, D.5393
	leaq	0(,%rbp,8), %rdi	#, D.5390
	leal	1(%rbx), %r15d	#, D.5389
	movsd	.LC6(%rip), %xmm3	#, tmp214
	movq	%rax, %r12	# a, ivtmp.522
	movsd	.LC5(%rip), %xmm5	#, tmp213
	leaq	8(,%rcx,8), %r14	#, D.5393
	movq	%rdi, (%rsp)	# D.5390, %sfp
	movl	$1325, %edx	#, init$3
	movl	$3, %r8d	#, init$2
	movl	$2, %r9d	#, init$1
	movl	$1, %eax	#, init$0
	movl	$1, %r13d	#, j
	.p2align 4,,10
	.p2align 3
.L266:
	leaq	(%r14,%r12), %rbp	#, D.5393
	movq	%r12, %rdi	# ivtmp.522, ivtmp.516
	jmp	.L268	#
	.p2align 4,,10
	.p2align 3
.L267:
	movl	%r10d, %r8d	# init$2, init$2
	movl	%r11d, %edx	# init$3, init$3
	movl	%esi, %r9d	# init$1, init$1
.L268:
	imull	$2549, %edx, %r11d	#, init$3, it4
	leal	4095(%r11), %r10d	#, tmp164
	testl	%r11d, %r11d	# it4
	cmovns	%r11d, %r10d	# tmp164,, it4, tmp165
	sarl	$12, %r10d	#, tmp165
	movl	%r10d, %ecx	# tmp165, D.5389
	sall	$12, %ecx	#, D.5389
	subl	%ecx, %r11d	# D.5389, init$3
	imull	$2549, %r8d, %ecx	#, init$2, D.5389
	cvtsi2sd	%r11d, %xmm4	# init$3, D.5392
	addl	%ecx, %r10d	# D.5389, D.5389
	imull	$2508, %edx, %ecx	#, init$3, D.5389
	addl	%ecx, %r10d	# D.5389, it3
	leal	4095(%r10), %esi	#, tmp170
	testl	%r10d, %r10d	# it3
	cmovns	%r10d, %esi	# tmp170,, it3, tmp171
	sarl	$12, %esi	#, tmp171
	mulsd	%xmm3, %xmm4	# tmp214, D.5392
	movl	%esi, %ecx	# tmp171, D.5389
	sall	$12, %ecx	#, D.5389
	subl	%ecx, %r10d	# D.5389, init$2
	imull	$2549, %r9d, %ecx	#, init$1, D.5389
	cvtsi2sd	%r10d, %xmm2	# init$2, D.5392
	addl	%ecx, %esi	# D.5389, D.5389
	imull	$2508, %r8d, %ecx	#, init$2, D.5389
	addl	%ecx, %esi	# D.5389, D.5389
	imull	$322, %edx, %ecx	#, init$3, D.5389
	addl	%ecx, %esi	# D.5389, it2
	addsd	%xmm4, %xmm2	# D.5392, D.5392
	leal	4095(%rsi), %ecx	#, tmp178
	testl	%esi, %esi	# it2
	cmovns	%esi, %ecx	# tmp178,, it2, tmp179
	addq	$8, %rdi	#, ivtmp.516
	sarl	$12, %ecx	#, tmp179
	mulsd	%xmm3, %xmm2	# tmp214, D.5392
	imull	$2549, %eax, %eax	#, init$0, D.5389
	movl	%ecx, %ebx	# tmp179, D.5389
	imull	$2508, %r9d, %r9d	#, init$1, D.5389
	sall	$12, %ebx	#, D.5389
	subl	%ebx, %esi	# D.5389, init$1
	addl	%ecx, %eax	# tmp179, D.5389
	cvtsi2sd	%esi, %xmm1	# init$1, D.5392
	imull	$322, %r8d, %r8d	#, init$2, D.5389
	addl	%r9d, %eax	# D.5389, D.5389
	imull	$494, %edx, %edx	#, init$3, D.5389
	addl	%r8d, %eax	# D.5389, D.5389
	addl	%edx, %eax	# D.5389, it1
	cltd
	shrl	$20, %edx	#, tmp189
	addl	%edx, %eax	# tmp189, init$0
	andl	$4095, %eax	#, init$0
	subl	%edx, %eax	# tmp189, init$0
	cvtsi2sd	%eax, %xmm0	# init$0, D.5392
	addsd	%xmm2, %xmm1	# D.5392, D.5392
	mulsd	%xmm3, %xmm1	# tmp214, D.5392
	addsd	%xmm1, %xmm0	# D.5392, D.5392
	mulsd	%xmm3, %xmm0	# tmp214, D.5392
	subsd	%xmm5, %xmm0	# tmp213, D.5392
	movsd	%xmm0, -8(%rdi)	# D.5392, MEM[base: _223, offset: 0B]
	cmpq	%rdi, %rbp	# ivtmp.516, D.5393
	jne	.L267	#,
	addl	$1, %r13d	#, j
	addq	(%rsp), %r12	# %sfp, ivtmp.522
	cmpl	%r15d, %r13d	# D.5389, j
	je	.L265	#,
	movl	%r11d, %edx	# init$3, init$3
	movl	%r10d, %r8d	# init$2, init$2
	movl	%esi, %r9d	# init$1, init$1
	jmp	.L266	#
.L265:
	movq	8(%rsp), %rax	# %sfp,
	addq	$24, %rsp	#,
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
.LC17:
	.string	"LINPACK_BENCH - Fatal error!"
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"  The matrix A is apparently singular."
	.section	.rodata.str1.1
.LC19:
	.string	"  Abnormal end of execution."
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"     Norm. Resid      Resid           MACHEP         X[1]          X[N]"
	.align 8
.LC25:
	.string	"  %14f  %14f  %14e  %14f  %14f\n"
	.align 8
.LC26:
	.string	"      Factor     Solve      Total     MFLOPS       Unit      Cray-Ratio"
	.align 8
.LC28:
	.string	"  %9f  %9f  %9f  %9f  %9f  %9f\n"
	.section	.rodata.str1.1
.LC29:
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
	subq	$120, %rsp	#,
	.cfi_def_cfa_offset 176
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
	movq	%rax, %r13	#, a
	call	malloc	#
	movl	$6000, %edi	#,
	movq	%rax, %rbp	#, b
	call	malloc	#
	movl	$12000, %edi	#,
	movq	%rax, 8(%rsp)	#, %sfp
	call	malloc	#
	movl	$12000, %edi	#,
	movq	%rax, %r12	#, resid
	call	malloc	#
	movl	$12000, %edi	#,
	movq	%rax, 16(%rsp)	#, %sfp
	call	malloc	#
	xorpd	%xmm10, %xmm10	# tmp284
	leaq	18012000(%r13), %rcx	#, D.5612
	movq	%rax, %rbx	#, x
	movq	%r13, %rsi	# a, ivtmp.727
	movapd	%xmm10, %xmm0	# tmp284, a_max
	.p2align 4,,10
	.p2align 3
.L273:
	leaq	12000(%rsi), %rdx	#, D.5612
	movq	%rsi, %rax	# ivtmp.727, ivtmp.719
	.p2align 4,,10
	.p2align 3
.L279:
	maxsd	(%rax), %xmm0	# MEM[base: _289, offset: 0B], a_max
	addq	$8, %rax	#, ivtmp.719
	cmpq	%rdx, %rax	# D.5612, ivtmp.719
	movapd	%xmm0, %xmm4	# a_max, a_max
	jne	.L279	#,
	addq	$12008, %rsi	#, ivtmp.727
	cmpq	%rcx, %rsi	# D.5612, ivtmp.727
	jne	.L273	#,
	movq	%rbx, %r10	# x, D.5612
	xorl	%esi, %esi	# i
	salq	$60, %r10	#, D.5612
	shrq	$63, %r10	#, prolog_loop_niters.606
	testl	%r10d, %r10d	# prolog_loop_niters.606
	je	.L280	#,
	movsd	.LC4(%rip), %xmm7	#, tmp377
	movb	$1, %sil	#,
	movsd	%xmm7, (%rbx)	# tmp377, *x_49
.L280:
	movl	$1500, %r14d	#, niters.608
	movapd	.LC16(%rip), %xmm3	#, tmp289
	subl	%r10d, %r14d	# prolog_loop_niters.606, niters.608
	movl	%r14d, %r15d	# niters.608, bnd.609
	shrl	%r15d	# bnd.609
	leal	(%r15,%r15), %eax	#, ratio_mult_vf.610
	movl	%eax, 24(%rsp)	# ratio_mult_vf.610, %sfp
	movl	%r10d, %eax	# prolog_loop_niters.606, prolog_loop_adjusted_niters.607
	leaq	(%rbx,%rax,8), %rax	#, ivtmp.712
	movq	%rax, 32(%rsp)	# ivtmp.712, %sfp
	movq	%rax, %rdx	# ivtmp.712, ivtmp.712
	xorl	%eax, %eax	# ivtmp.707
.L283:
	addl	$1, %eax	#, ivtmp.707
	addq	$16, %rdx	#, ivtmp.712
	movapd	%xmm3, -16(%rdx)	# tmp289, MEM[base: _3, offset: 0B]
	cmpl	%r15d, %eax	# bnd.609, ivtmp.707
	jb	.L283	#,
	movl	24(%rsp), %edi	# %sfp, ratio_mult_vf.610
	movl	%edi, %eax	# ratio_mult_vf.610, ratio_mult_vf.610
	addl	%esi, %eax	# i, tmp.611
	cmpl	%r14d, %edi	# niters.608, ratio_mult_vf.610
	je	.L282	#,
	movsd	.LC4(%rip), %xmm7	#, tmp382
	cltq
	movsd	%xmm7, (%rbx,%rax,8)	# tmp382, *_372
.L282:
	movq	%rbp, %rsi	# b, D.5615
	leaq	18024000(%r13), %rdi	#, D.5612
	movapd	%xmm10, %xmm2	# tmp284, D.5616
	subq	%r13, %rsi	# a, D.5615
	.p2align 4,,10
	.p2align 3
.L287:
	leaq	-18012000(%rcx), %rax	#, ivtmp.693
	movapd	%xmm2, %xmm1	# D.5616, D.5616
	movq	$0, -18012000(%rsi,%rcx)	#, MEM[base: _71, index: ivtmp.706_270, offset: -18012000B]
	movq	%rbx, %rdx	# x, ivtmp.695
	.p2align 4,,10
	.p2align 3
.L285:
	movsd	(%rax), %xmm0	# MEM[base: _377, offset: 0B], D.5616
	addq	$12008, %rax	#, ivtmp.693
	addq	$8, %rdx	#, ivtmp.695
	mulsd	-8(%rdx), %xmm0	# MEM[base: _378, offset: 0B], D.5616
	cmpq	%rcx, %rax	# ivtmp.706, ivtmp.693
	addsd	%xmm0, %xmm1	# D.5616, D.5616
	movsd	%xmm1, -18012000(%rsi,%rcx)	# D.5616, MEM[base: _71, index: ivtmp.706_270, offset: -18012000B]
	jne	.L285	#,
	leaq	8(%rax), %rcx	#, ivtmp.706
	cmpq	%rdi, %rcx	# D.5612, ivtmp.706
	jne	.L287	#,
	movapd	%xmm3, 64(%rsp)	# tmp289, %sfp
	movl	%r10d, 48(%rsp)	# prolog_loop_niters.606, %sfp
	movsd	%xmm10, 80(%rsp)	# tmp284, %sfp
	movsd	%xmm4, 56(%rsp)	# a_max, %sfp
	call	clock	#
	cvtsi2sdq	%rax, %xmm7	# D.5618, t1
	movl	$1500, %edx	#,
	movq	8(%rsp), %rcx	# %sfp,
	movl	$1501, %esi	#,
	movq	%r13, %rdi	# a,
	divsd	.LC1(%rip), %xmm7	#, t1
	movsd	%xmm7, 40(%rsp)	# t1, %sfp
	call	dgefa	#
	testl	%eax, %eax	# info
	movl	48(%rsp), %r10d	# %sfp, prolog_loop_niters.606
	movsd	56(%rsp), %xmm4	# %sfp, a_max
	movsd	80(%rsp), %xmm10	# %sfp, tmp284
	movapd	64(%rsp), %xmm3	# %sfp, tmp289
	jne	.L324	#,
	movl	%r10d, 80(%rsp)	# prolog_loop_niters.606, %sfp
	movapd	%xmm3, 96(%rsp)	# tmp289, %sfp
	movsd	%xmm10, 88(%rsp)	# tmp284, %sfp
	movsd	%xmm4, 64(%rsp)	# a_max, %sfp
	call	clock	#
	cvtsi2sdq	%rax, %xmm7	# D.5618, D.5616
	divsd	.LC1(%rip), %xmm7	#, D.5616
	subsd	40(%rsp), %xmm7	# %sfp, D.5616
	movsd	%xmm7, 48(%rsp)	# D.5616, %sfp
	call	clock	#
	movq	8(%rsp), %rcx	# %sfp,
	xorl	%r9d, %r9d	#
	movq	%rbp, %r8	# b,
	movl	$1500, %edx	#,
	movl	$1501, %esi	#,
	movq	%r13, %rdi	# a,
	movq	%rax, 40(%rsp)	# D.5618, %sfp
	call	dgesl	#
	call	clock	#
	movq	40(%rsp), %r11	# %sfp, D.5618
	cvtsi2sdq	%rax, %xmm8	# D.5618, D.5616
	movsd	48(%rsp), %xmm7	# %sfp, D.5616
	movq	%r13, %rdi	# a,
	cvtsi2sdq	%r11, %xmm0	# D.5618, t1
	movapd	%xmm7, %xmm9	# D.5616, total
	movsd	%xmm7, 56(%rsp)	# D.5616, %sfp
	divsd	.LC1(%rip), %xmm8	#, D.5616
	divsd	.LC1(%rip), %xmm0	#, t1
	subsd	%xmm0, %xmm8	# t1, D.5616
	addsd	%xmm8, %xmm9	# D.5616, total
	movsd	%xmm8, 48(%rsp)	# D.5616, %sfp
	movsd	%xmm9, 40(%rsp)	# total, %sfp
	call	free	#
	movl	$1500, %esi	#,
	movl	$1501, %edi	#,
	call	r8mat_gen	#
	movl	80(%rsp), %r10d	# %sfp, prolog_loop_niters.606
	xorl	%ecx, %ecx	# i
	movq	%rax, %r13	#, a
	movsd	40(%rsp), %xmm9	# %sfp, total
	movsd	48(%rsp), %xmm8	# %sfp, D.5616
	testl	%r10d, %r10d	# prolog_loop_niters.606
	movsd	56(%rsp), %xmm7	# %sfp, D.5616
	movsd	64(%rsp), %xmm4	# %sfp, a_max
	movsd	88(%rsp), %xmm10	# %sfp, tmp284
	movapd	96(%rsp), %xmm3	# %sfp, tmp289
	je	.L290	#,
	movb	$1, %cl	#,
	movsd	.LC4(%rip), %xmm2	#, tmp387
	movsd	%xmm2, (%rbx)	# tmp387, *x_49
.L290:
	movq	32(%rsp), %rdx	# %sfp, ivtmp.686
	xorl	%eax, %eax	# ivtmp.681
.L293:
	addl	$1, %eax	#, ivtmp.681
	addq	$16, %rdx	#, ivtmp.686
	movapd	%xmm3, -16(%rdx)	# tmp289, MEM[base: _307, offset: 0B]
	cmpl	%eax, %r15d	# ivtmp.681, bnd.609
	ja	.L293	#,
	movl	24(%rsp), %edi	# %sfp, ratio_mult_vf.610
	movl	%edi, %eax	# ratio_mult_vf.610, ratio_mult_vf.610
	addl	%ecx, %eax	# i, tmp.595
	cmpl	%r14d, %edi	# niters.608, ratio_mult_vf.610
	je	.L292	#,
	movsd	.LC4(%rip), %xmm2	#, tmp389
	cltq
	movsd	%xmm2, (%rbx,%rax,8)	# tmp389, *_217
.L292:
	movq	16(%rsp), %rsi	# %sfp, rhs
	leaq	18012000(%r13), %r9	#, ivtmp.680
	movq	%r13, %rdi	# a, D.5617
	xorpd	%xmm0, %xmm0	# vect_var_.578
	negq	%rdi	# D.5617
	leaq	18024000(%r13), %r8	#, D.5612
	movq	%r9, %rax	# ivtmp.680, ivtmp.680
	addq	%rdi, %rsi	# D.5617, D.5615
.L297:
	xorpd	%xmm5, %xmm5	# vect_var_.578
	leaq	-18012000(%rax), %rdx	#, ivtmp.666
	movq	%rbx, %rcx	# x, ivtmp.670
	.p2align 4,,10
	.p2align 3
.L295:
	movsd	(%rcx), %xmm6	# MEM[base: _317, offset: 0B], vect_cst_.576
	addq	$12008, %rdx	#, ivtmp.666
	movsd	-12008(%rdx), %xmm3	# MEM[base: _344, offset: 0B], vect_var_.577
	addq	$8, %rcx	#, ivtmp.670
	unpcklpd	%xmm6, %xmm6	# vect_cst_.576
	movhpd	-12000(%rdx), %xmm3	# MEM[base: _344, offset: 0B], vect_var_.577
	cmpq	%rdx, %rax	# ivtmp.666, ivtmp.680
	mulpd	%xmm6, %xmm3	# vect_cst_.576, vect_var_.577
	addpd	%xmm3, %xmm5	# vect_var_.577, vect_var_.578
	jne	.L295	#,
	addpd	%xmm0, %xmm5	# vect_var_.578, vect_var_.581
	movlpd	%xmm5, -18012000(%rsi,%rax)	# vect_var_.581, MEM[base: _305, index: ivtmp.680_271, offset: -18012000B]
	movhpd	%xmm5, -18011992(%rsi,%rax)	# vect_var_.581, MEM[base: _305, index: ivtmp.680_271, offset: -18012000B]
	addq	$16, %rax	#, ivtmp.680
	cmpq	%r8, %rax	# D.5612, ivtmp.680
	jne	.L297	#,
	movq	%r9, %rax	# ivtmp.680, ivtmp.660
	addq	%r12, %rdi	# resid, D.5615
.L301:
	movsd	-18012000(%rsi,%rax), %xmm0	# MEM[base: _305, index: ivtmp.660_272, offset: -18012000B], vect_var_.536
	leaq	-18012000(%rax), %rdx	#, ivtmp.646
	movq	%rbp, %rcx	# b, ivtmp.648
	xorpd	%xmm5, %xmm5	# vect_var_.554
	movhpd	-18011992(%rsi,%rax), %xmm0	# MEM[base: _305, index: ivtmp.660_272, offset: -18012000B], vect_var_.536
	.p2align 4,,10
	.p2align 3
.L299:
	movsd	(%rcx), %xmm6	# MEM[base: _156, offset: 0B], vect_cst_.552
	addq	$12008, %rdx	#, ivtmp.646
	addq	$8, %rcx	#, ivtmp.648
	movsd	-12008(%rdx), %xmm3	# MEM[base: _151, offset: 0B], vect_var_.553
	unpcklpd	%xmm6, %xmm6	# vect_cst_.552
	movhpd	-12000(%rdx), %xmm3	# MEM[base: _151, offset: 0B], vect_var_.553
	cmpq	%rax, %rdx	# ivtmp.660, ivtmp.646
	mulpd	%xmm6, %xmm3	# vect_cst_.552, vect_var_.553
	addpd	%xmm3, %xmm5	# vect_var_.553, vect_var_.554
	jne	.L299	#,
	subpd	%xmm0, %xmm5	# vect_var_.536, vect_var_.556
	leaq	16(%rdx), %rax	#, ivtmp.660
	cmpq	%r8, %rax	# D.5612, ivtmp.660
	movlpd	%xmm5, -18012000(%rdi,%rdx)	# vect_var_.556, MEM[base: _123, index: ivtmp.660_272, offset: -18012000B]
	movhpd	%xmm5, -18011992(%rdi,%rdx)	# vect_var_.556, MEM[base: _123, index: ivtmp.660_272, offset: -18012000B]
	jne	.L301	#,
	movapd	%xmm10, %xmm2	# tmp284, resid_max
	xorl	%eax, %eax	# ivtmp.638
	movsd	.LC2(%rip), %xmm5	#, tmp287
.L306:
	movsd	(%r12,%rax), %xmm1	# MEM[base: resid_45, index: ivtmp.638_268, offset: 0B], resid_max
	movapd	%xmm10, %xmm0	# tmp284, tmp257
	addq	$8, %rax	#, ivtmp.638
	movapd	%xmm1, %xmm3	# resid_max, resid_max
	cmpq	$12000, %rax	#, ivtmp.638
	cmplesd	%xmm1, %xmm0	#, resid_max, tmp257
	xorpd	%xmm5, %xmm3	# tmp287, resid_max
	andpd	%xmm0, %xmm1	# tmp257, tmp258
	andnpd	%xmm3, %xmm0	# resid_max, tmp255
	orpd	%xmm1, %xmm0	# tmp258, tmp255
	maxsd	%xmm0, %xmm2	# tmp255, resid_max
	movapd	%xmm2, %xmm1	# resid_max, resid_max
	jne	.L306	#,
	movapd	%xmm10, %xmm3	# tmp284, b_max
	xorw	%ax, %ax	#
.L311:
	movsd	0(%rbp,%rax), %xmm2	# MEM[base: b_41, index: ivtmp.630_240, offset: 0B], b_max
	addq	$8, %rax	#, ivtmp.630
	movapd	%xmm10, %xmm0	# tmp284, tmp265
	cmpq	$12000, %rax	#, ivtmp.630
	movapd	%xmm2, %xmm6	# b_max, b_max
	cmplesd	%xmm2, %xmm0	#, b_max, tmp265
	xorpd	%xmm5, %xmm6	# tmp287, b_max
	andpd	%xmm0, %xmm2	# tmp265, tmp266
	andnpd	%xmm6, %xmm0	# b_max, tmp263
	orpd	%xmm2, %xmm0	# tmp266, tmp263
	maxsd	%xmm0, %xmm3	# tmp263, b_max
	movapd	%xmm3, %xmm6	# b_max, b_max
	jne	.L311	#,
	movsd	.LC4(%rip), %xmm0	#, r
	movw	$53, %ax	#,
	movsd	.LC5(%rip), %xmm2	#, tmp288
.L313:
	subl	$1, %eax	#, D.5614
	mulsd	%xmm2, %xmm0	# tmp288, r
	jne	.L313	#,
	movapd	%xmm0, %xmm2	# r, eps
	ucomisd	%xmm10, %xmm9	# tmp284, total
	addsd	%xmm0, %xmm2	# r, eps
	movapd	%xmm1, %xmm0	# resid_max, residn
	divsd	.LC21(%rip), %xmm0	#, residn
	divsd	%xmm4, %xmm0	# a_max, residn
	divsd	%xmm6, %xmm0	# b_max, residn
	divsd	%xmm2, %xmm0	# eps, residn
	jbe	.L322	#,
	movsd	.LC1(%rip), %xmm3	#, D.5616
	movsd	.LC22(%rip), %xmm6	#, time$3
	mulsd	%xmm9, %xmm3	# total, D.5616
	movsd	.LC23(%rip), %xmm10	#, D.5616
	divsd	%xmm3, %xmm6	# D.5616, time$3
	divsd	%xmm6, %xmm10	# time$3, D.5616
.L314:
	movl	$10, %edi	#,
	movsd	%xmm10, 64(%rsp)	# D.5616, %sfp
	movsd	%xmm6, 56(%rsp)	# time$3, %sfp
	movsd	%xmm9, 40(%rsp)	# total, %sfp
	movsd	%xmm8, 32(%rsp)	# D.5616, %sfp
	movsd	%xmm7, 24(%rsp)	# D.5616, %sfp
	movsd	%xmm1, 88(%rsp)	# resid_max, %sfp
	movsd	%xmm2, 80(%rsp)	# eps, %sfp
	movsd	%xmm0, 48(%rsp)	# residn, %sfp
	call	putchar	#
	movl	$.LC24, %edi	#,
	call	puts	#
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC25, %edi	#,
	movl	$5, %eax	#,
	movsd	11992(%rbp), %xmm4	# MEM[(double *)b_41 + 11992B],
	movsd	0(%rbp), %xmm3	# *b_41,
	movsd	80(%rsp), %xmm2	# %sfp, eps
	movsd	88(%rsp), %xmm1	# %sfp, resid_max
	movsd	48(%rsp), %xmm0	# %sfp, residn
	call	printf	#
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC26, %edi	#,
	call	puts	#
	movl	$10, %edi	#,
	call	putchar	#
	movsd	40(%rsp), %xmm9	# %sfp, total
	movl	$.LC28, %edi	#,
	movsd	64(%rsp), %xmm10	# %sfp, D.5616
	movl	$6, %eax	#,
	movapd	%xmm9, %xmm5	# total, tmp403
	movsd	56(%rsp), %xmm6	# %sfp, time$3
	movapd	%xmm10, %xmm4	# D.5616,
	divsd	.LC27(%rip), %xmm5	#, tmp403
	movapd	%xmm9, %xmm2	# total,
	movapd	%xmm6, %xmm3	# time$3,
	movsd	32(%rsp), %xmm8	# %sfp, D.5616
	movsd	24(%rsp), %xmm7	# %sfp, D.5616
	movapd	%xmm8, %xmm1	# D.5616,
	movapd	%xmm7, %xmm0	# D.5616,
	call	printf	#
	movq	%r13, %rdi	# a,
	call	free	#
	movq	%rbp, %rdi	# b,
	call	free	#
	movq	8(%rsp), %rdi	# %sfp,
	call	free	#
	movq	%r12, %rdi	# resid,
	call	free	#
	movq	16(%rsp), %rdi	# %sfp,
	call	free	#
	movq	%rbx, %rdi	# x,
	call	free	#
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC9, %edi	#,
	call	puts	#
	movl	$.LC29, %edi	#,
	call	puts	#
	movl	$10, %edi	#,
	call	putchar	#
	call	timestamp	#
	addq	$120, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax	# D.5613
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
.L324:
	.cfi_restore_state
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC17, %edi	#,
	call	puts	#
	movl	$.LC18, %edi	#,
	call	puts	#
	movl	$.LC19, %edi	#,
	call	puts	#
	addq	$120, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$1, %eax	#, D.5613
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
.L322:
	.cfi_restore_state
	movsd	.LC8(%rip), %xmm10	#, D.5616
	movsd	.LC3(%rip), %xmm6	#, time$3
	jmp	.L314	#
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.local	time_buffer.4190
	.comm	time_buffer.4190,40,32
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	0
	.align 8
.LC1:
	.long	0
	.long	1093567616
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
	.section	.rodata.cst16
	.align 16
.LC16:
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.section	.rodata.cst8
	.align 8
.LC21:
	.long	0
	.long	1083666432
	.align 8
.LC22:
	.long	89478485
	.long	-1044241187
	.align 8
.LC23:
	.long	0
	.long	1073741824
	.align 8
.LC27:
	.long	824633721
	.long	1068280840
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-16)"
	.section	.note.GNU-stack,"",@progbits
