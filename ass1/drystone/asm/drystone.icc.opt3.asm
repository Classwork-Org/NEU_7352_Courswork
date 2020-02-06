# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.4.235 Build 20190416";
# mark_description "-O3 -S -fverbose-asm -o ../asm/drystone.icc.opt3.asm";
	.file "drystone.c"
	.text
..TXTST0:
.L_2__routine_start_main_0:
# -- Begin  main
	.text
# mark_begin;
       .align    16,0x90
	.globl main
# --- main(int, char **)
main:
# parameter 1: %edi
# parameter 2: %rsi
..B1.1:                         # Preds ..B1.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_main.1:
..L2:
                                                          #132.1
        pushq     %rbp                                          #132.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #132.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #132.1
        subq      $256, %rsp                                    #132.1
        xorl      %esi, %esi                                    #132.1
        movl      $3, %edi                                      #132.1
        call      __intel_new_feature_proc_init                 #132.1
                                # LOE rbx r12 r13 r14 r15
..B1.37:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        stmxcsr   (%rsp)                                        #132.1
        orl       $32832, (%rsp)                                #132.1
        lea       120(%rsp), %rdi                               #135.7
        ldmxcsr   (%rsp)                                        #132.1
#       times(struct tms *)
        call      times                                         #135.7
                                # LOE rbx r12 r13 r14 r15
..B1.2:                         # Preds ..B1.37
                                # Execution count [0.00e+00]
        movq      120(%rsp), %rax                               #135.7
        lea       120(%rsp), %rdi                               #135.7
        movq      %rax, (%rsp)                                  #135.7[spill]
#       times(struct tms *)
        call      times                                         #135.7
                                # LOE rbx r12 r13 r14 r15
..B1.3:                         # Preds ..B1.2
                                # Execution count [0.00e+00]
        movq      120(%rsp), %rax                               #135.7
        movl      $56, %edi                                     #135.7
        subq      (%rsp), %rax                                  #135.7[spill]
        movq      %rax, 64(%rsp)                                #135.7[spill]
#       malloc(size_t)
        call      malloc                                        #135.7
                                # LOE rax rbx r12 r13 r14 r15
..B1.38:                        # Preds ..B1.3
                                # Execution count [0.00e+00]
        movq      %rax, (%rsp)                                  #135.7[spill]
                                # LOE rax rbx r12 r13 r14 r15
..B1.4:                         # Preds ..B1.38
                                # Execution count [0.00e+00]
        movl      $56, %edi                                     #135.7
        movq      %rax, PtrGlbNext(%rip)                        #135.7
#       malloc(size_t)
        call      malloc                                        #135.7
                                # LOE rax rbx r12 r13 r14 r15
..B1.39:                        # Preds ..B1.4
                                # Execution count [0.00e+00]
        movq      %rax, %rdx                                    #135.7
                                # LOE rdx rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.39
                                # Execution count [0.00e+00]
        movq      (%rsp), %rax                                  #135.7[spill]
        movl      $18254, %edi                                  #135.7
        lea       PtrGlb(%rip), %rcx                            #135.7
        movq      %rdx, (%rcx)                                  #135.7
        xorl      %r8d, %r8d                                    #135.7
        movq      %rax, (%rdx)                                  #135.7
        movq      $0x4e4f545359524844, %rdx                     #135.7
        movq      (%rcx), %r9                                   #135.7
        movq      $0x4152474f52502045, %rcx                     #135.7
        movq      $0x20454d4f53202c4d, %rsi                     #135.7
        lea       48(%r9), %rax                                 #135.7
        movw      %di, (%rax)                                   #135.7
        lea       120(%rsp), %rdi                               #135.7
        movl      %r8d, -40(%rax)                               #135.7
        movl      $2, -36(%rax)                                 #135.7
        movl      $40, -32(%rax)                                #135.7
        movq      %rdx, -28(%rax)                               #135.7
        movq      %rcx, -20(%rax)                               #135.7
        movq      %rsi, -12(%rax)                               #135.7
        movl      $1230132307, -4(%rax)                         #135.7
        movb      %r8b, 2(%rax)                                 #135.7
#       times(struct tms *)
        call      times                                         #135.7
                                # LOE rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.5
                                # Execution count [0.00e+00]
        movq      120(%rsp), %rax                               #135.7
        xorl      %esi, %esi                                    #135.7
        movq      %rax, 72(%rsp)                                #135.7[spill]
        movq      PtrGlb(%rip), %rdx                            #135.7
        movl      $7, %ecx                                      #135.7
        movb      1(%rsp), %al                                  #135.7
        movl      $8, %r8d                                      #135.7
        movq      %r12, 80(%rsp)                                #135.7[spill]
        movl      $5, %r9d                                      #135.7
        movq      %r13, 88(%rsp)                                #135.7[spill]
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x50, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x58, 0xff, 0xff, 0xff, 0x22
        movl      $18254, %r13d                                 #135.7
        movq      %r14, 96(%rsp)                                #135.7[spill]
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x60, 0xff, 0xff, 0xff, 0x22
        movl      %esi, %r14d                                   #135.7
        movq      %r15, 104(%rsp)                               #135.7[spill]
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x68, 0xff, 0xff, 0xff, 0x22
        movq      %rdx, %r15                                    #135.7
        movq      %rbx, 112(%rsp)                               #135.7[spill]
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x70, 0xff, 0xff, 0xff, 0x22
        movb      %al, %bl                                      #135.7
        movl      %esi, %r12d                                   #135.7
                                # LOE r15 ecx r8d r9d r12d r13d r14d bl
..B1.7:                         # Preds ..B1.28 ..B1.6
                                # Execution count [0.00e+00]
        movq      $0x4e4f545359524844, %rdi                     #135.7
        movq      $0x4152474f52502045, %r10                     #135.7
        movq      $0x20444e2732202c4d, %r11                     #135.7
        movb      $65, Char1Glob(%rip)                          #135.7
        movl      %r12d, BoolGlob(%rip)                         #135.7
        movb      $66, Char2Glob(%rip)                          #135.7
        movq      %rdi, 31(%rsp)                                #135.7
        lea       39(%rsp), %rdi                                #135.7
        movq      %r10, (%rdi)                                  #135.7
        movq      %r11, 8(%rdi)                                 #135.7
        movl      $1230132307, 16(%rdi)                         #135.7
        movw      %r13w, 20(%rdi)                               #135.7
        movb      %r12b, 22(%rdi)                               #135.7
        cmpb      $82, %bl                                      #135.7
        je        ..B1.34       # Prob 50%                      #135.7
                                # LOE r15 ecx r8d r9d r12d r13d r14d bl
..B1.8:                         # Preds ..B1.7
                                # Execution count [0.00e+00]
        lea       (%rsp), %rdi                                  #135.7
        lea       31(%rdi), %rsi                                #135.7
