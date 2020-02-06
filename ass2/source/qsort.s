	.file	"qsort.c"
	.text
	.p2align 4,,15
	.globl	quick
	.type	quick, @function
quick:
.LFB12:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movslq	%esi, %rax
	movq	%rdx, %r15
	leaq	(%rdx,%rax,8), %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%edi, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	cmpl	%esi, %r14d
	movl	%esi, 52(%rsp)
	movq	%rax, 80(%rsp)
	jge	.L1
.L86:
	movq	80(%rsp), %rax
	movl	%r14d, %edx
	movq	(%rax), %rdi
	movl	52(%rsp), %eax
.L3:
	movslq	%edx, %rcx
	leaq	(%r15,%rcx,8), %rcx
.L11:
	movq	(%rcx), %r10
	cmpq	%r10, %rdi
	jl	.L115
	addl	$1, %edx
	addq	$8, %rcx
	cmpl	%eax, %edx
	jl	.L11
.L90:
	movl	%edx, %eax
	movl	%edx, 24(%rsp)
	subl	$1, %eax
	cmpl	%r14d, %eax
	movl	%eax, 28(%rsp)
	jle	.L69
	cltq
	leaq	(%r15,%rax,8), %rax
	movq	%rax, 72(%rsp)
.L70:
	movq	72(%rsp), %rax
	movl	%r14d, %edx
	movq	(%rax), %rdi
	movl	28(%rsp), %eax
.L12:
	movslq	%edx, %rcx
	leaq	(%r15,%rcx,8), %rcx
.L17:
	movq	(%rcx), %r10
	cmpq	%r10, %rdi
	jl	.L116
	addl	$1, %edx
	addq	$8, %rcx
	cmpl	%eax, %edx
	jl	.L17
.L13:
	movl	%edx, %eax
	movl	%edx, 120(%rsp)
	subl	$1, %eax
	cmpl	%r14d, %eax
	movl	%eax, 32(%rsp)
	jle	.L71
	cltq
	leaq	(%r15,%rax,8), %rax
	movq	%rax, 88(%rsp)
.L72:
	movq	88(%rsp), %rax
	movl	%r14d, %edx
	movq	(%rax), %rdi
	movl	32(%rsp), %eax
.L18:
	movslq	%edx, %rcx
	leaq	(%r15,%rcx,8), %rcx
.L23:
	movq	(%rcx), %r10
	cmpq	%r10, %rdi
	jl	.L117
	addl	$1, %edx
	addq	$8, %rcx
	cmpl	%eax, %edx
	jl	.L23
.L93:
	movl	%edx, %eax
	movl	%edx, 20(%rsp)
	subl	$1, %eax
	cmpl	%r14d, %eax
	movl	%eax, 36(%rsp)
	jle	.L73
	cltq
	leaq	(%r15,%rax,8), %rax
	movq	%rax, 64(%rsp)
.L74:
	movq	64(%rsp), %rax
	movl	%r14d, %edx
	movq	(%rax), %rdi
	movl	36(%rsp), %eax
.L24:
	movslq	%edx, %rcx
	leaq	(%r15,%rcx,8), %rcx
.L29:
	movq	(%rcx), %r10
	cmpq	%r10, %rdi
	jl	.L118
	addl	$1, %edx
	addq	$8, %rcx
	cmpl	%eax, %edx
	jl	.L29
.L96:
	movl	%edx, %eax
	movl	%edx, 16(%rsp)
	subl	$1, %eax
	cmpl	%eax, %r14d
	movl	%eax, 40(%rsp)
	jge	.L75
	cltq
	leaq	(%r15,%rax,8), %rax
	movq	%rax, 56(%rsp)
	movq	%r15, %rax
	movl	%r14d, %r15d
	movq	%rax, %r14
.L76:
	movq	56(%rsp), %rax
	movl	%r15d, %edx
	movq	(%rax), %rdi
	movl	40(%rsp), %eax
.L30:
	movslq	%edx, %rcx
	leaq	(%r14,%rcx,8), %rcx
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L32:
	addl	$1, %edx
	addq	$8, %rcx
	cmpl	%eax, %edx
	jge	.L99
.L35:
	movq	(%rcx), %r10
	cmpq	%r10, %rdi
	jge	.L32
	cmpl	%eax, %edx
	jge	.L99
	movslq	%eax, %r8
	salq	$3, %r8
	leaq	(%r14,%r8), %r9
	movq	(%r9), %rsi
	cmpq	%rsi, %rdi
	jg	.L33
	leaq	-8(%r14,%r8), %r8
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L119:
	movq	%r8, %r9
	subq	$8, %r8
	movq	8(%r8), %rsi
	cmpq	%rsi, %rdi
	jg	.L33
