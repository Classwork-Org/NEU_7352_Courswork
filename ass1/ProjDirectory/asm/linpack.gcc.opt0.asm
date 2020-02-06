	.file	"linpack.c"
# GNU C (GCC) version 4.8.5 20150623 (Red Hat 4.8.5-16) (x86_64-redhat-linux)
#	compiled by GNU C version 4.8.5 20150623 (Red Hat 4.8.5-16), GMP version 6.0.0, MPFR version 3.1.1, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  ../source/linpack.c -mtune=generic -march=x86-64
# -auxbase-strip ../asm/linpack.gcc.opt0.asm -O0 -fverbose-asm
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
# -maccumulate-outgoing-args -malign-stringops -mfancy-math-387
# -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4
# -mpush-args -mred-zone -msse -msse2 -mtls-direct-seg-refs

	.section	.rodata
.LC1:
	.string	"LINPACK_BENCH"
.LC2:
	.string	"  C version"
.LC3:
	.string	"  The LINPACK benchmark."
.LC4:
	.string	"  Language: C"
	.align 8
.LC5:
	.string	"  Datatype: Double precision real"
	.align 8
.LC6:
	.string	"  Matrix order N               = %d\n"
	.align 8
.LC7:
	.string	"  Leading matrix dimension LDA = %d\n"
.LC11:
	.string	"LINPACK_BENCH - Fatal error!"
	.align 8
.LC12:
	.string	"  The matrix A is apparently singular."
.LC13:
	.string	"  Abnormal end of execution."
	.align 8
.LC19:
	.string	"     Norm. Resid      Resid           MACHEP         X[1]          X[N]"
	.align 8
.LC20:
	.string	"  %14f  %14f  %14e  %14f  %14f\n"
	.align 8
.LC21:
	.string	"      Factor     Solve      Total     MFLOPS       Unit      Cray-Ratio"
	.align 8
.LC22:
	.string	"  %9f  %9f  %9f  %9f  %9f  %9f\n"
.LC23:
	.string	"  Normal end of execution."
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
	subq	$224, %rsp	#,
	movabsq	$4588231271568042361, %rax	#, tmp175
	movq	%rax, -40(%rbp)	# tmp175, cray
	call	timestamp	#
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC1, %edi	#,
	call	puts	#
	movl	$.LC2, %edi	#,
	call	puts	#
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC3, %edi	#,
	call	puts	#
	movl	$.LC4, %edi	#,
	call	puts	#
	movl	$.LC5, %edi	#,
	call	puts	#
	movl	$1500, %esi	#,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	movl	$1501, %esi	#,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	movabsq	$-4484981747211741867, %rax	#, tmp176
	movq	%rax, -48(%rbp)	# tmp176, ops
	movl	$1500, %esi	#,
	movl	$1501, %edi	#,
	call	r8mat_gen	#
	movq	%rax, -56(%rbp)	# tmp177, a
	movl	$12000, %edi	#,
	call	malloc	#
	movq	%rax, -64(%rbp)	# tmp178, b
	movl	$6000, %edi	#,
	call	malloc	#
	movq	%rax, -72(%rbp)	# tmp179, ipvt
	movl	$12000, %edi	#,
	call	malloc	#
	movq	%rax, -80(%rbp)	# tmp180, resid
	movl	$12000, %edi	#,
	call	malloc	#
	movq	%rax, -88(%rbp)	# tmp181, rhs
	movl	$12000, %edi	#,
	call	malloc	#
	movq	%rax, -96(%rbp)	# tmp182, x
	movl	$0, %eax	#, tmp183
	movq	%rax, -8(%rbp)	# tmp183, a_max
	movl	$0, -24(%rbp)	#, j
	jmp	.L2	#
.L5:
	movl	$0, -20(%rbp)	#, i
	jmp	.L3	#
.L4:
	movl	-24(%rbp), %eax	# j, tmp184
	imull	$1501, %eax, %edx	#, tmp184, D.4915
	movl	-20(%rbp), %eax	# i, tmp185
	addl	%edx, %eax	# D.4915, D.4915
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4916
	movq	-56(%rbp), %rax	# a, tmp186
	addq	%rdx, %rax	# D.4916, D.4917
	movq	(%rax), %rdx	# *_33, D.4918
	movq	-8(%rbp), %rax	# a_max, tmp187
	movq	%rdx, -216(%rbp)	# D.4918, %sfp
	movsd	-216(%rbp), %xmm1	# %sfp,
	movq	%rax, -216(%rbp)	# tmp187, %sfp
	movsd	-216(%rbp), %xmm0	# %sfp,
	call	r8_max	#
	movsd	%xmm0, -216(%rbp)	#, %sfp
	movq	-216(%rbp), %rax	# %sfp, tmp188
	movq	%rax, -8(%rbp)	# tmp188, a_max
	addl	$1, -20(%rbp)	#, i
.L3:
	cmpl	$1499, -20(%rbp)	#, i
	jle	.L4	#,
	addl	$1, -24(%rbp)	#, j
.L2:
	cmpl	$1499, -24(%rbp)	#, j
	jle	.L5	#,
	movl	$0, -20(%rbp)	#, i
	jmp	.L6	#
.L7:
	movl	-20(%rbp), %eax	# i, tmp189
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4916
	movq	-96(%rbp), %rax	# x, tmp190
	addq	%rax, %rdx	# tmp190, D.4917
	movabsq	$4607182418800017408, %rax	#, tmp191
	movq	%rax, (%rdx)	# tmp191, *_41
	addl	$1, -20(%rbp)	#, i
.L6:
	cmpl	$1499, -20(%rbp)	#, i
	jle	.L7	#,
	movl	$0, -20(%rbp)	#, i
	jmp	.L8	#
.L11:
	movl	-20(%rbp), %eax	# i, tmp192
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4916
	movq	-64(%rbp), %rax	# b, tmp193
	addq	%rax, %rdx	# tmp193, D.4917
	movl	$0, %eax	#, tmp194
	movq	%rax, (%rdx)	# tmp194, *_46
	movl	$0, -24(%rbp)	#, j
	jmp	.L9	#
.L10:
	movl	-20(%rbp), %eax	# i, tmp195
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4916
	movq	-64(%rbp), %rax	# b, tmp196
	addq	%rdx, %rax	# D.4916, D.4917
	movl	-20(%rbp), %edx	# i, tmp197
	movslq	%edx, %rdx	# tmp197, D.4916
	leaq	0(,%rdx,8), %rcx	#, D.4916
	movq	-64(%rbp), %rdx	# b, tmp198
	addq	%rcx, %rdx	# D.4916, D.4917
	movsd	(%rdx), %xmm1	# *_53, D.4918
	movl	-24(%rbp), %edx	# j, tmp199
	imull	$1501, %edx, %ecx	#, tmp199, D.4915
	movl	-20(%rbp), %edx	# i, tmp200
	addl	%ecx, %edx	# D.4915, D.4915
	movslq	%edx, %rdx	# D.4915, D.4916
	leaq	0(,%rdx,8), %rcx	#, D.4916
	movq	-56(%rbp), %rdx	# a, tmp201
	addq	%rcx, %rdx	# D.4916, D.4917
	movsd	(%rdx), %xmm2	# *_59, D.4918
	movl	-24(%rbp), %edx	# j, tmp202
	movslq	%edx, %rdx	# tmp202, D.4916
	leaq	0(,%rdx,8), %rcx	#, D.4916
	movq	-96(%rbp), %rdx	# x, tmp203
	addq	%rcx, %rdx	# D.4916, D.4917
	movsd	(%rdx), %xmm0	# *_63, D.4918
	mulsd	%xmm2, %xmm0	# D.4918, D.4918
	addsd	%xmm1, %xmm0	# D.4918, D.4918
	movsd	%xmm0, (%rax)	# D.4918, *_50
	addl	$1, -24(%rbp)	#, j
.L9:
	cmpl	$1499, -24(%rbp)	#, j
	jle	.L10	#,
	addl	$1, -20(%rbp)	#, i
.L8:
	cmpl	$1499, -20(%rbp)	#, i
	jle	.L11	#,
	call	cpu_time	#
	movsd	%xmm0, -216(%rbp)	#, %sfp
	movq	-216(%rbp), %rax	# %sfp, tmp204
	movq	%rax, -104(%rbp)	# tmp204, t1
	movq	-72(%rbp), %rdx	# ipvt, tmp205
	movq	-56(%rbp), %rax	# a, tmp206
	movq	%rdx, %rcx	# tmp205,
	movl	$1500, %edx	#,
	movl	$1501, %esi	#,
	movq	%rax, %rdi	# tmp206,
	call	dgefa	#
	movl	%eax, -108(%rbp)	# tmp207, info
	cmpl	$0, -108(%rbp)	#, info
	je	.L12	#,
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC11, %edi	#,
	call	puts	#
	movl	$.LC12, %edi	#,
	call	puts	#
	movl	$.LC13, %edi	#,
	call	puts	#
	movl	$1, %eax	#, D.4915
	jmp	.L31	#
.L12:
	call	cpu_time	#
	movsd	%xmm0, -216(%rbp)	#, %sfp
	movq	-216(%rbp), %rax	# %sfp, tmp208
	movq	%rax, -120(%rbp)	# tmp208, t2
	movsd	-120(%rbp), %xmm0	# t2, tmp209
	subsd	-104(%rbp), %xmm0	# t1, D.4918
	movsd	%xmm0, -208(%rbp)	# D.4918, time
	call	cpu_time	#
	movsd	%xmm0, -216(%rbp)	#, %sfp
	movq	-216(%rbp), %rax	# %sfp, tmp210
	movq	%rax, -104(%rbp)	# tmp210, t1
	movl	$0, -124(%rbp)	#, job
	movl	-124(%rbp), %esi	# job, tmp211
	movq	-64(%rbp), %rcx	# b, tmp212
	movq	-72(%rbp), %rdx	# ipvt, tmp213
	movq	-56(%rbp), %rax	# a, tmp214
	movl	%esi, %r9d	# tmp211,
	movq	%rcx, %r8	# tmp212,
	movq	%rdx, %rcx	# tmp213,
	movl	$1500, %edx	#,
	movl	$1501, %esi	#,
	movq	%rax, %rdi	# tmp214,
	call	dgesl	#
	call	cpu_time	#
	movsd	%xmm0, -216(%rbp)	#, %sfp
	movq	-216(%rbp), %rax	# %sfp, tmp215
	movq	%rax, -120(%rbp)	# tmp215, t2
	movsd	-120(%rbp), %xmm0	# t2, tmp216
	subsd	-104(%rbp), %xmm0	# t1, D.4918
	movsd	%xmm0, -200(%rbp)	# D.4918, time
	movsd	-208(%rbp), %xmm1	# time, D.4918
	movsd	-200(%rbp), %xmm0	# time, D.4918
	addsd	%xmm1, %xmm0	# D.4918, tmp217
	movsd	%xmm0, -136(%rbp)	# tmp217, total
	movq	-56(%rbp), %rax	# a, tmp218
	movq	%rax, %rdi	# tmp218,
	call	free	#
	movl	$1500, %esi	#,
	movl	$1501, %edi	#,
	call	r8mat_gen	#
	movq	%rax, -56(%rbp)	# tmp219, a
	movl	$0, -20(%rbp)	#, i
	jmp	.L14	#
.L15:
	movl	-20(%rbp), %eax	# i, tmp220
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4916
	movq	-96(%rbp), %rax	# x, tmp221
	addq	%rax, %rdx	# tmp221, D.4917
	movabsq	$4607182418800017408, %rax	#, tmp222
	movq	%rax, (%rdx)	# tmp222, *_85
	addl	$1, -20(%rbp)	#, i
.L14:
	cmpl	$1499, -20(%rbp)	#, i
	jle	.L15	#,
	movl	$0, -20(%rbp)	#, i
	jmp	.L16	#
.L19:
	movl	-20(%rbp), %eax	# i, tmp223
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4916
	movq	-88(%rbp), %rax	# rhs, tmp224
	addq	%rax, %rdx	# tmp224, D.4917
	movl	$0, %eax	#, tmp225
	movq	%rax, (%rdx)	# tmp225, *_90
	movl	$0, -24(%rbp)	#, j
	jmp	.L17	#