..L22:                                                          #135.7
        movb      (%rdi), %dl                                   #135.7
        cmpb      (%rsi), %dl                                   #135.7
        jne       ..L24         # Prob 50%                      #135.7
        testb     %dl, %dl                                      #135.7
        je        ..L23         # Prob 50%                      #135.7
        movb      1(%rdi), %dl                                  #135.7
        cmpb      1(%rsi), %dl                                  #135.7
        jne       ..L24         # Prob 50%                      #135.7
        addq      $2, %rdi                                      #135.7
        addq      $2, %rsi                                      #135.7
        testb     %dl, %dl                                      #135.7
        jne       ..L22         # Prob 50%                      #135.7
..L23:                                                          #
        xorl      %eax, %eax                                    #135.7
        jmp       ..L25         # Prob 100%                     #135.7
..L24:                                                          #
        sbbl      %eax, %eax                                    #135.7
        orl       $1, %eax                                      #135.7
..L25:                                                          #
                                # LOE r15 eax ecx r8d r9d r12d r13d r14d bl
..B1.40:                        # Preds ..B1.8
                                # Execution count [0.00e+00]
        testl     %eax, %eax                                    #135.7
        jle       ..B1.10       # Prob 16%                      #135.7
                                # LOE r15 ecx r8d r9d r12d r13d r14d bl
..B1.9:                         # Preds ..B1.40
                                # Execution count [0.00e+00]
        movl      $0, BoolGlob(%rip)                            #135.7
        jmp       ..B1.11       # Prob 100%                     #135.7
                                # LOE r15 ecx r8d r9d r12d r13d r14d bl
..B1.10:                        # Preds ..B1.40
                                # Execution count [0.00e+00]
        movl      $1, BoolGlob(%rip)                            #135.7
                                # LOE r15 ecx r8d r9d r12d r13d r14d bl
..B1.11:                        # Preds ..B1.10 ..B1.9
                                # Execution count [0.00e+00]
        lea       (%r15), %rax                                  #135.7
        movups    (%rax), %xmm0                                 #135.7
        movq      (%rax), %r10                                  #135.7
        lea       1660+Array2Glob(%rip), %rdx                   #135.7
        incl      (%rdx)                                        #135.7
        lea       32+Array1Glob(%rip), %rsi                     #135.7
        movl      %ecx, (%rsi)                                  #135.7
        movups    %xmm0, (%r10)                                 #135.7
        movl      %ecx, 4(%rsi)                                 #135.7
        movups    16(%rax), %xmm1                               #135.7
        movups    %xmm1, 16(%r10)                               #135.7
        movl      %r8d, 120(%rsi)                               #135.7
        movups    32(%rax), %xmm2                               #135.7
        movups    %xmm2, 32(%r10)                               #135.7
        movl      %r8d, 4(%rdx)                                 #135.7
        movq      48(%rax), %rdi                                #135.7
        movq      %rdi, 48(%r10)                                #135.7
        movq      (%rax), %r11                                  #135.7
        movl      %r8d, 8(%rdx)                                 #135.7
        movl      %ecx, 5744+Array2Glob(%rip)                   #135.7
        movl      %r9d, 16(%r11)                                #135.7
        movq      (%rax), %rdi                                  #135.7
        movl      %r9d, IntGlob(%rip)                           #135.7
        movq      %rdi, (%rdi)                                  #135.7
        movq      (%rax), %rdi                                  #135.7
        movl      $17, 16(%rax)                                 #135.7
        movq      (%rdi), %r10                                  #135.7
        movq      %rdi, (%r10)                                  #135.7
        movq      (%rax), %r10                                  #135.7
        cmpl      $0, 8(%r10)                                   #135.7
        je        ..B1.13       # Prob 22%                      #135.7
                                # LOE r10 r15 ecx r8d r9d r12d r13d r14d bl
..B1.12:                        # Preds ..B1.11
                                # Execution count [0.00e+00]
        movups    (%r10), %xmm0                                 #135.7
        movups    %xmm0, (%r15)                                 #135.7
        movups    16(%r10), %xmm1                               #135.7
        movups    %xmm1, 16(%r15)                               #135.7
        movups    32(%r10), %xmm2                               #135.7
        movups    %xmm2, 32(%r15)                               #135.7
        movq      48(%r10), %rdi                                #135.7
        movq      %rdi, 48(%r15)                                #135.7
        jmp       ..B1.28       # Prob 100%                     #135.7
                                # LOE r15 ecx r8d r9d r12d r13d r14d bl
..B1.13:                        # Preds ..B1.11
                                # Execution count [0.00e+00]
        movl      12(%r15), %edi                                #135.7
        movl      $6, 16(%r10)                                  #135.7
        cmpl      $2, %edi                                      #135.7
        je        ..B1.15       # Prob 50%                      #135.7
                                # LOE rdi r10 r15 ecx r8d r9d r12d r13d r14d bl
..B1.14:                        # Preds ..B1.13
                                # Execution count [0.00e+00]
        movl      $3, 12(%r10)                                  #135.7
        cmpl      $4, %edi                                      #135.7
        jbe       ..B1.16       # Prob 50%                      #135.7
        jmp       ..B1.27       # Prob 100%                     #135.7
                                # LOE rdi r10 r15 ecx r8d r9d r12d r13d r14d bl
..B1.15:                        # Preds ..B1.13
                                # Execution count [0.00e+00]
        movl      %edi, 12(%r10)                                #135.7
                                # LOE rdi r10 r15 ecx r8d r9d r12d r13d r14d bl
..B1.16:                        # Preds ..B1.14 ..B1.15
                                # Execution count [0.00e+00]
        jmp       *.2.27_2.switchtab.58(,%rdi,8)                #135.7
                                # LOE r10 r15 ecx r8d r9d r12d r13d r14d bl
..1.8_0.TAG.4.0.8.51:
..B1.18:                        # Preds ..B1.16
                                # Execution count [0.00e+00]
        movl      $2, 12(%r10)                                  #135.7
        jmp       ..B1.27       # Prob 100%                     #135.7
                                # LOE r10 r15 ecx r8d r9d r12d r13d r14d bl
..1.8_0.TAG.2.0.8.51:
..B1.22:                        # Preds ..B1.16
                                # Execution count [0.00e+00]
        movl      $1, 12(%r10)                                  #135.7
        jmp       ..B1.27       # Prob 100%                     #135.7
                                # LOE r10 r15 ecx r8d r9d r12d r13d r14d bl
..1.8_0.TAG.1.0.8.51:
..B1.24:                        # Preds ..B1.16
                                # Execution count [0.00e+00]
        movl      $3, 12(%r10)                                  #135.7
        jmp       ..B1.27       # Prob 100%                     #135.7
                                # LOE r10 r15 ecx r8d r9d r12d r13d r14d bl
..1.8_0.TAG.0.0.8.51:
..B1.26:                        # Preds ..B1.16
                                # Execution count [0.00e+00]
        movl      $0, 12(%r10)                                  #135.7
                                # LOE r10 r15 ecx r8d r9d r12d r13d r14d bl
