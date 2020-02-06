	.file	"conv_benchmark.c"
	.comm	row,4,4
	.comm	col,4,4
	.comm	depth,4,4
	.comm	krow,4,4
	.comm	kcol,4,4
	.comm	stride,4,4
	.comm	orow,4,4
	.comm	ocol,4,4
	.comm	mrow,4,4
	.comm	mcol,4,4
	.comm	filterNum,4,4
	.comm	input,8,8
	.comm	weights,8,8
	.comm	output,8,8
	.section	.rodata
	.align 8
.LC0:
	.string	"Thread %d processing filters from %d to %d\n"
	.text
	.globl	convn
	.type	convn, @function
convn:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %edx
	movl	orow(%rip), %eax
	imull	%eax, %edx
	movl	ocol(%rip), %eax
	imull	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	-20(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.L2
.L13:
	movl	$0, -44(%rbp)
	jmp	.L3
.L12:
	movl	$0, -40(%rbp)
	jmp	.L4
.L11:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L5
.L10:
	movl	$0, -36(%rbp)
	jmp	.L6
.L9:
	movl	$0, -32(%rbp)
	jmp	.L7
.L8:
	movl	krow(%rip), %edx
	movl	kcol(%rip), %eax
	imull	%eax, %edx
	movl	depth(%rip), %eax
	imull	%eax, %edx
	movl	-52(%rbp), %eax
	imull	%eax, %edx
	movl	krow(%rip), %ecx
	movl	kcol(%rip), %eax
	imull	%eax, %ecx
	movl	-48(%rbp), %eax
	imull	%ecx, %eax
	leal	(%rdx,%rax), %ecx
	movl	-36(%rbp), %edx
	movl	kcol(%rip), %eax
	imull	%edx, %eax
	leal	(%rcx,%rax), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-44(%rbp), %edx
	movl	col(%rip), %eax
	imull	%eax, %edx
	movl	row(%rip), %ecx
	movl	col(%rip), %eax
	imull	%eax, %ecx
	movl	-48(%rbp), %eax
	imull	%ecx, %eax
	addl	%eax, %edx
	movl	-40(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-36(%rbp), %edx
	movl	col(%rip), %eax
	imull	%edx, %eax
	leal	(%rcx,%rax), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	input(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movq	weights(%rip), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	-24(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	addl	$1, -32(%rbp)
.L7:
	movl	-32(%rbp), %edx
	movl	kcol(%rip), %eax
	cmpl	%eax, %edx
	jb	.L8
	addl	$1, -36(%rbp)
.L6:
	movl	-36(%rbp), %edx
	movl	krow(%rip), %eax
	cmpl	%eax, %edx
	jb	.L9
	addl	$1, -48(%rbp)
.L5:
	movl	-48(%rbp), %edx
	movl	depth(%rip), %eax
	cmpl	%eax, %edx
	jb	.L10
	movq	output(%rip), %rcx
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	cltq
	salq	$2, %rax
	addq	%rcx, %rax
	movss	-24(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movl	-40(%rbp), %edx
	movl	stride(%rip), %eax
	addl	%edx, %eax
	movl	%eax, -40(%rbp)
.L4:
	movl	-40(%rbp), %edx
	movl	mcol(%rip), %eax
	cmpl	%eax, %edx
	jbe	.L11
	movl	-44(%rbp), %edx
	movl	stride(%rip), %eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)
.L3:
	movl	-44(%rbp), %edx
	movl	mrow(%rip), %eax
	cmpl	%eax, %edx
	jbe	.L12
	addl	$1, -52(%rbp)
.L2:
	movl	-52(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L13
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	convn, .-convn
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$552, %rsp
	.cfi_offset 3, -24
	movl	%edi, -548(%rbp)
	movq	%rsi, -560(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$5000, row(%rip)
	movl	$5000, col(%rip)
	movl	$3, depth(%rip)
	movl	$3, krow(%rip)
	movl	$3, kcol(%rip)
	movl	$1, stride(%rip)
	movl	row(%rip), %edx
	movl	krow(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L15
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L16
.L15:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L16:
	movl	stride(%rip), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L17
	pxor	%xmm1, %xmm1
	cvtsi2ssq	%rax, %xmm1
	jmp	.L18
.L17:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm1, %xmm1
	cvtsi2ssq	%rdx, %xmm1
	addss	%xmm1, %xmm1
.L18:
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	ceil
	cvttsd2siq	%xmm0, %rax
	movl	%eax, orow(%rip)
	movl	col(%rip), %edx
	movl	kcol(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L19
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L20
.L19:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L20:
	movl	stride(%rip), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L21
	pxor	%xmm1, %xmm1
	cvtsi2ssq	%rax, %xmm1
	jmp	.L22
.L21:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm1, %xmm1
	cvtsi2ssq	%rdx, %xmm1
	addss	%xmm1, %xmm1
.L22:
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	ceil
	cvttsd2siq	%xmm0, %rax
	movl	%eax, ocol(%rip)
	movl	row(%rip), %edx
	movl	krow(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, mrow(%rip)
	movl	col(%rip), %edx
	movl	kcol(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, mcol(%rip)
	movl	$40, filterNum(%rip)
	movl	row(%rip), %eax
	movl	%eax, %edx
	movl	col(%rip), %eax
	movl	%eax, %eax
	imulq	%rdx, %rax
	movl	depth(%rip), %edx
	movl	%edx, %edx
	imulq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, input(%rip)
	movl	krow(%rip), %eax
	movl	%eax, %edx
	movl	kcol(%rip), %eax
	movl	%eax, %eax
	imulq	%rdx, %rax
	movl	depth(%rip), %edx
	movl	%edx, %edx
	imulq	%rdx, %rax
	movl	filterNum(%rip), %edx
	movl	%edx, %edx
	imulq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, weights(%rip)
	movl	orow(%rip), %eax
	movl	%eax, %edx
	movl	ocol(%rip), %eax
	movl	%eax, %eax
	imulq	%rdx, %rax
	movl	filterNum(%rip), %edx
	movl	%edx, %edx
	imulq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, output(%rip)
	movl	$0, -532(%rbp)
	jmp	.L23
.L24:
	movq	input(%rip), %rax
	movl	-532(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	call	rand
	movl	%eax, %edx
	movl	-532(%rbp), %eax
	imull	$100, %eax, %eax
	leal	1(%rax), %ecx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%edx, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rbx)
	addl	$1, -532(%rbp)
.L23:
	movl	row(%rip), %edx
	movl	col(%rip), %eax
	imull	%eax, %edx
	movl	depth(%rip), %eax
	imull	%eax, %edx
	movl	-532(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L24
	movl	$0, -532(%rbp)
	jmp	.L25
.L26:
	movq	weights(%rip), %rax
	movl	-532(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	call	rand
	movl	%eax, %edx
	movl	-532(%rbp), %eax
	imull	$100, %eax, %eax
	leal	1(%rax), %ecx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%edx, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rbx)
	addl	$1, -532(%rbp)
.L25:
	movl	krow(%rip), %edx
	movl	kcol(%rip), %eax
	imull	%eax, %edx
	movl	depth(%rip), %eax
	imull	%eax, %edx
	movl	filterNum(%rip), %eax
	imull	%eax, %edx
	movl	-532(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L26
	movl	filterNum(%rip), %eax
	cmpl	$23, %eax
	ja	.L27
	movl	$0, -532(%rbp)
	jmp	.L28
.L29:
	movl	-532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-304(%rax), %rdx
	movl	-532(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-532(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-16(%rbp), %rsi
	addq	%rsi, %rax
	subq	$300, %rax
	movl	%ecx, (%rax)
	movl	-532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-296(%rax), %rdx
	movl	-532(%rbp), %eax
	movl	%eax, (%rdx)
	leaq	-320(%rbp), %rcx
	movl	-532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	-512(%rbp), %rax
	movl	-532(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	%rdx, %rcx
	movl	$convn, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create
	addl	$1, -532(%rbp)
.L28:
	movl	-532(%rbp), %edx
	movl	filterNum(%rip), %eax
	cmpl	%eax, %edx
	jb	.L29
	movl	$0, -532(%rbp)
	jmp	.L30
.L31:
	movl	-532(%rbp), %eax
	cltq
	movq	-512(%rbp,%rax,8), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join
	addl	$1, -532(%rbp)
.L30:
	movl	-532(%rbp), %edx
	movl	filterNum(%rip), %eax
	cmpl	%eax, %edx
	jb	.L31
	jmp	.L32
.L27:
	movl	filterNum(%rip), %ecx
	movl	$-1431655765, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$4, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, -528(%rbp)
	movl	filterNum(%rip), %eax
	movl	$-1431655765, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$4, %eax
	movl	%eax, -520(%rbp)
	movl	$0, -524(%rbp)
	movl	$0, -516(%rbp)
	movl	$0, -532(%rbp)
	jmp	.L33
.L34:
	movl	-528(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -528(%rbp)
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %edx
	movl	-520(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -516(%rbp)
	movl	-532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-16(%rbp), %rsi
	addq	%rsi, %rax
	leaq	-304(%rax), %rdx
	movl	-524(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-524(%rbp), %edx
	movl	-516(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-16(%rbp), %rdi
	addq	%rdi, %rax
	subq	$300, %rax
	movl	%ecx, (%rax)
	movl	-532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-296(%rax), %rdx
	movl	-532(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-516(%rbp), %eax
	addl	%eax, -524(%rbp)
	leaq	-320(%rbp), %rcx
	movl	-532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	-512(%rbp), %rax
	movl	-532(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	%rdx, %rcx
	movl	$convn, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create
	addl	$1, -532(%rbp)
.L33:
	cmpl	$23, -532(%rbp)
	jle	.L34
	movl	$0, -532(%rbp)
	jmp	.L35
.L36:
	movl	-532(%rbp), %eax
	cltq
	movq	-512(%rbp,%rax,8), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join
	addl	$1, -532(%rbp)
.L35:
	cmpl	$23, -532(%rbp)
	jle	.L36
.L32:
	movl	$0, %eax
	movq	-24(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L38
	call	__stack_chk_fail
.L38:
	addq	$552, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC2:
	.long	2576980378
	.long	1082171801
	.align 8
.LC3:
	.long	2233382994
	.long	1078383083
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
