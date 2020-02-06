# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.4.235 Build 20190416";
# mark_description "-O1 -S -fverbose-asm -o ../asm/linpack.icc.opt1.asm";
	.file "linpack.c"
	.text
..TXTST0:
.L_2__routine_start_main_0:
# -- Begin  main
	.text
# mark_begin;

	.globl main
# --- main(void)
main:
..B1.1:                         # Preds ..B1.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_main.1:
..L2:
                                                          #44.1
        pushq     %r12                                          #44.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #44.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #44.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #44.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rbx                                          #44.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        pushq     %rbp                                          #44.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
        subq      $72, %rsp                                     #44.1
	.cfi_def_cfa_offset 128
        xorl      %esi, %esi                                    #44.1
        pushq     $3                                            #44.1
        popq      %rdi                                          #44.1
        call      __intel_new_feature_proc_init                 #44.1
                                # LOE
..B1.80:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        stmxcsr   (%rsp)                                        #44.1
        orl       $32832, (%rsp)                                #44.1
        ldmxcsr   (%rsp)                                        #44.1
..___tag_value_main.16:
#       timestamp(void)
        call      timestamp                                     #74.3
..___tag_value_main.17:
                                # LOE
..B1.2:                         # Preds ..B1.80
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.0, %edi                         #75.3
        xorl      %eax, %eax                                    #75.3
..___tag_value_main.18:
#       printf(const char *__restrict__, ...)
        call      printf                                        #75.3
..___tag_value_main.19:
                                # LOE
..B1.3:                         # Preds ..B1.2
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.1, %edi                         #76.3
        xorl      %eax, %eax                                    #76.3
..___tag_value_main.20:
#       printf(const char *__restrict__, ...)
        call      printf                                        #76.3
..___tag_value_main.21:
                                # LOE
..B1.4:                         # Preds ..B1.3
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.2, %edi                         #77.3
        xorl      %eax, %eax                                    #77.3
..___tag_value_main.22:
#       printf(const char *__restrict__, ...)
        call      printf                                        #77.3
..___tag_value_main.23:
                                # LOE
..B1.5:                         # Preds ..B1.4
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.0, %edi                         #78.3
        xorl      %eax, %eax                                    #78.3
..___tag_value_main.24:
#       printf(const char *__restrict__, ...)
        call      printf                                        #78.3
..___tag_value_main.25:
                                # LOE
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.3, %edi                         #79.3
        xorl      %eax, %eax                                    #79.3
..___tag_value_main.26:
#       printf(const char *__restrict__, ...)
        call      printf                                        #79.3
..___tag_value_main.27:
                                # LOE
..B1.7:                         # Preds ..B1.6
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.4, %edi                         #80.3
        xorl      %eax, %eax                                    #80.3
..___tag_value_main.28:
#       printf(const char *__restrict__, ...)
        call      printf                                        #80.3
..___tag_value_main.29:
                                # LOE
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.5, %edi                         #81.3
        xorl      %eax, %eax                                    #81.3
..___tag_value_main.30:
#       printf(const char *__restrict__, ...)
        call      printf                                        #81.3
..___tag_value_main.31:
                                # LOE
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.6, %edi                         #82.3
        movl      $1500, %esi                                   #82.3
        xorl      %eax, %eax                                    #82.3
..___tag_value_main.32:
#       printf(const char *__restrict__, ...)
        call      printf                                        #82.3
..___tag_value_main.33:
                                # LOE
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.7, %edi                         #83.3
        movl      $1501, %esi                                   #83.3
        xorl      %eax, %eax                                    #83.3
..___tag_value_main.34:
#       printf(const char *__restrict__, ...)
        call      printf                                        #83.3
..___tag_value_main.35:
                                # LOE
..B1.11:                        # Preds ..B1.10
                                # Execution count [1.00e+00]
        movl      $1501, %edi                                   #89.7
        movl      $1500, %esi                                   #89.7
..___tag_value_main.36:
#       r8mat_gen(int, int)
        call      r8mat_gen                                     #89.7
..___tag_value_main.37:
                                # LOE rax
..B1.81:                        # Preds ..B1.11
                                # Execution count [1.00e+00]
        movq      %rax, %r15                                    #89.7
                                # LOE r15
..B1.12:                        # Preds ..B1.81
                                # Execution count [1.00e+00]
        movl      $12000, %edi                                  #90.20
..___tag_value_main.38:
#       malloc(size_t)
        call      malloc                                        #90.20
..___tag_value_main.39:
                                # LOE rax r15
..B1.82:                        # Preds ..B1.12
                                # Execution count [1.00e+00]
        movq      %rax, %r14                                    #90.20
                                # LOE r14 r15
..B1.13:                        # Preds ..B1.82
                                # Execution count [1.00e+00]
        movl      $6000, %edi                                   #91.20
..___tag_value_main.40:
#       malloc(size_t)
        call      malloc                                        #91.20
..___tag_value_main.41:
                                # LOE rax r14 r15
..B1.83:                        # Preds ..B1.13
                                # Execution count [1.00e+00]
        movq      %rax, %r13                                    #91.20
                                # LOE r13 r14 r15
..B1.14:                        # Preds ..B1.83
                                # Execution count [1.00e+00]
        movl      $12000, %edi                                  #92.24
..___tag_value_main.42:
#       malloc(size_t)
        call      malloc                                        #92.24
..___tag_value_main.43:
                                # LOE rax r13 r14 r15
..B1.84:                        # Preds ..B1.14
                                # Execution count [1.00e+00]
        movq      %rax, %r12                                    #92.24
                                # LOE r12 r13 r14 r15
..B1.15:                        # Preds ..B1.84
                                # Execution count [1.00e+00]
        movl      $12000, %edi                                  #93.22
..___tag_value_main.44:
#       malloc(size_t)
        call      malloc                                        #93.22
..___tag_value_main.45:
                                # LOE rax r12 r13 r14 r15
..B1.85:                        # Preds ..B1.15
                                # Execution count [1.00e+00]
        movq      %rax, %rbp                                    #93.22
                                # LOE rbp r12 r13 r14 r15
..B1.16:                        # Preds ..B1.85
                                # Execution count [1.00e+00]
        movl      $12000, %edi                                  #94.20
..___tag_value_main.46:
#       malloc(size_t)
        call      malloc                                        #94.20
..___tag_value_main.47:
                                # LOE rax rbp r12 r13 r14 r15
..B1.86:                        # Preds ..B1.16
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #94.20
                                # LOE rbx rbp r12 r13 r14 r15
..B1.17:                        # Preds ..B1.86
                                # Execution count [1.00e+00]
        xorl      %r9d, %r9d                                    #97.9
        xorl      %esi, %esi                                    #97.13
        pxor      %xmm2, %xmm2                                  #96.3
                                # LOE rbx rbp rsi r12 r13 r14 r15 r9d xmm2
..B1.18:                        # Preds ..B1.20 ..B1.17
                                # Execution count [1.50e+03]
        xorl      %edx, %edx                                    #99.11
        lea       (%r15,%rsi,8), %rax                           #101.31
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 r9d xmm2
..B1.19:                        # Preds ..B1.19 ..B1.18
                                # Execution count [2.25e+06]
        maxsd     (%rax,%rdx,8), %xmm2                          #101.15
        incq      %rdx                                          #99.25
        cmpq      $1500, %rdx                                   #99.22
        jl        ..B1.19       # Prob 99%                      #99.22
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 r9d xmm2
..B1.20:                        # Preds ..B1.19
                                # Execution count [1.50e+03]
        incl      %r9d                                          #97.23
        addq      $1501, %rsi                                   #97.23
        cmpl      $1500, %r9d                                   #97.20
        jl        ..B1.18       # Prob 99%                      #97.20
                                # LOE rbx rbp rsi r12 r13 r14 r15 r9d xmm2
..B1.21:                        # Preds ..B1.20
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #105.9
        movq      $0x3ff0000000000000, %r10                     #107.12
                                # LOE rax rbx rbp r10 r12 r13 r14 r15 xmm2
..B1.22:                        # Preds ..B1.22 ..B1.21
                                # Execution count [1.50e+03]
        movq      %r10, (%rbx,%rax,8)                           #107.5
        incq      %rax                                          #105.23
        cmpq      $1500, %rax                                   #105.20
        jl        ..B1.22       # Prob 99%                      #105.20
                                # LOE rax rbx rbp r10 r12 r13 r14 r15 xmm2
..B1.23:                        # Preds ..B1.22
                                # Execution count [1.00e+00]
        xorl      %r9d, %r9d                                    #110.9
                                # LOE rbx rbp r9 r10 r12 r13 r14 r15 xmm2
..B1.24:                        # Preds ..B1.26 ..B1.23
                                # Execution count [1.50e+03]
        xorl      %eax, %eax                                    #113.11
        lea       (%r15,%r9,8), %rsi                            #115.21
        pxor      %xmm0, %xmm0                                  #112.5
        pxor      %xmm1, %xmm1                                  #112.5
        movsd     %xmm0, (%r14,%r9,8)                           #112.5
                                # LOE rax rbx rbp rsi r9 r10 r12 r13 r14 r15 xmm1 xmm2
..B1.25:                        # Preds ..B1.25 ..B1.24
                                # Execution count [2.25e+06]
        imull     $1501, %eax, %edx                             #115.27
        movsd     (%rsi,%rdx,8), %xmm0                          #115.21
        mulsd     (%rbx,%rax,8), %xmm0                          #115.34
        incq      %rax                                          #113.25
        addsd     %xmm0, %xmm1                                  #115.34
        movsd     %xmm1, (%r14,%r9,8)                           #115.7
        cmpq      $1500, %rax                                   #113.22
        jl        ..B1.25       # Prob 99%                      #113.22
                                # LOE rax rbx rbp rsi r9 r10 r12 r13 r14 r15 xmm1 xmm2
..B1.26:                        # Preds ..B1.25
                                # Execution count [1.50e+03]
        incq      %r9                                           #110.23
        cmpq      $1500, %r9                                    #110.20
        jl        ..B1.24       # Prob 99%                      #110.20
                                # LOE rbx rbp r9 r10 r12 r13 r14 r15 xmm2
..B1.27:                        # Preds ..B1.26
                                # Execution count [1.00e+00]
        movsd     %xmm2, (%rsp)                                 #118.8[spill]
..___tag_value_main.48:
#       cpu_time(void)
        call      cpu_time                                      #118.8
..___tag_value_main.49:
                                # LOE rbx rbp r12 r13 r14 r15 xmm0
..B1.87:                        # Preds ..B1.27
                                # Execution count [1.00e+00]
        movsd     (%rsp), %xmm2                                 #[spill]
        movq      $0x3ff0000000000000, %r10                     #
        movsd     %xmm0, 8(%rsp)                                #118.8[spill]
                                # LOE rbx rbp r10 r12 r13 r14 r15 xmm2
..B1.28:                        # Preds ..B1.87
                                # Execution count [1.00e+00]
        movq      %r15, %rdi                                    #120.10
        movl      $1501, %esi                                   #120.10
        movl      $1500, %edx                                   #120.10
        movq      %r13, %rcx                                    #120.10
        movsd     %xmm2, (%rsp)                                 #120.10[spill]
..___tag_value_main.53:
#       dgefa(double *, int, int, int *)
        call      dgefa                                         #120.10
..___tag_value_main.54:
                                # LOE rbx rbp r12 r13 r14 r15 eax
..B1.88:                        # Preds ..B1.28
                                # Execution count [1.00e+00]
        movsd     (%rsp), %xmm2                                 #[spill]
        movq      $0x3ff0000000000000, %r10                     #
                                # LOE rbx rbp r10 r12 r13 r14 r15 eax xmm2
..B1.29:                        # Preds ..B1.88
                                # Execution count [1.00e+00]
        testl     %eax, %eax                                    #122.16
        je        ..B1.35       # Prob 72%                      #122.16
                                # LOE rbx rbp r10 r12 r13 r14 r15 xmm2
..B1.30:                        # Preds ..B1.29
                                # Execution count [2.80e-01]
        movl      $.L_2__STRING.0, %edi                         #124.5
        xorl      %eax, %eax                                    #124.5
..___tag_value_main.57:
#       printf(const char *__restrict__, ...)
        call      printf                                        #124.5
..___tag_value_main.58:
                                # LOE
..B1.31:                        # Preds ..B1.30
                                # Execution count [2.80e-01]
        movl      $.L_2__STRING.8, %edi                         #125.5
        xorl      %eax, %eax                                    #125.5
..___tag_value_main.59:
#       printf(const char *__restrict__, ...)
        call      printf                                        #125.5
..___tag_value_main.60:
                                # LOE
..B1.32:                        # Preds ..B1.31
                                # Execution count [2.80e-01]
        movl      $.L_2__STRING.9, %edi                         #126.5
        xorl      %eax, %eax                                    #126.5
..___tag_value_main.61:
#       printf(const char *__restrict__, ...)
        call      printf                                        #126.5
..___tag_value_main.62:
                                # LOE
..B1.33:                        # Preds ..B1.32
                                # Execution count [2.80e-01]
        movl      $.L_2__STRING.10, %edi                        #127.5
        xorl      %eax, %eax                                    #127.5
..___tag_value_main.63:
#       printf(const char *__restrict__, ...)
        call      printf                                        #127.5
..___tag_value_main.64:
                                # LOE
..B1.34:                        # Preds ..B1.33
                                # Execution count [2.80e-01]
        xorl      %eax, %eax                                    #128.12
        incl      %eax                                          #128.12
        jmp       ..B1.95       # Prob 100%                     #128.12
                                # LOE