..1.8_0.TAG.3.0.8.51:
..B1.27:                        # Preds ..B1.16 ..B1.14 ..B1.26 ..B1.24 ..B1.22
                                #       ..B1.18
                                # Execution count [0.00e+00]
        movq      %r10, (%r10)                                  #135.7
        movq      (%r15), %rdi                                  #135.7
        addl      $12, 16(%rdi)                                 #135.7
                                # LOE r15 ecx r8d r9d r12d r13d r14d bl
..B1.28:                        # Preds ..B1.27 ..B1.12
                                # Execution count [0.00e+00]
        incl      %r14d                                         #135.7
        cmpl      $500000000, %r14d                             #135.7
        jb        ..B1.7        # Prob 100%                     #135.7
                                # LOE r15 ecx r8d r9d r12d r13d r14d bl
..B1.29:                        # Preds ..B1.28
                                # Execution count [0.00e+00]
        movq      80(%rsp), %r12                                #[spill]
	.cfi_restore 12
        lea       120(%rsp), %rdi                               #135.7
        movq      88(%rsp), %r13                                #[spill]
	.cfi_restore 13
        movq      96(%rsp), %r14                                #[spill]
	.cfi_restore 14
        movq      104(%rsp), %r15                               #[spill]
	.cfi_restore 15
        movq      112(%rsp), %rbx                               #[spill]
	.cfi_restore 3
#       times(struct tms *)
        call      times                                         #135.7
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x70, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x50, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x58, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x60, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x68, 0xff, 0xff, 0xff, 0x22
                                # LOE rbx r12 r13 r14 r15
..B1.30:                        # Preds ..B1.29
                                # Execution count [0.00e+00]
        movq      120(%rsp), %rcx                               #135.7
        movq      $0x8888888888888889, %rax                     #135.7
        subq      72(%rsp), %rcx                                #135.7[spill]
        movl      $.L_2__STRING.2, %edi                         #135.7
        subq      64(%rsp), %rcx                                #135.7[spill]
        movl      $500000000, %esi                              #135.7
        imulq     %rcx                                          #135.7
        addq      %rcx, %rdx                                    #135.7
        xorl      %eax, %eax                                    #135.7
        movq      %rcx, (%rsp)                                  #135.7[spill]
        sarq      $5, %rdx                                      #135.7
        sarq      $63, %rcx                                     #135.7
        subq      %rcx, %rdx                                    #135.7
..___tag_value_main.43:
#       printf(const char *__restrict__, ...)
        call      printf                                        #135.7
..___tag_value_main.44:
                                # LOE rbx r12 r13 r14 r15
..B1.31:                        # Preds ..B1.30
                                # Execution count [0.00e+00]
        movq      $0x6fc23ac00, %rax                            #135.7
        movl      $.L_2__STRING.3, %edi                         #135.7
        cqto                                                    #135.7
        idivq     (%rsp)                                        #135.7[spill]
        movq      %rax, %rsi                                    #135.7
        xorl      %eax, %eax                                    #135.7
..___tag_value_main.46:
#       printf(const char *__restrict__, ...)
        call      printf                                        #135.7
..___tag_value_main.47:
                                # LOE rbx r12 r13 r14 r15
..B1.32:                        # Preds ..B1.31
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #136.1
        movq      %rbp, %rsp                                    #136.1
        popq      %rbp                                          #136.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #136.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
                                # LOE
..B1.34:                        # Preds ..B1.7 ..B1.34
                                # Execution count [0.00e+00]
        jmp       ..B1.34       # Prob 100%                     #
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.0:
	.section .rodata, "a"
	.align 8
	.align 8
.2.27_2.switchtab.58:
	.quad	..1.8_0.TAG.0.0.8.51
	.quad	..1.8_0.TAG.1.0.8.51
	.quad	..1.8_0.TAG.2.0.8.51
	.quad	..1.8_0.TAG.3.0.8.51
	.quad	..1.8_0.TAG.4.0.8.51
	.data
# -- End  main
	.text
.L_2__routine_start_Proc0_1:
# -- Begin  Proc0
	.text
# mark_begin;
       .align    16,0x90
	.globl Proc0
# --- Proc0()
Proc0:
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Proc0.53:
..L54:
                                                         #151.1
        subq      $168, %rsp                                    #151.1
	.cfi_def_cfa_offset 176
        lea       136(%rsp), %rdi                               #176.8
#       times(struct tms *)
        call      times                                         #176.8
                                # LOE rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
                                # Execution count [0.00e+00]
        lea       136(%rsp), %rdx                               #176.33
        movq      (%rdx), %rax                                  #176.33
        lea       (%rdx), %rdi                                  #178.8
        movq      %rax, (%rsp)                                  #176.33[spill]
#       times(struct tms *)
        call      times                                         #178.8
                                # LOE rbx rbp r12 r13 r14 r15
..B2.3:                         # Preds ..B2.2
                                # Execution count [0.00e+00]
        movq      136(%rsp), %rax                               #179.19
        movl      $56, %edi                                     #182.33
        subq      (%rsp), %rax                                  #179.19[spill]
        movq      %rax, 64(%rsp)                                #179.19[spill]
#       malloc(size_t)
        call      malloc                                        #182.33
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.37:                        # Preds ..B2.3
                                # Execution count [0.00e+00]
        movq      %rax, (%rsp)                                  #182.33[spill]
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.4:                         # Preds ..B2.37
                                # Execution count [0.00e+00]
        movl      $56, %edi                                     #183.29
        movq      %rax, PtrGlbNext(%rip)                        #182.8
#       malloc(size_t)
        call      malloc                                        #183.29
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.38:                        # Preds ..B2.4
                                # Execution count [0.00e+00]
        movq      %rax, %rdx                                    #183.29
                                # LOE rdx rbx rbp r12 r13 r14 r15
..B2.5:                         # Preds ..B2.38
                                # Execution count [0.00e+00]
        movq      (%rsp), %rax                                  #184.8[spill]
        movl      $18254, %edi                                  #188.8
        lea       PtrGlb(%rip), %rcx                            #183.8
        movq      %rdx, (%rcx)                                  #183.8
        xorl      %r8d, %r8d                                    #185.8
        movq      %rax, (%rdx)                                  #184.8
        movq      $0x4e4f545359524844, %rdx                     #188.8
        movq      (%rcx), %r9                                   #185.8
        movq      $0x4152474f52502045, %rcx                     #188.8
        movq      $0x20454d4f53202c4d, %rsi                     #188.8
        lea       48(%r9), %rax                                 #188.8
        movw      %di, (%rax)                                   #188.8
        lea       136(%rsp), %rdi                               #197.8
        movl      %r8d, -40(%rax)                               #185.8
        movl      $2, -36(%rax)                                 #186.8
        movl      $40, -32(%rax)                                #187.8
        movq      %rdx, -28(%rax)                               #188.8
        movq      %rcx, -20(%rax)                               #188.8
        movq      %rsi, -12(%rax)                               #188.8
        movl      $1230132307, -4(%rax)                         #188.8
        movb      %r8b, 2(%rax)                                 #188.8
#       times(struct tms *)
        call      times                                         #197.8
                                # LOE rbx rbp r12 r13 r14 r15