.L18:
	movl	-20(%rbp), %eax	# i, tmp226
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4916
	movq	-88(%rbp), %rax	# rhs, tmp227
	addq	%rdx, %rax	# D.4916, D.4917
	movl	-20(%rbp), %edx	# i, tmp228
	movslq	%edx, %rdx	# tmp228, D.4916
	leaq	0(,%rdx,8), %rcx	#, D.4916
	movq	-88(%rbp), %rdx	# rhs, tmp229
	addq	%rcx, %rdx	# D.4916, D.4917
	movsd	(%rdx), %xmm1	# *_97, D.4918
	movl	-24(%rbp), %edx	# j, tmp230
	imull	$1501, %edx, %ecx	#, tmp230, D.4915
	movl	-20(%rbp), %edx	# i, tmp231
	addl	%ecx, %edx	# D.4915, D.4915
	movslq	%edx, %rdx	# D.4915, D.4916
	leaq	0(,%rdx,8), %rcx	#, D.4916
	movq	-56(%rbp), %rdx	# a, tmp232
	addq	%rcx, %rdx	# D.4916, D.4917
	movsd	(%rdx), %xmm2	# *_103, D.4918
	movl	-24(%rbp), %edx	# j, tmp233
	movslq	%edx, %rdx	# tmp233, D.4916
	leaq	0(,%rdx,8), %rcx	#, D.4916
	movq	-96(%rbp), %rdx	# x, tmp234
	addq	%rcx, %rdx	# D.4916, D.4917
	movsd	(%rdx), %xmm0	# *_107, D.4918
	mulsd	%xmm2, %xmm0	# D.4918, D.4918
	addsd	%xmm1, %xmm0	# D.4918, D.4918
	movsd	%xmm0, (%rax)	# D.4918, *_94
	addl	$1, -24(%rbp)	#, j
.L17:
	cmpl	$1499, -24(%rbp)	#, j
	jle	.L18	#,
	addl	$1, -20(%rbp)	#, i
.L16:
	cmpl	$1499, -20(%rbp)	#, i
	jle	.L19	#,
	movl	$0, -20(%rbp)	#, i
	jmp	.L20	#
.L23:
	movl	-20(%rbp), %eax	# i, tmp235
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4916
	movq	-80(%rbp), %rax	# resid, tmp236
	addq	%rdx, %rax	# D.4916, D.4917
	movl	-20(%rbp), %edx	# i, tmp237
	movslq	%edx, %rdx	# tmp237, D.4916
	leaq	0(,%rdx,8), %rcx	#, D.4916
	movq	-88(%rbp), %rdx	# rhs, tmp238
	addq	%rcx, %rdx	# D.4916, D.4917
	movsd	(%rdx), %xmm1	# *_119, D.4918
	movsd	.LC14(%rip), %xmm0	#, tmp239
	xorpd	%xmm1, %xmm0	# D.4918, D.4918
	movsd	%xmm0, (%rax)	# D.4918, *_116
	movl	$0, -24(%rbp)	#, j
	jmp	.L21	#
.L22:
	movl	-20(%rbp), %eax	# i, tmp240
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4916
	movq	-80(%rbp), %rax	# resid, tmp241
	addq	%rdx, %rax	# D.4916, D.4917
	movl	-20(%rbp), %edx	# i, tmp242
	movslq	%edx, %rdx	# tmp242, D.4916
	leaq	0(,%rdx,8), %rcx	#, D.4916
	movq	-80(%rbp), %rdx	# resid, tmp243
	addq	%rcx, %rdx	# D.4916, D.4917
	movsd	(%rdx), %xmm1	# *_128, D.4918
	movl	-24(%rbp), %edx	# j, tmp244
	imull	$1501, %edx, %ecx	#, tmp244, D.4915
	movl	-20(%rbp), %edx	# i, tmp245
	addl	%ecx, %edx	# D.4915, D.4915
	movslq	%edx, %rdx	# D.4915, D.4916
	leaq	0(,%rdx,8), %rcx	#, D.4916
	movq	-56(%rbp), %rdx	# a, tmp246
	addq	%rcx, %rdx	# D.4916, D.4917
	movsd	(%rdx), %xmm2	# *_134, D.4918
	movl	-24(%rbp), %edx	# j, tmp247
	movslq	%edx, %rdx	# tmp247, D.4916
	leaq	0(,%rdx,8), %rcx	#, D.4916
	movq	-64(%rbp), %rdx	# b, tmp248
	addq	%rcx, %rdx	# D.4916, D.4917
	movsd	(%rdx), %xmm0	# *_138, D.4918
	mulsd	%xmm2, %xmm0	# D.4918, D.4918
	addsd	%xmm1, %xmm0	# D.4918, D.4918
	movsd	%xmm0, (%rax)	# D.4918, *_125
	addl	$1, -24(%rbp)	#, j
.L21:
	cmpl	$1499, -24(%rbp)	#, j
	jle	.L22	#,
	addl	$1, -20(%rbp)	#, i
.L20:
	cmpl	$1499, -20(%rbp)	#, i
	jle	.L23	#,
	movl	$0, %eax	#, tmp249
	movq	%rax, -32(%rbp)	# tmp249, resid_max
	movl	$0, -20(%rbp)	#, i
	jmp	.L24	#
.L25:
	movl	-20(%rbp), %eax	# i, tmp250
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4916
	movq	-80(%rbp), %rax	# resid, tmp251
	addq	%rdx, %rax	# D.4916, D.4917
	movq	(%rax), %rax	# *_148, D.4918
	movq	%rax, -216(%rbp)	# D.4918, %sfp
	movsd	-216(%rbp), %xmm0	# %sfp,
	call	r8_abs	#
	movsd	%xmm0, -216(%rbp)	#, %sfp
	movq	-216(%rbp), %rax	# %sfp, D.4918
	movq	-32(%rbp), %rdx	# resid_max, tmp252
	movq	%rax, -216(%rbp)	# D.4918, %sfp
	movsd	-216(%rbp), %xmm1	# %sfp,
	movq	%rdx, -216(%rbp)	# tmp252, %sfp
	movsd	-216(%rbp), %xmm0	# %sfp,
	call	r8_max	#
	movsd	%xmm0, -216(%rbp)	#, %sfp
	movq	-216(%rbp), %rax	# %sfp, tmp253
	movq	%rax, -32(%rbp)	# tmp253, resid_max
	addl	$1, -20(%rbp)	#, i
.L24:
	cmpl	$1499, -20(%rbp)	#, i
	jle	.L25	#,
	movl	$0, %eax	#, tmp254
	movq	%rax, -16(%rbp)	# tmp254, b_max
	movl	$0, -20(%rbp)	#, i
	jmp	.L26	#
.L27:
	movl	-20(%rbp), %eax	# i, tmp255
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4916
	movq	-64(%rbp), %rax	# b, tmp256
	addq	%rdx, %rax	# D.4916, D.4917
	movq	(%rax), %rax	# *_157, D.4918
	movq	%rax, -216(%rbp)	# D.4918, %sfp
	movsd	-216(%rbp), %xmm0	# %sfp,
	call	r8_abs	#
	movsd	%xmm0, -216(%rbp)	#, %sfp
	movq	-216(%rbp), %rax	# %sfp, D.4918
	movq	-16(%rbp), %rdx	# b_max, tmp257
	movq	%rax, -216(%rbp)	# D.4918, %sfp
	movsd	-216(%rbp), %xmm1	# %sfp,
	movq	%rdx, -216(%rbp)	# tmp257, %sfp
	movsd	-216(%rbp), %xmm0	# %sfp,
	call	r8_max	#
	movsd	%xmm0, -216(%rbp)	#, %sfp
	movq	-216(%rbp), %rax	# %sfp, tmp258
	movq	%rax, -16(%rbp)	# tmp258, b_max
	addl	$1, -20(%rbp)	#, i
.L26:
	cmpl	$1499, -20(%rbp)	#, i
	jle	.L27	#,
	call	r8_epsilon	#
	movsd	%xmm0, -216(%rbp)	#, %sfp
	movq	-216(%rbp), %rax	# %sfp, tmp259
	movq	%rax, -144(%rbp)	# tmp259, eps
	movsd	-32(%rbp), %xmm0	# resid_max, tmp260
	movsd	.LC15(%rip), %xmm1	#, tmp261
	divsd	%xmm1, %xmm0	# tmp261, D.4918
	divsd	-8(%rbp), %xmm0	# a_max, D.4918
	divsd	-16(%rbp), %xmm0	# b_max, D.4918
	divsd	-144(%rbp), %xmm0	# eps, tmp262
	movsd	%xmm0, -152(%rbp)	# tmp262, residn
	movq	-136(%rbp), %rax	# total, tmp263
	movq	%rax, -192(%rbp)	# tmp263, time
	movsd	-136(%rbp), %xmm0	# total, tmp264
	xorpd	%xmm1, %xmm1	# tmp265
	ucomisd	%xmm1, %xmm0	# tmp265, tmp264
	jbe	.L33	#,
	movsd	-136(%rbp), %xmm1	# total, tmp266
	movsd	.LC16(%rip), %xmm0	#, tmp267
	mulsd	%xmm1, %xmm0	# tmp266, D.4918
	movsd	-48(%rbp), %xmm1	# ops, tmp268
	divsd	%xmm0, %xmm1	# D.4918, D.4918
	movapd	%xmm1, %xmm0	# D.4918, D.4918
	movsd	%xmm0, -184(%rbp)	# D.4918, time
	jmp	.L30	#
.L33:
	movabsq	$-4616189618054758400, %rax	#, tmp269
	movq	%rax, -184(%rbp)	# tmp269, time
.L30:
	movsd	-184(%rbp), %xmm1	# time, D.4918
	movsd	.LC18(%rip), %xmm0	#, tmp270
	divsd	%xmm1, %xmm0	# D.4918, D.4918
	movsd	%xmm0, -176(%rbp)	# D.4918, time
	movsd	-136(%rbp), %xmm0	# total, tmp271
	divsd	-40(%rbp), %xmm0	# cray, D.4918
	movsd	%xmm0, -168(%rbp)	# D.4918, time
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC19, %edi	#,
	call	puts	#
	movl	$10, %edi	#,
	call	putchar	#
	movq	-64(%rbp), %rax	# b, tmp272
	addq	$11992, %rax	#, D.4917
	movq	(%rax), %rdi	# *_172, D.4918
	movq	-64(%rbp), %rax	# b, tmp273
	movq	(%rax), %rsi	# *b_21, D.4918
	movq	-144(%rbp), %rcx	# eps, tmp274
	movq	-32(%rbp), %rdx	# resid_max, tmp275
	movq	-152(%rbp), %rax	# residn, tmp276
	movq	%rdi, -216(%rbp)	# D.4918, %sfp
	movsd	-216(%rbp), %xmm4	# %sfp,
	movq	%rsi, -216(%rbp)	# D.4918, %sfp
	movsd	-216(%rbp), %xmm3	# %sfp,
	movq	%rcx, -216(%rbp)	# tmp274, %sfp
	movsd	-216(%rbp), %xmm2	# %sfp,
	movq	%rdx, -216(%rbp)	# tmp275, %sfp
	movsd	-216(%rbp), %xmm1	# %sfp,
	movq	%rax, -216(%rbp)	# tmp276, %sfp
	movsd	-216(%rbp), %xmm0	# %sfp,
	movl	$.LC20, %edi	#,
	movl	$5, %eax	#,
	call	printf	#
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC21, %edi	#,
	call	puts	#
	movl	$10, %edi	#,
	call	putchar	#
	movq	-168(%rbp), %r8	# time, D.4918
	movq	-176(%rbp), %rdi	# time, D.4918
	movq	-184(%rbp), %rsi	# time, D.4918
	movq	-192(%rbp), %rcx	# time, D.4918
	movq	-200(%rbp), %rdx	# time, D.4918
	movq	-208(%rbp), %rax	# time, D.4918
	movq	%r8, -216(%rbp)	# D.4918, %sfp
	movsd	-216(%rbp), %xmm5	# %sfp,
	movq	%rdi, -216(%rbp)	# D.4918, %sfp
	movsd	-216(%rbp), %xmm4	# %sfp,
	movq	%rsi, -216(%rbp)	# D.4918, %sfp
	movsd	-216(%rbp), %xmm3	# %sfp,
	movq	%rcx, -216(%rbp)	# D.4918, %sfp
	movsd	-216(%rbp), %xmm2	# %sfp,
	movq	%rdx, -216(%rbp)	# D.4918, %sfp
	movsd	-216(%rbp), %xmm1	# %sfp,
	movq	%rax, -216(%rbp)	# D.4918, %sfp
	movsd	-216(%rbp), %xmm0	# %sfp,
	movl	$.LC22, %edi	#,
	movl	$6, %eax	#,
	call	printf	#
	movq	-56(%rbp), %rax	# a, tmp277
	movq	%rax, %rdi	# tmp277,
	call	free	#
	movq	-64(%rbp), %rax	# b, tmp278
	movq	%rax, %rdi	# tmp278,
	call	free	#
	movq	-72(%rbp), %rax	# ipvt, tmp279
	movq	%rax, %rdi	# tmp279,
	call	free	#
	movq	-80(%rbp), %rax	# resid, tmp280
	movq	%rax, %rdi	# tmp280,
	call	free	#
	movq	-88(%rbp), %rax	# rhs, tmp281
	movq	%rax, %rdi	# tmp281,
	call	free	#
	movq	-96(%rbp), %rax	# x, tmp282
	movq	%rax, %rdi	# tmp282,
	call	free	#
	movl	$10, %edi	#,
	call	putchar	#
	movl	$.LC1, %edi	#,
	call	puts	#
	movl	$.LC23, %edi	#,
	call	puts	#
	movl	$10, %edi	#,
	call	putchar	#
	call	timestamp	#
	movl	$0, %eax	#, D.4915
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.globl	cpu_time
	.type	cpu_time, @function