.L34:
	subl	$1, %eax
	cmpl	%edx, %eax
	jne	.L119
.L99:
	movl	%edx, %eax
	movl	%edx, 12(%rsp)
	subl	$1, %eax
	cmpl	%eax, %r15d
	movl	%eax, 44(%rsp)
	jge	.L77
	cltq
	leaq	(%r14,%rax,8), %rax
	movq	%rax, 96(%rsp)
	movq	%r14, %rax
	movl	%r15d, %r14d
	movq	%rax, %r15
.L78:
	movq	96(%rsp), %rax
	movl	%r14d, %edx
	movq	(%rax), %rdi
	movl	44(%rsp), %eax
.L36:
	movslq	%edx, %rcx
	leaq	(%r15,%rcx,8), %rcx
	jmp	.L41
.L38:
	addl	$1, %edx
	addq	$8, %rcx
	cmpl	%eax, %edx
	jge	.L102
.L41:
	movq	(%rcx), %r10
	cmpq	%r10, %rdi
	jge	.L38
	cmpl	%eax, %edx
	jge	.L102
	movslq	%eax, %r8
	salq	$3, %r8
	leaq	(%r15,%r8), %r9
	movq	(%r9), %rsi
	cmpq	%rdi, %rsi
	jl	.L39
	leaq	-8(%r15,%r8), %r8
	jmp	.L40
.L120:
	movq	%r8, %r9
	subq	$8, %r8
	movq	8(%r8), %rsi
	cmpq	%rsi, %rdi
	jg	.L39
.L40:
	subl	$1, %eax
	cmpl	%edx, %eax
	jne	.L120
.L102:
	movl	%edx, %eax
	movl	%edx, 8(%rsp)
	subl	$1, %eax
	cmpl	%eax, %r14d
	movl	%eax, 48(%rsp)
	jge	.L79
	cltq
	movl	%r14d, %edi
	movq	%r15, %r14
	leaq	(%r15,%rax,8), %rax
	movq	%rax, 104(%rsp)
.L80:
	movq	104(%rsp), %rax
	movl	%edi, %r12d
	movq	(%rax), %rsi
	movl	48(%rsp), %eax
.L42:
	movslq	%r12d, %rdx
	leaq	(%r14,%rdx,8), %rcx
	jmp	.L47
.L44:
	addl	$1, %r12d
	addq	$8, %rcx
	cmpl	%eax, %r12d
	jge	.L43
.L47:
	movq	(%rcx), %r8
	cmpq	%r8, %rsi
	jge	.L44
	cmpl	%eax, %r12d
	jge	.L43
	movslq	%eax, %rdx
	salq	$3, %rdx
	leaq	(%r14,%rdx), %r10
	movq	(%r10), %r9
	cmpq	%rsi, %r9
	jl	.L45
	leaq	-8(%r14,%rdx), %rdx
	jmp	.L46
.L121:
	movq	%rdx, %r10
	subq	$8, %rdx
	movq	8(%rdx), %r9
	cmpq	%r9, %rsi
	jg	.L45
.L46:
	subl	$1, %eax
	cmpl	%r12d, %eax
	jne	.L121
.L43:
	leal	-1(%r12), %eax
	cmpl	%eax, %edi
	movl	%eax, %r15d
	jge	.L81
	cltq
	movl	%r12d, 124(%rsp)
	movq	%r14, %r12
	leaq	(%r14,%rax,8), %rax
	movq	%rax, 112(%rsp)
.L82:
	movq	112(%rsp), %rax
	movl	%edi, %r14d
	movq	(%rax), %r9
	movl	%r15d, %eax
.L48:
	movslq	%r14d, %rdx
	leaq	(%r12,%rdx,8), %rcx
	.p2align 4,,10
	.p2align 3
.L53:
	movq	(%rcx), %rsi
	cmpq	%rsi, %r9
	jl	.L122
	addl	$1, %r14d
	addq	$8, %rcx
	cmpl	%eax, %r14d
	jl	.L53
.L49:
	leal	-1(%r14), %ebp
	movslq	%ebp, %rax
	cmpl	%edi, %ebp
	leaq	(%r12,%rax,8), %r13
	jle	.L84
	.p2align 4,,10
	.p2align 3
.L88:
	movq	0(%r13), %r10
	movl	%ebp, %eax
	movl	%edi, %ebx
	.p2align 4,,10
	.p2align 3
.L54:
	movslq	%ebx, %rdx
	leaq	(%r12,%rdx,8), %rcx
	.p2align 4,,10
	.p2align 3
.L59:
	movq	(%rcx), %rsi
	cmpq	%rsi, %r10
	jl	.L123
	addl	$1, %ebx
	addq	$8, %rcx
	cmpl	%eax, %ebx
	jl	.L59