..B1.35:                        # Preds ..B1.29
                                # Execution count [7.20e-01]
        movsd     %xmm2, (%rsp)                                 #131.8[spill]
..___tag_value_main.65:
#       cpu_time(void)
        call      cpu_time                                      #131.8
..___tag_value_main.66:
                                # LOE rbx rbp r12 r13 r14 r15 xmm0
..B1.89:                        # Preds ..B1.35
                                # Execution count [7.20e-01]
        movsd     (%rsp), %xmm2                                 #[spill]
        movq      $0x3ff0000000000000, %r10                     #
        movsd     %xmm0, 32(%rsp)                               #131.8[spill]
                                # LOE rbx rbp r10 r12 r13 r14 r15 xmm0 xmm2
..B1.36:                        # Preds ..B1.89
                                # Execution count [7.20e-01]
        movsd     %xmm2, (%rsp)                                 #134.8[spill]
        subsd     8(%rsp), %xmm0                                #132.18[spill]
        movsd     %xmm0, 32(%rsp)                               #132.18[spill]
..___tag_value_main.72:
#       cpu_time(void)
        call      cpu_time                                      #134.8
..___tag_value_main.73:
                                # LOE rbx rbp r12 r13 r14 r15 xmm0
..B1.90:                        # Preds ..B1.36
                                # Execution count [7.20e-01]
        movsd     (%rsp), %xmm2                                 #[spill]
        movq      $0x3ff0000000000000, %r10                     #
        movsd     %xmm0, 8(%rsp)                                #134.8[spill]
                                # LOE rbx rbp r10 r12 r13 r14 r15 xmm2
..B1.37:                        # Preds ..B1.90
                                # Execution count [7.20e-01]
        movq      %r15, %rdi                                    #137.3
        movl      $1501, %esi                                   #137.3
        movl      $1500, %edx                                   #137.3
        movq      %r13, %rcx                                    #137.3
        movq      %r14, %r8                                     #137.3
        xorl      %r9d, %r9d                                    #137.3
        movsd     %xmm2, (%rsp)                                 #137.3[spill]
..___tag_value_main.77:
#       dgesl(double *, int, int, int *, double *, int)
        call      dgesl                                         #137.3
..___tag_value_main.78:
                                # LOE rbx rbp r12 r13 r14 r15
..B1.38:                        # Preds ..B1.37
                                # Execution count [7.20e-01]
        movq      $0x3ff0000000000000, %r10                     #
..___tag_value_main.80:
#       cpu_time(void)
        call      cpu_time                                      #139.8
..___tag_value_main.81:
                                # LOE rbx rbp r12 r13 r14 r15 xmm0
..B1.91:                        # Preds ..B1.38
                                # Execution count [7.20e-01]
        movsd     (%rsp), %xmm2                                 #[spill]
        movq      $0x3ff0000000000000, %r10                     #
        movsd     %xmm0, 48(%rsp)                               #139.8[spill]
                                # LOE rbx rbp r10 r12 r13 r14 r15 xmm0 xmm2
..B1.39:                        # Preds ..B1.91
                                # Execution count [7.20e-01]
        movaps    %xmm0, %xmm1                                  #140.18
        movq      %r15, %rdi                                    #144.3
        movsd     32(%rsp), %xmm0                               #142.21[spill]
        movsd     %xmm2, (%rsp)                                 #144.3[spill]
        subsd     8(%rsp), %xmm1                                #140.18[spill]
        movsd     %xmm1, 48(%rsp)                               #140.18[spill]
        addsd     %xmm1, %xmm0                                  #142.21
        movsd     %xmm0, 24(%rsp)                               #142.21[spill]
..___tag_value_main.88:
#       free(void *)
        call      free                                          #144.3
..___tag_value_main.89:
                                # LOE rbx rbp r12 r13 r14
..B1.40:                        # Preds ..B1.39
                                # Execution count [7.20e-01]
        movq      $0x3ff0000000000000, %r10                     #
        movl      $1501, %edi                                   #148.7
        movl      $1500, %esi                                   #148.7
..___tag_value_main.91:
#       r8mat_gen(int, int)
        call      r8mat_gen                                     #148.7
..___tag_value_main.92:
                                # LOE rax rbx rbp r12 r13 r14
..B1.92:                        # Preds ..B1.40
                                # Execution count [7.20e-01]
        movsd     (%rsp), %xmm2                                 #[spill]
        movq      $0x3ff0000000000000, %r10                     #
        movq      %rax, %r15                                    #148.7
                                # LOE rbx rbp r10 r12 r13 r14 r15 xmm2
..B1.41:                        # Preds ..B1.92
                                # Execution count [7.20e-01]
        xorl      %eax, %eax                                    #150.9
                                # LOE rax rbx rbp r10 r12 r13 r14 r15 xmm2
..B1.42:                        # Preds ..B1.42 ..B1.41
                                # Execution count [1.08e+03]
        movq      %r10, (%rbx,%rax,8)                           #152.5
        incq      %rax                                          #150.23
        cmpq      $1500, %rax                                   #150.20
        jl        ..B1.42       # Prob 99%                      #150.20
                                # LOE rax rbx rbp r10 r12 r13 r14 r15 xmm2
..B1.43:                        # Preds ..B1.42
                                # Execution count [7.20e-01]
        xorl      %r9d, %r9d                                    #155.9
                                # LOE rbx rbp r9 r12 r13 r14 r15 xmm2
..B1.44:                        # Preds ..B1.46 ..B1.43
                                # Execution count [1.08e+03]
        xorl      %eax, %eax                                    #158.11
        lea       (%r15,%r9,8), %rsi                            #160.25
        pxor      %xmm0, %xmm0                                  #157.5
        pxor      %xmm1, %xmm1                                  #157.5
        movsd     %xmm0, (%rbp,%r9,8)                           #157.5
                                # LOE rax rbx rbp rsi r9 r12 r13 r14 r15 xmm1 xmm2
..B1.45:                        # Preds ..B1.45 ..B1.44
                                # Execution count [1.62e+06]
        imull     $1501, %eax, %edx                             #160.31
        movsd     (%rsi,%rdx,8), %xmm0                          #160.25
        mulsd     (%rbx,%rax,8), %xmm0                          #160.38
        incq      %rax                                          #158.25
        addsd     %xmm0, %xmm1                                  #160.38
        movsd     %xmm1, (%rbp,%r9,8)                           #160.7
        cmpq      $1500, %rax                                   #158.22
        jl        ..B1.45       # Prob 99%                      #158.22
                                # LOE rax rbx rbp rsi r9 r12 r13 r14 r15 xmm1 xmm2
..B1.46:                        # Preds ..B1.45
                                # Execution count [1.08e+03]
        incq      %r9                                           #155.23
        cmpq      $1500, %r9                                    #155.20
        jl        ..B1.44       # Prob 99%                      #155.20
                                # LOE rbx rbp r9 r12 r13 r14 r15 xmm2
..B1.47:                        # Preds ..B1.46
                                # Execution count [7.21e-01]
        xorl      %r9d, %r9d                                    #164.9
                                # LOE rbx rbp r9 r12 r13 r14 r15 xmm2
..B1.48:                        # Preds ..B1.50 ..B1.47
                                # Execution count [1.08e+03]
        movsd     (%rbp,%r9,8), %xmm1                           #166.17
        lea       (%r15,%r9,8), %rsi                            #169.29
        xorps     .L_2il0floatpacket.8(%rip), %xmm1             #166.17
        xorl      %eax, %eax                                    #167.11
        movsd     %xmm1, (%r12,%r9,8)                           #166.5
                                # LOE rax rbx rbp rsi r9 r12 r13 r14 r15 xmm1 xmm2
..B1.49:                        # Preds ..B1.49 ..B1.48
                                # Execution count [1.62e+06]
        imull     $1501, %eax, %edx                             #169.35
        movsd     (%rsi,%rdx,8), %xmm0                          #169.29
        mulsd     (%r14,%rax,8), %xmm0                          #169.42
        incq      %rax                                          #167.25
        addsd     %xmm0, %xmm1                                  #169.42
        movsd     %xmm1, (%r12,%r9,8)                           #169.7
        cmpq      $1500, %rax                                   #167.22
        jl        ..B1.49       # Prob 99%                      #167.22
                                # LOE rax rbx rbp rsi r9 r12 r13 r14 r15 xmm1 xmm2
..B1.50:                        # Preds ..B1.49
                                # Execution count [1.08e+03]
        incq      %r9                                           #164.23
        cmpq      $1500, %r9                                    #164.20
        jl        ..B1.48       # Prob 99%                      #164.20
                                # LOE rbx rbp r9 r12 r13 r14 r15 xmm2
..B1.51:                        # Preds ..B1.50
                                # Execution count [7.21e-01]
        xorl      %eax, %eax                                    #174.9
        pxor      %xmm1, %xmm1                                  #173.3
                                # LOE rax rbx rbp r12 r13 r14 r15 xmm1 xmm2
..B1.52:                        # Preds ..B1.52 ..B1.51
                                # Execution count [1.08e+03]
        movsd     (%r12,%rax,8), %xmm0                          #176.46
        incq      %rax                                          #174.23
        andps     .L_2il0floatpacket.6(%rip), %xmm0             #176.37
        maxsd     %xmm0, %xmm1                                  #176.17
        cmpq      $1500, %rax                                   #174.20
        jl        ..B1.52       # Prob 99%                      #174.20
                                # LOE rax rbx rbp r12 r13 r14 r15 xmm1 xmm2
..B1.53:                        # Preds ..B1.52
                                # Execution count [7.21e-01]
        xorl      %eax, %eax                                    #180.9
        pxor      %xmm4, %xmm4                                  #179.3
                                # LOE rax rbx rbp r12 r13 r14 r15 xmm1 xmm2 xmm4
..B1.54:                        # Preds ..B1.54 ..B1.53
                                # Execution count [1.08e+03]
        movsd     (%r14,%rax,8), %xmm0                          #182.38
        incq      %rax                                          #180.23
        andps     .L_2il0floatpacket.6(%rip), %xmm0             #182.29
        maxsd     %xmm0, %xmm4                                  #182.13
        cmpq      $1500, %rax                                   #180.20
        jl        ..B1.54       # Prob 99%                      #180.20
                                # LOE rax rbx rbp r12 r13 r14 r15 xmm1 xmm2 xmm4
..B1.55:                        # Preds ..B1.54
                                # Execution count [7.21e-01]
        movsd     %xmm2, (%rsp)                                 #185.9[spill]
        movsd     %xmm4, 8(%rsp)                                #185.9[spill]
        movsd     %xmm1, 16(%rsp)                               #185.9[spill]
..___tag_value_main.96:
#       r8_epsilon(void)
        call      r8_epsilon                                    #185.9
..___tag_value_main.97:
                                # LOE rbx rbp r12 r13 r14 r15 xmm0
..B1.93:                        # Preds ..B1.55
                                # Execution count [7.21e-01]
        movsd     %xmm0, 56(%rsp)                               #185.9[spill]
        movsd     24(%rsp), %xmm0                               #190.14[spill]
        pxor      %xmm3, %xmm3                                  #190.14
        movsd     16(%rsp), %xmm1                               #[spill]
        movsd     8(%rsp), %xmm4                                #[spill]
        movsd     (%rsp), %xmm2                                 #[spill]
        comisd    %xmm3, %xmm0                                  #190.14
        jbe       ..B1.57       # Prob 50%                      #190.14
                                # LOE rbx rbp r12 r13 r14 r15 xmm1 xmm2 xmm4
..B1.56:                        # Preds ..B1.93
                                # Execution count [3.60e-01]
        movsd     .L_2il0floatpacket.1(%rip), %xmm0             #192.23
        mulsd     24(%rsp), %xmm0                               #192.33[spill]
        movsd     .L_2il0floatpacket.0(%rip), %xmm3             #192.33
        divsd     %xmm0, %xmm3                                  #192.33
        movsd     %xmm3, 40(%rsp)                               #192.33[spill]
        jmp       ..B1.58       # Prob 100%                     #192.33
                                # LOE rbx rbp r12 r13 r14 r15 xmm1 xmm2 xmm4
..B1.57:                        # Preds ..B1.93
                                # Execution count [3.60e-01]
        movsd     .L_2il0floatpacket.2(%rip), %xmm0             #196.15
        movsd     %xmm0, 40(%rsp)                               #196.15[spill]
                                # LOE rbx rbp r12 r13 r14 r15 xmm1 xmm2 xmm4
..B1.58:                        # Preds ..B1.56 ..B1.57
                                # Execution count [7.21e-01]
        movl      $.L_2__STRING.0, %edi                         #201.3
        xorl      %eax, %eax                                    #201.3
        movsd     %xmm2, (%rsp)                                 #201.3[spill]
        movsd     %xmm4, 8(%rsp)                                #201.3[spill]
        movsd     %xmm1, 16(%rsp)                               #201.3[spill]
..___tag_value_main.109:
#       printf(const char *__restrict__, ...)
        call      printf                                        #201.3
..___tag_value_main.110:
                                # LOE rbx rbp r12 r13 r14 r15
..B1.59:                        # Preds ..B1.58
                                # Execution count [7.21e-01]
        movl      $.L_2__STRING.11, %edi                        #202.3
        xorl      %eax, %eax                                    #202.3
..___tag_value_main.112:
#       printf(const char *__restrict__, ...)
        call      printf                                        #202.3