cpu_time:
.LFB3:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	call	clock	#
	cvtsi2sdq	%rax, %xmm0	# D.4935, D.4936
	movsd	.LC16(%rip), %xmm1	#, tmp64
	divsd	%xmm1, %xmm0	# tmp64, tmp63
	movsd	%xmm0, -8(%rbp)	# tmp63, value
	movq	-8(%rbp), %rax	# value, D.4936
	movq	%rax, -24(%rbp)	# <retval>, %sfp
	movsd	-24(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	cpu_time, .-cpu_time
	.globl	daxpy
	.type	daxpy, @function
daxpy:
.LFB4:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# n, n
	movsd	%xmm0, -32(%rbp)	# da, da
	movq	%rsi, -40(%rbp)	# dx, dx
	movl	%edx, -24(%rbp)	# incx, incx
	movq	%rcx, -48(%rbp)	# dy, dy
	movl	%r8d, -52(%rbp)	# incy, incy
	cmpl	$0, -20(%rbp)	#, n
	jg	.L37	#,
	jmp	.L36	#
.L37:
	xorpd	%xmm0, %xmm0	# tmp148
	ucomisd	-32(%rbp), %xmm0	# da, tmp148
	jp	.L39	#,
	xorpd	%xmm0, %xmm0	# tmp149
	ucomisd	-32(%rbp), %xmm0	# da, tmp149
	jne	.L39	#,
	jmp	.L36	#
.L39:
	cmpl	$1, -24(%rbp)	#, incx
	jne	.L41	#,
	cmpl	$1, -52(%rbp)	#, incy
	je	.L42	#,
.L41:
	cmpl	$0, -24(%rbp)	#, incx
	js	.L43	#,
	movl	$0, -8(%rbp)	#, ix
	jmp	.L44	#
.L43:
	movl	$1, %eax	#, tmp150
	subl	-20(%rbp), %eax	# n, D.4941
	imull	-24(%rbp), %eax	# incx, tmp151
	movl	%eax, -8(%rbp)	# tmp151, ix
.L44:
	cmpl	$0, -52(%rbp)	#, incy
	js	.L45	#,
	movl	$0, -12(%rbp)	#, iy
	jmp	.L46	#
.L45:
	movl	$1, %eax	#, tmp152
	subl	-20(%rbp), %eax	# n, D.4941
	imull	-52(%rbp), %eax	# incy, tmp153
	movl	%eax, -12(%rbp)	# tmp153, iy
.L46:
	movl	$0, -4(%rbp)	#, i
	jmp	.L47	#
.L48:
	movl	-12(%rbp), %eax	# iy, tmp154
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4937
	movq	-48(%rbp), %rax	# dy, tmp155
	addq	%rdx, %rax	# D.4937, D.4938
	movl	-12(%rbp), %edx	# iy, tmp156
	movslq	%edx, %rdx	# tmp156, D.4937
	leaq	0(,%rdx,8), %rcx	#, D.4937
	movq	-48(%rbp), %rdx	# dy, tmp157
	addq	%rcx, %rdx	# D.4937, D.4938
	movsd	(%rdx), %xmm1	# *_105, D.4939
	movl	-8(%rbp), %edx	# ix, tmp158
	movslq	%edx, %rdx	# tmp158, D.4937
	leaq	0(,%rdx,8), %rcx	#, D.4937
	movq	-40(%rbp), %rdx	# dx, tmp159
	addq	%rcx, %rdx	# D.4937, D.4938
	movsd	(%rdx), %xmm0	# *_109, D.4939
	mulsd	-32(%rbp), %xmm0	# da, D.4939
	addsd	%xmm1, %xmm0	# D.4939, D.4939
	movsd	%xmm0, (%rax)	# D.4939, *_102
	movl	-24(%rbp), %eax	# incx, tmp160
	addl	%eax, -8(%rbp)	# tmp160, ix
	movl	-52(%rbp), %eax	# incy, tmp161
	addl	%eax, -12(%rbp)	# tmp161, iy
	addl	$1, -4(%rbp)	#, i
.L47:
	movl	-4(%rbp), %eax	# i, tmp162
	cmpl	-20(%rbp), %eax	# n, tmp162
	jl	.L48	#,
	jmp	.L49	#
.L42:
	movl	-20(%rbp), %eax	# n, tmp164
	cltd
	shrl	$30, %edx	#, tmp166
	addl	%edx, %eax	# tmp166, tmp167
	andl	$3, %eax	#, tmp168
	subl	%edx, %eax	# tmp166, tmp169
	movl	%eax, -16(%rbp)	# tmp169, m
	movl	$0, -4(%rbp)	#, i
	jmp	.L50	#
.L51:
	movl	-4(%rbp), %eax	# i, tmp170
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4937
	movq	-48(%rbp), %rax	# dy, tmp171
	addq	%rdx, %rax	# D.4937, D.4938
	movl	-4(%rbp), %edx	# i, tmp172
	movslq	%edx, %rdx	# tmp172, D.4937
	leaq	0(,%rdx,8), %rcx	#, D.4937
	movq	-48(%rbp), %rdx	# dy, tmp173
	addq	%rcx, %rdx	# D.4937, D.4938
	movsd	(%rdx), %xmm1	# *_20, D.4939
	movl	-4(%rbp), %edx	# i, tmp174
	movslq	%edx, %rdx	# tmp174, D.4937
	leaq	0(,%rdx,8), %rcx	#, D.4937
	movq	-40(%rbp), %rdx	# dx, tmp175
	addq	%rcx, %rdx	# D.4937, D.4938
	movsd	(%rdx), %xmm0	# *_25, D.4939
	mulsd	-32(%rbp), %xmm0	# da, D.4939
	addsd	%xmm1, %xmm0	# D.4939, D.4939
	movsd	%xmm0, (%rax)	# D.4939, *_17
	addl	$1, -4(%rbp)	#, i
.L50:
	movl	-4(%rbp), %eax	# i, tmp176
	cmpl	-16(%rbp), %eax	# m, tmp176
	jl	.L51	#,
	movl	-16(%rbp), %eax	# m, tmp177
	movl	%eax, -4(%rbp)	# tmp177, i
	jmp	.L52	#
.L53:
	movl	-4(%rbp), %eax	# i, tmp178
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4937
	movq	-48(%rbp), %rax	# dy, tmp179
	addq	%rdx, %rax	# D.4937, D.4938
	movl	-4(%rbp), %edx	# i, tmp180
	movslq	%edx, %rdx	# tmp180, D.4937
	leaq	0(,%rdx,8), %rcx	#, D.4937
	movq	-48(%rbp), %rdx	# dy, tmp181
	addq	%rcx, %rdx	# D.4937, D.4938
	movsd	(%rdx), %xmm1	# *_36, D.4939
	movl	-4(%rbp), %edx	# i, tmp182
	movslq	%edx, %rdx	# tmp182, D.4937
	leaq	0(,%rdx,8), %rcx	#, D.4937
	movq	-40(%rbp), %rdx	# dx, tmp183
	addq	%rcx, %rdx	# D.4937, D.4938
	movsd	(%rdx), %xmm0	# *_40, D.4939
	mulsd	-32(%rbp), %xmm0	# da, D.4939
	addsd	%xmm1, %xmm0	# D.4939, D.4939
	movsd	%xmm0, (%rax)	# D.4939, *_33
	movl	-4(%rbp), %eax	# i, tmp184
	cltq
	addq	$1, %rax	#, D.4940
	leaq	0(,%rax,8), %rdx	#, D.4940
	movq	-48(%rbp), %rax	# dy, tmp185
	addq	%rdx, %rax	# D.4940, D.4938
	movl	-4(%rbp), %edx	# i, tmp186
	movslq	%edx, %rdx	# tmp186, D.4940
	addq	$1, %rdx	#, D.4940
	leaq	0(,%rdx,8), %rcx	#, D.4940
	movq	-48(%rbp), %rdx	# dy, tmp187
	addq	%rcx, %rdx	# D.4940, D.4938
	movsd	(%rdx), %xmm1	# *_51, D.4939
	movl	-4(%rbp), %edx	# i, tmp188
	movslq	%edx, %rdx	# tmp188, D.4940
	addq	$1, %rdx	#, D.4940
	leaq	0(,%rdx,8), %rcx	#, D.4940
	movq	-40(%rbp), %rdx	# dx, tmp189
	addq	%rcx, %rdx	# D.4940, D.4938
	movsd	(%rdx), %xmm0	# *_56, D.4939
	mulsd	-32(%rbp), %xmm0	# da, D.4939
	addsd	%xmm1, %xmm0	# D.4939, D.4939
	movsd	%xmm0, (%rax)	# D.4939, *_47
	movl	-4(%rbp), %eax	# i, tmp190
	cltq
	addq	$2, %rax	#, D.4940
	leaq	0(,%rax,8), %rdx	#, D.4940
	movq	-48(%rbp), %rax	# dy, tmp191
	addq	%rdx, %rax	# D.4940, D.4938
	movl	-4(%rbp), %edx	# i, tmp192
	movslq	%edx, %rdx	# tmp192, D.4940
	addq	$2, %rdx	#, D.4940
	leaq	0(,%rdx,8), %rcx	#, D.4940
	movq	-48(%rbp), %rdx	# dy, tmp193
	addq	%rcx, %rdx	# D.4940, D.4938
	movsd	(%rdx), %xmm1	# *_67, D.4939
	movl	-4(%rbp), %edx	# i, tmp194
	movslq	%edx, %rdx	# tmp194, D.4940
	addq	$2, %rdx	#, D.4940
	leaq	0(,%rdx,8), %rcx	#, D.4940
	movq	-40(%rbp), %rdx	# dx, tmp195
	addq	%rcx, %rdx	# D.4940, D.4938
	movsd	(%rdx), %xmm0	# *_72, D.4939
	mulsd	-32(%rbp), %xmm0	# da, D.4939
	addsd	%xmm1, %xmm0	# D.4939, D.4939
	movsd	%xmm0, (%rax)	# D.4939, *_63
	movl	-4(%rbp), %eax	# i, tmp196
	cltq
	addq	$3, %rax	#, D.4940
	leaq	0(,%rax,8), %rdx	#, D.4940
	movq	-48(%rbp), %rax	# dy, tmp197
	addq	%rdx, %rax	# D.4940, D.4938
	movl	-4(%rbp), %edx	# i, tmp198
	movslq	%edx, %rdx	# tmp198, D.4940
	addq	$3, %rdx	#, D.4940
	leaq	0(,%rdx,8), %rcx	#, D.4940
	movq	-48(%rbp), %rdx	# dy, tmp199
	addq	%rcx, %rdx	# D.4940, D.4938
	movsd	(%rdx), %xmm1	# *_83, D.4939
	movl	-4(%rbp), %edx	# i, tmp200
	movslq	%edx, %rdx	# tmp200, D.4940
	addq	$3, %rdx	#, D.4940
	leaq	0(,%rdx,8), %rcx	#, D.4940
	movq	-40(%rbp), %rdx	# dx, tmp201
	addq	%rcx, %rdx	# D.4940, D.4938
	movsd	(%rdx), %xmm0	# *_88, D.4939
	mulsd	-32(%rbp), %xmm0	# da, D.4939
	addsd	%xmm1, %xmm0	# D.4939, D.4939
	movsd	%xmm0, (%rax)	# D.4939, *_79
	addl	$4, -4(%rbp)	#, i
.L52:
	movl	-4(%rbp), %eax	# i, tmp202
	cmpl	-20(%rbp), %eax	# n, tmp202
	jl	.L53	#,
.L49:
	nop
.L36:
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	daxpy, .-daxpy
	.globl	ddot
	.type	ddot, @function
ddot:
.LFB5:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)	# n, n
	movq	%rsi, -48(%rbp)	# dx, dx
	movl	%edx, -40(%rbp)	# incx, incx
	movq	%rcx, -56(%rbp)	# dy, dy
	movl	%r8d, -60(%rbp)	# incy, incy
	movl	$0, %eax	#, tmp138
	movq	%rax, -8(%rbp)	# tmp138, dtemp
	cmpl	$0, -36(%rbp)	#, n
	jg	.L56	#,
	movq	-8(%rbp), %rax	# dtemp, D.4942
	jmp	.L57	#