.L55:
	leal	-1(%rbx), %esi
	movq	%r12, %rdx
	call	quick
	leal	1(%rbx), %edi
	cmpl	%edi, %ebp
	jg	.L88
.L84:
	leal	1(%r14), %edi
	cmpl	%edi, %r15d
	jg	.L82
	movq	%r12, %r14
	movl	124(%rsp), %r12d
.L81:
	leal	1(%r12), %edi
	cmpl	%edi, 48(%rsp)
	jg	.L80
	movq	%r14, %r15
.L79:
	movl	8(%rsp), %r14d
	addl	$1, %r14d
	cmpl	%r14d, 44(%rsp)
	jg	.L78
	movq	%r15, %r14
.L77:
	movl	12(%rsp), %r15d
	addl	$1, %r15d
	cmpl	%r15d, 40(%rsp)
	jg	.L76
	movq	%r14, %r15
.L75:
	movl	16(%rsp), %r14d
	addl	$1, %r14d
	cmpl	%r14d, 36(%rsp)
	jg	.L74
.L73:
	movl	20(%rsp), %r14d
	addl	$1, %r14d
	cmpl	%r14d, 32(%rsp)
	jg	.L72
.L71:
	movl	120(%rsp), %r14d
	addl	$1, %r14d
	cmpl	%r14d, 28(%rsp)
	jg	.L70
.L69:
	movl	24(%rsp), %r14d
	addl	$1, %r14d
	cmpl	%r14d, 52(%rsp)
	jg	.L86
.L1:
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L115:
	.cfi_restore_state
	cmpl	%eax, %edx
	jge	.L90
	movslq	%eax, %r8
	salq	$3, %r8
	leaq	(%r15,%r8), %r9
	leaq	-8(%r15,%r8), %r8
	movq	(%r9), %rsi
	cmpq	%rsi, %rdi
	jg	.L7
.L87:
	subl	$1, %eax
	cmpl	%edx, %eax
	je	.L90
	movq	%r8, %r9
	subq	$8, %r8
	movq	8(%r8), %rsi
	cmpq	%rsi, %rdi
	jle	.L87
.L7:
	movq	%rsi, (%rcx)
	movq	%r10, (%r9)
	jmp	.L3
.L117:
	cmpl	%eax, %edx
	jge	.L93
	movslq	%eax, %r8
	salq	$3, %r8
	leaq	(%r15,%r8), %r9
	movq	(%r9), %rsi
	cmpq	%rsi, %rdi
	jg	.L21
	leaq	-8(%r15,%r8), %r8
.L22:
	subl	$1, %eax
	cmpl	%edx, %eax
	je	.L93
	movq	%r8, %r9
	subq	$8, %r8
	movq	8(%r8), %rsi
	cmpq	%rsi, %rdi
	jle	.L22
.L21:
	movq	%rsi, (%rcx)
	movq	%r10, (%r9)
	jmp	.L18
.L116:
	cmpl	%eax, %edx
	jge	.L13
	movslq	%eax, %r8
	salq	$3, %r8
	leaq	(%r15,%r8), %r9
	movq	(%r9), %rsi
	cmpq	%rsi, %rdi
	jg	.L15
	leaq	-8(%r15,%r8), %r8
.L16:
	subl	$1, %eax
	cmpl	%edx, %eax
	je	.L13
	movq	%r8, %r9
	subq	$8, %r8
	movq	8(%r8), %rsi
	cmpq	%rsi, %rdi
	jle	.L16
.L15:
	movq	%rsi, (%rcx)
	movq	%r10, (%r9)
	jmp	.L12
.L118:
	cmpl	%eax, %edx
	jge	.L96
	movslq	%eax, %r8
	salq	$3, %r8
	leaq	(%r15,%r8), %r9
	movq	(%r9), %rsi
	cmpq	%rsi, %rdi
	jg	.L27
	leaq	-8(%r15,%r8), %r8
.L28:
	subl	$1, %eax
	cmpl	%edx, %eax
	je	.L96
	movq	%r8, %r9
	subq	$8, %r8
	movq	8(%r8), %rsi
	cmpq	%rsi, %rdi
	jle	.L28
.L27:
	movq	%rsi, (%rcx)
	movq	%r10, (%r9)
	jmp	.L24
.L33:
	movq	%rsi, (%rcx)
	movq	%r10, (%r9)
	jmp	.L30
.L39:
	movq	%rsi, (%rcx)
	movq	%r10, (%r9)
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L123:
	cmpl	%eax, %ebx
	jge	.L55
	movslq	%eax, %rdx
	salq	$3, %rdx
	leaq	(%r12,%rdx), %r9
	movq	(%r9), %r8
	cmpq	%r8, %r10
	jg	.L57
	leaq	-8(%r12,%rdx), %rdx
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L124:
	movq	%rdx, %r9
	subq	$8, %rdx
	movq	8(%rdx), %r8
	cmpq	%r8, %r10
	jg	.L57