..B2.6:                         # Preds ..B2.5
                                # Execution count [0.00e+00]
        movq      136(%rsp), %rax                               #197.33
        xorl      %esi, %esi                                    #199.6
        movb      1(%rsp), %dil                                 #208.27
        movl      $7, %ecx                                      #206.8
        movq      %rax, 72(%rsp)                                #197.33[spill]
        movq      $0x20444e2732202c4d, %rax                     #206.8
        movq      PtrGlb(%rip), %rdx                            #216.14
        movl      $8, %r8d                                      #206.8
        movb      %dil, 128(%rsp)                               #206.8[spill]
        movl      $5, %r9d                                      #206.8
        movq      %r12, 80(%rsp)                                #206.8[spill]
	.cfi_offset 12, -96
        movl      $18254, %r12d                                 #206.8
        movq      %r13, 88(%rsp)                                #206.8[spill]
	.cfi_offset 13, -88
        movq      $0x4152474f52502045, %r13                     #206.8
        movq      %r14, 96(%rsp)                                #206.8[spill]
	.cfi_offset 14, -80
        movl      %esi, %r14d                                   #206.8
        movq      %r15, 104(%rsp)                               #206.8[spill]
	.cfi_offset 15, -72
        movq      %rdx, %r15                                    #206.8
        movq      %rbx, 112(%rsp)                               #206.8[spill]
	.cfi_offset 3, -64
        movq      %rax, %rbx                                    #206.8
        movq      %rbp, 120(%rsp)                               #206.8[spill]
	.cfi_offset 6, -56
        movl      %esi, %ebp                                    #206.8
                                # LOE rbx r13 r15 ecx ebp r8d r9d r12d r14d
..B2.7:                         # Preds ..B2.28 ..B2.6
                                # Execution count [0.00e+00]
        movq      $0x4e4f545359524844, %rdi                     #206.8
        movb      $65, Char1Glob(%rip)                          #202.8
        movl      %ebp, BoolGlob(%rip)                          #202.8
        movb      $66, Char2Glob(%rip)                          #203.8
        movq      %rdi, 31(%rsp)                                #206.8
        lea       39(%rsp), %rdi                                #206.8
        movq      %r13, (%rdi)                                  #206.8
        movq      %rbx, 8(%rdi)                                 #206.8
        movl      $1230132307, 16(%rdi)                         #206.8
        movw      %r12w, 20(%rdi)                               #206.8
        movb      %bpl, 22(%rdi)                                #206.15
        cmpb      $82, 128(%rsp)                                #208.21[spill]
        je        ..B2.34       # Prob 50%                      #208.21
                                # LOE rbx r13 r15 ecx ebp r8d r9d r12d r14d
..B2.8:                         # Preds ..B2.7
                                # Execution count [0.00e+00]
        lea       (%rsp), %rdi                                  #208.21
        lea       31(%rdi), %rsi                                #208.21
..L76:                                                          #208.21
        movb      (%rdi), %dl                                   #208.21
        cmpb      (%rsi), %dl                                   #208.21
        jne       ..L78         # Prob 50%                      #208.21
        testb     %dl, %dl                                      #208.21
        je        ..L77         # Prob 50%                      #208.21
        movb      1(%rdi), %dl                                  #208.21
        cmpb      1(%rsi), %dl                                  #208.21
        jne       ..L78         # Prob 50%                      #208.21
        addq      $2, %rdi                                      #208.21
        addq      $2, %rsi                                      #208.21
        testb     %dl, %dl                                      #208.21
        jne       ..L76         # Prob 50%                      #208.21
..L77:                                                          #
        xorl      %eax, %eax                                    #208.21
        jmp       ..L79         # Prob 100%                     #208.21
..L78:                                                          #
        sbbl      %eax, %eax                                    #208.21
        orl       $1, %eax                                      #208.21
..L79:                                                          #
                                # LOE rbx r13 r15 eax ecx ebp r8d r9d r12d r14d
..B2.39:                        # Preds ..B2.8
                                # Execution count [0.00e+00]
        testl     %eax, %eax                                    #208.21
        jle       ..B2.10       # Prob 16%                      #208.21
                                # LOE rbx r13 r15 ecx ebp r8d r9d r12d r14d
..B2.9:                         # Preds ..B2.39
                                # Execution count [0.00e+00]
        movl      $0, BoolGlob(%rip)                            #208.8
        jmp       ..B2.11       # Prob 100%                     #208.8
                                # LOE rbx r13 r15 ecx ebp r8d r9d r12d r14d
..B2.10:                        # Preds ..B2.39
                                # Execution count [0.00e+00]
        movl      $1, BoolGlob(%rip)                            #208.8
                                # LOE rbx r13 r15 ecx ebp r8d r9d r12d r14d
..B2.11:                        # Preds ..B2.10 ..B2.9
                                # Execution count [0.00e+00]
        lea       (%r15), %rax                                  #216.8
        movups    (%rax), %xmm0                                 #216.8
        movq      (%rax), %r10                                  #216.8
        lea       1660+Array2Glob(%rip), %rdx                   #215.8
        incl      (%rdx)                                        #215.8
        lea       32+Array1Glob(%rip), %rsi                     #215.14
        movl      %ecx, (%rsi)                                  #215.14
        movups    %xmm0, (%r10)                                 #216.8
        movl      %ecx, 4(%rsi)                                 #215.14
        movups    16(%rax), %xmm1                               #216.8
        movups    %xmm1, 16(%r10)                               #216.8
        movl      %r8d, 120(%rsi)                               #215.14
        movups    32(%rax), %xmm2                               #216.8
        movups    %xmm2, 32(%r10)                               #216.8
        movl      %r8d, 4(%rdx)                                 #215.8
        movq      48(%rax), %rdi                                #216.8
        movq      %rdi, 48(%r10)                                #216.8
        movq      (%rax), %r11                                  #216.8
        movl      %r8d, 8(%rdx)                                 #215.8
        movl      %ecx, 5744+Array2Glob(%rip)                   #215.8
        movl      %r9d, 16(%r11)                                #216.8
        movq      (%rax), %rdi                                  #216.8
        movl      %r9d, IntGlob(%rip)                           #215.8
        movq      %rdi, (%rdi)                                  #216.8
        movq      (%rax), %rdi                                  #216.8
        movl      $17, 16(%rax)                                 #216.8
        movq      (%rdi), %r10                                  #216.8
        movq      %rdi, (%r10)                                  #216.8
        movq      (%rax), %r10                                  #216.8
        cmpl      $0, 8(%r10)                                   #216.8
        je        ..B2.13       # Prob 22%                      #216.8
                                # LOE rbx r10 r13 r15 ecx ebp r8d r9d r12d r14d
..B2.12:                        # Preds ..B2.11
                                # Execution count [0.00e+00]
        movups    (%r10), %xmm0                                 #216.8
        movups    %xmm0, (%r15)                                 #216.8
        movups    16(%r10), %xmm1                               #216.8
        movups    %xmm1, 16(%r15)                               #216.8
        movups    32(%r10), %xmm2                               #216.8
        movups    %xmm2, 32(%r15)                               #216.8
        movq      48(%r10), %rdi                                #216.8
        movq      %rdi, 48(%r15)                                #216.8
        jmp       ..B2.28       # Prob 100%                     #216.8
                                # LOE rbx r13 r15 ecx ebp r8d r9d r12d r14d