.L56:
	cmpl	$1, -40(%rbp)	#, incx
	jne	.L58	#,
	cmpl	$1, -60(%rbp)	#, incy
	je	.L59	#,
.L58:
	cmpl	$0, -40(%rbp)	#, incx
	js	.L60	#,
	movl	$0, -16(%rbp)	#, ix
	jmp	.L61	#
.L60:
	movl	$1, %eax	#, tmp139
	subl	-36(%rbp), %eax	# n, D.4946
	imull	-40(%rbp), %eax	# incx, tmp140
	movl	%eax, -16(%rbp)	# tmp140, ix
.L61:
	cmpl	$0, -60(%rbp)	#, incy
	js	.L62	#,
	movl	$0, -20(%rbp)	#, iy
	jmp	.L63	#
.L62:
	movl	$1, %eax	#, tmp141
	subl	-36(%rbp), %eax	# n, D.4946
	imull	-60(%rbp), %eax	# incy, tmp142
	movl	%eax, -20(%rbp)	# tmp142, iy
.L63:
	movl	$0, -12(%rbp)	#, i
	jmp	.L64	#
.L65:
	movl	-16(%rbp), %eax	# ix, tmp143
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4943
	movq	-48(%rbp), %rax	# dx, tmp144
	addq	%rdx, %rax	# D.4943, D.4944
	movsd	(%rax), %xmm1	# *_102, D.4942
	movl	-20(%rbp), %eax	# iy, tmp145
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4943
	movq	-56(%rbp), %rax	# dy, tmp146
	addq	%rdx, %rax	# D.4943, D.4944
	movsd	(%rax), %xmm0	# *_106, D.4942
	mulsd	%xmm1, %xmm0	# D.4942, D.4942
	movsd	-8(%rbp), %xmm1	# dtemp, tmp148
	addsd	%xmm1, %xmm0	# tmp148, tmp147
	movsd	%xmm0, -8(%rbp)	# tmp147, dtemp
	movl	-40(%rbp), %eax	# incx, tmp149
	addl	%eax, -16(%rbp)	# tmp149, ix
	movl	-60(%rbp), %eax	# incy, tmp150
	addl	%eax, -20(%rbp)	# tmp150, iy
	addl	$1, -12(%rbp)	#, i
.L64:
	movl	-12(%rbp), %eax	# i, tmp151
	cmpl	-36(%rbp), %eax	# n, tmp151
	jl	.L65	#,
	jmp	.L66	#
.L59:
	movl	-36(%rbp), %ecx	# n, tmp153
	movl	$1717986919, %edx	#, tmp155
	movl	%ecx, %eax	# tmp153, tmp191
	imull	%edx	# tmp155
	sarl	%edx	# tmp156
	movl	%ecx, %eax	# tmp153, tmp157
	sarl	$31, %eax	#, tmp157
	subl	%eax, %edx	# tmp157, tmp152
	movl	%edx, %eax	# tmp152, tmp158
	sall	$2, %eax	#, tmp158
	addl	%edx, %eax	# tmp152, tmp158
	subl	%eax, %ecx	# tmp158, tmp159
	movl	%ecx, %eax	# tmp159, tmp159
	movl	%eax, -24(%rbp)	# tmp159, m
	movl	$0, -12(%rbp)	#, i
	jmp	.L67	#
.L68:
	movl	-12(%rbp), %eax	# i, tmp160
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4943
	movq	-48(%rbp), %rax	# dx, tmp161
	addq	%rdx, %rax	# D.4943, D.4944
	movsd	(%rax), %xmm1	# *_23, D.4942
	movl	-12(%rbp), %eax	# i, tmp162
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4943
	movq	-56(%rbp), %rax	# dy, tmp163
	addq	%rdx, %rax	# D.4943, D.4944
	movsd	(%rax), %xmm0	# *_28, D.4942
	mulsd	%xmm1, %xmm0	# D.4942, D.4942
	movsd	-8(%rbp), %xmm1	# dtemp, tmp165
	addsd	%xmm1, %xmm0	# tmp165, tmp164
	movsd	%xmm0, -8(%rbp)	# tmp164, dtemp
	addl	$1, -12(%rbp)	#, i
.L67:
	movl	-12(%rbp), %eax	# i, tmp166
	cmpl	-24(%rbp), %eax	# m, tmp166
	jl	.L68	#,
	movl	-24(%rbp), %eax	# m, tmp167
	movl	%eax, -12(%rbp)	# tmp167, i
	jmp	.L69	#
.L70:
	movl	-12(%rbp), %eax	# i, tmp168
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4943
	movq	-48(%rbp), %rax	# dx, tmp169
	addq	%rdx, %rax	# D.4943, D.4944
	movsd	(%rax), %xmm1	# *_36, D.4942
	movl	-12(%rbp), %eax	# i, tmp170
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4943
	movq	-56(%rbp), %rax	# dy, tmp171
	addq	%rdx, %rax	# D.4943, D.4944
	movsd	(%rax), %xmm0	# *_40, D.4942
	mulsd	%xmm1, %xmm0	# D.4942, D.4942
	movapd	%xmm0, %xmm1	# D.4942, D.4942
	addsd	-8(%rbp), %xmm1	# dtemp, D.4942
	movl	-12(%rbp), %eax	# i, tmp172
	cltq
	addq	$1, %rax	#, D.4945
	leaq	0(,%rax,8), %rdx	#, D.4945
	movq	-48(%rbp), %rax	# dx, tmp173
	addq	%rdx, %rax	# D.4945, D.4944
	movsd	(%rax), %xmm2	# *_47, D.4942
	movl	-12(%rbp), %eax	# i, tmp174
	cltq
	addq	$1, %rax	#, D.4945
	leaq	0(,%rax,8), %rdx	#, D.4945
	movq	-56(%rbp), %rax	# dy, tmp175
	addq	%rdx, %rax	# D.4945, D.4944
	movsd	(%rax), %xmm0	# *_52, D.4942
	mulsd	%xmm2, %xmm0	# D.4942, D.4942
	addsd	%xmm0, %xmm1	# D.4942, D.4942
	movl	-12(%rbp), %eax	# i, tmp176
	cltq
	addq	$2, %rax	#, D.4945
	leaq	0(,%rax,8), %rdx	#, D.4945
	movq	-48(%rbp), %rax	# dx, tmp177
	addq	%rdx, %rax	# D.4945, D.4944
	movsd	(%rax), %xmm2	# *_59, D.4942
	movl	-12(%rbp), %eax	# i, tmp178
	cltq
	addq	$2, %rax	#, D.4945
	leaq	0(,%rax,8), %rdx	#, D.4945
	movq	-56(%rbp), %rax	# dy, tmp179
	addq	%rdx, %rax	# D.4945, D.4944
	movsd	(%rax), %xmm0	# *_64, D.4942
	mulsd	%xmm2, %xmm0	# D.4942, D.4942
	addsd	%xmm0, %xmm1	# D.4942, D.4942
	movl	-12(%rbp), %eax	# i, tmp180
	cltq
	addq	$3, %rax	#, D.4945
	leaq	0(,%rax,8), %rdx	#, D.4945
	movq	-48(%rbp), %rax	# dx, tmp181
	addq	%rdx, %rax	# D.4945, D.4944
	movsd	(%rax), %xmm2	# *_71, D.4942
	movl	-12(%rbp), %eax	# i, tmp182
	cltq
	addq	$3, %rax	#, D.4945
	leaq	0(,%rax,8), %rdx	#, D.4945
	movq	-56(%rbp), %rax	# dy, tmp183
	addq	%rdx, %rax	# D.4945, D.4944
	movsd	(%rax), %xmm0	# *_76, D.4942
	mulsd	%xmm2, %xmm0	# D.4942, D.4942
	addsd	%xmm0, %xmm1	# D.4942, D.4942
	movl	-12(%rbp), %eax	# i, tmp184
	cltq
	addq	$4, %rax	#, D.4945
	leaq	0(,%rax,8), %rdx	#, D.4945
	movq	-48(%rbp), %rax	# dx, tmp185
	addq	%rdx, %rax	# D.4945, D.4944
	movsd	(%rax), %xmm2	# *_83, D.4942
	movl	-12(%rbp), %eax	# i, tmp186
	cltq
	addq	$4, %rax	#, D.4945
	leaq	0(,%rax,8), %rdx	#, D.4945
	movq	-56(%rbp), %rax	# dy, tmp187
	addq	%rdx, %rax	# D.4945, D.4944
	movsd	(%rax), %xmm0	# *_88, D.4942
	mulsd	%xmm2, %xmm0	# D.4942, D.4942
	addsd	%xmm1, %xmm0	# D.4942, tmp188
	movsd	%xmm0, -8(%rbp)	# tmp188, dtemp
	addl	$5, -12(%rbp)	#, i
.L69:
	movl	-12(%rbp), %eax	# i, tmp189
	cmpl	-36(%rbp), %eax	# n, tmp189
	jl	.L70	#,
.L66:
	movq	-8(%rbp), %rax	# dtemp, D.4942