.L58:
	subl	$1, %eax
	cmpl	%ebx, %eax
	jne	.L124
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L57:
	movq	%r8, (%rcx)
	movq	%rsi, (%r9)
	jmp	.L54
.L122:
	cmpl	%eax, %r14d
	.p2align 4,,2
	jge	.L49
	movslq	%eax, %rdx
	salq	$3, %rdx
	leaq	(%r12,%rdx), %r10
	movq	(%r10), %r8
	cmpq	%r9, %r8
	jl	.L51
	leaq	-8(%r12,%rdx), %rdx
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L125:
	movq	%rdx, %r10
	subq	$8, %rdx
	movq	8(%rdx), %r8
	cmpq	%r8, %r9
	jg	.L51
.L52:
	subl	$1, %eax
	cmpl	%r14d, %eax
	jne	.L125
	jmp	.L49
.L51:
	movq	%r8, (%rcx)
	movq	%rsi, (%r10)
	jmp	.L48
.L45:
	movq	%r9, (%rcx)
	movq	%r8, (%r10)
	jmp	.L42
	.cfi_endproc
.LFE12:
	.size	quick, .-quick
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Filling array and sorting %d times \n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"BEFORE SORTING...."
.LC2:
	.string	"PRINTING BUFFER"
.LC3:
	.string	"%ld "
.LC4:
	.string	"AFTER SORTING...."
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$10, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	movl	$10, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	printf
	.p2align 4,,10
	.p2align 3
.L127:
	movq	seed(%rip), %rsi
	movl	$buffer, %edx
	.p2align 4,,10
	.p2align 3
.L134:
	imulq	$25173, %rsi, %rsi
	addq	$13849, %rsi
	movq	%rsi, %rcx
	sarq	$63, %rcx
	shrq	$47, %rcx
	leaq	(%rsi,%rcx), %rax
	andl	$131071, %eax
	subq	%rcx, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	xorq	%rcx, %rax
	movq	%rax, (%rdx)
	subq	%rcx, (%rdx)
	addq	$8, %rdx
	cmpq	$buffer+800, %rdx
	jne	.L134
	movl	$.LC1, %edi
	movq	%rsi, seed(%rip)
	movl	$buffer, %ebx
	call	puts
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,10
	.p2align 3
.L130:
	movq	(%rbx), %rsi
	xorl	%eax, %eax
	movl	$.LC3, %edi
	addq	$8, %rbx
	call	printf
	cmpq	$buffer+800, %rbx
	jne	.L130
	movl	$10, %edi
	movl	$buffer, %ebx
	call	putchar
	movl	$buffer, %edx
	movl	$99, %esi
	xorl	%edi, %edi
	call	quick
	movl	$.LC4, %edi
	call	puts
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,10
	.p2align 3
.L132:
	movq	(%rbx), %rsi
	xorl	%eax, %eax
	movl	$.LC3, %edi
	addq	$8, %rbx
	call	printf
	cmpq	$buffer+800, %rbx
	jne	.L132
	movl	$10, %edi
	call	putchar
	subl	$1, %ebp
	jne	.L127
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.text
	.p2align 4,,15
	.globl	random
	.type	random, @function
random:
.LFB13:
	.cfi_startproc
	movq	seed(%rip), %rax
	imulq	$25173, %rax, %rax
	addq	$13849, %rax
	cqto
	movq	%rax, seed(%rip)
	idivq	%rdi
	movq	%rdx, %rax
	ret
	.cfi_endproc
.LFE13:
	.size	random, .-random
	.p2align 4,,15
	.globl	print_buff
	.type	print_buff, @function
print_buff:
.LFB14:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$buffer, %ebx
	call	puts
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,10
	.p2align 3
.L139:
	movq	(%rbx), %rsi
	xorl	%eax, %eax
	movl	$.LC3, %edi
	addq	$8, %rbx
	call	printf
	cmpq	$buffer+800, %rbx
	jne	.L139
	popq	%rbx
	.cfi_def_cfa_offset 8
	movl	$10, %edi
	jmp	putchar
	.cfi_endproc
.LFE14:
	.size	print_buff, .-print_buff
	.globl	buffer
	.bss
	.align 32
	.type	buffer, @object
	.size	buffer, 800
buffer:
	.zero	800
	.data
	.align 16
	.type	seed, @object
	.size	seed, 8
seed:
	.quad	7
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-16)"
	.section	.note.GNU-stack,"",@progbits