..B2.13:                        # Preds ..B2.11
                                # Execution count [0.00e+00]
        movl      12(%r15), %edi                                #216.8
        movl      $6, 16(%r10)                                  #216.8
        cmpl      $2, %edi                                      #216.8
        je        ..B2.15       # Prob 50%                      #216.8
                                # LOE rbx rdi r10 r13 r15 ecx ebp r8d r9d r12d r14d
..B2.14:                        # Preds ..B2.13
                                # Execution count [0.00e+00]
        movl      $3, 12(%r10)                                  #216.8
        cmpl      $4, %edi                                      #216.8
        jbe       ..B2.16       # Prob 50%                      #216.8
        jmp       ..B2.27       # Prob 100%                     #216.8
                                # LOE rbx rdi r10 r13 r15 ecx ebp r8d r9d r12d r14d
..B2.15:                        # Preds ..B2.13
                                # Execution count [0.00e+00]
        movl      %edi, 12(%r10)                                #216.8
                                # LOE rbx rdi r10 r13 r15 ecx ebp r8d r9d r12d r14d
..B2.16:                        # Preds ..B2.14 ..B2.15
                                # Execution count [0.00e+00]
        jmp       *.2.28_2.switchtab.56(,%rdi,8)                #216.8
                                # LOE rbx r10 r13 r15 ecx ebp r8d r9d r12d r14d
..1.8_0.TAG.4.0.8.34:
..B2.18:                        # Preds ..B2.16
                                # Execution count [0.00e+00]
        movl      $2, 12(%r10)                                  #216.8
        jmp       ..B2.27       # Prob 100%                     #216.8
                                # LOE rbx r10 r13 r15 ecx ebp r8d r9d r12d r14d
..1.8_0.TAG.2.0.8.34:
..B2.22:                        # Preds ..B2.16
                                # Execution count [0.00e+00]
        movl      $1, 12(%r10)                                  #216.8
        jmp       ..B2.27       # Prob 100%                     #216.8
                                # LOE rbx r10 r13 r15 ecx ebp r8d r9d r12d r14d
..1.8_0.TAG.1.0.8.34:
..B2.24:                        # Preds ..B2.16
                                # Execution count [0.00e+00]
        movl      $3, 12(%r10)                                  #216.8
        jmp       ..B2.27       # Prob 100%                     #216.8
                                # LOE rbx r10 r13 r15 ecx ebp r8d r9d r12d r14d
..1.8_0.TAG.0.0.8.34:
..B2.26:                        # Preds ..B2.16
                                # Execution count [0.00e+00]
        movl      $0, 12(%r10)                                  #216.8
                                # LOE rbx r10 r13 r15 ecx ebp r8d r9d r12d r14d
..1.8_0.TAG.3.0.8.34:
..B2.27:                        # Preds ..B2.16 ..B2.14 ..B2.26 ..B2.24 ..B2.22
                                #       ..B2.18
                                # Execution count [0.00e+00]
        movq      %r10, (%r10)                                  #216.8
        movq      (%r15), %rdi                                  #216.8
        addl      $12, 16(%rdi)                                 #216.8
                                # LOE rbx r13 r15 ecx ebp r8d r9d r12d r14d
..B2.28:                        # Preds ..B2.27 ..B2.12
                                # Execution count [0.00e+00]
        incl      %r14d                                         #199.26
        cmpl      $500000000, %r14d                             #199.17
        jb        ..B2.7        # Prob 100%                     #199.17
                                # LOE rbx r13 r15 ecx ebp r8d r9d r12d r14d
..B2.29:                        # Preds ..B2.28
                                # Execution count [0.00e+00]
        movq      80(%rsp), %r12                                #[spill]
	.cfi_restore 12
        lea       136(%rsp), %rdi                               #236.8
        movq      88(%rsp), %r13                                #[spill]
	.cfi_restore 13
        movq      96(%rsp), %r14                                #[spill]
	.cfi_restore 14
        movq      104(%rsp), %r15                               #[spill]
	.cfi_restore 15
        movq      112(%rsp), %rbx                               #[spill]
	.cfi_restore 3
        movq      120(%rsp), %rbp                               #[spill]
	.cfi_restore 6
#       times(struct tms *)
        call      times                                         #236.8
	.cfi_offset 3, -64
	.cfi_offset 6, -56
	.cfi_offset 12, -96
	.cfi_offset 13, -88
	.cfi_offset 14, -80
	.cfi_offset 15, -72
                                # LOE rbx rbp r12 r13 r14 r15
..B2.30:                        # Preds ..B2.29
                                # Execution count [0.00e+00]
        movq      136(%rsp), %rcx                               #237.20
        movq      $0x8888888888888889, %rax                     #238.1
        subq      72(%rsp), %rcx                                #237.20[spill]
        movl      $.L_2__STRING.2, %edi                         #238.1
        subq      64(%rsp), %rcx                                #237.20[spill]
        movl      $500000000, %esi                              #238.1
        imulq     %rcx                                          #238.1
        addq      %rcx, %rdx                                    #238.1
        xorl      %eax, %eax                                    #238.1
        movq      %rcx, (%rsp)                                  #237.20[spill]
        sarq      $5, %rdx                                      #238.1
        sarq      $63, %rcx                                     #238.1
        subq      %rcx, %rdx                                    #238.1
..___tag_value_Proc0.100:
#       printf(const char *__restrict__, ...)
        call      printf                                        #238.1
..___tag_value_Proc0.101:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.31:                        # Preds ..B2.30
                                # Execution count [0.00e+00]
        movq      $0x6fc23ac00, %rax                            #239.1
        movl      $.L_2__STRING.3, %edi                         #239.1
        cqto                                                    #239.1
        idivq     (%rsp)                                        #239.1[spill]
        movq      %rax, %rsi                                    #239.1
        xorl      %eax, %eax                                    #239.1
..___tag_value_Proc0.103:
#       printf(const char *__restrict__, ...)
        call      printf                                        #239.1
..___tag_value_Proc0.104:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.32:                        # Preds ..B2.31
                                # Execution count [0.00e+00]
        addq      $168, %rsp                                    #243.1
	.cfi_def_cfa_offset 8
        ret                                                     #243.1
	.cfi_def_cfa_offset 176
                                # LOE
..B2.34:                        # Preds ..B2.7 ..B2.34
                                # Execution count [0.00e+00]
        jmp       ..B2.34       # Prob 100%                     #
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Proc0,@function
	.size	Proc0,.-Proc0
..LNProc0.1:
	.section .rodata, "a"
	.align 8
.2.28_2.switchtab.56:
	.quad	..1.8_0.TAG.0.0.8.34
	.quad	..1.8_0.TAG.1.0.8.34
	.quad	..1.8_0.TAG.2.0.8.34
	.quad	..1.8_0.TAG.3.0.8.34
	.quad	..1.8_0.TAG.4.0.8.34
	.data
