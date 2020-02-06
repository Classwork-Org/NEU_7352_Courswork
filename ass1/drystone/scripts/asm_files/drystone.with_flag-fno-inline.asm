	.file	"drystone.c"
	.text
	.p2align 4,,15
	.type	Proc8.constprop.0, @function
Proc8.constprop.0:
.LFB19:
	.cfi_startproc
	leal	5(%rdi), %ecx
	leal	6(%rdi), %r9d
	addl	$4, %edi
	movslq	%edi, %rdi
	movl	$5, IntGlob(%rip)
	movslq	%ecx, %rax
	movslq	%r9d, %r9
	imulq	$204, %rax, %r8
	movl	%esi, Array1Glob(,%rax,4)
	movl	%esi, Array1Glob+4(,%rax,4)
	movl	%ecx, Array1Glob+120(,%rax,4)
	leaq	Array2Glob(%r8), %rdx
	movl	%ecx, (%rdx,%rax,4)
	movl	%ecx, (%rdx,%r9,4)
	addl	$1, (%rdx,%rdi,4)
	movl	%esi, Array2Glob+4080(%r8,%rax,4)
	ret
	.cfi_endproc
.LFE19:
	.size	Proc8.constprop.0, .-Proc8.constprop.0
	.p2align 4,,15
	.type	Proc7.constprop.1, @function
Proc7.constprop.1:
.LFB18:
	.cfi_startproc
	addl	$5, %edi
	movl	%edi, (%rsi)
	ret
	.cfi_endproc
.LFE18:
	.size	Proc7.constprop.1, .-Proc7.constprop.1
	.p2align 4,,15
	.type	Func1.constprop.2, @function
Func1.constprop.2:
.LFB17:
	.cfi_startproc
	xorl	%eax, %eax
	cmpb	$67, %dil
	sete	%al
	ret
	.cfi_endproc
.LFE17:
	.size	Func1.constprop.2, .-Func1.constprop.2
	.p2align 4,,15
	.type	Func3.constprop.4, @function
Func3.constprop.4:
.LFB15:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE15:
	.size	Func3.constprop.4, .-Func3.constprop.4
	.p2align 4,,15
	.type	Proc6.constprop.3, @function
Proc6.constprop.3:
.LFB16:
	.cfi_startproc
	movl	$0, (%rdi)
	ret
	.cfi_endproc
.LFE16:
	.size	Proc6.constprop.3, .-Proc6.constprop.3
	.p2align 4,,15
	.globl	Proc2
	.type	Proc2, @function
Proc2:
.LFB5:
	.cfi_startproc
	cmpb	$65, Char1Glob(%rip)
	movl	(%rdi), %eax
	je	.L10
	rep ret
	.p2align 4,,10
	.p2align 3
.L10:
	addl	$9, %eax
	subl	IntGlob(%rip), %eax
	movl	%eax, (%rdi)
	ret
	.cfi_endproc
.LFE5:
	.size	Proc2, .-Proc2
	.p2align 4,,15
	.globl	Proc4
	.type	Proc4, @function
Proc4:
.LFB7:
	.cfi_startproc
	movb	$66, Char2Glob(%rip)
	ret
	.cfi_endproc
.LFE7:
	.size	Proc4, .-Proc4
	.p2align 4,,15
	.globl	Proc5
	.type	Proc5, @function
Proc5:
.LFB8:
	.cfi_startproc
	movb	$65, Char1Glob(%rip)
	movl	$0, BoolGlob(%rip)
	ret
	.cfi_endproc
.LFE8:
	.size	Proc5, .-Proc5
	.p2align 4,,15
	.globl	Proc7
	.type	Proc7, @function
Proc7:
.LFB10:
	.cfi_startproc
	leal	2(%rdi,%rsi), %eax
	movl	%eax, (%rdx)
	ret
	.cfi_endproc
.LFE10:
	.size	Proc7, .-Proc7
	.p2align 4,,15
	.globl	Proc3
	.type	Proc3, @function
