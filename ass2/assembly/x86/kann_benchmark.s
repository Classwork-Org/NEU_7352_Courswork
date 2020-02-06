	.file	"kann_benchmark.c"
	.text
	.globl	kad_sdot
	.type	kad_sdot, @function
kad_sdot:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movl	%edi, -356(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%rdx, -376(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-356(%rbp), %eax
	andl	$-8, %eax
	movl	%eax, -340(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -288(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -272(%rbp)
	movl	$0, -348(%rbp)
	jmp	.L4
.L13:
	movl	-348(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, -240(%rbp)
	movl	-348(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, -224(%rbp)
	movl	-348(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, -208(%rbp)
	movl	-348(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,4), %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, -192(%rbp)
	movaps	-240(%rbp), %xmm0
	movaps	%xmm0, -176(%rbp)
	movaps	-208(%rbp), %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	-176(%rbp), %xmm0
	mulps	-80(%rbp), %xmm0
	movaps	-288(%rbp), %xmm1
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	-160(%rbp), %xmm0
	addps	-96(%rbp), %xmm0
	movaps	%xmm0, -288(%rbp)
	movaps	-224(%rbp), %xmm0
	movaps	%xmm0, -144(%rbp)
	movaps	-192(%rbp), %xmm0
	movaps	%xmm0, -112(%rbp)
	movaps	-144(%rbp), %xmm0
	mulps	-112(%rbp), %xmm0
	movaps	-272(%rbp), %xmm1
	movaps	%xmm1, -256(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	-256(%rbp), %xmm0
	addps	-128(%rbp), %xmm0
	movaps	%xmm0, -272(%rbp)
	addl	$8, -348(%rbp)
.L4:
	movl	-348(%rbp), %eax
	cmpl	-340(%rbp), %eax
	jl	.L13
	pxor	%xmm0, %xmm0
	movss	%xmm0, -344(%rbp)
	jmp	.L14
.L15:
	movl	-348(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-348(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	-344(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -344(%rbp)
	addl	$1, -348(%rbp)
.L14:
	movl	-348(%rbp), %eax
	cmpl	-356(%rbp), %eax
	jl	.L15
	leaq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)
	movaps	-288(%rbp), %xmm0
	movaps	%xmm0, -48(%rbp)
	movq	-296(%rbp), %rax
	movaps	-48(%rbp), %xmm0
	movups	%xmm0, (%rax)
	movss	-32(%rbp), %xmm1
	movss	-28(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	-24(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-20(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-344(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -344(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -336(%rbp)
	movaps	-272(%rbp), %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	-336(%rbp), %rax
	movaps	-64(%rbp), %xmm0
	movups	%xmm0, (%rax)
	movss	-32(%rbp), %xmm1
	movss	-28(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	-24(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-20(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-344(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -344(%rbp)
	movss	-344(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L17
	call	__stack_chk_fail
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	kad_sdot, .-kad_sdot
	.globl	kad_saxpy_inlined
	.type	kad_saxpy_inlined, @function
kad_saxpy_inlined:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$248, %rsp
	movl	%edi, -340(%rbp)
	movss	%xmm0, -344(%rbp)
	movq	%rsi, -352(%rbp)
	movq	%rdx, -360(%rbp)
	movl	-340(%rbp), %eax
	andl	$-8, %eax
	movl	%eax, -328(%rbp)
	movss	-344(%rbp), %xmm0
	movss	%xmm0, -324(%rbp)
	movss	-324(%rbp), %xmm0
	shufps	$0, %xmm0, %xmm0
	movaps	%xmm0, -272(%rbp)
	movl	$0, -332(%rbp)
	jmp	.L20
.L29:
	movl	-332(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-352(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, -256(%rbp)
	movl	-332(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,4), %rdx
	movq	-352(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, -240(%rbp)
	movl	-332(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-360(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, -224(%rbp)
	movl	-332(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,4), %rdx
	movq	-360(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, -208(%rbp)
	movaps	-272(%rbp), %xmm0
	movaps	%xmm0, -192(%rbp)
	movaps	-256(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movaps	-192(%rbp), %xmm0
	mulps	-16(%rbp), %xmm0
	movaps	%xmm0, -160(%rbp)
	movaps	-224(%rbp), %xmm0
	movaps	%xmm0, -32(%rbp)
	movaps	-160(%rbp), %xmm0
	addps	-32(%rbp), %xmm0
	movaps	%xmm0, -176(%rbp)
	movaps	-272(%rbp), %xmm0
	movaps	%xmm0, -144(%rbp)
	movaps	-240(%rbp), %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	-144(%rbp), %xmm0
	mulps	-48(%rbp), %xmm0
	movaps	%xmm0, -112(%rbp)
	movaps	-208(%rbp), %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	-112(%rbp), %xmm0
	addps	-64(%rbp), %xmm0
	movaps	%xmm0, -128(%rbp)
	movl	-332(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-360(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -280(%rbp)
	movaps	-176(%rbp), %xmm0
	movaps	%xmm0, -80(%rbp)
	movq	-280(%rbp), %rax
	movaps	-80(%rbp), %xmm0
	movups	%xmm0, (%rax)
	movl	-332(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,4), %rdx
	movq	-360(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -320(%rbp)
	movaps	-128(%rbp), %xmm0
	movaps	%xmm0, -96(%rbp)
	movq	-320(%rbp), %rax
	movaps	-96(%rbp), %xmm0
	movups	%xmm0, (%rax)
	addl	$8, -332(%rbp)
.L20:
	movl	-332(%rbp), %eax
	cmpl	-328(%rbp), %eax
	jl	.L29
	jmp	.L30
.L31:
	movl	-332(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-360(%rbp), %rax
	addq	%rdx, %rax
	movl	-332(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-360(%rbp), %rdx
	addq	%rcx, %rdx
	movss	(%rdx), %xmm1
	movl	-332(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-352(%rbp), %rdx
	addq	%rcx, %rdx
	movss	(%rdx), %xmm0
	mulss	-344(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -332(%rbp)
.L30:
	movl	-332(%rbp), %eax
	cmpl	-340(%rbp), %eax
	jl	.L31
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	kad_saxpy_inlined, .-kad_saxpy_inlined
	.section	.rodata
.LC1:
	.string	"ITERATION"
.LC2:
	.string	"%s : %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8000048, %rsp
	movl	%edi, -8000036(%rbp)
	movq	%rsi, -8000048(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -8000020(%rbp)
	jmp	.L33
.L34:
	pxor	%xmm0, %xmm0
	cvtsi2ss	-8000020(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	cos
	cvtsd2ss	%xmm0, %xmm0
	movl	-8000020(%rbp), %eax
	cltq
	movss	%xmm0, -8000016(%rbp,%rax,4)
	pxor	%xmm0, %xmm0
	cvtsi2ss	-8000020(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	sin
	cvtsd2ss	%xmm0, %xmm0
	movl	-8000020(%rbp), %eax
	cltq
	movss	%xmm0, -4000016(%rbp,%rax,4)
	addl	$1, -8000020(%rbp)
.L33:
	cmpl	$999999, -8000020(%rbp)
	jle	.L34
	movl	$0, -8000020(%rbp)
	jmp	.L35
.L36:
	movl	-8000020(%rbp), %eax
	movl	%eax, %edx
	movl	$.LC1, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	leaq	-4000016(%rbp), %rdx
	leaq	-8000016(%rbp), %rax
	movq	%rax, %rsi
	movss	.LC3(%rip), %xmm0
	movl	$1000000, %edi
	call	kad_saxpy_inlined
	leaq	-4000016(%rbp), %rdx
	leaq	-8000016(%rbp), %rax
	movq	%rax, %rsi
	movl	$1000000, %edi
	call	kad_sdot
	addl	$1, -8000020(%rbp)
.L35:
	cmpl	$999, -8000020(%rbp)
	jle	.L36
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L38
	call	__stack_chk_fail
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC3:
	.long	1085276160
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