# -- End  Proc0
	.text
.L_2__routine_start_Proc1_2:
# -- Begin  Proc1
	.text
# mark_begin;
       .align    16,0x90
	.globl Proc1
# --- Proc1()
Proc1:
# parameter 1: %rdi
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Proc1.108:
..L109:
                                                        #247.1
        movl      $5, %esi                                      #251.8
        movq      PtrGlb(%rip), %rax                            #250.8
        movq      (%rdi), %rcx                                  #250.8
        movups    (%rax), %xmm0                                 #250.8
        movups    %xmm0, (%rcx)                                 #250.8
        movups    16(%rax), %xmm1                               #250.8
        movups    %xmm1, 16(%rcx)                               #250.8
        movups    32(%rax), %xmm2                               #250.8
        movups    %xmm2, 32(%rcx)                               #250.8
        movq      48(%rax), %rdx                                #250.8
        movq      %rdx, 48(%rcx)                                #250.8
        movq      (%rdi), %r8                                   #252.8
        movl      %esi, 16(%rdi)                                #251.8
        movq      %r8, (%r8)                                    #253.8
        movl      %esi, 16(%r8)                                 #252.8
        movq      (%rdi), %rsi                                  #254.14
        movq      PtrGlb(%rip), %rcx                            #254.8
        movq      (%rsi), %rdx                                  #254.14
        testq     %rcx, %rcx                                    #254.8
        je        ..B3.3        # Prob 12%                      #254.8
                                # LOE rdx rcx rbx rbp rsi rdi r12 r13 r14 r15
..B3.2:                         # Preds ..B3.1
                                # Execution count [8.80e-01]
        movq      (%rcx), %rax                                  #254.8
        movq      %rax, (%rdx)                                  #254.8
        movq      (%rdi), %rsi                                  #255.12
        movq      PtrGlb(%rip), %rcx                            #254.8
        movl      IntGlob(%rip), %eax                           #254.8
        jmp       ..B3.4        # Prob 100%                     #254.8
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 eax
..B3.3:                         # Preds ..B3.1
                                # Execution count [1.20e-01]
        movl      $100, IntGlob(%rip)                           #254.8
        movl      $100, %eax                                    #254.8
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 eax
..B3.4:                         # Preds ..B3.2 ..B3.3
                                # Execution count [1.00e+00]
        addl      $12, %eax                                     #254.8
        movl      %eax, 16(%rcx)                                #254.8
        cmpl      $0, 8(%rsi)                                   #255.32
        je        ..B3.6        # Prob 22%                      #255.32
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15
..B3.5:                         # Preds ..B3.4
                                # Execution count [7.80e-01]
        movups    (%rsi), %xmm0                                 #263.16
        movups    %xmm0, (%rdi)                                 #263.16
        movups    16(%rsi), %xmm1                               #263.16
        movups    %xmm1, 16(%rdi)                               #263.16
        movups    32(%rsi), %xmm2                               #263.16
        movups    %xmm2, 32(%rdi)                               #263.16
        movq      48(%rsi), %rax                                #263.16
        movq      %rax, 48(%rdi)                                #263.16
        ret                                                     #263.16
                                # LOE rbx rbp r12 r13 r14 r15
..B3.6:                         # Preds ..B3.4
                                # Execution count [2.20e-01]
        movl      12(%rdi), %eax                                #258.22
        movl      $6, 16(%rsi)                                  #257.16
        cmpl      $2, %eax                                      #258.16
        je        ..B3.8        # Prob 50%                      #258.16
                                # LOE rax rcx rbx rbp rsi rdi r12 r13 r14 r15
..B3.7:                         # Preds ..B3.6
                                # Execution count [1.10e-01]
        movl      $3, 12(%rsi)                                  #258.16
        cmpl      $4, %eax                                      #258.16
        jbe       ..B3.9        # Prob 50%                      #258.16
        jmp       ..B3.22       # Prob 100%                     #258.16
                                # LOE rax rcx rbx rbp rsi rdi r12 r13 r14 r15
..B3.8:                         # Preds ..B3.6
                                # Execution count [1.10e-01]
        movl      %eax, 12(%rsi)                                #258.16
                                # LOE rax rcx rbx rbp rsi rdi r12 r13 r14 r15
..B3.9:                         # Preds ..B3.7 ..B3.8
                                # Execution count [1.10e-01]
        jmp       *.2.29_2.switchtab.21(,%rax,8)                #258.16
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15
..1.8_0.TAG.4.0.8.28:
..B3.11:                        # Preds ..B3.9
                                # Execution count [2.20e-02]
        movl      $2, 12(%rsi)                                  #258.16
        jmp       ..B3.22       # Prob 100%                     #258.16
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15
..1.8_0.TAG.2.0.8.28:
..B3.15:                        # Preds ..B3.9
                                # Execution count [2.20e-02]
        movl      $1, 12(%rsi)                                  #258.16
        jmp       ..B3.22       # Prob 100%                     #258.16
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15
..1.8_0.TAG.1.0.8.28:
..B3.17:                        # Preds ..B3.9
                                # Execution count [2.20e-02]
        cmpl      $100, IntGlob(%rip)                           #258.16
        jg        ..B3.21       # Prob 50%                      #258.16
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15
..B3.19:                        # Preds ..B3.17
                                # Execution count [1.10e-02]
        movl      $3, 12(%rsi)                                  #258.16
        jmp       ..B3.22       # Prob 100%                     #258.16
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15
..1.8_0.TAG.0.0.8.28:
..B3.21:                        # Preds ..B3.17 ..B3.9
                                # Execution count [2.20e-02]
        movl      $0, 12(%rsi)                                  #258.16
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15
..1.8_0.TAG.3.0.8.28:
..B3.22:                        # Preds ..B3.9 ..B3.7 ..B3.11 ..B3.19 ..B3.15
                                #       ..B3.21
                                # Execution count [2.20e-01]
        movq      (%rcx), %rax                                  #259.37
        movq      %rax, (%rsi)                                  #259.16
        movq      (%rdi), %rdx                                  #260.22
        addl      $12, 16(%rdx)                                 #260.16
                                # LOE rbx rbp r12 r13 r14 r15
..B3.23:                        # Preds ..B3.22
                                # Execution count [1.00e+00]
        ret                                                     #266.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Proc1,@function
	.size	Proc1,.-Proc1
..LNProc1.2:
	.section .rodata, "a"
	.align 8
.2.29_2.switchtab.21:
	.quad	..1.8_0.TAG.0.0.8.28
	.quad	..1.8_0.TAG.1.0.8.28
	.quad	..1.8_0.TAG.2.0.8.28
	.quad	..1.8_0.TAG.3.0.8.28
	.quad	..1.8_0.TAG.4.0.8.28
	.data
# -- End  Proc1
	.text
.L_2__routine_start_Proc2_3:
# -- Begin  Proc2
	.text
# mark_begin;
       .align    16,0x90
	.globl Proc2