Proc3:
.LFB6:
	.cfi_startproc
	movq	PtrGlb(%rip), %rax
	testq	%rax, %rax
	je	.L15
	movq	(%rax), %rax
	movl	IntGlob(%rip), %esi
	movq	%rax, (%rdi)
	movq	PtrGlb(%rip), %rdx
	movl	$10, %edi
	xorl	%eax, %eax
	addq	$16, %rdx
	jmp	Proc7
	.p2align 4,,10
	.p2align 3
.L15:
	xorl	%edx, %edx
	movl	$100, %esi
	movl	$10, %edi
	addq	$16, %rdx
	xorl	%eax, %eax
	movl	$100, IntGlob(%rip)
	jmp	Proc7
	.cfi_endproc
.LFE6:
	.size	Proc3, .-Proc3
	.p2align 4,,15
	.globl	Proc8
	.type	Proc8, @function
Proc8:
.LFB11:
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
.LFE11:
	.size	Proc8, .-Proc8
	.p2align 4,,15
	.globl	Func1
	.type	Func1, @function
Func1:
.LFB12:
	.cfi_startproc
	xorl	%eax, %eax
	cmpb	%sil, %dil
	sete	%al
	ret
	.cfi_endproc
.LFE12:
	.size	Func1, .-Func1
	.p2align 4,,15
	.globl	Func2
	.type	Func2, @function
Func2:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp
	xorl	%eax, %eax
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movsbl	2(%rsi), %esi
	movsbl	1(%rdi), %edi
	call	Func1
	testl	%eax, %eax
	je	.L20
.L21:
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L20:
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	strcmp
	testl	%eax, %eax
	setg	%al
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE13:
	.size	Func2, .-Func2
	.p2align 4,,15
	.globl	Func3
	.type	Func3, @function
Func3:
.LFB14:
	.cfi_startproc
	xorl	%eax, %eax
	cmpl	$2, %edi
	sete	%al
	ret
	.cfi_endproc
.LFE14:
	.size	Func3, .-Func3
	.p2align 4,,15
	.globl	Proc6
	.type	Proc6, @function
Proc6:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%eax, %eax
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%edi, %ebx
	call	Func3
	movl	$3, %edx
	testl	%eax, %eax
	cmovne	%ebx, %edx
	cmpl	$1, %ebx
	movl	%edx, 0(%rbp)
	je	.L28
	jb	.L29
	cmpl	$2, %ebx
	je	.L30
	cmpl	$4, %ebx
	.p2align 4,,5
	jne	.L33
	movl	$2, 0(%rbp)
.L33:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	.cfi_restore_state
	movl	$1, 0(%rbp)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	.cfi_restore_state
	movl	$0, 0(%rbp)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	.cfi_restore_state
	xorl	%eax, %eax
	cmpl	$101, IntGlob(%rip)
	setl	%al
	leal	(%rax,%rax,2), %eax
	movl	%eax, 0(%rbp)
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE9:
	.size	Proc6, .-Proc6
	.p2align 4,,15
	.globl	Proc1
	.type	Proc1, @function