..___tag_value_main.113:
                                # LOE rbx rbp r12 r13 r14 r15
..B1.60:                        # Preds ..B1.59
                                # Execution count [7.21e-01]
        movl      $.L_2__STRING.0, %edi                         #203.3
        xorl      %eax, %eax                                    #203.3
..___tag_value_main.114:
#       printf(const char *__restrict__, ...)
        call      printf                                        #203.3
..___tag_value_main.115:
                                # LOE rbx rbp r12 r13 r14 r15
..B1.61:                        # Preds ..B1.60
                                # Execution count [7.21e-01]
        movsd     16(%rsp), %xmm1                               #[spill]
        movl      $.L_2__STRING.12, %edi                        #204.3
        movaps    %xmm1, %xmm0                                  #204.3
        pushq     $5                                            #204.3
        popq      %rax                                          #204.3
        divsd     .L_2il0floatpacket.3(%rip), %xmm0             #204.3
        movsd     (%rsp), %xmm2                                 #[spill]
        divsd     %xmm2, %xmm0                                  #204.3
        movsd     8(%rsp), %xmm4                                #[spill]
        divsd     %xmm4, %xmm0                                  #204.3
        movsd     56(%rsp), %xmm2                               #204.3[spill]
        divsd     %xmm2, %xmm0                                  #204.3
        movsd     (%r14), %xmm3                                 #204.3
        movsd     11992(%r14), %xmm4                            #204.3
..___tag_value_main.120:
#       printf(const char *__restrict__, ...)
        call      printf                                        #204.3
..___tag_value_main.121:
                                # LOE rbx rbp r12 r13 r14 r15
..B1.62:                        # Preds ..B1.61
                                # Execution count [7.21e-01]
        movl      $.L_2__STRING.0, %edi                         #205.3
        xorl      %eax, %eax                                    #205.3
..___tag_value_main.122:
#       printf(const char *__restrict__, ...)
        call      printf                                        #205.3
..___tag_value_main.123:
                                # LOE rbx rbp r12 r13 r14 r15
..B1.63:                        # Preds ..B1.62
                                # Execution count [7.21e-01]
        movl      $.L_2__STRING.13, %edi                        #206.3
        xorl      %eax, %eax                                    #206.3
..___tag_value_main.124:
#       printf(const char *__restrict__, ...)
        call      printf                                        #206.3
..___tag_value_main.125:
                                # LOE rbx rbp r12 r13 r14 r15
..B1.64:                        # Preds ..B1.63
                                # Execution count [7.21e-01]
        movl      $.L_2__STRING.0, %edi                         #207.3
        xorl      %eax, %eax                                    #207.3
..___tag_value_main.126:
#       printf(const char *__restrict__, ...)
        call      printf                                        #207.3
..___tag_value_main.127:
                                # LOE rbx rbp r12 r13 r14 r15
..B1.65:                        # Preds ..B1.64
                                # Execution count [7.21e-01]
        movsd     24(%rsp), %xmm2                               #208.3[spill]
        movl      $.L_2__STRING.14, %edi                        #208.3
        movsd     40(%rsp), %xmm3                               #208.3[spill]
        movaps    %xmm2, %xmm5                                  #208.3
        movsd     .L_2il0floatpacket.4(%rip), %xmm4             #208.3
        pushq     $6                                            #208.3
        popq      %rax                                          #208.3
        divsd     %xmm3, %xmm4                                  #208.3
        divsd     .L_2il0floatpacket.5(%rip), %xmm5             #208.3
        movsd     32(%rsp), %xmm0                               #208.3[spill]
        movsd     48(%rsp), %xmm1                               #208.3[spill]
..___tag_value_main.131:
#       printf(const char *__restrict__, ...)
        call      printf                                        #208.3
..___tag_value_main.132:
                                # LOE rbx rbp r12 r13 r14 r15
..B1.66:                        # Preds ..B1.65
                                # Execution count [7.21e-01]
        movq      %r15, %rdi                                    #211.3
..___tag_value_main.134:
#       free(void *)
        call      free                                          #211.3
..___tag_value_main.135:
                                # LOE rbx rbp r12 r13 r14
..B1.67:                        # Preds ..B1.66
                                # Execution count [7.21e-01]
        movq      %r14, %rdi                                    #212.3
..___tag_value_main.136:
#       free(void *)
        call      free                                          #212.3
..___tag_value_main.137:
                                # LOE rbx rbp r12 r13
..B1.68:                        # Preds ..B1.67
                                # Execution count [7.21e-01]
        movq      %r13, %rdi                                    #213.3
..___tag_value_main.138:
#       free(void *)
        call      free                                          #213.3
..___tag_value_main.139:
                                # LOE rbx rbp r12
..B1.69:                        # Preds ..B1.68
                                # Execution count [7.21e-01]
        movq      %r12, %rdi                                    #214.3
..___tag_value_main.140:
#       free(void *)
        call      free                                          #214.3
..___tag_value_main.141:
                                # LOE rbx rbp
..B1.70:                        # Preds ..B1.69
                                # Execution count [7.21e-01]
        movq      %rbp, %rdi                                    #215.3
..___tag_value_main.142:
#       free(void *)
        call      free                                          #215.3
..___tag_value_main.143:
                                # LOE rbx
..B1.71:                        # Preds ..B1.70
                                # Execution count [7.21e-01]
        movq      %rbx, %rdi                                    #216.3
..___tag_value_main.144:
#       free(void *)
        call      free                                          #216.3
..___tag_value_main.145:
                                # LOE
..B1.72:                        # Preds ..B1.71
                                # Execution count [7.21e-01]
        movl      $.L_2__STRING.0, %edi                         #220.3
        xorl      %eax, %eax                                    #220.3
..___tag_value_main.146:
#       printf(const char *__restrict__, ...)
        call      printf                                        #220.3
..___tag_value_main.147:
                                # LOE
..B1.73:                        # Preds ..B1.72
                                # Execution count [7.21e-01]
        movl      $.L_2__STRING.1, %edi                         #221.3
        xorl      %eax, %eax                                    #221.3
..___tag_value_main.148:
#       printf(const char *__restrict__, ...)
        call      printf                                        #221.3
..___tag_value_main.149:
                                # LOE
..B1.74:                        # Preds ..B1.73
                                # Execution count [7.21e-01]
        movl      $.L_2__STRING.15, %edi                        #222.3
        xorl      %eax, %eax                                    #222.3
..___tag_value_main.150:
#       printf(const char *__restrict__, ...)
        call      printf                                        #222.3
..___tag_value_main.151:
                                # LOE
..B1.75:                        # Preds ..B1.74
                                # Execution count [7.21e-01]
        movl      $.L_2__STRING.0, %edi                         #224.3
        xorl      %eax, %eax                                    #224.3
..___tag_value_main.152:
#       printf(const char *__restrict__, ...)
        call      printf                                        #224.3
..___tag_value_main.153:
                                # LOE
..B1.76:                        # Preds ..B1.75
                                # Execution count [7.21e-01]
..___tag_value_main.154:
#       timestamp(void)
        call      timestamp                                     #225.3
..___tag_value_main.155:
                                # LOE
..B1.77:                        # Preds ..B1.76
                                # Execution count [7.21e-01]
        xorl      %eax, %eax                                    #227.10
                                # LOE
..B1.95:                        # Preds ..B1.34 ..B1.77
                                # Execution count [7.21e-01]
        addq      $72, %rsp                                     #227.10
	.cfi_def_cfa_offset 56
        popq      %rbp                                          #227.10
	.cfi_def_cfa_offset 48
        popq      %rbx                                          #227.10
	.cfi_def_cfa_offset 40
        popq      %r15                                          #227.10
	.cfi_def_cfa_offset 32
        popq      %r14                                          #227.10
	.cfi_def_cfa_offset 24
        popq      %r13                                          #227.10
	.cfi_def_cfa_offset 16
        popq      %r12                                          #227.10
	.cfi_def_cfa_offset 8
        ret                                                     #227.10
                                # LOE
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.0:
	.data
# -- End  main
	.text
.L_2__routine_start_dgefa_1:
# -- Begin  dgefa
	.text
# mark_begin;

	.globl dgefa
# --- dgefa(double *, int, int, int *)
dgefa:
# parameter 1: %rdi
# parameter 2: %esi
# parameter 3: %edx
# parameter 4: %rcx
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_dgefa.164:
..L165:
                                                        #553.1
        pushq     %r12                                          #553.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #553.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #553.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #553.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rbx                                          #553.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        pushq     %rbp                                          #553.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
        subq      $104, %rsp                                    #553.1
	.cfi_def_cfa_offset 160
        lea       -1(%rdx), %eax                                #564.13
        movl      %eax, (%rsp)                                  #564.13[spill]
        xorl      %r12d, %r12d                                  #564.13
        incq      %r12                                          #564.13
        movq      %rcx, 72(%rsp)                                #553.1[spill]
        movl      %edx, 40(%rsp)                                #553.1[spill]
        movl      %esi, 8(%rsp)                                 #553.1[spill]
        movq      %rdi, 32(%rsp)                                #553.1[spill]
        movl      %esi, 16(%rsp)                                #564.13[spill]
        movl      $0, 96(%rsp)                                  #562.3[spill]
        movl      $1, 24(%rsp)                                  #564.9[spill]
        movl      %eax, 64(%rsp)                                #564.23[spill]
        testl     %eax, %eax                                    #564.23
        jle       ..B2.17       # Prob 10%                      #564.23
                                # LOE r12
..B2.2:                         # Preds ..B2.1
                                # Execution count [9.00e-01]
        movl      8(%rsp), %eax                                 #569.39[spill]
        negl      %eax                                          #569.39
        movl      %eax, 56(%rsp)                                #569.39[spill]
                                # LOE r12
..B2.3:                         # Preds ..B2.15 ..B2.2
                                # Execution count [5.00e+00]
        movl      16(%rsp), %eax                                #569.39[spill]
        xorl      %edx, %edx                                    #569.9
        incl      %edx                                          #569.9
        movl      56(%rsp), %r13d                               #569.39[spill]
        movq      32(%rsp), %rbp                                #569.25[spill]
        movl      (%rsp), %ecx                                  #569.9[spill]
        addl      %eax, %r13d                                   #569.39
        movslq    %r13d, %r13                                   #569.25
        lea       (%rbp,%r12,8), %rbp                           #569.25
        lea       1(%rcx), %edi                                 #569.9
        lea       (%rbp,%r13,8), %rbx                           #569.25
        movq      %rbx, 48(%rsp)                                #569.25[spill]
        lea       -8(%rbx), %rsi                                #569.9
..___tag_value_dgefa.195:
#       idamax(int, double *, int)
        call      idamax                                        #569.9
..___tag_value_dgefa.196:
                                # LOE rbp r12 r13 eax
..B2.20:                        # Preds ..B2.3
                                # Execution count [5.00e+00]
        movq      72(%rsp), %rdx                                #570.5[spill]
        cltq                                                    #569.5
        pxor      %xmm0, %xmm0                                  #574.30
        movq      32(%rsp), %rcx                                #574.10[spill]
        lea       -1(%r12,%rax), %rbx                           #569.5
        movl      %ebx, -4(%rdx,%r12,4)                         #570.5
        lea       (%r13,%rbx), %rdx                             #574.14
        movsd     -8(%rcx,%rdx,8), %xmm1                        #574.10
        ucomisd   %xmm0, %xmm1                                  #574.30
        jne       ..B2.5        # Prob 84%                      #574.30
        jp        ..B2.5        # Prob 0%                       #574.30
                                # LOE rdx rcx rbx rbp r12 r13 xmm1
..B2.4:                         # Preds ..B2.20
                                # Execution count [8.00e-01]
        movl      (%rsp), %edx                                  #564.26[spill]
        lea       1(%r12), %r12                                 #564.26
        movl      16(%rsp), %eax                                #564.26[spill]
        movl      24(%rsp), %ebx                                #576.7[spill]
        addl      8(%rsp), %eax                                 #564.26[spill]
        lea       -1(%rdx), %ecx                                #564.26
        movl      %ebx, 96(%rsp)                                #576.7[spill]
        incl      %ebx                                          #564.26
        movl      %eax, 16(%rsp)                                #564.26[spill]
        movl      %ecx, 80(%rsp)                                #564.26[spill]
        movq      %r12, 88(%rsp)                                #564.26[spill]
        movl      %ebx, 24(%rsp)                                #564.26[spill]
        jmp       ..B2.15       # Prob 100%                     #564.26
                                # LOE
..B2.5:                         # Preds ..B2.20
                                # Execution count [4.20e+00]
        addq      %r12, %r13                                    #585.30
        cmpq      %r12, %rbx                                    #582.15
        je        ..B2.7        # Prob 50%                      #582.15
                                # LOE rdx rcx rbx rbp r12 r13 xmm1
..B2.6:                         # Preds ..B2.5
                                # Execution count [2.10e+00]
        movq      -8(%rcx,%r13,8), %rax                         #585.26
        movq      %rax, -8(%rcx,%rdx,8)                         #585.7
        movsd     %xmm1, -8(%rcx,%r13,8)                        #586.7
                                # LOE rcx rbx rbp r12 r13
..B2.7:                         # Preds ..B2.5 ..B2.6
                                # Execution count [4.20e+00]
        movq      %rcx, %rax                                    #593.5
        xorl      %edx, %edx                                    #593.5
        incl      %edx                                          #593.5
        movsd     .L_2il0floatpacket.2(%rip), %xmm0             #593.5
        movl      (%rsp), %edi                                  #593.5[spill]
        divsd     -8(%rax,%r13,8), %xmm0                        #593.5
        movq      48(%rsp), %rsi                                #593.5[spill]