# --- Proc2()
Proc2:
# parameter 1: %rdi
..B4.1:                         # Preds ..B4.0
                                # Execution count [1.64e+00]
	.cfi_startproc
..___tag_value_Proc2.111:
..L112:
                                                        #270.1
        movl      (%rdi), %edx                                  #274.18
        movb      Char1Glob(%rip), %al                          #277.20
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx ecx al
..B4.2:                         # Preds ..B4.3 ..B4.1
                                # Execution count [5.00e+00]
        cmpb      $65, %al                                      #277.33
        je        ..B4.6        # Prob 16%                      #277.33
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx ecx al
..B4.3:                         # Preds ..B4.2
                                # Execution count [4.20e+00]
        testl     %ecx, %ecx                                    #283.31
        jne       ..B4.2        # Prob 80%                      #283.31
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx ecx al
..B4.5:                         # Preds ..B4.3
                                # Execution count [1.00e+00]
        ret                                                     #286.1
                                # LOE
..B4.6:                         # Preds ..B4.2
                                # Execution count [8.00e-01]: Infreq
        addl      $9, %edx                                      #279.26
        subl      IntGlob(%rip), %edx                           #280.36
        movl      %edx, (%rdi)                                  #280.25
        ret                                                     #280.25
        .align    16,0x90
                                # LOE rbx rbp r12 r13 r14 r15
	.cfi_endproc
# mark_end;
	.type	Proc2,@function
	.size	Proc2,.-Proc2
..LNProc2.3:
	.data
# -- End  Proc2
	.text
.L_2__routine_start_Proc3_4:
# -- Begin  Proc3
	.text
# mark_begin;
       .align    16,0x90
	.globl Proc3
# --- Proc3()
Proc3:
# parameter 1: %rdi
..B5.1:                         # Preds ..B5.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Proc3.114:
..L115:
                                                        #290.1
        movq      PtrGlb(%rip), %rdx                            #291.12
        testq     %rdx, %rdx                                    #291.22
        je        ..B5.3        # Prob 12%                      #291.22
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15
..B5.2:                         # Preds ..B5.1
                                # Execution count [8.80e-01]
        movq      (%rdx), %rax                                  #292.29
        movq      %rax, (%rdi)                                  #292.17
        movq      PtrGlb(%rip), %rdx                            #295.28
        movl      IntGlob(%rip), %eax                           #295.18
        jmp       ..B5.4        # Prob 100%                     #295.18
                                # LOE rdx rbx rbp r12 r13 r14 r15 eax
..B5.3:                         # Preds ..B5.1
                                # Execution count [1.20e-01]
        movl      $100, IntGlob(%rip)                           #294.16
        movl      $100, %eax                                    #294.16
                                # LOE rdx rbx rbp r12 r13 r14 r15 eax
..B5.4:                         # Preds ..B5.2 ..B5.3
                                # Execution count [1.00e+00]
        addl      $12, %eax                                     #295.8
        movl      %eax, 16(%rdx)                                #295.28
        ret                                                     #296.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Proc3,@function
	.size	Proc3,.-Proc3
..LNProc3.4:
	.data
# -- End  Proc3
	.text
.L_2__routine_start_Proc4_5:
# -- Begin  Proc4
	.text
# mark_begin;
       .align    16,0x90
	.globl Proc4
# --- Proc4()
Proc4:
..B6.1:                         # Preds ..B6.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Proc4.117:
..L118:
                                                        #299.1
        movb      $66, Char2Glob(%rip)                          #304.8
        ret                                                     #305.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Proc4,@function
	.size	Proc4,.-Proc4
..LNProc4.5:
	.data
# -- End  Proc4
	.text
.L_2__routine_start_Proc5_6:
# -- Begin  Proc5
	.text
# mark_begin;
       .align    16,0x90
	.globl Proc5
# --- Proc5()
Proc5:
..B7.1:                         # Preds ..B7.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Proc5.120:
..L121:
                                                        #308.1
        movb      $65, Char1Glob(%rip)                          #309.8
        movl      $0, BoolGlob(%rip)                            #310.8
        ret                                                     #311.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Proc5,@function
	.size	Proc5,.-Proc5
..LNProc5.6:
	.data
# -- End  Proc5
	.text
.L_2__routine_start_Proc6_7:
# -- Begin  Proc6
	.text
# mark_begin;
       .align    16,0x90
	.globl Proc6
# --- Proc6()
Proc6:
# parameter 1: %edi
# parameter 2: %rsi
..B8.1:                         # Preds ..B8.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Proc6.123:
..L124:
                                                        #318.1
        cmpl      $2, %edi                                      #320.14
        je        ..B8.3        # Prob 50%                      #320.14
                                # LOE rbx rbp rsi r12 r13 r14 r15 edi
..B8.2:                         # Preds ..B8.1
                                # Execution count [5.00e-01]
        movl      $3, (%rsi)                                    #321.17
        cmpl      $4, %edi                                      #322.8
        jbe       ..B8.4        # Prob 50%                      #322.8
        jmp       ..B8.17       # Prob 100%                     #322.8
                                # LOE rbx rbp rsi r12 r13 r14 r15 edi
..B8.3:                         # Preds ..B8.1
                                # Execution count [5.00e-01]
        movl      %edi, (%rsi)                                  #325.44
                                # LOE rbx rbp rsi r12 r13 r14 r15 edi
..B8.4:                         # Preds ..B8.2 ..B8.3
                                # Execution count [5.00e-01]
        movl      %edi, %edi                                    #318.1
        jmp       *.2.34_2.switchtab.4(,%rdi,8)                 #322.8
                                # LOE rbx rbp rsi r12 r13 r14 r15
..1.8_0.TAG.4.0.8:
..B8.6:                         # Preds ..B8.4
                                # Execution count [1.00e-01]
        movl      $2, (%rsi)                                    #330.25
        jmp       ..B8.17       # Prob 100%                     #330.25
                                # LOE rbx rbp r12 r13 r14 r15
..1.8_0.TAG.2.0.8:
..B8.10:                        # Preds ..B8.4
                                # Execution count [1.00e-01]
        movl      $1, (%rsi)                                    #328.25
        jmp       ..B8.17       # Prob 100%                     #328.25
                                # LOE rbx rbp r12 r13 r14 r15
..1.8_0.TAG.1.0.8:
..B8.12:                        # Preds ..B8.4
                                # Execution count [1.00e-01]
        cmpl      $100, IntGlob(%rip)                           #325.38
        jg        ..B8.16       # Prob 50%                      #325.38
                                # LOE rbx rbp rsi r12 r13 r14 r15
..B8.14:                        # Preds ..B8.12
                                # Execution count [5.00e-02]
        movl      $3, (%rsi)                                    #326.30
        ret                                                     #326.30
                                # LOE rbx rbp r12 r13 r14 r15
..1.8_0.TAG.0.0.8:
..B8.16:                        # Preds ..B8.12 ..B8.4
                                # Execution count [1.00e-01]
        movl      $0, (%rsi)                                    #324.25
                                # LOE rbx rbp r12 r13 r14 r15
