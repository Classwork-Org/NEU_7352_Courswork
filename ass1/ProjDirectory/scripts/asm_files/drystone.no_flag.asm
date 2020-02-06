	.file	"drystone.c"
	.text
	.p2align 4,,15
	.globl	Proc1
	.type	Proc1, @function
Proc1:
.LFB22:
	.cfi_startproc
	movq	PtrGlb(%rip), %rax
	movq	(%rdi), %rdx
	movq	(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rdx)
	movq	24(%rax), %rcx
	movq	%rcx, 24(%rdx)
	movq	32(%rax), %rcx
	movq	%rcx, 32(%rdx)
	movq	40(%rax), %rcx
	movq	%rcx, 40(%rdx)
	movq	48(%rax), %rcx
	movq	%rcx, 48(%rdx)
	movq	(%rdi), %rdx
	movl	$5, 16(%rdi)
	movl	IntGlob(%rip), %ecx
	movq	%rdx, (%rdx)
	movl	$5, 16(%rdx)
	movq	(%rdi), %rdx
	movq	(%rax), %rax
	movq	(%rdx), %rdx
	movq	%rax, (%rdx)
	movq	PtrGlb(%rip), %rdx
	leal	12(%rcx), %eax
	movl	%eax, 16(%rdx)
	movq	(%rdi), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	.L12
	movq	(%rax), %rdx
	movq	%rdx, (%rdi)
	movq	8(%rax), %rdx
	movq	%rdx, 8(%rdi)
	movq	16(%rax), %rdx
	movq	%rdx, 16(%rdi)
	movq	24(%rax), %rdx
	movq	%rdx, 24(%rdi)
	movq	32(%rax), %rdx
	movq	%rdx, 32(%rdi)
	movq	40(%rax), %rdx
	movq	%rdx, 40(%rdi)
	movq	48(%rax), %rax
	movq	%rax, 48(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	movl	12(%rdi), %esi
	movl	$6, 16(%rax)
	cmpl	$2, %esi
	je	.L3
	cmpl	$1, %esi
	movl	$3, 12(%rax)
	je	.L5
	jb	.L10
	cmpl	$4, %esi
	jne	.L4
	movl	$2, 12(%rax)
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L3:
	movl	$1, 12(%rax)
.L4:
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	(%rdi), %rax
	addl	$12, 16(%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	cmpl	$100, %ecx
	jle	.L4
.L10:
	movl	$0, 12(%rax)
	jmp	.L4
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
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$96, %rsp
	.cfi_def_cfa_offset 128
	leaq	64(%rsp), %rdi
	call	times
	leaq	64(%rsp), %rdi
	movq	64(%rsp), %rbx
	call	times
	movq	64(%rsp), %rbp
	movl	$56, %edi
	call	malloc
	movl	$56, %edi
	movq	%rax, PtrGlbNext(%rip)
	subq	%rbx, %rbp
	movq	%rax, %rbx
	call	malloc
	movabsq	$5642821575076104260, %rcx
	leaq	64(%rsp), %rdi
	movq	%rbx, (%rax)
	movq	%rcx, 20(%rax)
	movabsq	$4706902966564560965, %rcx
	movl	$0, 8(%rax)
	movq	%rcx, 28(%rax)
	movabsq	$2325349785699101773, %rcx
	movl	$2, 12(%rax)
	movq	%rcx, 36(%rax)
	movl	$18254, %ecx
	movl	$40, 16(%rax)
	movl	$1230132307, 44(%rax)
	movw	%cx, 48(%rax)
	movb	$0, 50(%rax)
	movq	%rax, PtrGlb(%rip)
	call	times
	cmpb	$82, 1(%rsp)
	movabsq	$5642821575076104260, %rax
	movl	$18254, %esi
	movq	%rax, 32(%rsp)
	movabsq	$4706902966564560965, %rax
	movq	64(%rsp), %r12
	movq	%rax, 40(%rsp)
	movabsq	$2325069237881678925, %rax
	movb	$65, Char1Glob(%rip)
	movl	$0, BoolGlob(%rip)
	movb	$66, Char2Glob(%rip)
	movq	%rax, 48(%rsp)
	movl	$1230132307, 56(%rsp)
	movw	%si, 60(%rsp)
	movb	$0, 62(%rsp)
	jne	.L25
.L21:
	jmp	.L21
.L25:
	movl	$50000000, %ebx
	.p2align 4,,10
	.p2align 3
.L15:
	leaq	32(%rsp), %rsi
	movq	%rsp, %rdi
	call	strcmp
	testl	%eax, %eax
	movq	PtrGlb(%rip), %rdi
	movl	$7, Array1Glob+32(%rip)
	setle	%al
	movl	$7, Array1Glob+36(%rip)
	addl	$1, Array2Glob+1660(%rip)
	movzbl	%al, %eax
	movl	$8, Array1Glob+152(%rip)
	movl	$8, Array2Glob+1664(%rip)
	movl	%eax, BoolGlob(%rip)
	xorl	%eax, %eax
	movl	$8, Array2Glob+1668(%rip)
	movl	$7, Array2Glob+5744(%rip)
	movl	$5, IntGlob(%rip)
	call	Proc1
	movzbl	Char2Glob(%rip), %edx
	cmpb	$64, %dl
	jle	.L19
	movl	$65, %eax
	.p2align 4,,10
	.p2align 3
.L20:
	addl	$1, %eax
	cmpb	%al, %dl
	jge	.L20
.L19:
	subl	$1, %ebx
	je	.L26
	movabsq	$5642821575076104260, %rax
	movb	$65, Char1Glob(%rip)
	movl	$0, BoolGlob(%rip)
	movq	%rax, 32(%rsp)
	movabsq	$4706902966564560965, %rax
	movb	$66, Char2Glob(%rip)
	movq	%rax, 40(%rsp)
	movabsq	$2325069237881678925, %rax
	movl	$1230132307, 56(%rsp)
	movq	%rax, 48(%rsp)
	movl	$18254, %eax
	movb	$0, 62(%rsp)
	movw	%ax, 60(%rsp)
	jmp	.L15
.L26:
	leaq	64(%rsp), %rdi
	call	times
	movq	64(%rsp), %rbx
	movabsq	$-8608480567731124087, %rdx
	movl	$50000000, %esi
	movl	$.LC0, %edi
	subq	%r12, %rbx
	subq	%rbp, %rbx
	movq	%rbx, %rax
	imulq	%rdx
	movq	%rbx, %rax
	sarq	$63, %rax
	addq	%rbx, %rdx
	sarq	$5, %rdx
	subq	%rax, %rdx
	xorl	%eax, %eax
	call	printf
	movl	$3000000000, %eax
	movl	$.LC1, %edi
	cqto
	idivq	%rbx
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	printf
	addq	$96, %rsp
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
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
	xorl	%eax, %eax
	jmp	Proc0
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
	cmpb	$65, Char1Glob(%rip)
	movl	(%rdi), %eax
	je	.L31
	rep ret
	.p2align 4,,10
	.p2align 3
.L31:
	addl	$9, %eax
	subl	IntGlob(%rip), %eax
	movl	%eax, (%rdi)
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
	movq	PtrGlb(%rip), %rax
	testq	%rax, %rax
	je	.L33
	movq	(%rax), %rax
	movl	IntGlob(%rip), %ecx
	movq	%rax, (%rdi)
	movq	PtrGlb(%rip), %rax
	leal	12(%rcx), %edx
	movl	%edx, 16(%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	xorl	%eax, %eax
	movl	$112, %edx
	movl	$100, IntGlob(%rip)
	movl	%edx, 16(%rax)
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
	movb	$66, Char2Glob(%rip)
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
	movb	$65, Char1Glob(%rip)
	movl	$0, BoolGlob(%rip)
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
	cmpl	$2, %edi
	je	.L38
	cmpl	$1, %edi
	movl	$3, (%rsi)
	je	.L40
	jb	.L44
	cmpl	$4, %edi
	jne	.L45
	movl	$2, (%rsi)
.L43:
	.p2align 4,,2
	rep ret
	.p2align 4,,10
	.p2align 3
.L40:
	cmpl	$100, IntGlob(%rip)
	jle	.L43
.L44:
	movl	$0, (%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L38:
	movl	$1, (%rsi)
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
	leal	2(%rdi,%rsi), %eax
	movl	%eax, (%rdx)
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
	leal	5(%rdx), %r8d
	movslq	%r8d, %r9
	leaq	0(,%r9,4), %rax
	leaq	(%rdi,%rax), %r10
	movl	%ecx, (%r10)
	movl	%ecx, 4(%rdi,%rax)
	movl	%r8d, 120(%rdi,%rax)
	addq	%rsi, %rax
	imulq	$204, %r9, %rdi
	leaq	(%rsi,%rdi), %rcx
	movl	%r8d, (%rcx,%r9,4)
	leal	6(%rdx), %r9d
	addl	$4, %edx
	movslq	%edx, %rdx
	movslq	%r9d, %r9
	movl	%r8d, (%rcx,%r9,4)
	addl	$1, (%rcx,%rdx,4)
	movl	(%r10), %edx
	movl	%edx, 4080(%rdi,%rax)
	movl	$5, IntGlob(%rip)
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
	xorl	%eax, %eax
	cmpb	%sil, %dil
	sete	%al
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
	movzbl	1(%rdi), %eax
	cmpb	%al, 2(%rsi)
	jne	.L50
.L51:
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L50:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	strcmp
	testl	%eax, %eax
	setg	%al
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	movzbl	%al, %eax
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
	xorl	%eax, %eax
	cmpl	$2, %edi
	sete	%al
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