..___tag_value_dgefa.209:
#       dscal(int, double, double *, int)
        call      dscal                                         #593.5
..___tag_value_dgefa.210:
                                # LOE rbx rbp r12
..B2.8:                         # Preds ..B2.7
                                # Execution count [4.20e+00]
        movl      (%rsp), %eax                                  #597.17[spill]
        lea       1(%r12), %rcx                                 #597.17
        movl      16(%rsp), %r15d                               #597.17[spill]
        movl      24(%rsp), %r14d                               #597.17[spill]
        incl      %r14d                                         #597.17
        lea       -1(%rax), %edx                                #597.17
        addl      8(%rsp), %r15d                                #597.17[spill]
        movl      %r14d, 24(%rsp)                               #597.17[spill]
        movl      %r15d, 16(%rsp)                               #597.17[spill]
        movl      %edx, 80(%rsp)                                #597.17[spill]
        movq      %rcx, 88(%rsp)                                #597.17[spill]
        cmpl      40(%rsp), %r14d                               #597.25[spill]
        jg        ..B2.15       # Prob 10%                      #597.25
                                # LOE rbx rbp r12 r14d r15d
..B2.9:                         # Preds ..B2.8
                                # Execution count [3.78e+00]
        movq      32(%rsp), %rax                                #599.11[spill]
        lea       (%rax,%rbx,8), %r13                           #599.11
                                # LOE rbx rbp r12 r13 r14d r15d
..B2.10:                        # Preds ..B2.13 ..B2.9
                                # Execution count [2.10e+01]
        movl      56(%rsp), %eax                                #599.23[spill]
        lea       (%rax,%r15), %edx                             #599.23
        movslq    %edx, %rdx                                    #599.11
        movsd     -8(%r13,%rdx,8), %xmm0                        #599.11
        cmpq      %r12, %rbx                                    #600.17
        je        ..B2.12       # Prob 50%                      #600.17
                                # LOE rdx rbx rbp r12 r13 r14d r15d xmm0
..B2.11:                        # Preds ..B2.10
                                # Execution count [1.05e+01]
        movq      -8(%rbp,%rdx,8), %rax                         #602.28
        movq      %rax, -8(%r13,%rdx,8)                         #602.9
        movsd     %xmm0, -8(%rbp,%rdx,8)                        #603.9
                                # LOE rdx rbx rbp r12 r13 r14d r15d xmm0
..B2.12:                        # Preds ..B2.10 ..B2.11
                                # Execution count [2.10e+01]
        movl      (%rsp), %edi                                  #605.7[spill]
        lea       (%rbp,%rdx,8), %rcx                           #605.7
        xorl      %edx, %edx                                    #605.7
        incl      %edx                                          #605.7
        movl      %edx, %r8d                                    #605.7
        movq      48(%rsp), %rsi                                #605.7[spill]
..___tag_value_dgefa.224:
#       daxpy(int, double, double *, int, double *, int)
        call      daxpy                                         #605.7
..___tag_value_dgefa.225:
                                # LOE rbx rbp r12 r13 r14d r15d
..B2.13:                        # Preds ..B2.12
                                # Execution count [2.10e+01]
        incl      %r14d                                         #597.28
        addl      8(%rsp), %r15d                                #597.28[spill]
        cmpl      40(%rsp), %r14d                               #597.25[spill]
        jle       ..B2.10       # Prob 82%                      #597.25
                                # LOE rbx rbp r12 r13 r14d r15d
..B2.15:                        # Preds ..B2.13 ..B2.8 ..B2.4
                                # Execution count [5.00e+00]
        movl      80(%rsp), %r12d                               #564.26[spill]
        movl      24(%rsp), %eax                                #564.23[spill]
        movl      %r12d, (%rsp)                                 #564.26[spill]
        movq      88(%rsp), %r12                                #564.26[spill]
        cmpl      64(%rsp), %eax                                #564.23[spill]
        jle       ..B2.3        # Prob 82%                      #564.23
                                # LOE r12
..B2.17:                        # Preds ..B2.15 ..B2.1
                                # Execution count [1.00e+00]
        movl      8(%rsp), %edx                                 #612.20[spill]
        imull     64(%rsp), %edx                                #612.20[spill]
        pxor      %xmm1, %xmm1                                  #617.10
        movl      40(%rsp), %ebp                                #610.3[spill]
        movslq    %ebp, %rbx                                    #610.3
        movq      72(%rsp), %rax                                #610.3[spill]
        movslq    %edx, %rdx                                    #612.8
        movq      32(%rsp), %rcx                                #612.8[spill]
        movl      %ebp, -4(%rax,%rbx,4)                         #610.3
        addq      %rdx, %rbx                                    #612.12
        movl      96(%rsp), %eax                                #617.10[spill]
        movsd     -8(%rcx,%rbx,8), %xmm0                        #612.8
        ucomisd   %xmm1, %xmm0                                  #617.10
        jne       ..L240        # Prob 50%                      #617.10
        jp        ..L240        # Prob 0%                       #617.10
        movl      %ebp, %eax                                    #617.10
..L240:                                                         #
        addq      $104, %rsp                                    #617.10
	.cfi_def_cfa_offset 56
        popq      %rbp                                          #617.10
	.cfi_def_cfa_offset 48
        popq      %rbx                                          #617.10
	.cfi_def_cfa_offset 40
        popq      %r15                                          #617.10
	.cfi_def_cfa_offset 32
        popq      %r14                                          #617.10
	.cfi_def_cfa_offset 24
        popq      %r13                                          #617.10
	.cfi_def_cfa_offset 16
        popq      %r12                                          #617.10
	.cfi_def_cfa_offset 8
        ret                                                     #617.10
                                # LOE
	.cfi_endproc
# mark_end;
	.type	dgefa,@function
	.size	dgefa,.-dgefa
..LNdgefa.1:
	.data
# -- End  dgefa
	.text
.L_2__routine_start_idamax_2:
# -- Begin  idamax
	.text
# mark_begin;

	.globl idamax
# --- idamax(int, double *, int)
idamax:
# parameter 1: %edi
# parameter 2: %rsi
# parameter 3: %edx
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_idamax.249:
..L250:
                                                        #866.1
        movslq    %edx, %r9                                     #866.1
        testl     %edi, %edi                                    #874.12
        jle       ..B3.15       # Prob 28%                      #874.12
                                # LOE rbx rbp rsi r9 r12 r13 r14 r15 edi
..B3.2:                         # Preds ..B3.1
                                # Execution count [7.20e-01]
        testq     %r9, %r9                                      #874.25
        jle       ..B3.15       # Prob 6%                       #874.25
                                # LOE rbx rbp rsi r9 r12 r13 r14 r15 edi
..B3.3:                         # Preds ..B3.2
                                # Execution count [6.70e-01]
        xorl      %eax, %eax                                    #879.3
        incl      %eax                                          #879.3
        movl      %eax, %ecx                                    #879.3
        cmpl      $1, %edi                                      #881.13
        je        ..B3.18       # Prob 6%                       #881.13
                                # LOE rbx rbp rsi r9 r12 r13 r14 r15 eax ecx edi
..B3.5:                         # Preds ..B3.3
                                # Execution count [6.24e-01]
        movl      $.L_2il0floatpacket.6, %edx                   #888.12
        movsd     (%rsi), %xmm2                                 #888.21
        andps     (%rdx), %xmm2                                 #888.12
        cmpq      $1, %r9                                       #886.16
        jne       ..B3.10       # Prob 84%                      #886.16
                                # LOE rdx rbx rbp rsi r9 r12 r13 r14 r15 eax ecx edi xmm2
..B3.6:                         # Preds ..B3.5
                                # Execution count [9.99e-02]
        xorl      %r8d, %r8d                                    #890.11
        incq      %r8                                           #890.11
        cmpl      $1, %edi                                      #890.22
        jle       ..B3.18       # Prob 10%                      #890.22
                                # LOE rdx rbx rbp rsi r8 r12 r13 r14 r15 eax edi xmm2
..B3.7:                         # Preds ..B3.6
                                # Execution count [8.99e-02]
        movslq    %edi, %rdi                                    #890.5
                                # LOE rdx rbx rbp rsi rdi r8 r12 r13 r14 r15 eax xmm2
..B3.8:                         # Preds ..B3.8 ..B3.7
                                # Execution count [4.99e-01]
        movsd     (%rsi,%r8,8), %xmm0                           #892.28
        movl      %r8d, %ecx                                    #894.9
        andps     (%rdx), %xmm0                                 #892.19
        incl      %ecx                                          #894.21
        comisd    %xmm2, %xmm0                                  #894.9
        movaps    %xmm2, %xmm1                                  #895.16
        movaps    %xmm0, %xmm2                                  #895.16
        jbe       ..L251        # Prob 50%                      #894.9
        movl      %ecx, %eax                                    #894.9
..L251:                                                         #
        comisd    %xmm1, %xmm2                                  #895.16
        ja        ..L252        # Prob 50%                      #895.16
        movaps    %xmm1, %xmm2                                  #895.16
..L252:                                                         #
        incq      %r8                                           #890.25
        cmpq      %rdi, %r8                                     #890.22
        jl        ..B3.8        # Prob 82%                      #890.22
        jmp       ..B3.18       # Prob 100%                     #890.22
                                # LOE rdx rbx rbp rsi rdi r8 r12 r13 r14 r15 eax xmm2
..B3.10:                        # Preds ..B3.5
                                # Execution count [5.24e-01]
        movq      %r9, %r8                                      #903.5
        cmpl      $1, %edi                                      #905.22
        jle       ..B3.18       # Prob 10%                      #905.22
                                # LOE rdx rbx rbp rsi r8 r9 r12 r13 r14 r15 eax ecx edi xmm2
..B3.12:                        # Preds ..B3.10 ..B3.12
                                # Execution count [2.62e+00]
        movsd     (%rsi,%r8,8), %xmm0                           #907.28
        incl      %ecx                                          #909.21
        andps     (%rdx), %xmm0                                 #907.19
        movaps    %xmm2, %xmm1                                  #910.16
        comisd    %xmm2, %xmm0                                  #909.9
        movaps    %xmm0, %xmm2                                  #910.16
        jbe       ..L253        # Prob 50%                      #909.9
        movl      %ecx, %eax                                    #909.9
..L253:                                                         #
        comisd    %xmm1, %xmm2                                  #910.16
        ja        ..L254        # Prob 50%                      #910.16
        movaps    %xmm1, %xmm2                                  #910.16
..L254:                                                         #
        addq      %r9, %r8                                      #912.17
        cmpl      %edi, %ecx                                    #905.22
        jl        ..B3.12       # Prob 82%                      #905.22
        jmp       ..B3.18       # Prob 100%                     #905.22
                                # LOE rdx rbx rbp rsi r8 r9 r12 r13 r14 r15 eax ecx edi xmm2
..B3.15:                        # Preds ..B3.1 ..B3.2
                                # Execution count [3.30e-01]
        xorl      %eax, %eax                                    #876.12
                                # LOE
..B3.18:                        # Preds ..B3.3 ..B3.10 ..B3.6 ..B3.8 ..B3.12
                                #       ..B3.15
                                # Execution count [3.30e-01]
        ret                                                     #876.12
                                # LOE
	.cfi_endproc
# mark_end;
	.type	idamax,@function
	.size	idamax,.-idamax
..LNidamax.2:
	.data
# -- End  idamax
	.text
.L_2__routine_start_dscal_3:
# -- Begin  dscal
	.text
# mark_begin;

	.globl dscal
# --- dscal(int, double, double *, int)
dscal:
# parameter 1: %edi
# parameter 2: %xmm0
# parameter 3: %rsi
# parameter 4: %edx
..B4.1:                         # Preds ..B4.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_dscal.256:
..L257:
                                                        #775.1
        movaps    %xmm0, %xmm5                                  #775.1
        movslq    %edx, %rcx                                    #775.1
        testl     %edi, %edi                                    #780.13
        jle       ..B4.17       # Prob 16%                      #780.13
                                # LOE rcx rbx rbp rsi r12 r13 r14 r15 edx edi xmm5
..B4.2:                         # Preds ..B4.1
                                # Execution count [8.40e-01]
        cmpq      $1, %rcx                                      #783.21
        jne       ..B4.11       # Prob 84%                      #783.21
                                # LOE rcx rbx rbp rsi r12 r13 r14 r15 edx edi xmm5
..B4.3:                         # Preds ..B4.2
                                # Execution count [1.34e-01]
        movl      $1717986919, %eax                             #785.13
        movl      %edi, %ecx                                    #785.13
        imull     %edi                                          #785.13
        sarl      $31, %ecx                                     #785.13
        movq      %rsi, %rax                                    #787.11
        sarl      $1, %edx                                      #785.13
        subl      %ecx, %edx                                    #785.13
        lea       (%rdx,%rdx,4), %r8d                           #785.13
        xorl      %edx, %edx                                    #787.11
        negl      %r8d                                          #785.13
        addl      %edi, %r8d                                    #785.13
        movslq    %r8d, %r8                                     #785.5
        testq     %r8, %r8                                      #787.22
        jle       ..B4.7        # Prob 15%                      #787.22
                                # LOE rax rdx rbx rbp rsi r8 r12 r13 r14 r15 edi xmm5