..1.8_0.TAG.3.0.8:
..B8.17:                        # Preds ..B8.4 ..B8.2 ..B8.6 ..B8.10 ..B8.16
                                #      
                                # Execution count [1.00e+00]
        ret                                                     #332.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Proc6,@function
	.size	Proc6,.-Proc6
..LNProc6.7:
	.section .rodata, "a"
	.align 8
.2.34_2.switchtab.4:
	.quad	..1.8_0.TAG.0.0.8
	.quad	..1.8_0.TAG.1.0.8
	.quad	..1.8_0.TAG.2.0.8
	.quad	..1.8_0.TAG.3.0.8
	.quad	..1.8_0.TAG.4.0.8
	.data
# -- End  Proc6
	.text
.L_2__routine_start_Proc7_8:
# -- Begin  Proc7
	.text
# mark_begin;
       .align    16,0x90
	.globl Proc7
# --- Proc7()
Proc7:
# parameter 1: %edi
# parameter 2: %esi
# parameter 3: %rdx
..B9.1:                         # Preds ..B9.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Proc7.126:
..L127:
                                                        #338.1
        lea       2(%rsi,%rdi), %eax                            #342.32
        movl      %eax, (%rdx)                                  #342.9
        ret                                                     #343.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Proc7,@function
	.size	Proc7,.-Proc7
..LNProc7.8:
	.data
# -- End  Proc7
	.text
.L_2__routine_start_Proc8_9:
# -- Begin  Proc8
	.text
# mark_begin;
       .align    16,0x90
	.globl Proc8
# --- Proc8()
Proc8:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %edx
# parameter 4: %ecx
..B10.1:                        # Preds ..B10.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Proc8.129:
..L130:
                                                        #350.1
        movslq    %edx, %rax                                    #350.1
        addl      $5, %edx                                      #354.28
        imulq     $208, %rax, %r9                               #359.16
        movl      %ecx, 20(%rdi,%rax,4)                         #355.8
        movl      %ecx, 24(%rdi,%rax,4)                         #356.8
        movl      %edx, 140(%rdi,%rax,4)                        #357.8
        movl      %edx, 1040(%rsi,%r9)                          #359.16
        movl      %edx, 1044(%rsi,%r9)                          #359.16
        incl      1036(%rsi,%r9)                                #360.10
        movl      20(%rdi,%rax,4), %r8d                         #361.39
        movl      %r8d, 5120(%rsi,%r9)                          #361.8
        movl      $5, IntGlob(%rip)                             #362.8
        ret                                                     #363.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Proc8,@function
	.size	Proc8,.-Proc8
..LNProc8.9:
	.data
# -- End  Proc8
	.text
.L_2__routine_start_Func1_10:
# -- Begin  Func1
	.text
# mark_begin;
       .align    16,0x90
	.globl Func1
# --- Func1()
Func1:
# parameter 1: %edi
# parameter 2: %esi
..B11.1:                        # Preds ..B11.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Func1.132:
..L133:
                                                        #368.1
        xorl      %eax, %eax                                    #375.23
        cmpb      %sil, %dil                                    #375.23
        sete      %al                                           #375.23
        ret                                                     #375.23
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Func1,@function
	.size	Func1,.-Func1
..LNFunc1.10:
	.data
# -- End  Func1
	.text
.L_2__routine_start_Func2_11:
# -- Begin  Func2
	.text
# mark_begin;
       .align    16,0x90
	.globl Func2
# --- Func2()
Func2:
# parameter 1: %rdi
# parameter 2: %rsi
..B12.1:                        # Preds ..B12.0
                                # Execution count [5.00e-01]
	.cfi_startproc
..___tag_value_Func2.135:
..L136:
                                                        #383.1
        movb      1(%rdi), %al                                  #389.26
        cmpb      2(%rsi), %al                                  #389.20
        je        ..B12.4       # Prob 50%                      #389.20
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15
..B12.2:                        # Preds ..B12.1
                                # Execution count [9.31e-01]
..L137:                                                         #400.20
        movb      (%rdi), %dl                                   #400.20
        cmpb      (%rsi), %dl                                   #400.20
        jne       ..L139        # Prob 50%                      #400.20
        testb     %dl, %dl                                      #400.20
        je        ..L138        # Prob 50%                      #400.20
        movb      1(%rdi), %dl                                  #400.20
        cmpb      1(%rsi), %dl                                  #400.20
        jne       ..L139        # Prob 50%                      #400.20
        addq      $2, %rdi                                      #400.20
        addq      $2, %rsi                                      #400.20
        testb     %dl, %dl                                      #400.20
        jne       ..L137        # Prob 50%                      #400.20
..L138:                                                         #
        xorl      %eax, %eax                                    #400.20
        jmp       ..L140        # Prob 100%                     #400.20
..L139:                                                         #
        sbbl      %eax, %eax                                    #400.20
        orl       $1, %eax                                      #400.20
..L140:                                                         #
                                # LOE rbx rbp r12 r13 r14 r15 eax
..B12.7:                        # Preds ..B12.2
                                # Execution count [9.31e-01]
        xorl      %edx, %edx                                    #403.31
        testl     %eax, %eax                                    #403.31
        setg      %dl                                           #403.31
        movl      %edx, %eax                                    #403.31
        ret                                                     #403.31
                                # LOE
..B12.4:                        # Preds ..B12.1 ..B12.4
                                # Execution count [0.00e+00]
        jmp       ..B12.4       # Prob 100%                     #
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Func2,@function
	.size	Func2,.-Func2
..LNFunc2.11:
	.data
# -- End  Func2
	.text
.L_2__routine_start_Func3_12:
# -- Begin  Func3
	.text
# mark_begin;
       .align    16,0x90
	.globl Func3
# --- Func3()
Func3:
# parameter 1: %edi
..B13.1:                        # Preds ..B13.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Func3.142:
..L143:
                                                        #412.1
        xorl      %eax, %eax                                    #416.38
        cmpl      $2, %edi                                      #416.38
        sete      %al                                           #416.38
        ret                                                     #416.38
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Func3,@function
	.size	Func3,.-Func3
..LNFunc3.12:
	.data
# -- End  Func3
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.2:
	.long	2037540932
	.long	1852798067
	.long	1769218149
	.long	1713399149
	.long	622883439
	.long	1881171052
	.long	1702064993
	.long	540876915
	.long	174353445
	.byte	0
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,37
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.long	1936287828
	.long	1667329312
	.long	1701734760
	.long	1852138016
	.long	1634560099
	.long	544435058
	.long	622883937
	.long	1679844460
	.long	1937338984
	.long	1701736308
	.long	1702047603
	.long	1684959075
	.word	10
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,50
	.data
	.comm IntGlob,4,4
	.comm BoolGlob,4,4
	.comm Char1Glob,1,1
	.comm Char2Glob,1,1
	.comm Array1Glob,204,32
	.comm Array2Glob,10404,32
	.comm PtrGlb,8,8
	.comm PtrGlbNext,8,8
	.section .note.GNU-stack, ""
# End