.L57:
	movq	%rax, -72(%rbp)	# <retval>, %sfp
	movsd	-72(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ddot, .-ddot
	.globl	dgefa
	.type	dgefa, @function
dgefa:
.LFB6:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# a, a
	movl	%esi, -44(%rbp)	# lda, lda
	movl	%edx, -48(%rbp)	# n, n
	movq	%rcx, -56(%rbp)	# ipvt, ipvt
	movl	$0, -4(%rbp)	#, info
	movl	$1, -12(%rbp)	#, k
	jmp	.L72	#
.L80:
	movl	-12(%rbp), %eax	# k, tmp183
	movslq	%eax, %rdx	# tmp183, D.4948
	movl	-12(%rbp), %eax	# k, tmp184
	subl	$1, %eax	#, D.4947
	imull	-44(%rbp), %eax	# lda, D.4947
	cltq
	addq	%rdx, %rax	# D.4948, D.4948
	salq	$3, %rax	#, D.4948
	leaq	-8(%rax), %rdx	#, D.4948
	movq	-40(%rbp), %rax	# a, tmp185
	leaq	(%rdx,%rax), %rcx	#, D.4949
	movl	-12(%rbp), %eax	# k, tmp186
	movl	-48(%rbp), %edx	# n, tmp187
	subl	%eax, %edx	# tmp186, D.4947
	movl	%edx, %eax	# D.4947, D.4947
	addl	$1, %eax	#, D.4947
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.4949,
	movl	%eax, %edi	# D.4947,
	call	idamax	#
	movl	-12(%rbp), %edx	# k, tmp188
	addl	%edx, %eax	# tmp188, D.4947
	subl	$1, %eax	#, tmp189
	movl	%eax, -16(%rbp)	# tmp189, l
	movl	-12(%rbp), %eax	# k, tmp190
	cltq
	salq	$2, %rax	#, D.4950
	leaq	-4(%rax), %rdx	#, D.4948
	movq	-56(%rbp), %rax	# ipvt, tmp191
	addq	%rax, %rdx	# tmp191, D.4951
	movl	-16(%rbp), %eax	# l, tmp192
	movl	%eax, (%rdx)	# tmp192, *_29
	movl	-16(%rbp), %eax	# l, tmp193
	leal	-1(%rax), %edx	#, D.4947
	movl	-12(%rbp), %eax	# k, tmp194
	subl	$1, %eax	#, D.4947
	imull	-44(%rbp), %eax	# lda, D.4947
	addl	%edx, %eax	# D.4947, D.4947
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4950
	movq	-40(%rbp), %rax	# a, tmp195
	addq	%rdx, %rax	# D.4950, D.4949
	movsd	(%rax), %xmm0	# *_36, D.4952
	xorpd	%xmm1, %xmm1	# tmp196
	ucomisd	%xmm1, %xmm0	# tmp196, D.4952
	jp	.L73	#,
	xorpd	%xmm1, %xmm1	# tmp197
	ucomisd	%xmm1, %xmm0	# tmp197, D.4952
	jne	.L73	#,
	movl	-12(%rbp), %eax	# k, tmp198
	movl	%eax, -4(%rbp)	# tmp198, info
	jmp	.L75	#
.L73:
	movl	-16(%rbp), %eax	# l, tmp199
	cmpl	-12(%rbp), %eax	# k, tmp199
	je	.L76	#,
	movl	-16(%rbp), %eax	# l, tmp200
	leal	-1(%rax), %edx	#, D.4947
	movl	-12(%rbp), %eax	# k, tmp201
	subl	$1, %eax	#, D.4947
	imull	-44(%rbp), %eax	# lda, D.4947
	addl	%edx, %eax	# D.4947, D.4947
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4950
	movq	-40(%rbp), %rax	# a, tmp202
	addq	%rdx, %rax	# D.4950, D.4949
	movq	(%rax), %rax	# *_45, tmp203
	movq	%rax, -24(%rbp)	# tmp203, t
	movl	-16(%rbp), %eax	# l, tmp204
	leal	-1(%rax), %edx	#, D.4947
	movl	-12(%rbp), %eax	# k, tmp205
	subl	$1, %eax	#, D.4947
	imull	-44(%rbp), %eax	# lda, D.4947
	addl	%edx, %eax	# D.4947, D.4947
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4950
	movq	-40(%rbp), %rax	# a, tmp206
	addq	%rax, %rdx	# tmp206, D.4949
	movl	-44(%rbp), %eax	# lda, tmp207
	leal	1(%rax), %ecx	#, D.4947
	movl	-12(%rbp), %eax	# k, tmp208
	subl	$1, %eax	#, D.4947
	imull	%ecx, %eax	# D.4947, D.4947
	cltq
	leaq	0(,%rax,8), %rcx	#, D.4950
	movq	-40(%rbp), %rax	# a, tmp209
	addq	%rcx, %rax	# D.4950, D.4949
	movq	(%rax), %rax	# *_59, D.4952
	movq	%rax, (%rdx)	# D.4952, *_53
	movl	-44(%rbp), %eax	# lda, tmp210
	leal	1(%rax), %edx	#, D.4947
	movl	-12(%rbp), %eax	# k, tmp211
	subl	$1, %eax	#, D.4947
	imull	%edx, %eax	# D.4947, D.4947
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4950
	movq	-40(%rbp), %rax	# a, tmp212
	addq	%rax, %rdx	# tmp212, D.4949
	movq	-24(%rbp), %rax	# t, tmp213
	movq	%rax, (%rdx)	# tmp213, *_66
.L76:
	movl	-44(%rbp), %eax	# lda, tmp214
	leal	1(%rax), %edx	#, D.4947
	movl	-12(%rbp), %eax	# k, tmp215
	subl	$1, %eax	#, D.4947
	imull	%edx, %eax	# D.4947, D.4947
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4950
	movq	-40(%rbp), %rax	# a, tmp216
	addq	%rdx, %rax	# D.4950, D.4949
	movsd	(%rax), %xmm1	# *_72, D.4952
	movsd	.LC17(%rip), %xmm0	#, tmp218
	divsd	%xmm1, %xmm0	# D.4952, tmp217
	movsd	%xmm0, -24(%rbp)	# tmp217, t
	movl	-12(%rbp), %eax	# k, tmp219
	movslq	%eax, %rdx	# tmp219, D.4948
	movl	-12(%rbp), %eax	# k, tmp220
	subl	$1, %eax	#, D.4947
	imull	-44(%rbp), %eax	# lda, D.4947
	cltq
	addq	%rdx, %rax	# D.4948, D.4948
	leaq	0(,%rax,8), %rdx	#, D.4948
	movq	-40(%rbp), %rax	# a, tmp221
	leaq	(%rdx,%rax), %rsi	#, D.4949
	movl	-12(%rbp), %eax	# k, tmp222
	movl	-48(%rbp), %edx	# n, tmp223
	movl	%edx, %ecx	# tmp223, D.4947
	subl	%eax, %ecx	# tmp222, D.4947
	movq	-24(%rbp), %rax	# t, tmp224
	movl	$1, %edx	#,
	movq	%rax, -64(%rbp)	# tmp224, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	movl	%ecx, %edi	# D.4947,
	call	dscal	#
	movl	-12(%rbp), %eax	# k, tmp228
	addl	$1, %eax	#, tmp227
	movl	%eax, -8(%rbp)	# tmp227, j
	jmp	.L77	#
.L79:
	movl	-16(%rbp), %eax	# l, tmp229
	leal	-1(%rax), %edx	#, D.4947
	movl	-8(%rbp), %eax	# j, tmp230
	subl	$1, %eax	#, D.4947
	imull	-44(%rbp), %eax	# lda, D.4947
	addl	%edx, %eax	# D.4947, D.4947
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4950
	movq	-40(%rbp), %rax	# a, tmp231
	addq	%rdx, %rax	# D.4950, D.4949
	movq	(%rax), %rax	# *_90, tmp232
	movq	%rax, -24(%rbp)	# tmp232, t
	movl	-16(%rbp), %eax	# l, tmp233
	cmpl	-12(%rbp), %eax	# k, tmp233
	je	.L78	#,
	movl	-16(%rbp), %eax	# l, tmp234
	leal	-1(%rax), %edx	#, D.4947
	movl	-8(%rbp), %eax	# j, tmp235
	subl	$1, %eax	#, D.4947
	imull	-44(%rbp), %eax	# lda, D.4947
	addl	%edx, %eax	# D.4947, D.4947
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4950
	movq	-40(%rbp), %rax	# a, tmp236
	addq	%rax, %rdx	# tmp236, D.4949
	movl	-12(%rbp), %eax	# k, tmp237
	leal	-1(%rax), %ecx	#, D.4947
	movl	-8(%rbp), %eax	# j, tmp238
	subl	$1, %eax	#, D.4947
	imull	-44(%rbp), %eax	# lda, D.4947
	addl	%ecx, %eax	# D.4947, D.4947
	cltq
	leaq	0(,%rax,8), %rcx	#, D.4950
	movq	-40(%rbp), %rax	# a, tmp239
	addq	%rcx, %rax	# D.4950, D.4949
	movq	(%rax), %rax	# *_105, D.4952
	movq	%rax, (%rdx)	# D.4952, *_98
	movl	-12(%rbp), %eax	# k, tmp240
	leal	-1(%rax), %edx	#, D.4947
	movl	-8(%rbp), %eax	# j, tmp241
	subl	$1, %eax	#, D.4947
	imull	-44(%rbp), %eax	# lda, D.4947
	addl	%edx, %eax	# D.4947, D.4947
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4950
	movq	-40(%rbp), %rax	# a, tmp242
	addq	%rax, %rdx	# tmp242, D.4949
	movq	-24(%rbp), %rax	# t, tmp243
	movq	%rax, (%rdx)	# tmp243, *_113
.L78:
	movl	-12(%rbp), %eax	# k, tmp244
	movslq	%eax, %rdx	# tmp244, D.4948
	movl	-8(%rbp), %eax	# j, tmp245
	subl	$1, %eax	#, D.4947
	imull	-44(%rbp), %eax	# lda, D.4947
	cltq
	addq	%rdx, %rax	# D.4948, D.4948
	leaq	0(,%rax,8), %rdx	#, D.4948
	movq	-40(%rbp), %rax	# a, tmp246
	addq	%rax, %rdx	# tmp246, D.4949
	movl	-12(%rbp), %eax	# k, tmp247
	movslq	%eax, %rcx	# tmp247, D.4948
	movl	-12(%rbp), %eax	# k, tmp248
	subl	$1, %eax	#, D.4947
	imull	-44(%rbp), %eax	# lda, D.4947
	cltq
	addq	%rcx, %rax	# D.4948, D.4948
	leaq	0(,%rax,8), %rcx	#, D.4948
	movq	-40(%rbp), %rax	# a, tmp249
	leaq	(%rcx,%rax), %rsi	#, D.4949
	movl	-12(%rbp), %eax	# k, tmp250
	movl	-48(%rbp), %ecx	# n, tmp251
	movl	%ecx, %edi	# tmp251, D.4947
	subl	%eax, %edi	# tmp250, D.4947
	movq	-24(%rbp), %rax	# t, tmp252
	movl	$1, %r8d	#,
	movq	%rdx, %rcx	# D.4949,
	movl	$1, %edx	#,
	movq	%rax, -64(%rbp)	# tmp252, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	call	daxpy	#
	addl	$1, -8(%rbp)	#, j
.L77:
	movl	-8(%rbp), %eax	# j, tmp253
	cmpl	-48(%rbp), %eax	# n, tmp253
	jle	.L79	#,
.L75:
	addl	$1, -12(%rbp)	#, k
.L72:
	movl	-48(%rbp), %eax	# n, tmp254
	subl	$1, %eax	#, D.4947
	cmpl	-12(%rbp), %eax	# k, D.4947
	jge	.L80	#,
	movl	-48(%rbp), %eax	# n, tmp255
	cltq
	salq	$2, %rax	#, D.4950
	leaq	-4(%rax), %rdx	#, D.4948
	movq	-56(%rbp), %rax	# ipvt, tmp256
	addq	%rax, %rdx	# tmp256, D.4951
	movl	-48(%rbp), %eax	# n, tmp257
	movl	%eax, (%rdx)	# tmp257, *_134
	movl	-44(%rbp), %eax	# lda, tmp258
	leal	1(%rax), %edx	#, D.4947
	movl	-48(%rbp), %eax	# n, tmp259
	subl	$1, %eax	#, D.4947
	imull	%edx, %eax	# D.4947, D.4947
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4950
	movq	-40(%rbp), %rax	# a, tmp260
	addq	%rdx, %rax	# D.4950, D.4949
	movsd	(%rax), %xmm0	# *_140, D.4952
	xorpd	%xmm1, %xmm1	# tmp261
	ucomisd	%xmm1, %xmm0	# tmp261, D.4952
	jp	.L81	#,
	xorpd	%xmm1, %xmm1	# tmp262
	ucomisd	%xmm1, %xmm0	# tmp262, D.4952
	jne	.L81	#,
	movl	-48(%rbp), %eax	# n, tmp263
	movl	%eax, -4(%rbp)	# tmp263, info
.L81:
	movl	-4(%rbp), %eax	# info, D.4947
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	dgefa, .-dgefa
	.globl	dgesl
	.type	dgesl, @function
dgesl:
.LFB7:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)	# a, a
	movl	%esi, -36(%rbp)	# lda, lda
	movl	%edx, -40(%rbp)	# n, n
	movq	%rcx, -48(%rbp)	# ipvt, ipvt
	movq	%r8, -56(%rbp)	# b, b
	movl	%r9d, -60(%rbp)	# job, job
	cmpl	$0, -60(%rbp)	#, job
	jne	.L87	#,
	movl	$1, -12(%rbp)	#, k
	jmp	.L88	#
.L90:
	movl	-12(%rbp), %eax	# k, tmp187
	cltq
	salq	$2, %rax	#, D.4954
	leaq	-4(%rax), %rdx	#, D.4955
	movq	-48(%rbp), %rax	# ipvt, tmp188
	addq	%rdx, %rax	# D.4955, D.4956
	movl	(%rax), %eax	# *_13, tmp189
	movl	%eax, -16(%rbp)	# tmp189, l
	movl	-16(%rbp), %eax	# l, tmp190
	cltq
	salq	$3, %rax	#, D.4954
	leaq	-8(%rax), %rdx	#, D.4955
	movq	-56(%rbp), %rax	# b, tmp191
	addq	%rdx, %rax	# D.4955, D.4957
	movq	(%rax), %rax	# *_19, tmp192
	movq	%rax, -24(%rbp)	# tmp192, t
	movl	-16(%rbp), %eax	# l, tmp193
	cmpl	-12(%rbp), %eax	# k, tmp193
	je	.L89	#,
	movl	-16(%rbp), %eax	# l, tmp194
	cltq
	salq	$3, %rax	#, D.4954
	leaq	-8(%rax), %rdx	#, D.4955
	movq	-56(%rbp), %rax	# b, tmp195
	addq	%rax, %rdx	# tmp195, D.4957
	movl	-12(%rbp), %eax	# k, tmp196
	cltq
	salq	$3, %rax	#, D.4954
	leaq	-8(%rax), %rcx	#, D.4955
	movq	-56(%rbp), %rax	# b, tmp197
	addq	%rcx, %rax	# D.4955, D.4957
	movq	(%rax), %rax	# *_28, D.4958
	movq	%rax, (%rdx)	# D.4958, *_24
	movl	-12(%rbp), %eax	# k, tmp198
	cltq
	salq	$3, %rax	#, D.4954
	leaq	-8(%rax), %rdx	#, D.4955
	movq	-56(%rbp), %rax	# b, tmp199
	addq	%rax, %rdx	# tmp199, D.4957
	movq	-24(%rbp), %rax	# t, tmp200
	movq	%rax, (%rdx)	# tmp200, *_33