..B4.5:                         # Preds ..B4.3 ..B4.5
                                # Execution count [6.32e-01]
        movsd     (%rax), %xmm0                                 #789.19
        incq      %rdx                                          #787.25
        mulsd     %xmm5, %xmm0                                  #789.19
        movsd     %xmm0, (%rax)                                 #789.7
        addq      $8, %rax                                      #787.25
        cmpq      %r8, %rdx                                     #787.22
        jl        ..B4.5        # Prob 82%                      #787.22
                                # LOE rax rdx rbx rbp rsi r8 r12 r13 r14 r15 edi xmm5
..B4.7:                         # Preds ..B4.5 ..B4.3
                                # Execution count [1.34e-01]
        movslq    %edi, %rdi                                    #792.5
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 xmm5
..B4.20:                        # Preds ..B4.9 ..B4.7
                                # Execution count [1.34e-01]
        cmpq      %rdi, %r8                                     #792.22
        jge       ..B4.17       # Prob 10%                      #792.22
                                # LOE
..B4.9:                         # Preds ..B4.20
                                # Execution count [6.72e-01]
        lea       (%rsi,%r8,8), %rax                            #794.21
        movsd     (%rax), %xmm0                                 #794.21
        movsd     8(%rax), %xmm1                                #795.21
        movsd     16(%rax), %xmm2                               #796.21
        movsd     24(%rax), %xmm3                               #797.21
        movsd     32(%rax), %xmm4                               #798.21
        mulsd     %xmm5, %xmm0                                  #794.21
        mulsd     %xmm5, %xmm1                                  #795.21
        mulsd     %xmm5, %xmm2                                  #796.21
        mulsd     %xmm5, %xmm3                                  #797.21
        mulsd     %xmm5, %xmm4                                  #798.21
        movsd     %xmm0, (%rax)                                 #794.7
        movsd     %xmm1, 8(%rax)                                #795.7
        movsd     %xmm2, 16(%rax)                               #796.7
        movsd     %xmm3, 24(%rax)                               #797.7
        movsd     %xmm4, 32(%rax)                               #798.7
        addq      $5, %r8                                       #792.33
        jmp       ..B4.20       # Prob 100%                     #792.33
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 xmm5
..B4.11:                        # Preds ..B4.2
                                # Execution count [7.06e-01]
        testq     %rcx, %rcx                                    #803.15
        jl        ..B4.13       # Prob 16%                      #803.15
                                # LOE rcx rbx rbp rsi r12 r13 r14 r15 edx edi xmm5
..B4.12:                        # Preds ..B4.11
                                # Execution count [5.93e-01]
        xorl      %eax, %eax                                    #805.7
        jmp       ..B4.14       # Prob 100%                     #805.7
                                # LOE rax rcx rbx rbp rsi r12 r13 r14 r15 edi xmm5
..B4.13:                        # Preds ..B4.11
                                # Execution count [1.13e-01]
        movl      %edi, %eax                                    #809.20
        negl      %eax                                          #809.20
        incl      %eax                                          #809.20
        imull     %edx, %eax                                    #809.26
        cltq                                                    #809.7
                                # LOE rax rcx rbx rbp rsi r12 r13 r14 r15 edi xmm5
..B4.14:                        # Preds ..B4.12 ..B4.13
                                # Execution count [6.35e-01]
        lea       (%rsi,%rax,8), %rdx                           #775.1
        xorl      %eax, %eax                                    #812.11
                                # LOE rdx rcx rbx rbp r12 r13 r14 r15 eax edi xmm5
..B4.15:                        # Preds ..B4.15 ..B4.14
                                # Execution count [3.53e+00]
        movsd     (%rdx), %xmm0                                 #814.20
        incl      %eax                                          #812.25
        mulsd     %xmm5, %xmm0                                  #814.20
        movsd     %xmm0, (%rdx)                                 #814.7
        lea       (%rdx,%rcx,8), %rdx                           #815.17
        cmpl      %edi, %eax                                    #812.22
        jl        ..B4.15       # Prob 82%                      #812.22
                                # LOE rdx rcx rbx rbp r12 r13 r14 r15 eax edi xmm5
..B4.17:                        # Preds ..B4.15 ..B4.1 ..B4.20
                                # Execution count [1.00e+00]
        ret                                                     #818.3
                                # LOE
	.cfi_endproc
# mark_end;
	.type	dscal,@function
	.size	dscal,.-dscal
..LNdscal.3:
	.data
# -- End  dscal
	.text
.L_2__routine_start_dgesl_4:
# -- Begin  dgesl
	.text
# mark_begin;

	.globl dgesl
# --- dgesl(double *, int, int, int *, double *, int)
dgesl:
# parameter 1: %rdi
# parameter 2: %esi
# parameter 3: %edx
# parameter 4: %rcx
# parameter 5: %r8
# parameter 6: %r9d
..B5.1:                         # Preds ..B5.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_dgesl.259:
..L260:
                                                        #677.1
        pushq     %r12                                          #677.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #677.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #677.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #677.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rbx                                          #677.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        pushq     %rbp                                          #677.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
        subq      $40, %rsp                                     #677.1
	.cfi_def_cfa_offset 96
        movq      %r8, %r12                                     #677.1
        movq      %rcx, 8(%rsp)                                 #677.1[spill]
        movl      %esi, %ebp                                    #677.1
        movl      %edx, (%rsp)                                  #677.1[spill]
        movq      %rdi, %rbx                                    #677.1
        testl     %r9d, %r9d                                    #684.15
        jne       ..B5.14       # Prob 50%                      #684.15
                                # LOE rbx r12 edx ebp
..B5.2:                         # Preds ..B5.1
                                # Execution count [5.00e-01]
        movl      %edx, %r13d                                   #686.5
        xorl      %r15d, %r15d                                  #686.11
        incq      %r15                                          #686.11
        movslq    %r13d, %r13                                   #686.5
        pushq     $8                                            #686.11
        popq      %r14                                          #686.11
        lea       -1(%r13), %eax                                #686.25
        testl     %eax, %eax                                    #686.25
        jle       ..B5.9        # Prob 15%                      #686.25
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.3:                         # Preds ..B5.2
                                # Execution count [4.23e-01]
        movl      %ebp, %edx                                    #697.33
        lea       -1(%r13), %rax                                #686.25
        negl      %edx                                          #697.33
        movq      %rax, 16(%rsp)                                #686.25[spill]
        movl      %edx, 24(%rsp)                                #697.33[spill]
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.4:                         # Preds ..B5.7 ..B5.3
                                # Execution count [2.35e+00]
        movq      8(%rsp), %rax                                 #688.11[spill]
        movslq    -4(%rax,%r15,4), %rdx                         #688.11
        movsd     -8(%r12,%rdx,8), %xmm0                        #689.11
        cmpq      %r15, %rdx                                    #691.17
        je        ..B5.6        # Prob 50%                      #691.17
                                # LOE rdx rbx r12 r13 r14 r15 ebp xmm0
..B5.5:                         # Preds ..B5.4
                                # Execution count [1.18e+00]
        movq      -8(%r14,%r12), %rax                           #693.18
        movq      %rax, -8(%r12,%rdx,8)                         #693.9
        movsd     %xmm0, -8(%r14,%r12)                          #694.9
                                # LOE rbx r12 r13 r14 r15 ebp xmm0
..B5.6:                         # Preds ..B5.4 ..B5.5
                                # Execution count [2.35e+00]
        movl      %r15d, %eax                                   #697.7
        xorl      %edx, %edx                                    #697.7
        incl      %edx                                          #697.7
        movl      (%rsp), %edi                                  #697.7[spill]
        lea       (%r12,%r14), %rcx                             #697.7
        subl      %eax, %edi                                    #697.7
        movl      %edx, %r8d                                    #697.7
        imull     %ebp, %eax                                    #697.7
        addl      24(%rsp), %eax                                #697.7[spill]
        cltq                                                    #697.7
        lea       (%rbx,%rax,8), %rsi                           #697.7
        addq      %r14, %rsi                                    #697.7
..___tag_value_dgesl.281:
#       daxpy(int, double, double *, int, double *, int)
        call      daxpy                                         #697.7
..___tag_value_dgesl.282:
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.7:                         # Preds ..B5.6
                                # Execution count [2.35e+00]
        incq      %r15                                          #686.28
        addq      $8, %r14                                      #686.28
        cmpq      16(%rsp), %r15                                #686.25[spill]
        jle       ..B5.4        # Prob 82%                      #686.25
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.9:                         # Preds ..B5.7 ..B5.2
                                # Execution count [5.00e-01]
        testq     %r13, %r13                                    #701.23
        jle       ..B5.24       # Prob 10%                      #701.23
                                # LOE rbx r12 r13 ebp
..B5.10:                        # Preds ..B5.9
                                # Execution count [4.50e-01]
        movl      %ebp, %r14d                                   #703.37
        negl      %r14d                                         #703.37
                                # LOE rbx r12 r13 ebp r14d
..B5.11:                        # Preds ..B5.12 ..B5.10
                                # Execution count [2.50e+00]
        movl      %r13d, %edi                                   #703.7
        movl      %ebp, %eax                                    #703.37
        imull     %edi, %eax                                    #703.37
        xorl      %edx, %edx                                    #705.7
        incl      %edx                                          #705.7
        lea       -8(%r12,%r13,8), %rsi                         #703.16
        movsd     (%rsi), %xmm0                                 #703.16
        addl      %r14d, %eax                                   #703.37
        decl      %edi                                          #705.7
        cltq                                                    #703.25
        movq      %r12, %rcx                                    #705.7
        movl      %edx, %r8d                                    #705.7
        lea       (%r13,%rax), %r9                              #703.29
        divsd     -8(%rbx,%r9,8), %xmm0                         #703.25
        movsd     %xmm0, (%rsi)                                 #703.7
        lea       (%rbx,%rax,8), %rsi                           #705.7
        xorps     .L_2il0floatpacket.8(%rip), %xmm0             #705.7
..___tag_value_dgesl.284:
#       daxpy(int, double, double *, int, double *, int)
        call      daxpy                                         #705.7
..___tag_value_dgesl.285:
                                # LOE rbx r12 r13 ebp r14d
..B5.12:                        # Preds ..B5.11
                                # Execution count [2.50e+00]
        decq      %r13                                          #701.26
        testq     %r13, %r13                                    #701.23
        jg        ..B5.11       # Prob 82%                      #701.23
        jmp       ..B5.24       # Prob 100%                     #701.23
                                # LOE rbx r12 r13 ebp r14d
..B5.14:                        # Preds ..B5.1
                                # Execution count [5.00e-01]
        xorl      %r14d, %r14d                                  #713.11
        incl      %r14d                                         #713.11
        movl      %ebp, %eax                                    #713.15
        xorl      %edi, %edi                                    #713.15
        xorl      %r15d, %r15d                                  #713.15
        incq      %r15                                          #713.15
        cmpl      $0, (%rsp)                                    #713.23[spill]
        jle       ..B5.18       # Prob 15%                      #713.23
                                # LOE rbx r12 r15 eax ebp edi r14d
..B5.15:                        # Preds ..B5.14
                                # Execution count [4.23e-01]
        movl      %ebp, %edx                                    #715.33
        negl      %edx                                          #715.33
        movl      %edx, 16(%rsp)                                #715.33[spill]
                                # LOE rbx r12 r15 eax ebp edi r14d
..B5.16:                        # Preds ..B5.27 ..B5.15
                                # Execution count [2.35e+00]
        movl      16(%rsp), %r13d                               #715.33[spill]
        xorl      %edx, %edx                                    #715.11
        incl      %edx                                          #715.11
        movq      %r12, %rcx                                    #715.11
        movl      %edx, %r8d                                    #715.11
        movl      %edi, 24(%rsp)                                #715.11[spill]
        movl      %eax, 32(%rsp)                                #715.11[spill]
        addl      %eax, %r13d                                   #715.33
        movslq    %r13d, %r13                                   #715.23
        lea       (%rbx,%r13,8), %rsi                           #715.11
..___tag_value_dgesl.291:
#       ddot(int, double *, int, double *, int)
        call      ddot                                          #715.11
..___tag_value_dgesl.292:
                                # LOE rbx r12 r13 r15 ebp r14d xmm0
..B5.27:                        # Preds ..B5.16
                                # Execution count [2.35e+00]
        lea       -8(%r12,%r15,8), %rdx                         #716.18
        movsd     (%rdx), %xmm1                                 #716.18
        addq      %r15, %r13                                    #716.37
        incl      %r14d                                         #713.26
        subsd     %xmm0, %xmm1                                  #716.27
        divsd     -8(%rbx,%r13,8), %xmm1                        #716.33
        movl      32(%rsp), %eax                                #[spill]
        movl      24(%rsp), %edi                                #[spill]
        addl      %ebp, %eax                                    #713.26
        movsd     %xmm1, (%rdx)                                 #716.7
        incl      %edi                                          #713.26
        incq      %r15                                          #713.26
        cmpl      (%rsp), %r14d                                 #713.23[spill]
        jle       ..B5.16       # Prob 82%                      #713.23
                                # LOE rbx r12 r15 eax ebp edi r14d
..B5.18:                        # Preds ..B5.27 ..B5.14
                                # Execution count [5.00e-01]
        movslq    (%rsp), %r15                                  #719.11[spill]
        decq      %r15                                          #719.17
        lea       (,%r15,8), %r14                               #719.11
        jle       ..B5.24       # Prob 10%                      #719.25
                                # LOE rbx r12 r14 r15 ebp