Proc1:
.LFB4:
	.cfi_startproc
	movq	PtrGlb(%rip), %rdx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	movq	8(%rdx), %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%rax)
	movq	24(%rdx), %rcx
	movq	%rcx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	%rcx, 32(%rax)
	movq	40(%rdx), %rcx
	movq	%rcx, 40(%rax)
	movq	48(%rdx), %rdx
	movq	%rdx, 48(%rax)
	movq	(%rdi), %rax
	movl	$5, 16(%rdi)
	movq	%rax, (%rax)
	movl	$5, 16(%rax)
	movq	(%rdi), %rax
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	Proc3
	movq	(%rbx), %rsi
	movl	8(%rsi), %eax
	testl	%eax, %eax
	je	.L38
	movq	(%rsi), %rax
	movq	%rax, (%rbx)
	movq	8(%rsi), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rsi), %rax
	movq	%rax, 24(%rbx)
	movq	32(%rsi), %rax
	movq	%rax, 32(%rbx)
	movq	40(%rsi), %rax
	movq	%rax, 40(%rbx)
	movq	48(%rsi), %rax
	movq	%rax, 48(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L38:
	.cfi_restore_state
	movl	12(%rbx), %edi
	movl	$6, 16(%rsi)
	xorl	%eax, %eax
	addq	$12, %rsi
	call	Proc6
	movq	PtrGlb(%rip), %rdx
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	(%rbx), %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	movl	16(%rax), %edi
	leaq	16(%rax), %rdx
	xorl	%eax, %eax
	jmp	Proc7
	.cfi_endproc
.LFE4:
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
.LFB3:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	$50000000, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$144, %rsp
	.cfi_def_cfa_offset 192
	leaq	112(%rsp), %rdi
	call	times
	leaq	112(%rsp), %rdi
	movq	112(%rsp), %rbx
	call	times
	movq	112(%rsp), %r12
	movl	$56, %edi
	call	malloc
	movl	$56, %edi
	movq	%rax, PtrGlbNext(%rip)
	subq	%rbx, %r12
	movq	%rax, %rbx
	call	malloc
	movabsq	$5642821575076104260, %rcx
	leaq	112(%rsp), %rdi
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
	movq	112(%rsp), %r13
	.p2align 4,,10
	.p2align 3
.L44:
	xorl	%eax, %eax
	call	Proc5
	xorl	%eax, %eax
	call	Proc4
	movabsq	$5642821575076104260, %rax
	leaq	48(%rsp), %rdi
	leaq	80(%rsp), %rsi
	movq	%rax, 80(%rsp)
	movabsq	$4706902966564560965, %rax
	movl	$2, (%rsp)
	movq	%rax, 88(%rsp)
	movabsq	$2325069237881678925, %rax
	movl	$1230132307, 104(%rsp)
	movq	%rax, 96(%rsp)
	movl	$18254, %eax
	movb	$0, 110(%rsp)
	movw	%ax, 108(%rsp)
	xorl	%eax, %eax
	movl	$1, 32(%rsp)
	call	Func2
	testl	%eax, %eax
	movl	$2, %edi
	sete	%al
	movzbl	%al, %eax
	movl	%eax, BoolGlob(%rip)
	.p2align 4,,10
	.p2align 3
.L41:
	leal	-3(%rdi,%rdi,4), %eax
	leaq	16(%rsp), %rsi
	movl	%eax, 16(%rsp)
	xorl	%eax, %eax
	call	Proc7.constprop.1
	movl	(%rsp), %eax
	leal	1(%rax), %edi
	cmpl	$2, %edi
	movl	%edi, (%rsp)
	jle	.L41
	movl	16(%rsp), %esi
	xorl	%eax, %eax
	movl	$65, %ebx
	call	Proc8.constprop.0
	movq	PtrGlb(%rip), %rdi
	xorl	%eax, %eax
	call	Proc1
	movzbl	Char2Glob(%rip), %r14d
	cmpb	$64, %r14b
	jg	.L48
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L45:
	addl	$1, %ebx
	cmpb	%r14b, %bl
	jg	.L46
.L48:
	xorl	%eax, %eax
	movsbl	%bl, %edi
	call	Func1.constprop.2
	cmpl	32(%rsp), %eax
	jne	.L45
	leaq	32(%rsp), %rdi
	xorl	%eax, %eax
	addl	$1, %ebx
	call	Proc6.constprop.3
	movzbl	Char2Glob(%rip), %r14d
	cmpb	%r14b, %bl
	jle	.L48
	.p2align 4,,10
	.p2align 3
.L46:
	movl	(%rsp), %eax
	movq	%rsp, %rdi
	leal	(%rax,%rax,2), %eax
	movl	%eax, 16(%rsp)
	xorl	%eax, %eax
	call	Proc2
	subl	$1, %ebp
	jne	.L44
	leaq	112(%rsp), %rdi
	call	times
	movq	112(%rsp), %rbx
	movabsq	$-8608480567731124087, %rdx
	movl	$50000000, %esi
	movl	$.LC0, %edi
	subq	%r13, %rbx
	subq	%r12, %rbx
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
	addq	$144, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3:
	.size	Proc0, .-Proc0
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	xorl	%eax, %eax
	jmp	Proc0
	.cfi_endproc
.LFE2:
	.size	main, .-main
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