.L89:
	movl	-12(%rbp), %eax	# k, tmp201
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4954
	movq	-56(%rbp), %rax	# b, tmp202
	addq	%rax, %rdx	# tmp202, D.4957
	movl	-12(%rbp), %eax	# k, tmp203
	movslq	%eax, %rcx	# tmp203, D.4955
	movl	-12(%rbp), %eax	# k, tmp204
	subl	$1, %eax	#, D.4953
	imull	-36(%rbp), %eax	# lda, D.4953
	cltq
	addq	%rcx, %rax	# D.4955, D.4955
	leaq	0(,%rax,8), %rcx	#, D.4955
	movq	-32(%rbp), %rax	# a, tmp205
	leaq	(%rcx,%rax), %rsi	#, D.4957
	movl	-12(%rbp), %eax	# k, tmp206
	movl	-40(%rbp), %ecx	# n, tmp207
	movl	%ecx, %edi	# tmp207, D.4953
	subl	%eax, %edi	# tmp206, D.4953
	movq	-24(%rbp), %rax	# t, tmp208
	movl	$1, %r8d	#,
	movq	%rdx, %rcx	# D.4957,
	movl	$1, %edx	#,
	movq	%rax, -72(%rbp)	# tmp208, %sfp
	movsd	-72(%rbp), %xmm0	# %sfp,
	call	daxpy	#
	addl	$1, -12(%rbp)	#, k
.L88:
	movl	-40(%rbp), %eax	# n, tmp209
	subl	$1, %eax	#, D.4953
	cmpl	-12(%rbp), %eax	# k, D.4953
	jge	.L90	#,
	movl	-40(%rbp), %eax	# n, tmp210
	movl	%eax, -12(%rbp)	# tmp210, k
	jmp	.L91	#
.L92:
	movl	-12(%rbp), %eax	# k, tmp211
	cltq
	salq	$3, %rax	#, D.4954
	leaq	-8(%rax), %rdx	#, D.4955
	movq	-56(%rbp), %rax	# b, tmp212
	addq	%rdx, %rax	# D.4955, D.4957
	movl	-12(%rbp), %edx	# k, tmp213
	movslq	%edx, %rdx	# tmp213, D.4954
	salq	$3, %rdx	#, D.4954
	leaq	-8(%rdx), %rcx	#, D.4955
	movq	-56(%rbp), %rdx	# b, tmp214
	addq	%rcx, %rdx	# D.4955, D.4957
	movsd	(%rdx), %xmm0	# *_56, D.4958
	movl	-36(%rbp), %edx	# lda, tmp215
	leal	1(%rdx), %ecx	#, D.4953
	movl	-12(%rbp), %edx	# k, tmp216
	subl	$1, %edx	#, D.4953
	imull	%ecx, %edx	# D.4953, D.4953
	movslq	%edx, %rdx	# D.4953, D.4954
	leaq	0(,%rdx,8), %rcx	#, D.4954
	movq	-32(%rbp), %rdx	# a, tmp217
	addq	%rcx, %rdx	# D.4954, D.4957
	movsd	(%rdx), %xmm1	# *_63, D.4958
	divsd	%xmm1, %xmm0	# D.4958, D.4958
	movsd	%xmm0, (%rax)	# D.4958, *_52
	movl	-12(%rbp), %eax	# k, tmp218
	cltq
	salq	$3, %rax	#, D.4954
	leaq	-8(%rax), %rdx	#, D.4955
	movq	-56(%rbp), %rax	# b, tmp219
	addq	%rdx, %rax	# D.4955, D.4957
	movsd	(%rax), %xmm1	# *_69, D.4958
	movsd	.LC14(%rip), %xmm0	#, tmp221
	xorpd	%xmm1, %xmm0	# D.4958, tmp220
	movsd	%xmm0, -24(%rbp)	# tmp220, t
	movl	-12(%rbp), %eax	# k, tmp222
	subl	$1, %eax	#, D.4953
	imull	-36(%rbp), %eax	# lda, D.4953
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4954
	movq	-32(%rbp), %rax	# a, tmp223
	leaq	(%rdx,%rax), %rsi	#, D.4957
	movl	-12(%rbp), %eax	# k, tmp224
	leal	-1(%rax), %edi	#, D.4953
	movq	-56(%rbp), %rdx	# b, tmp225
	movq	-24(%rbp), %rax	# t, tmp226
	movl	$1, %r8d	#,
	movq	%rdx, %rcx	# tmp225,
	movl	$1, %edx	#,
	movq	%rax, -72(%rbp)	# tmp226, %sfp
	movsd	-72(%rbp), %xmm0	# %sfp,
	call	daxpy	#
	subl	$1, -12(%rbp)	#, k
.L91:
	cmpl	$0, -12(%rbp)	#, k
	jg	.L92	#,
	jmp	.L86	#
.L87:
	movl	$1, -12(%rbp)	#, k
	jmp	.L94	#
.L95:
	movl	-12(%rbp), %eax	# k, tmp227
	subl	$1, %eax	#, D.4953
	imull	-36(%rbp), %eax	# lda, D.4953
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4954
	movq	-32(%rbp), %rax	# a, tmp228
	leaq	(%rdx,%rax), %rsi	#, D.4957
	movl	-12(%rbp), %eax	# k, tmp229
	leal	-1(%rax), %edi	#, D.4953
	movq	-56(%rbp), %rax	# b, tmp230
	movl	$1, %r8d	#,
	movq	%rax, %rcx	# tmp230,
	movl	$1, %edx	#,
	call	ddot	#
	movsd	%xmm0, -72(%rbp)	#, %sfp
	movq	-72(%rbp), %rax	# %sfp, tmp231
	movq	%rax, -24(%rbp)	# tmp231, t
	movl	-12(%rbp), %eax	# k, tmp232
	cltq
	salq	$3, %rax	#, D.4954
	leaq	-8(%rax), %rdx	#, D.4955
	movq	-56(%rbp), %rax	# b, tmp233
	addq	%rdx, %rax	# D.4955, D.4957
	movl	-12(%rbp), %edx	# k, tmp234
	movslq	%edx, %rdx	# tmp234, D.4954
	salq	$3, %rdx	#, D.4954
	leaq	-8(%rdx), %rcx	#, D.4955
	movq	-56(%rbp), %rdx	# b, tmp235
	addq	%rcx, %rdx	# D.4955, D.4957
	movsd	(%rdx), %xmm0	# *_94, D.4958
	subsd	-24(%rbp), %xmm0	# t, D.4958
	movl	-36(%rbp), %edx	# lda, tmp236
	leal	1(%rdx), %ecx	#, D.4953
	movl	-12(%rbp), %edx	# k, tmp237
	subl	$1, %edx	#, D.4953
	imull	%ecx, %edx	# D.4953, D.4953
	movslq	%edx, %rdx	# D.4953, D.4954
	leaq	0(,%rdx,8), %rcx	#, D.4954
	movq	-32(%rbp), %rdx	# a, tmp238
	addq	%rcx, %rdx	# D.4954, D.4957
	movsd	(%rdx), %xmm1	# *_102, D.4958
	divsd	%xmm1, %xmm0	# D.4958, D.4958
	movsd	%xmm0, (%rax)	# D.4958, *_90
	addl	$1, -12(%rbp)	#, k
.L94:
	movl	-12(%rbp), %eax	# k, tmp239
	cmpl	-40(%rbp), %eax	# n, tmp239
	jle	.L95	#,
	movl	-40(%rbp), %eax	# n, tmp243
	subl	$1, %eax	#, tmp242
	movl	%eax, -12(%rbp)	# tmp242, k
	jmp	.L96	#
.L98:
	movl	-12(%rbp), %eax	# k, tmp244
	cltq
	salq	$3, %rax	#, D.4954
	leaq	-8(%rax), %rdx	#, D.4955
	movq	-56(%rbp), %rax	# b, tmp245
	leaq	(%rdx,%rax), %rbx	#, D.4957
	movl	-12(%rbp), %eax	# k, tmp246
	cltq
	salq	$3, %rax	#, D.4954
	leaq	-8(%rax), %rdx	#, D.4955
	movq	-56(%rbp), %rax	# b, tmp247
	addq	%rdx, %rax	# D.4955, D.4957
	movsd	(%rax), %xmm2	# *_114, D.4958
	movsd	%xmm2, -72(%rbp)	# D.4958, %sfp
	movl	-12(%rbp), %eax	# k, tmp248
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4954
	movq	-56(%rbp), %rax	# b, tmp249
	addq	%rax, %rdx	# tmp249, D.4957
	movl	-12(%rbp), %eax	# k, tmp250
	movslq	%eax, %rcx	# tmp250, D.4955
	movl	-12(%rbp), %eax	# k, tmp251
	subl	$1, %eax	#, D.4953
	imull	-36(%rbp), %eax	# lda, D.4953
	cltq
	addq	%rcx, %rax	# D.4955, D.4955
	leaq	0(,%rax,8), %rcx	#, D.4955
	movq	-32(%rbp), %rax	# a, tmp252
	leaq	(%rcx,%rax), %rsi	#, D.4957
	movl	-12(%rbp), %eax	# k, tmp253
	movl	-40(%rbp), %ecx	# n, tmp254
	subl	%eax, %ecx	# tmp253, D.4953
	movl	%ecx, %eax	# D.4953, D.4953
	movl	$1, %r8d	#,
	movq	%rdx, %rcx	# D.4957,
	movl	$1, %edx	#,
	movl	%eax, %edi	# D.4953,
	call	ddot	#
	addsd	-72(%rbp), %xmm0	# %sfp, D.4958
	movsd	%xmm0, (%rbx)	# D.4958, *_110
	movl	-12(%rbp), %eax	# k, tmp255
	cltq
	salq	$2, %rax	#, D.4954
	leaq	-4(%rax), %rdx	#, D.4955
	movq	-48(%rbp), %rax	# ipvt, tmp256
	addq	%rdx, %rax	# D.4955, D.4956
	movl	(%rax), %eax	# *_132, tmp257
	movl	%eax, -16(%rbp)	# tmp257, l
	movl	-16(%rbp), %eax	# l, tmp258
	cmpl	-12(%rbp), %eax	# k, tmp258
	je	.L97	#,
	movl	-16(%rbp), %eax	# l, tmp259
	cltq
	salq	$3, %rax	#, D.4954
	leaq	-8(%rax), %rdx	#, D.4955
	movq	-56(%rbp), %rax	# b, tmp260
	addq	%rdx, %rax	# D.4955, D.4957
	movq	(%rax), %rax	# *_137, tmp261
	movq	%rax, -24(%rbp)	# tmp261, t
	movl	-16(%rbp), %eax	# l, tmp262
	cltq
	salq	$3, %rax	#, D.4954
	leaq	-8(%rax), %rdx	#, D.4955
	movq	-56(%rbp), %rax	# b, tmp263
	addq	%rax, %rdx	# tmp263, D.4957
	movl	-12(%rbp), %eax	# k, tmp264
	cltq
	salq	$3, %rax	#, D.4954
	leaq	-8(%rax), %rcx	#, D.4955
	movq	-56(%rbp), %rax	# b, tmp265
	addq	%rcx, %rax	# D.4955, D.4957
	movq	(%rax), %rax	# *_146, D.4958
	movq	%rax, (%rdx)	# D.4958, *_142
	movl	-12(%rbp), %eax	# k, tmp266
	cltq
	salq	$3, %rax	#, D.4954
	leaq	-8(%rax), %rdx	#, D.4955
	movq	-56(%rbp), %rax	# b, tmp267
	addq	%rax, %rdx	# tmp267, D.4957
	movq	-24(%rbp), %rax	# t, tmp268
	movq	%rax, (%rdx)	# tmp268, *_151
.L97:
	subl	$1, -12(%rbp)	#, k
.L96:
	cmpl	$0, -12(%rbp)	#, k
	jg	.L98	#,
	nop
.L86:
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	dgesl, .-dgesl
	.globl	dscal
	.type	dscal, @function
dscal:
.LFB8:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# n, n
	movsd	%xmm0, -32(%rbp)	# sa, sa
	movq	%rsi, -40(%rbp)	# x, x
	movl	%edx, -24(%rbp)	# incx, incx
	cmpl	$0, -20(%rbp)	#, n
	jle	.L101	#,
	cmpl	$1, -24(%rbp)	#, incx
	jne	.L102	#,
	movl	-20(%rbp), %ecx	# n, tmp125
	movl	$1717986919, %edx	#, tmp127
	movl	%ecx, %eax	# tmp125, tmp167
	imull	%edx	# tmp127
	sarl	%edx	# tmp128
	movl	%ecx, %eax	# tmp125, tmp129
	sarl	$31, %eax	#, tmp129
	subl	%eax, %edx	# tmp129, tmp124
	movl	%edx, %eax	# tmp124, tmp130
	sall	$2, %eax	#, tmp130
	addl	%edx, %eax	# tmp124, tmp130
	subl	%eax, %ecx	# tmp130, tmp131
	movl	%ecx, %eax	# tmp131, tmp131
	movl	%eax, -12(%rbp)	# tmp131, m
	movl	$0, -4(%rbp)	#, i
	jmp	.L103	#