..B5.19:                        # Preds ..B5.18
                                # Execution count [4.50e-01]
        movl      %ebp, %r13d                                   #721.47
        negl      %r13d                                         #721.47
                                # LOE rbx r12 r14 r15 ebp r13d
..B5.20:                        # Preds ..B5.22 ..B5.19
                                # Execution count [2.50e+00]
        movl      %r15d, %eax                                   #721.25
        xorl      %edx, %edx                                    #721.25
        incl      %edx                                          #721.25
        movl      (%rsp), %edi                                  #721.25[spill]
        lea       (%r12,%r14), %rcx                             #721.25
        subl      %eax, %edi                                    #721.25
        movl      %edx, %r8d                                    #721.25
        imull     %ebp, %eax                                    #721.25
        addl      %r13d, %eax                                   #721.25
        cltq                                                    #721.25
        lea       (%rbx,%rax,8), %rsi                           #721.25
        addq      %r14, %rsi                                    #721.25
..___tag_value_dgesl.298:
#       ddot(int, double *, int, double *, int)
        call      ddot                                          #721.25
..___tag_value_dgesl.299:
                                # LOE rbx r12 r14 r15 ebp r13d xmm0
..B5.28:                        # Preds ..B5.20
                                # Execution count [2.50e+00]
        movq      8(%rsp), %rax                                 #722.11[spill]
        lea       -8(%r14,%r12), %rdx                           #721.25
        addsd     (%rdx), %xmm0                                 #721.25
        movslq    -4(%rax,%r15,4), %rax                         #722.11
        movsd     %xmm0, (%rdx)                                 #721.7
        cmpq      %r15, %rax                                    #724.17
        je        ..B5.22       # Prob 50%                      #724.17
                                # LOE rax rbx r12 r14 r15 ebp r13d xmm0
..B5.21:                        # Preds ..B5.28
                                # Execution count [1.25e+00]
        movq      -8(%r12,%rax,8), %rdx                         #726.13
        movsd     %xmm0, -8(%r12,%rax,8)                        #727.9
        movq      %rdx, -8(%r14,%r12)                           #728.9
                                # LOE rbx r12 r14 r15 ebp r13d
..B5.22:                        # Preds ..B5.28 ..B5.21
                                # Execution count [2.50e+00]
        decq      %r15                                          #719.28
        addq      $-8, %r14                                     #719.28
        testq     %r15, %r15                                    #719.25
        jg        ..B5.20       # Prob 82%                      #719.25
                                # LOE rbx r12 r14 r15 ebp r13d
..B5.24:                        # Preds ..B5.22 ..B5.12 ..B5.18 ..B5.9
                                # Execution count [1.00e+00]
        addq      $40, %rsp                                     #732.3
	.cfi_def_cfa_offset 56
        popq      %rbp                                          #732.3
	.cfi_def_cfa_offset 48
        popq      %rbx                                          #732.3
	.cfi_def_cfa_offset 40
        popq      %r15                                          #732.3
	.cfi_def_cfa_offset 32
        popq      %r14                                          #732.3
	.cfi_def_cfa_offset 24
        popq      %r13                                          #732.3
	.cfi_def_cfa_offset 16
        popq      %r12                                          #732.3
	.cfi_def_cfa_offset 8
        ret                                                     #732.3
                                # LOE
	.cfi_endproc
# mark_end;
	.type	dgesl,@function
	.size	dgesl,.-dgesl
..LNdgesl.4:
	.data
# -- End  dgesl
	.text
.L_2__routine_start_daxpy_5:
# -- Begin  daxpy
	.text
# mark_begin;

	.globl daxpy
# --- daxpy(int, double, double *, int, double *, int)
daxpy:
# parameter 1: %edi
# parameter 2: %xmm0
# parameter 3: %rsi
# parameter 4: %edx
# parameter 5: %rcx
# parameter 6: %r8d
..B6.1:                         # Preds ..B6.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_daxpy.309:
..L310:
                                                        #321.1
        movaps    %xmm0, %xmm4                                  #321.1
        testl     %edi, %edi                                    #327.13
        jle       ..B6.17       # Prob 6%                       #327.13
                                # LOE rcx rbx rbp rsi r12 r13 r14 r15 edx edi r8d xmm4
..B6.3:                         # Preds ..B6.1
                                # Execution count [9.31e-01]
        pxor      %xmm0, %xmm0                                  #332.3
        ucomisd   %xmm0, %xmm4                                  #332.14
        jp        ..B6.5        # Prob 0%                       #332.14
        je        ..B6.17       # Prob 6%                       #332.14
                                # LOE rcx rbx rbp rsi r12 r13 r14 r15 edx edi r8d xmm4
..B6.5:                         # Preds ..B6.3
                                # Execution count [8.67e-01]
        lea       -1(%rdx), %r9d                                #340.16
        lea       -1(%r8), %eax                                 #340.16
        orl       %eax, %r9d                                    #340.16
        je        ..B6.9        # Prob 50%                      #340.16
                                # LOE rcx rbx rbp rsi r12 r13 r14 r15 edx edi r8d xmm4
..B6.6:                         # Preds ..B6.5
                                # Execution count [3.90e-01]
        movslq    %edi, %r9                                     #348.7
        xorl      %r11d, %r11d                                  #348.7
        negq      %r9                                           #348.20
        incq      %r9                                           #348.20
        movslq    %edx, %rax                                    #363.7
        movq      %r9, %r10                                     #348.26
        imulq     %rax, %r10                                    #348.26
        testl     %edx, %edx                                    #348.7
        pushq     $0                                            #348.7
        popq      %rdx                                          #348.7
        cmovge    %rdx, %r10                                    #348.7
        movslq    %r8d, %rdx                                    #364.7
        imulq     %rdx, %r9                                     #357.26
        testl     %r8d, %r8d                                    #357.7
        pushq     $0                                            #357.7
        popq      %r8                                           #357.7
        cmovl     %r9, %r8                                      #357.7
        lea       (%rcx,%r8,8), %rcx                            #321.1
                                # LOE rax rdx rcx rbx rbp rsi r10 r12 r13 r14 r15 edi r11d xmm4
..B6.7:                         # Preds ..B6.7 ..B6.6
                                # Execution count [2.17e+00]
        movsd     (%rsi,%r10,8), %xmm0                          #362.30
        incl      %r11d                                         #360.25
        mulsd     %xmm4, %xmm0                                  #362.30
        addq      %rax, %r10                                    #363.17
        addsd     (%rcx), %xmm0                                 #362.30
        movsd     %xmm0, (%rcx)                                 #362.7
        lea       (%rcx,%rdx,8), %rcx                           #364.17
        cmpl      %edi, %r11d                                   #360.22
        jl        ..B6.7        # Prob 82%                      #360.22
        jmp       ..B6.17       # Prob 100%                     #360.22
                                # LOE rax rdx rcx rbx rbp rsi r10 r12 r13 r14 r15 edi r11d xmm4
..B6.9:                         # Preds ..B6.5
                                # Execution count [4.33e-01]
        movl      %edi, %eax                                    #372.13
        andl      $-2147483645, %eax                            #372.13
        jge       ..B6.20       # Prob 50%                      #372.13
                                # LOE rcx rbx rbp rsi r12 r13 r14 r15 eax edi xmm4
..B6.21:                        # Preds ..B6.9
                                # Execution count [4.33e-01]
        subl      $1, %eax                                      #372.13
        orl       $-4, %eax                                     #372.13
        incl      %eax                                          #372.13
                                # LOE rcx rbx rbp rsi r12 r13 r14 r15 eax edi xmm4
..B6.20:                        # Preds ..B6.9 ..B6.21
                                # Execution count [4.33e-01]
        cltq                                                    #372.5
        xorl      %edx, %edx                                    #374.11
        testq     %rax, %rax                                    #374.22
        jle       ..B6.13       # Prob 15%                      #374.22
                                # LOE rax rdx rcx rbx rbp rsi r12 r13 r14 r15 edi xmm4
..B6.11:                        # Preds ..B6.20 ..B6.11
                                # Execution count [2.04e+00]
        movsd     (%rsi,%rdx,8), %xmm0                          #376.28
        mulsd     %xmm4, %xmm0                                  #376.28
        addsd     (%rcx,%rdx,8), %xmm0                          #376.28
        movsd     %xmm0, (%rcx,%rdx,8)                          #376.7
        incq      %rdx                                          #374.25
        cmpq      %rax, %rdx                                    #374.22
        jl        ..B6.11       # Prob 82%                      #374.22
                                # LOE rax rdx rcx rbx rbp rsi r12 r13 r14 r15 edi xmm4
..B6.13:                        # Preds ..B6.11 ..B6.20
                                # Execution count [4.33e-01]
        movslq    %edi, %rdi                                    #379.5
        jmp       ..B6.23       # Prob 100%                     #379.5
                                # LOE rax rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm4
..B6.15:                        # Preds ..B6.23
                                # Execution count [2.17e+00]
        movsd     (%rsi,%rax,8), %xmm0                          #381.32
        mulsd     %xmm4, %xmm0                                  #381.32
        lea       (%rcx,%rax,8), %rdx                           #381.32
        addsd     (%rdx), %xmm0                                 #381.32
        movsd     %xmm0, (%rdx)                                 #381.7
        movsd     8(%rsi,%rax,8), %xmm1                         #382.32
        mulsd     %xmm4, %xmm1                                  #382.32
        addsd     8(%rdx), %xmm1                                #382.32
        movsd     %xmm1, 8(%rdx)                                #382.7
        movsd     16(%rsi,%rax,8), %xmm2                        #383.32
        mulsd     %xmm4, %xmm2                                  #383.32
        addsd     16(%rdx), %xmm2                               #383.32
        movsd     %xmm2, 16(%rdx)                               #383.7
        movsd     24(%rsi,%rax,8), %xmm3                        #384.32
        mulsd     %xmm4, %xmm3                                  #384.32
        addsd     24(%rdx), %xmm3                               #384.32
        movsd     %xmm3, 24(%rdx)                               #384.7
        addq      $4, %rax                                      #379.33
                                # LOE rax rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm4
..B6.23:                        # Preds ..B6.13 ..B6.15
                                # Execution count [2.17e+00]
        cmpq      %rdi, %rax                                    #379.22
        jl        ..B6.15       # Prob 82%                      #379.22
                                # LOE
..B6.17:                        # Preds ..B6.1 ..B6.3 ..B6.23 ..B6.7
                                # Execution count [8.67e-01]
        ret                                                     #387.3
                                # LOE
	.cfi_endproc
# mark_end;
	.type	daxpy,@function
	.size	daxpy,.-daxpy
..LNdaxpy.5:
	.data
# -- End  daxpy
	.text
.L_2__routine_start_ddot_6:
# -- Begin  ddot
	.text
# mark_begin;

	.globl ddot
# --- ddot(int, double *, int, double *, int)
ddot:
# parameter 1: %edi
# parameter 2: %rsi
# parameter 3: %edx
# parameter 4: %rcx
# parameter 5: %r8d
..B7.1:                         # Preds ..B7.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_ddot.312:
..L313:
                                                        #439.1
        pxor      %xmm0, %xmm0                                  #446.3
        testl     %edi, %edi                                    #448.13
        jg        ..B7.3        # Prob 93%                      #448.13
                                # LOE rcx rbx rbp rsi r12 r13 r14 r15 edx edi r8d xmm0
..B7.2:                         # Preds ..B7.1
                                # Execution count [6.90e-02]
        pxor      %xmm0, %xmm0                                  #450.12
        ret                                                     #450.12
                                # LOE
..B7.3:                         # Preds ..B7.1
                                # Execution count [9.31e-01]
        lea       -1(%rdx), %r9d                                #456.16
        lea       -1(%r8), %eax                                 #456.16
        orl       %eax, %r9d                                    #456.16
        je        ..B7.7        # Prob 50%                      #456.16
                                # LOE rcx rbx rbp rsi r12 r13 r14 r15 edx edi r8d xmm0
..B7.4:                         # Preds ..B7.3
                                # Execution count [4.19e-01]
        movslq    %edi, %r9                                     #464.7
        xorl      %r11d, %r11d                                  #464.7
        negq      %r9                                           #464.20
        incq      %r9                                           #464.20
        movslq    %edx, %rax                                    #479.7
        movq      %r9, %r10                                     #464.26
        imulq     %rax, %r10                                    #464.26
        testl     %edx, %edx                                    #464.7
        pushq     $0                                            #464.7
        popq      %rdx                                          #464.7
        cmovge    %rdx, %r10                                    #464.7
        movslq    %r8d, %rdx                                    #480.7
        imulq     %rdx, %r9                                     #473.26
        testl     %r8d, %r8d                                    #473.7
        pushq     $0                                            #473.7
        popq      %r8                                           #473.7
        cmovl     %r9, %r8                                      #473.7
                                # LOE rax rdx rcx rbx rbp rsi r8 r10 r12 r13 r14 r15 edi r11d xmm0
..B7.5:                         # Preds ..B7.5 ..B7.4
                                # Execution count [2.33e+00]
        movsd     (%rsi,%r10,8), %xmm1                          #478.23
        incl      %r11d                                         #476.25
        mulsd     (%rcx,%r8,8), %xmm1                           #478.32
        addq      %rax, %r10                                    #479.17
        addq      %rdx, %r8                                     #480.17
        addsd     %xmm1, %xmm0                                  #478.32
        cmpl      %edi, %r11d                                   #476.22
        jl        ..B7.5        # Prob 82%                      #476.22
        jmp       ..B7.15       # Prob 100%                     #476.22
                                # LOE rax rdx rcx rbx rbp rsi r8 r10 r12 r13 r14 r15 edi r11d xmm0
..B7.7:                         # Preds ..B7.3
                                # Execution count [4.66e-01]
        movl      $1717986919, %eax                             #488.13
        movl      %edi, %r8d                                    #488.13
        imull     %edi                                          #488.13
        sarl      $31, %r8d                                     #488.13
        xorl      %eax, %eax                                    #490.11
        sarl      $1, %edx                                      #488.13
        subl      %r8d, %edx                                    #488.13
        lea       (%rdx,%rdx,4), %r9d                           #488.13
        negl      %r9d                                          #488.13
        addl      %edi, %r9d                                    #488.13
        movslq    %r9d, %r9                                     #488.5
        testq     %r9, %r9                                      #490.22
        jle       ..B7.11       # Prob 15%                      #490.22
                                # LOE rax rcx rbx rbp rsi r9 r12 r13 r14 r15 edi xmm0
..B7.9:                         # Preds ..B7.7 ..B7.9
                                # Execution count [2.19e+00]
        movsd     (%rsi,%rax,8), %xmm1                          #492.23
        mulsd     (%rcx,%rax,8), %xmm1                          #492.31
        incq      %rax                                          #490.25
        addsd     %xmm1, %xmm0                                  #492.31
        cmpq      %r9, %rax                                     #490.22
        jl        ..B7.9        # Prob 82%                      #490.22
                                # LOE rax rcx rbx rbp rsi r9 r12 r13 r14 r15 edi xmm0
..B7.11:                        # Preds ..B7.9 ..B7.7
                                # Execution count [4.66e-01]
        movslq    %edi, %rdi                                    #495.5
        jmp       ..B7.20       # Prob 100%                     #495.5
                                # LOE rcx rbx rbp rsi rdi r9 r12 r13 r14 r15 xmm0
..B7.13:                        # Preds ..B7.20
                                # Execution count [2.33e+00]
        lea       (%rsi,%r9,8), %rax                            #497.23
        movsd     (%rax), %xmm5                                 #497.23
        movsd     8(%rax), %xmm1                                #498.23
        lea       (%rcx,%r9,8), %rdx                            #497.33
        mulsd     (%rdx), %xmm5                                 #497.33
        mulsd     8(%rdx), %xmm1                                #498.33
        movsd     16(%rax), %xmm2                               #499.23
        addsd     %xmm1, %xmm5                                  #497.33
        mulsd     16(%rdx), %xmm2                               #499.33
        movsd     24(%rax), %xmm3                               #500.23
        addsd     %xmm2, %xmm5                                  #498.33
        mulsd     24(%rdx), %xmm3                               #500.33
        movsd     32(%rax), %xmm4                               #501.23
        addsd     %xmm3, %xmm5                                  #499.33
        mulsd     32(%rdx), %xmm4                               #501.33
        addq      $5, %r9                                       #495.33
        addsd     %xmm4, %xmm5                                  #500.33
        addsd     %xmm5, %xmm0                                  #501.33
                                # LOE rcx rbx rbp rsi rdi r9 r12 r13 r14 r15 xmm0
..B7.20:                        # Preds ..B7.11 ..B7.13
                                # Execution count [2.33e+00]
        cmpq      %rdi, %r9                                     #495.22
        jl        ..B7.13       # Prob 82%                      #495.22
                                # LOE
..B7.15:                        # Preds ..B7.20 ..B7.5
                                # Execution count [9.31e-01]
        ret                                                     #504.10
                                # LOE
	.cfi_endproc
# mark_end;
	.type	ddot,@function
	.size	ddot,.-ddot
..LNddot.6:
	.data
# -- End  ddot
	.text
.L_2__routine_start_cpu_time_7:
# -- Begin  cpu_time
	.text
# mark_begin;

	.globl cpu_time
# --- cpu_time(void)
cpu_time:
..B8.1:                         # Preds ..B8.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_cpu_time.315:
..L316:
                                                        #263.1
        pushq     %rsi                                          #263.1
	.cfi_def_cfa_offset 16
..___tag_value_cpu_time.318:
#       clock(void)
        call      clock                                         #266.22
..___tag_value_cpu_time.319:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B8.2:                         # Preds ..B8.1
                                # Execution count [1.00e+00]
        pxor      %xmm0, %xmm0                                  #266.22
        cvtsi2sdq %rax, %xmm0                                   #266.22
        divsd     .L_2il0floatpacket.1(%rip), %xmm0             #267.11
        popq      %rcx                                          #269.10
	.cfi_def_cfa_offset 8
        ret                                                     #269.10
                                # LOE
	.cfi_endproc
# mark_end;
	.type	cpu_time,@function
	.size	cpu_time,.-cpu_time
..LNcpu_time.7:
	.data
# -- End  cpu_time
	.text
.L_2__routine_start_r8mat_gen_8:
# -- Begin  r8mat_gen
	.text
# mark_begin;

	.globl r8mat_gen
# --- r8mat_gen(int, int)
r8mat_gen:
# parameter 1: %edi
# parameter 2: %esi
..B9.1:                         # Preds ..B9.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_r8mat_gen.322:
..L323:
                                                        #1137.1
        pushq     %r12                                          #1137.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #1137.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #1137.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #1137.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rbx                                          #1137.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        pushq     %rbp                                          #1137.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
        subq      $40, %rsp                                     #1137.1
	.cfi_def_cfa_offset 96
        movl      %esi, %eax                                    #1137.1
        movl      %edi, (%rsp)                                  #1137.1[spill]
        lea       8(%rsp), %rdi                                 #1140.15
        movl      $init.930.0.0.13, %esi                        #1140.15
        movslq    %eax, %r14                                    #1137.1
        movsq                                                   #1140.15
                                # LOE rsi rdi r14 eax
..B9.13:                        # Preds ..B9.1
                                # Execution count [1.00e+00]
        movsq                                                   #1140.15
                                # LOE r14 eax
..B9.2:                         # Preds ..B9.13
                                # Execution count [1.00e+00]
        imull     (%rsp), %eax                                  #1143.20[spill]
        cltq                                                    #1143.20
        shlq      $3, %rax                                      #1143.20
        movq      %rax, %rdi                                    #1143.20
..___tag_value_r8mat_gen.339:
#       malloc(size_t)
        call      malloc                                        #1143.20
..___tag_value_r8mat_gen.340:
                                # LOE rax r14
..B9.14:                        # Preds ..B9.2
                                # Execution count [1.00e+00]
        movq      %rax, %r13                                    #1143.20
                                # LOE r13 r14
..B9.3:                         # Preds ..B9.14
                                # Execution count [1.00e+00]
        movl      (%rsp), %r12d                                 #1145.13[spill]
        xorl      %ebp, %ebp                                    #1145.13
        incq      %rbp                                          #1145.13
        testq     %r14, %r14                                    #1145.21
        jle       ..B9.10       # Prob 10%                      #1145.21
                                # LOE rbp r13 r14 r12d
..B9.4:                         # Preds ..B9.3
                                # Execution count [4.00e-01]
        movl      %r12d, %edx                                   #1149.19
        negl      %edx                                          #1149.19
        movl      %edx, 24(%rsp)                                #1149.19[spill]
                                # LOE rbp r13 r14 r12d
..B9.5:                         # Preds ..B9.8 ..B9.4
                                # Execution count [4.50e+00]
        movl      24(%rsp), %edx                                #1149.19[spill]
        xorl      %ebx, %ebx                                    #1147.11
        incq      %rbx                                          #1147.11
        lea       (%rdx,%r12), %ecx                             #1149.19
        movslq    %ecx, %rcx                                    #1149.7
        lea       (%r13,%rcx,8), %r15                           #1149.7
                                # LOE rbx rbp r13 r14 r15 r12d
..B9.6:                         # Preds ..B9.7 ..B9.5
                                # Execution count [2.50e+01]
        lea       8(%rsp), %rdi                                 #1149.26
..___tag_value_r8mat_gen.344:
#       r8_random(int *)
        call      r8_random                                     #1149.26
..___tag_value_r8mat_gen.345:
                                # LOE rbx rbp r13 r14 r15 r12d xmm0
..B9.7:                         # Preds ..B9.6
                                # Execution count [2.50e+01]
        subsd     .L_2il0floatpacket.9(%rip), %xmm0             #1149.47
        movsd     %xmm0, -8(%r15,%rbx,8)                        #1149.7
        incq      %rbx                                          #1147.26
        cmpq      %r14, %rbx                                    #1147.23
        jle       ..B9.6        # Prob 82%                      #1147.23
                                # LOE rbx rbp r13 r14 r15 r12d
..B9.8:                         # Preds ..B9.7
                                # Execution count [5.00e+00]
        incq      %rbp                                          #1145.24
        addl      (%rsp), %r12d                                 #1145.24[spill]
        cmpq      %r14, %rbp                                    #1145.21
        jle       ..B9.5        # Prob 82%                      #1145.21
                                # LOE rbp r13 r14 r12d
..B9.10:                        # Preds ..B9.8 ..B9.3
                                # Execution count [1.00e+00]
        movq      %r13, %rax                                    #1153.10
        addq      $40, %rsp                                     #1153.10
	.cfi_def_cfa_offset 56
        popq      %rbp                                          #1153.10
	.cfi_def_cfa_offset 48
        popq      %rbx                                          #1153.10
	.cfi_def_cfa_offset 40
        popq      %r15                                          #1153.10
	.cfi_def_cfa_offset 32
        popq      %r14                                          #1153.10
	.cfi_def_cfa_offset 24
        popq      %r13                                          #1153.10
	.cfi_def_cfa_offset 16
        popq      %r12                                          #1153.10
	.cfi_def_cfa_offset 8
        ret                                                     #1153.10
                                # LOE
	.cfi_endproc
# mark_end;
	.type	r8mat_gen,@function
	.size	r8mat_gen,.-r8mat_gen
..LNr8mat_gen.8:
	.section .rodata, "a"
	.align 16
	.align 4
init.930.0.0.13:
	.long	1
	.long	2
	.long	3
	.long	1325
	.data
# -- End  r8mat_gen
	.text
.L_2__routine_start_r8_random_9:
# -- Begin  r8_random
	.text
# mark_begin;

	.globl r8_random
# --- r8_random(int *)
r8_random:
# parameter 1: %rdi
..B10.1:                        # Preds ..B10.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_r8_random.355:
..L356:
                                                        #1070.1
        pushq     %rbp                                          #1070.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #1070.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        movq      %rdi, %r10                                    #1070.1
        movl      12(%r10), %r8d                                #1086.9
        imull     $2549, %r8d, %r9d                             #1086.20
        imull     $2508, %r8d, %r11d                            #1089.42
        movl      %r9d, %edi                                    #1087.15
        sarl      $11, %edi                                     #1087.15
        movl      8(%r10), %esi                                 #1089.15
        imull     $2549, %esi, %eax                             #1089.26
        shrl      $20, %edi                                     #1087.15
        addl      %r9d, %edi                                    #1087.15
        sarl      $12, %edi                                     #1087.15
        movl      %edi, %ecx                                    #1088.22
        addl      %eax, %edi                                    #1089.26
        shll      $12, %ecx                                     #1088.22
        addl      %r11d, %edi                                   #1089.42
        negl      %ecx                                          #1088.22
        addl      %ecx, %r9d                                    #1088.22
        movl      %edi, %ecx                                    #1090.15
        sarl      $11, %ecx                                     #1090.15
        shrl      $20, %ecx                                     #1090.15
        addl      %edi, %ecx                                    #1090.15
        movl      4(%r10), %edx                                 #1092.15
        imull     $2549, %edx, %r11d                            #1092.26
        imull     $2508, %edx, %edx                             #1095.42
        sarl      $12, %ecx                                     #1090.15
        movl      %ecx, %eax                                    #1091.22
        addl      %r11d, %ecx                                   #1092.26
        shll      $12, %eax                                     #1091.22
        negl      %eax                                          #1091.22
        imull     $2508, %esi, %r11d                            #1092.42
        addl      %eax, %edi                                    #1091.22
        imull     $322, %r8d, %eax                              #1092.58
        imull     $322, %esi, %esi                              #1095.58
        imull     $494, %r8d, %r8d                              #1095.74
        addl      %eax, %r11d                                   #1092.42
        addl      %r8d, %esi                                    #1095.58
        addl      %r11d, %ecx                                   #1092.58
        movl      %ecx, %eax                                    #1093.15
        sarl      $11, %eax                                     #1093.15
        shrl      $20, %eax                                     #1093.15
        addl      %ecx, %eax                                    #1093.15
        sarl      $12, %eax                                     #1093.15
        movl      %eax, %r11d                                   #1094.22
        shll      $12, %r11d                                    #1094.22
        negl      %r11d                                         #1094.22
        addl      %r11d, %ecx                                   #1094.22
        imull     $2549, (%r10), %r11d                          #1095.26
        addl      %r11d, %eax                                   #1095.26
        addl      %edx, %eax                                    #1095.42
        addl      %esi, %eax                                    #1095.74
        andl      $-2147479553, %eax                            #1096.17
        jge       ..B10.4       # Prob 50%                      #1096.17
                                # LOE rbx r10 r12 r13 r14 r15 eax ecx edi r9d
..B10.5:                        # Preds ..B10.1
                                # Execution count [1.00e+00]
        subl      $1, %eax                                      #1096.17
        orl       $-4096, %eax                                  #1096.17
        incl      %eax                                          #1096.17
                                # LOE rbx r10 r12 r13 r14 r15 eax ecx edi r9d