.L104:
	movl	-4(%rbp), %eax	# i, tmp132
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4959
	movq	-40(%rbp), %rax	# x, tmp133
	addq	%rdx, %rax	# D.4959, D.4960
	movl	-4(%rbp), %edx	# i, tmp134
	movslq	%edx, %rdx	# tmp134, D.4959
	leaq	0(,%rdx,8), %rcx	#, D.4959
	movq	-40(%rbp), %rdx	# x, tmp135
	addq	%rcx, %rdx	# D.4959, D.4960
	movsd	(%rdx), %xmm0	# *_16, D.4961
	mulsd	-32(%rbp), %xmm0	# sa, D.4961
	movsd	%xmm0, (%rax)	# D.4961, *_13
	addl	$1, -4(%rbp)	#, i
.L103:
	movl	-4(%rbp), %eax	# i, tmp136
	cmpl	-12(%rbp), %eax	# m, tmp136
	jl	.L104	#,
	movl	-12(%rbp), %eax	# m, tmp137
	movl	%eax, -4(%rbp)	# tmp137, i
	jmp	.L105	#
.L106:
	movl	-4(%rbp), %eax	# i, tmp138
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4959
	movq	-40(%rbp), %rax	# x, tmp139
	addq	%rdx, %rax	# D.4959, D.4960
	movl	-4(%rbp), %edx	# i, tmp140
	movslq	%edx, %rdx	# tmp140, D.4959
	leaq	0(,%rdx,8), %rcx	#, D.4959
	movq	-40(%rbp), %rdx	# x, tmp141
	addq	%rcx, %rdx	# D.4959, D.4960
	movsd	(%rdx), %xmm0	# *_27, D.4961
	mulsd	-32(%rbp), %xmm0	# sa, D.4961
	movsd	%xmm0, (%rax)	# D.4961, *_24
	movl	-4(%rbp), %eax	# i, tmp142
	cltq
	addq	$1, %rax	#, D.4962
	leaq	0(,%rax,8), %rdx	#, D.4962
	movq	-40(%rbp), %rax	# x, tmp143
	addq	%rdx, %rax	# D.4962, D.4960
	movl	-4(%rbp), %edx	# i, tmp144
	movslq	%edx, %rdx	# tmp144, D.4962
	addq	$1, %rdx	#, D.4962
	leaq	0(,%rdx,8), %rcx	#, D.4962
	movq	-40(%rbp), %rdx	# x, tmp145
	addq	%rcx, %rdx	# D.4962, D.4960
	movsd	(%rdx), %xmm0	# *_37, D.4961
	mulsd	-32(%rbp), %xmm0	# sa, D.4961
	movsd	%xmm0, (%rax)	# D.4961, *_33
	movl	-4(%rbp), %eax	# i, tmp146
	cltq
	addq	$2, %rax	#, D.4962
	leaq	0(,%rax,8), %rdx	#, D.4962
	movq	-40(%rbp), %rax	# x, tmp147
	addq	%rdx, %rax	# D.4962, D.4960
	movl	-4(%rbp), %edx	# i, tmp148
	movslq	%edx, %rdx	# tmp148, D.4962
	addq	$2, %rdx	#, D.4962
	leaq	0(,%rdx,8), %rcx	#, D.4962
	movq	-40(%rbp), %rdx	# x, tmp149
	addq	%rcx, %rdx	# D.4962, D.4960
	movsd	(%rdx), %xmm0	# *_47, D.4961
	mulsd	-32(%rbp), %xmm0	# sa, D.4961
	movsd	%xmm0, (%rax)	# D.4961, *_43
	movl	-4(%rbp), %eax	# i, tmp150
	cltq
	addq	$3, %rax	#, D.4962
	leaq	0(,%rax,8), %rdx	#, D.4962
	movq	-40(%rbp), %rax	# x, tmp151
	addq	%rdx, %rax	# D.4962, D.4960
	movl	-4(%rbp), %edx	# i, tmp152
	movslq	%edx, %rdx	# tmp152, D.4962
	addq	$3, %rdx	#, D.4962
	leaq	0(,%rdx,8), %rcx	#, D.4962
	movq	-40(%rbp), %rdx	# x, tmp153
	addq	%rcx, %rdx	# D.4962, D.4960
	movsd	(%rdx), %xmm0	# *_57, D.4961
	mulsd	-32(%rbp), %xmm0	# sa, D.4961
	movsd	%xmm0, (%rax)	# D.4961, *_53
	movl	-4(%rbp), %eax	# i, tmp154
	cltq
	addq	$4, %rax	#, D.4962
	leaq	0(,%rax,8), %rdx	#, D.4962
	movq	-40(%rbp), %rax	# x, tmp155
	addq	%rdx, %rax	# D.4962, D.4960
	movl	-4(%rbp), %edx	# i, tmp156
	movslq	%edx, %rdx	# tmp156, D.4962
	addq	$4, %rdx	#, D.4962
	leaq	0(,%rdx,8), %rcx	#, D.4962
	movq	-40(%rbp), %rdx	# x, tmp157
	addq	%rcx, %rdx	# D.4962, D.4960
	movsd	(%rdx), %xmm0	# *_67, D.4961
	mulsd	-32(%rbp), %xmm0	# sa, D.4961
	movsd	%xmm0, (%rax)	# D.4961, *_63
	addl	$5, -4(%rbp)	#, i
.L105:
	movl	-4(%rbp), %eax	# i, tmp158
	cmpl	-20(%rbp), %eax	# n, tmp158
	jl	.L106	#,
	jmp	.L100	#
.L102:
	cmpl	$0, -24(%rbp)	#, incx
	js	.L107	#,
	movl	$0, -8(%rbp)	#, ix
	jmp	.L108	#
.L107:
	movl	$1, %eax	#, tmp159
	subl	-20(%rbp), %eax	# n, D.4963
	imull	-24(%rbp), %eax	# incx, tmp160
	movl	%eax, -8(%rbp)	# tmp160, ix
.L108:
	movl	$0, -4(%rbp)	#, i
	jmp	.L109	#
.L110:
	movl	-8(%rbp), %eax	# ix, tmp161
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4959
	movq	-40(%rbp), %rax	# x, tmp162
	addq	%rdx, %rax	# D.4959, D.4960
	movl	-8(%rbp), %edx	# ix, tmp163
	movslq	%edx, %rdx	# tmp163, D.4959
	leaq	0(,%rdx,8), %rcx	#, D.4959
	movq	-40(%rbp), %rdx	# x, tmp164
	addq	%rcx, %rdx	# D.4959, D.4960
	movsd	(%rdx), %xmm0	# *_80, D.4961
	mulsd	-32(%rbp), %xmm0	# sa, D.4961
	movsd	%xmm0, (%rax)	# D.4961, *_77
	movl	-24(%rbp), %eax	# incx, tmp165
	addl	%eax, -8(%rbp)	# tmp165, ix
	addl	$1, -4(%rbp)	#, i
.L109:
	movl	-4(%rbp), %eax	# i, tmp166
	cmpl	-20(%rbp), %eax	# n, tmp166
	jl	.L110	#,
.L101:
	nop
.L100:
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	dscal, .-dscal
	.globl	idamax
	.type	idamax, @function
idamax:
.LFB9:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -36(%rbp)	# n, n
	movq	%rsi, -48(%rbp)	# dx, dx
	movl	%edx, -40(%rbp)	# incx, incx
	movl	$0, -20(%rbp)	#, value
	cmpl	$0, -36(%rbp)	#, n
	jle	.L113	#,
	cmpl	$0, -40(%rbp)	#, incx
	jg	.L114	#,
.L113:
	movl	-20(%rbp), %eax	# value, D.4964
	jmp	.L115	#
.L114:
	movl	$1, -20(%rbp)	#, value
	cmpl	$1, -36(%rbp)	#, n
	jne	.L116	#,
	movl	-20(%rbp), %eax	# value, D.4964
	jmp	.L115	#
.L116:
	cmpl	$1, -40(%rbp)	#, incx
	jne	.L117	#,
	movq	-48(%rbp), %rax	# dx, tmp81
	movq	(%rax), %rax	# *dx_19(D), D.4965
	movq	%rax, -56(%rbp)	# D.4965, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	call	r8_abs	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, tmp82
	movq	%rax, -8(%rbp)	# tmp82, dmax
	movl	$1, -12(%rbp)	#, i
	jmp	.L118	#
.L121:
	movl	-12(%rbp), %eax	# i, tmp83
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4966
	movq	-48(%rbp), %rax	# dx, tmp84
	addq	%rdx, %rax	# D.4966, D.4967
	movq	(%rax), %rax	# *_25, D.4965
	movq	%rax, -56(%rbp)	# D.4965, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	call	r8_abs	#
	ucomisd	-8(%rbp), %xmm0	# dmax, D.4965
	jbe	.L119	#,
	movl	-12(%rbp), %eax	# i, tmp88
	addl	$1, %eax	#, tmp87
	movl	%eax, -20(%rbp)	# tmp87, value
	movl	-12(%rbp), %eax	# i, tmp89
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4966
	movq	-48(%rbp), %rax	# dx, tmp90
	addq	%rdx, %rax	# D.4966, D.4967
	movq	(%rax), %rax	# *_31, D.4965
	movq	%rax, -56(%rbp)	# D.4965, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	call	r8_abs	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, tmp91
	movq	%rax, -8(%rbp)	# tmp91, dmax
.L119:
	addl	$1, -12(%rbp)	#, i
.L118:
	movl	-12(%rbp), %eax	# i, tmp92
	cmpl	-36(%rbp), %eax	# n, tmp92
	jl	.L121	#,
	jmp	.L122	#
.L117:
	movl	$0, -16(%rbp)	#, ix
	movq	-48(%rbp), %rax	# dx, tmp93
	movq	(%rax), %rax	# *dx_19(D), D.4965
	movq	%rax, -56(%rbp)	# D.4965, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	call	r8_abs	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, tmp94
	movq	%rax, -8(%rbp)	# tmp94, dmax
	movl	-40(%rbp), %eax	# incx, tmp95
	addl	%eax, -16(%rbp)	# tmp95, ix
	movl	$1, -12(%rbp)	#, i
	jmp	.L123	#
.L126:
	movl	-16(%rbp), %eax	# ix, tmp96
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4966
	movq	-48(%rbp), %rax	# dx, tmp97
	addq	%rdx, %rax	# D.4966, D.4967
	movq	(%rax), %rax	# *_42, D.4965
	movq	%rax, -56(%rbp)	# D.4965, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	call	r8_abs	#
	ucomisd	-8(%rbp), %xmm0	# dmax, D.4965
	jbe	.L124	#,
	movl	-12(%rbp), %eax	# i, tmp101
	addl	$1, %eax	#, tmp100
	movl	%eax, -20(%rbp)	# tmp100, value
	movl	-16(%rbp), %eax	# ix, tmp102
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4966
	movq	-48(%rbp), %rax	# dx, tmp103
	addq	%rdx, %rax	# D.4966, D.4967
	movq	(%rax), %rax	# *_48, D.4965
	movq	%rax, -56(%rbp)	# D.4965, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	call	r8_abs	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, tmp104
	movq	%rax, -8(%rbp)	# tmp104, dmax
.L124:
	movl	-40(%rbp), %eax	# incx, tmp105
	addl	%eax, -16(%rbp)	# tmp105, ix
	addl	$1, -12(%rbp)	#, i
.L123:
	movl	-12(%rbp), %eax	# i, tmp106
	cmpl	-36(%rbp), %eax	# n, tmp106
	jl	.L126	#,
.L122:
	movl	-20(%rbp), %eax	# value, D.4964
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	idamax, .-idamax
	.globl	r8_abs
	.type	r8_abs, @function
r8_abs:
.LFB10:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movsd	%xmm0, -24(%rbp)	# x, x
	movsd	-24(%rbp), %xmm0	# x, tmp61
	xorpd	%xmm1, %xmm1	# tmp62
	ucomisd	%xmm1, %xmm0	# tmp62, tmp61
	jb	.L135	#,
	movq	-24(%rbp), %rax	# x, tmp63
	movq	%rax, -8(%rbp)	# tmp63, value
	jmp	.L132	#
.L135:
	movsd	-24(%rbp), %xmm1	# x, tmp65
	movsd	.LC14(%rip), %xmm0	#, tmp66
	xorpd	%xmm1, %xmm0	# tmp65, tmp64
	movsd	%xmm0, -8(%rbp)	# tmp64, value