..B10.4:                        # Preds ..B10.1 ..B10.5
                                # Execution count [1.00e+00]
        pxor      %xmm4, %xmm4                                  #1111.24
        pxor      %xmm1, %xmm1                                  #1110.24
        cvtsi2sd  %r9d, %xmm4                                   #1111.24
        cvtsi2sd  %edi, %xmm1                                   #1110.24
        movsd     .L_2il0floatpacket.10(%rip), %xmm0            #1081.12
        pxor      %xmm2, %xmm2                                  #1109.24
        mulsd     %xmm0, %xmm4                                  #1111.24
        pxor      %xmm3, %xmm3                                  #1108.24
        cvtsi2sd  %ecx, %xmm2                                   #1109.24
        cvtsi2sd  %eax, %xmm3                                   #1108.24
        addsd     %xmm1, %xmm4                                  #1111.24
        mulsd     %xmm0, %xmm4                                  #1111.24
        movl      %eax, (%r10)                                  #1100.3
        addsd     %xmm2, %xmm4                                  #1111.24
        mulsd     %xmm0, %xmm4                                  #1111.24
        movl      %ecx, 4(%r10)                                 #1101.3
        addsd     %xmm3, %xmm4                                  #1111.24
        mulsd     %xmm4, %xmm0                                  #1111.24
        movl      %edi, 8(%r10)                                 #1102.3
        movl      %r9d, 12(%r10)                                #1103.3
        leave                                                   #1113.10
        ret                                                     #1113.10
                                # LOE
	.cfi_endproc
# mark_end;
	.type	r8_random,@function
	.size	r8_random,.-r8_random
..LNr8_random.9:
	.data
# -- End  r8_random
	.text
.L_2__routine_start_r8_epsilon_10:
# -- Begin  r8_epsilon
	.text
# mark_begin;

	.globl r8_epsilon
# --- r8_epsilon(void)
r8_epsilon:
..B11.1:                        # Preds ..B11.0
                                # Execution count [9.00e-01]
	.cfi_startproc
..___tag_value_r8_epsilon.361:
..L362:
                                                        #989.1
        movsd     .L_2il0floatpacket.7(%rip), %xmm3             #992.3
        movsd     .L_2il0floatpacket.9(%rip), %xmm2             #996.13
        movaps    %xmm3, %xmm0                                  #992.3
                                # LOE rbx rbp r12 r13 r14 r15 xmm0 xmm2 xmm3
..B11.2:                        # Preds ..B11.2 ..B11.1
                                # Execution count [5.00e+00]
        mulsd     %xmm2, %xmm0                                  #996.13
        movaps    %xmm3, %xmm1                                  #994.36
        addsd     %xmm0, %xmm1                                  #994.36
        comisd    %xmm3, %xmm1                                  #994.36
        ja        ..B11.2       # Prob 82%                      #994.36
                                # LOE rbx rbp r12 r13 r14 r15 xmm0 xmm2 xmm3
..B11.3:                        # Preds ..B11.2
                                # Execution count [1.00e+00]
        addsd     %xmm0, %xmm0                                  #998.13
        ret                                                     #1000.10
                                # LOE
	.cfi_endproc
# mark_end;
	.type	r8_epsilon,@function
	.size	r8_epsilon,.-r8_epsilon
..LNr8_epsilon.10:
	.data
# -- End  r8_epsilon
	.text
.L_2__routine_start_timestamp_11:
# -- Begin  timestamp
	.text
# mark_begin;

	.globl timestamp
# --- timestamp(void)
timestamp:
..B12.1:                        # Preds ..B12.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_timestamp.364:
..L365:
                                                        #1185.1
        pushq     %rsi                                          #1185.1
	.cfi_def_cfa_offset 16
        xorl      %edi, %edi                                    #1193.9
..___tag_value_timestamp.367:
#       time(time_t *)
        call      time                                          #1193.9
..___tag_value_timestamp.368:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B12.2:                        # Preds ..B12.1
                                # Execution count [1.00e+00]
        movq      %rax, (%rsp)                                  #1193.3
        lea       (%rsp), %rdi                                  #1194.8
..___tag_value_timestamp.369:
#       localtime(const time_t *)
        call      localtime                                     #1194.8
..___tag_value_timestamp.370:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B12.3:                        # Preds ..B12.2
                                # Execution count [1.00e+00]
        movl      $time_buffer.933.0.14, %edi                   #1196.9
        pushq     $40                                           #1196.9
        popq      %rsi                                          #1196.9
        movl      $.L_2__STRING.16, %edx                        #1196.9
        movq      %rax, %rcx                                    #1196.9
..___tag_value_timestamp.371:
#       strftime(char *__restrict__, size_t, const char *__restrict__, const struct tm *__restrict__)
        call      strftime                                      #1196.9
..___tag_value_timestamp.372:
                                # LOE rbx rbp r12 r13 r14 r15
..B12.4:                        # Preds ..B12.3
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.17, %edi                        #1198.3
        movl      $time_buffer.933.0.14, %esi                   #1198.3
        xorl      %eax, %eax                                    #1198.3
..___tag_value_timestamp.373:
#       printf(const char *__restrict__, ...)
        call      printf                                        #1198.3
..___tag_value_timestamp.374:
                                # LOE rbx rbp r12 r13 r14 r15
..B12.5:                        # Preds ..B12.4
                                # Execution count [1.00e+00]
        popq      %rcx                                          #1200.3
	.cfi_def_cfa_offset 8
        ret                                                     #1200.3
                                # LOE
	.cfi_endproc
# mark_end;
	.type	timestamp,@function
	.size	timestamp,.-timestamp
..LNtimestamp.11:
	.bss
	.align 4
	.align 1
time_buffer.933.0.14:
	.type	time_buffer.933.0.14,@object
	.size	time_buffer.933.0.14,40
	.space 40	# pad
	.data
# -- End  timestamp
	.text
.L_2__routine_start_r8_abs_12:
# -- Begin  r8_abs
	.text
# mark_begin;

	.globl r8_abs
# --- r8_abs(double)
r8_abs:
# parameter 1: %xmm0
..B13.1:                        # Preds ..B13.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_r8_abs.377:
..L378:
                                                        #942.1
        andps     .L_2il0floatpacket.6(%rip), %xmm0             #945.3
        ret                                                     #953.10
                                # LOE
	.cfi_endproc
# mark_end;
	.type	r8_abs,@function
	.size	r8_abs,.-r8_abs
..LNr8_abs.12:
	.data
# -- End  r8_abs
	.text
.L_2__routine_start_r8_max_13:
# -- Begin  r8_max
	.text
# mark_begin;

	.globl r8_max
# --- r8_max(double, double)
r8_max:
# parameter 1: %xmm0
# parameter 2: %xmm1
..B14.1:                        # Preds ..B14.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_r8_max.380:
..L381:
                                                        #1026.1
        maxsd     %xmm1, %xmm0                                  #1037.10
        ret                                                     #1037.10
                                # LOE
	.cfi_endproc
# mark_end;
	.type	r8_max,@function
	.size	r8_max,.-r8_max
..LNr8_max.13:
	.data
# -- End  r8_max
	.section .rodata, "a"
	.align 16
.L_2il0floatpacket.6:
	.long	0xffffffff,0x7fffffff,0x00000000,0x00000000
	.type	.L_2il0floatpacket.6,@object
	.size	.L_2il0floatpacket.6,16
	.align 16
.L_2il0floatpacket.8:
	.long	0x00000000,0x80000000,0x00000000,0x00000000
	.type	.L_2il0floatpacket.8,@object
	.size	.L_2il0floatpacket.8,16
	.align 8
.L_2il0floatpacket.0:
	.long	0x05555555,0xc1c224dd
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,8
	.align 8
.L_2il0floatpacket.1:
	.long	0x00000000,0x412e8480
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,8
	.align 8
.L_2il0floatpacket.2:
	.long	0x00000000,0xbff00000
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,8
	.align 8
.L_2il0floatpacket.3:
	.long	0x00000000,0x40977000
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,8
	.align 8
.L_2il0floatpacket.4:
	.long	0x00000000,0x40000000
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,8
	.align 8
.L_2il0floatpacket.5:
	.long	0x3126e979,0x3facac08
	.type	.L_2il0floatpacket.5,@object
	.size	.L_2il0floatpacket.5,8
	.align 8
.L_2il0floatpacket.7:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.7,@object
	.size	.L_2il0floatpacket.7,8
	.align 8
.L_2il0floatpacket.9:
	.long	0x00000000,0x3fe00000
	.type	.L_2il0floatpacket.9,@object
	.size	.L_2il0floatpacket.9,8
	.align 8
.L_2il0floatpacket.10:
	.long	0x00000000,0x3f300000
	.type	.L_2il0floatpacket.10,@object
	.size	.L_2il0floatpacket.10,8
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.0:
	.word	10
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,2
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.long	1347307852
	.long	1598767937
	.long	1129203010
	.word	2632
	.byte	0
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,15
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.2:
	.long	541270048
	.long	1936876918
	.long	175009641
	.byte	0
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,13
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.long	1750343712
	.long	1229725797
	.long	1128353870
	.long	1700929611
	.long	1835557742
	.long	778793569
	.word	10
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,26
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.4:
	.long	1632378912
	.long	1635084142
	.long	540697959
	.word	2627
	.byte	0
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,15
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.5:
	.long	1631854624
	.long	2037670260
	.long	540697968
	.long	1651863364
	.long	1881171308
	.long	1768121714
	.long	1852795251
	.long	1634038304
	.word	2668
	.byte	0
	.type	.L_2__STRING.5,@object
	.size	.L_2__STRING.5,35
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.6:
	.long	1632444448
	.long	2020176500
	.long	1685221152
	.long	1310749285
	.long	538976288
	.long	538976288
	.long	538976288
	.long	1025515552
	.long	174335264
	.byte	0
	.type	.L_2__STRING.6,@object
	.size	.L_2__STRING.6,37
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.7:
	.long	1699487776
	.long	1852400737
	.long	1634541671
	.long	2020176500
	.long	1835623456
	.long	1769172581
	.long	1277193839
	.long	1025524036
	.long	174335264
	.byte	0
	.type	.L_2__STRING.7,@object
	.size	.L_2__STRING.7,37
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.8:
	.long	1347307852
	.long	1598767937
	.long	1129203010
	.long	539828296
	.long	1635017030
	.long	1919230060
	.long	561147762
	.word	10
	.type	.L_2__STRING.8,@object
	.size	.L_2__STRING.8,30
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.9:
	.long	1750343712
	.long	1634541669
	.long	2020176500
	.long	1763721504
	.long	1885413491
	.long	1701994864
	.long	2037150830
	.long	1852404512
	.long	1634497895
	.long	667250
	.type	.L_2__STRING.9,@object
	.size	.L_2__STRING.9,40
	.align 4
.L_2__STRING.10:
	.long	1648435232
	.long	1836216174
	.long	1696623713
	.long	1864393838
	.long	2019893350
	.long	1953850213
	.long	778989417
	.word	10
	.type	.L_2__STRING.10,@object
	.size	.L_2__STRING.10,30
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.12:
	.long	824516640
	.long	538994228
	.long	1714696485
	.long	824516640
	.long	538993972
	.long	1714696485
	.long	824516640
	.long	681524
	.type	.L_2__STRING.12,@object
	.size	.L_2__STRING.12,32
	.align 4
.L_2__STRING.14:
	.long	958734368
	.long	622862438
	.long	538994233
	.long	543570213
	.long	1715021088
	.long	958734368
	.long	622862438
	.long	681529
	.type	.L_2__STRING.14,@object
	.size	.L_2__STRING.14,32
	.align 4
.L_2__STRING.15:
	.long	1867391008
	.long	1818324338
	.long	1684956448
	.long	543584032
	.long	1667594341
	.long	1869182069
	.long	667246
	.type	.L_2__STRING.15,@object
	.size	.L_2__STRING.15,28
	.align 4
.L_2__STRING.16:
	.long	622879781
	.long	1495605314
	.long	977872160
	.long	624577829
	.long	1881481299
	.byte	0
	.type	.L_2__STRING.16,@object
	.size	.L_2__STRING.16,21
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.17:
	.long	684837
	.type	.L_2__STRING.17,@object
	.size	.L_2__STRING.17,4
	.section .rodata.str1.32, "aMS",@progbits,1
	.align 32
	.align 32
.L_2__STRING.11:
	.long	538976288
	.long	1919897120
	.long	1377840749
	.long	1684632421
	.long	538976288
	.long	1699880992
	.long	543451507
	.long	538976288
	.long	538976288
	.long	1095573536
	.long	1346717763
	.long	538976288
	.long	538976288
	.long	828069920
	.long	538976349
	.long	538976288
	.long	1478500384
	.long	173887067
	.byte	0
	.type	.L_2__STRING.11,@object
	.size	.L_2__STRING.11,73
	.space 23, 0x00 	# pad
	.align 32
.L_2__STRING.13:
	.long	538976288
	.long	1631985696
	.long	1919906915
	.long	538976288
	.long	1819235104
	.long	538994038
	.long	538976288
	.long	1635020628
	.long	538976364
	.long	1179459616
	.long	1397772108
	.long	538976288
	.long	1428168736
	.long	544500078
	.long	538976288
	.long	1634878240
	.long	1632775545
	.long	175073652
	.byte	0
	.type	.L_2__STRING.13,@object
	.size	.L_2__STRING.13,73
	.data
	.section .note.GNU-stack, ""
# End