.L132:
	movq	-8(%rbp), %rax	# value, D.4968
	movq	%rax, -32(%rbp)	# <retval>, %sfp
	movsd	-32(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	r8_abs, .-r8_abs
	.globl	r8_epsilon
	.type	r8_epsilon, @function
r8_epsilon:
.LFB11:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movabsq	$4607182418800017408, %rax	#, tmp62
	movq	%rax, -8(%rbp)	# tmp62, r
	jmp	.L137	#
.L138:
	movsd	-8(%rbp), %xmm0	# r, tmp64
	movsd	.LC18(%rip), %xmm1	#, tmp65
	divsd	%xmm1, %xmm0	# tmp65, tmp63
	movsd	%xmm0, -8(%rbp)	# tmp63, r
.L137:
	movsd	-8(%rbp), %xmm1	# r, tmp66
	movsd	.LC10(%rip), %xmm0	#, tmp67
	addsd	%xmm1, %xmm0	# tmp66, D.4969
	movsd	.LC10(%rip), %xmm1	#, tmp68
	ucomisd	%xmm1, %xmm0	# tmp68, D.4969
	ja	.L138	#,
	movsd	-8(%rbp), %xmm0	# r, tmp69
	addsd	%xmm0, %xmm0	# tmp69, tmp70
	movsd	%xmm0, -8(%rbp)	# tmp70, r
	movq	-8(%rbp), %rax	# r, D.4969
	movq	%rax, -24(%rbp)	# <retval>, %sfp
	movsd	-24(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	r8_epsilon, .-r8_epsilon
	.globl	r8_max
	.type	r8_max, @function
r8_max:
.LFB12:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movsd	%xmm0, -24(%rbp)	# x, x
	movsd	%xmm1, -32(%rbp)	# y, y
	movsd	-24(%rbp), %xmm0	# x, tmp61
	ucomisd	-32(%rbp), %xmm0	# y, tmp61
	jbe	.L146	#,
	movq	-24(%rbp), %rax	# x, tmp62
	movq	%rax, -8(%rbp)	# tmp62, value
	jmp	.L143	#
.L146:
	movq	-32(%rbp), %rax	# y, tmp63
	movq	%rax, -8(%rbp)	# tmp63, value
.L143:
	movq	-8(%rbp), %rax	# value, D.4970
	movq	%rax, -40(%rbp)	# <retval>, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	r8_max, .-r8_max
	.globl	r8_random
	.type	r8_random, @function
r8_random:
.LFB13:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)	# iseed, iseed
	movl	$4096, -4(%rbp)	#, ipw2
	movl	$494, -8(%rbp)	#, m1
	movl	$322, -12(%rbp)	#, m2
	movl	$2508, -16(%rbp)	#, m3
	movl	$2549, -20(%rbp)	#, m4
	movabsq	$4607182418800017408, %rax	#, tmp111
	movq	%rax, -32(%rbp)	# tmp111, one
	movabsq	$4553139223271571456, %rax	#, tmp112
	movq	%rax, -40(%rbp)	# tmp112, r
	movq	-72(%rbp), %rax	# iseed, tmp113
	addq	$12, %rax	#, D.4971
	movl	(%rax), %eax	# *_9, D.4972
	imull	-20(%rbp), %eax	# m4, tmp114
	movl	%eax, -44(%rbp)	# tmp114, it4
	movl	-44(%rbp), %eax	# it4, tmp118
	cltd
	idivl	-4(%rbp)	# ipw2
	movl	%eax, -48(%rbp)	# tmp116, it3
	movl	-4(%rbp), %eax	# ipw2, tmp119
	imull	-48(%rbp), %eax	# it3, D.4972
	subl	%eax, -44(%rbp)	# D.4972, it4
	movq	-72(%rbp), %rax	# iseed, tmp120
	addq	$8, %rax	#, D.4971
	movl	(%rax), %eax	# *_15, D.4972
	imull	-20(%rbp), %eax	# m4, D.4972
	movl	%eax, %edx	# D.4972, D.4972
	movl	-48(%rbp), %eax	# it3, tmp121
	addl	%eax, %edx	# tmp121, D.4972
	movq	-72(%rbp), %rax	# iseed, tmp122
	addq	$12, %rax	#, D.4971
	movl	(%rax), %eax	# *_19, D.4972
	imull	-16(%rbp), %eax	# m3, D.4972
	addl	%edx, %eax	# D.4972, tmp123
	movl	%eax, -48(%rbp)	# tmp123, it3
	movl	-48(%rbp), %eax	# it3, tmp127
	cltd
	idivl	-4(%rbp)	# ipw2
	movl	%eax, -52(%rbp)	# tmp125, it2
	movl	-4(%rbp), %eax	# ipw2, tmp128
	imull	-52(%rbp), %eax	# it2, D.4972
	subl	%eax, -48(%rbp)	# D.4972, it3
	movq	-72(%rbp), %rax	# iseed, tmp129
	addq	$4, %rax	#, D.4971
	movl	(%rax), %eax	# *_26, D.4972
	imull	-20(%rbp), %eax	# m4, D.4972
	movl	%eax, %edx	# D.4972, D.4972
	movl	-52(%rbp), %eax	# it2, tmp130
	addl	%eax, %edx	# tmp130, D.4972
	movq	-72(%rbp), %rax	# iseed, tmp131
	addq	$8, %rax	#, D.4971
	movl	(%rax), %eax	# *_30, D.4972
	imull	-16(%rbp), %eax	# m3, D.4972
	addl	%eax, %edx	# D.4972, D.4972
	movq	-72(%rbp), %rax	# iseed, tmp132
	addq	$12, %rax	#, D.4971
	movl	(%rax), %eax	# *_34, D.4972
	imull	-12(%rbp), %eax	# m2, D.4972
	addl	%edx, %eax	# D.4972, tmp133
	movl	%eax, -52(%rbp)	# tmp133, it2
	movl	-52(%rbp), %eax	# it2, tmp137
	cltd
	idivl	-4(%rbp)	# ipw2
	movl	%eax, -56(%rbp)	# tmp135, it1
	movl	-4(%rbp), %eax	# ipw2, tmp138
	imull	-56(%rbp), %eax	# it1, D.4972
	subl	%eax, -52(%rbp)	# D.4972, it2
	movq	-72(%rbp), %rax	# iseed, tmp139
	movl	(%rax), %eax	# *iseed_8(D), D.4972
	imull	-20(%rbp), %eax	# m4, D.4972
	movl	%eax, %edx	# D.4972, D.4972
	movl	-56(%rbp), %eax	# it1, tmp140
	addl	%eax, %edx	# tmp140, D.4972
	movq	-72(%rbp), %rax	# iseed, tmp141
	addq	$4, %rax	#, D.4971
	movl	(%rax), %eax	# *_44, D.4972
	imull	-16(%rbp), %eax	# m3, D.4972
	addl	%eax, %edx	# D.4972, D.4972
	movq	-72(%rbp), %rax	# iseed, tmp142
	addq	$8, %rax	#, D.4971
	movl	(%rax), %eax	# *_48, D.4972
	imull	-12(%rbp), %eax	# m2, D.4972
	addl	%eax, %edx	# D.4972, D.4972
	movq	-72(%rbp), %rax	# iseed, tmp143
	addq	$12, %rax	#, D.4971
	movl	(%rax), %eax	# *_52, D.4972
	imull	-8(%rbp), %eax	# m1, D.4972
	addl	%edx, %eax	# D.4972, tmp144
	movl	%eax, -56(%rbp)	# tmp144, it1
	movl	-56(%rbp), %eax	# it1, tmp146
	cltd
	idivl	-4(%rbp)	# ipw2
	movl	%edx, -56(%rbp)	# tmp147, it1
	movq	-72(%rbp), %rax	# iseed, tmp149
	movl	-56(%rbp), %edx	# it1, tmp150
	movl	%edx, (%rax)	# tmp150, *iseed_8(D)
	movq	-72(%rbp), %rax	# iseed, tmp151
	leaq	4(%rax), %rdx	#, D.4971
	movl	-52(%rbp), %eax	# it2, tmp152
	movl	%eax, (%rdx)	# tmp152, *_57
	movq	-72(%rbp), %rax	# iseed, tmp153
	leaq	8(%rax), %rdx	#, D.4971
	movl	-48(%rbp), %eax	# it3, tmp154
	movl	%eax, (%rdx)	# tmp154, *_58
	movq	-72(%rbp), %rax	# iseed, tmp155
	leaq	12(%rax), %rdx	#, D.4971
	movl	-44(%rbp), %eax	# it4, tmp156
	movl	%eax, (%rdx)	# tmp156, *_59
	cvtsi2sd	-56(%rbp), %xmm1	# it1, D.4973
	cvtsi2sd	-52(%rbp), %xmm2	# it2, D.4973
	cvtsi2sd	-48(%rbp), %xmm3	# it3, D.4973
	cvtsi2sd	-44(%rbp), %xmm0	# it4, D.4973
	mulsd	-40(%rbp), %xmm0	# r, D.4973
	addsd	%xmm3, %xmm0	# D.4973, D.4973
	mulsd	-40(%rbp), %xmm0	# r, D.4973
	addsd	%xmm2, %xmm0	# D.4973, D.4973
	mulsd	-40(%rbp), %xmm0	# r, D.4973
	addsd	%xmm1, %xmm0	# D.4973, D.4973
	mulsd	-40(%rbp), %xmm0	# r, tmp157
	movsd	%xmm0, -64(%rbp)	# tmp157, value
	movq	-64(%rbp), %rax	# value, D.4973
	movq	%rax, -80(%rbp)	# <retval>, %sfp
	movsd	-80(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	r8_random, .-r8_random
	.globl	r8mat_gen
	.type	r8mat_gen, @function
r8mat_gen:
.LFB14:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# lda, lda
	movl	%esi, -56(%rbp)	# n, n
	movl	$1, -48(%rbp)	#, init
	movl	$2, -44(%rbp)	#, init
	movl	$3, -40(%rbp)	#, init
	movl	$1325, -36(%rbp)	#, init
	movl	-52(%rbp), %eax	# lda, tmp73
	imull	-56(%rbp), %eax	# n, D.4974
	cltq
	salq	$3, %rax	#, D.4975
	movq	%rax, %rdi	# D.4975,
	call	malloc	#
	movq	%rax, -32(%rbp)	# tmp74, a
	movl	$1, -24(%rbp)	#, j
	jmp	.L150	#
.L153:
	movl	$1, -20(%rbp)	#, i
	jmp	.L151	#
.L152:
	movl	-20(%rbp), %eax	# i, tmp75
	leal	-1(%rax), %edx	#, D.4974
	movl	-24(%rbp), %eax	# j, tmp76
	subl	$1, %eax	#, D.4974
	imull	-52(%rbp), %eax	# lda, D.4974
	addl	%edx, %eax	# D.4974, D.4974
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4975
	movq	-32(%rbp), %rax	# a, tmp77
	leaq	(%rdx,%rax), %rbx	#, D.4976
	leaq	-48(%rbp), %rax	#, tmp78
	movq	%rax, %rdi	# tmp78,
	call	r8_random	#
	movsd	.LC25(%rip), %xmm1	#, tmp79
	subsd	%xmm1, %xmm0	# tmp79, D.4977
	movsd	%xmm0, (%rbx)	# D.4977, *_17
	addl	$1, -20(%rbp)	#, i
.L151:
	movl	-20(%rbp), %eax	# i, tmp80
	cmpl	-56(%rbp), %eax	# n, tmp80
	jle	.L152	#,
	addl	$1, -24(%rbp)	#, j
.L150:
	movl	-24(%rbp), %eax	# j, tmp81
	cmpl	-56(%rbp), %eax	# n, tmp81
	jle	.L153	#,
	movq	-32(%rbp), %rax	# a, D.4976
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	r8mat_gen, .-r8mat_gen
	.section	.rodata
.LC26:
	.string	"%d %B %Y %I:%M:%S %p"
	.text
	.globl	timestamp
	.type	timestamp, @function
timestamp:
.LFB15:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	$0, %edi	#,
	call	time	#
	movq	%rax, -24(%rbp)	# now.0, now
	leaq	-24(%rbp), %rax	#, tmp60
	movq	%rax, %rdi	# tmp60,
	call	localtime	#
	movq	%rax, -8(%rbp)	# tmp61, tm
	movq	-8(%rbp), %rax	# tm, tmp62
	movq	%rax, %rcx	# tmp62,
	movl	$.LC26, %edx	#,
	movl	$40, %esi	#,
	movl	$time_buffer.4117, %edi	#,
	call	strftime	#
	movq	%rax, -16(%rbp)	# tmp63, len
	movl	$time_buffer.4117, %edi	#,
	call	puts	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	timestamp, .-timestamp
	.local	time_buffer.4117
	.comm	time_buffer.4117,40,32
	.section	.rodata
	.align 8
.LC10:
	.long	0
	.long	1072693248
	.align 16
.LC14:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC15:
	.long	0
	.long	1083666432
	.align 8
.LC16:
	.long	0
	.long	1093567616
	.align 8
.LC17:
	.long	0
	.long	-1074790400
	.align 8
.LC18:
	.long	0
	.long	1073741824
	.align 8
.LC25:
	.long	0
	.long	1071644672
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-16)"
	.section	.note.GNU-stack,"",@progbits
