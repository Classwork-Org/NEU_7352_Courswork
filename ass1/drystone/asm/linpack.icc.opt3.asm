# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.4.235 Build 20190416";
# mark_description "-O3 -S -fverbose-asm -o ../asm/linpack.icc.opt3.asm";
	.file "linpack.c"
	.text
..TXTST0:
.L_2__routine_start_main_0:
# -- Begin  main
	.text
# mark_begin;
       .align    16,0x90
	.globl main
# --- main(void)
main:
..B1.1:                         # Preds ..B1.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_main.1:
..L2:
                                                          #44.1
        pushq     %rbp                                          #44.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #44.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #44.1
        pushq     %r12                                          #44.1
        pushq     %r13                                          #44.1
        pushq     %r14                                          #44.1
        pushq     %r15                                          #44.1
        pushq     %rbx                                          #44.1
        subq      $344, %rsp                                    #44.1
        xorl      %esi, %esi                                    #44.1
        movl      $3, %edi                                      #44.1
        call      __intel_new_feature_proc_init                 #44.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.376:                       # Preds ..B1.1
                                # Execution count [1.00e+00]
        stmxcsr   (%rsp)                                        #44.1
        xorl      %edi, %edi                                    #74.3
        orl       $32832, (%rsp)                                #44.1
        ldmxcsr   (%rsp)                                        #44.1
#       time(time_t *)
        call      time                                          #74.3
                                # LOE rax
..B1.2:                         # Preds ..B1.376
                                # Execution count [1.00e+00]
        movq      %rax, 56(%rsp)                                #74.3
        lea       56(%rsp), %rdi                                #74.3
#       localtime(const time_t *)
        call      localtime                                     #74.3
                                # LOE rax
..B1.377:                       # Preds ..B1.2
                                # Execution count [1.00e+00]
        movl      $time_buffer.959.0.14, %edi                   #74.3
        movl      $40, %esi                                     #74.3
        movl      $.L_2__STRING.16, %edx                        #74.3
        movq      %rax, %rcx                                    #74.3
#       strftime(char *__restrict__, size_t, const char *__restrict__, const struct tm *__restrict__)
        call      strftime                                      #74.3
                                # LOE
..B1.3:                         # Preds ..B1.377
                                # Execution count [1.00e+00]
        movl      $time_buffer.959.0.14, %edi                   #74.3
        call      puts                                          #74.3
                                # LOE
..B1.4:                         # Preds ..B1.3
                                # Execution count [1.00e+00]
        movl      $10, %edi                                     #75.3
        call      putchar                                       #75.3
                                # LOE
..B1.5:                         # Preds ..B1.4
                                # Execution count [1.00e+00]
        movl      $il0_peep_printf_format_0, %edi               #76.3
        call      puts                                          #76.3
                                # LOE
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.00e+00]
        movl      $il0_peep_printf_format_1, %edi               #77.3
        call      puts                                          #77.3
                                # LOE
..B1.7:                         # Preds ..B1.6
                                # Execution count [1.00e+00]
        movl      $10, %edi                                     #78.3
        call      putchar                                       #78.3
                                # LOE
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.00e+00]
        movl      $il0_peep_printf_format_2, %edi               #79.3
        call      puts                                          #79.3
                                # LOE
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
        movl      $il0_peep_printf_format_3, %edi               #80.3
        call      puts                                          #80.3
                                # LOE
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.00e+00]
        movl      $il0_peep_printf_format_4, %edi               #81.3
        call      puts                                          #81.3
                                # LOE
..B1.11:                        # Preds ..B1.10
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.6, %edi                         #82.3
        movl      $1500, %esi                                   #82.3
        xorl      %eax, %eax                                    #82.3
..___tag_value_main.11:
#       printf(const char *__restrict__, ...)
        call      printf                                        #82.3
..___tag_value_main.12:
                                # LOE
..B1.12:                        # Preds ..B1.11
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.7, %edi                         #83.3
        movl      $1501, %esi                                   #83.3
        xorl      %eax, %eax                                    #83.3
..___tag_value_main.13:
#       printf(const char *__restrict__, ...)
        call      printf                                        #83.3
..___tag_value_main.14:
                                # LOE
..B1.13:                        # Preds ..B1.12
                                # Execution count [1.00e+00]
        movups    init.956.0.0.13(%rip), %xmm0                  #89.7
        movups    %xmm0, (%rsp)                                 #89.7
                                # LOE
..B1.14:                        # Preds ..B1.13
                                # Execution count [1.00e+00]
        movl      $18012000, %edi                               #89.7
#       malloc(size_t)
        call      malloc                                        #89.7
                                # LOE rax
..B1.378:                       # Preds ..B1.14
                                # Execution count [1.00e+00]
        movq      %rax, %r12                                    #89.7
                                # LOE r12
..B1.15:                        # Preds ..B1.378
                                # Execution count [4.00e-01]
        movq      %r12, %r9                                     #89.7
        xorl      %r11d, %r11d                                  #89.7
        movl      12(%rsp), %r14d                               #89.7
        movq      %r9, %rbx                                     #89.7
        movl      8(%rsp), %edi                                 #89.7
        movl      4(%rsp), %r10d                                #89.7
        movl      (%rsp), %r13d                                 #89.7
        movsd     .L_2il0floatpacket.1(%rip), %xmm0             #89.7
        movsd     .L_2il0floatpacket.0(%rip), %xmm1             #89.7
                                # LOE rbx r9 r12 edi r10d r11d r13d r14d xmm0 xmm1
..B1.16:                        # Preds ..B1.18 ..B1.15
                                # Execution count [4.50e+00]
        xorl      %ecx, %ecx                                    #89.7
                                # LOE rcx rbx r9 r12 edi r10d r11d r13d r14d xmm0 xmm1
..B1.17:                        # Preds ..B1.365 ..B1.16
                                # Execution count [2.50e+01]
        imull     $2549, %r14d, %eax                            #89.7
        imull     $2549, %r13d, %esi                            #89.7
        imull     $2508, %r14d, %r13d                           #89.7
        movl      %eax, %edx                                    #89.7
        sarl      $11, %edx                                     #89.7
        shrl      $20, %edx                                     #89.7
        addl      %eax, %edx                                    #89.7
        sarl      $12, %edx                                     #89.7
        movl      %edx, %r8d                                    #89.7
        addl      %r13d, %edx                                   #89.7
        shll      $12, %r8d                                     #89.7
        subl      %r8d, %eax                                    #89.7
        imull     $2549, %edi, %r8d                             #89.7
        imull     $322, %r14d, %r13d                            #89.7
        addl      %r8d, %edx                                    #89.7
        movl      %edx, %r8d                                    #89.7
        sarl      $11, %r8d                                     #89.7
        shrl      $20, %r8d                                     #89.7
        addl      %edx, %r8d                                    #89.7
        sarl      $12, %r8d                                     #89.7
        movl      %r8d, %r15d                                   #89.7
        addl      %r13d, %r8d                                   #89.7
        shll      $12, %r15d                                    #89.7
        imull     $494, %r14d, %r13d                            #89.7
        subl      %r15d, %edx                                   #89.7
        imull     $2508, %edi, %r15d                            #89.7
        imull     $322, %edi, %r14d                             #89.7
        imull     $2549, %r10d, %edi                            #89.7
        imull     $2508, %r10d, %r10d                           #89.7
        addl      %edi, %r15d                                   #89.7
        addl      %esi, %r10d                                   #89.7
        addl      %r15d, %r8d                                   #89.7
        movl      %r8d, %esi                                    #89.7
        sarl      $11, %esi                                     #89.7
        shrl      $20, %esi                                     #89.7
        addl      %r8d, %esi                                    #89.7
        sarl      $12, %esi                                     #89.7
        addl      %esi, %r13d                                   #89.7
        addl      %r14d, %r13d                                  #89.7
        shll      $12, %esi                                     #89.7
        addl      %r10d, %r13d                                  #89.7
        subl      %esi, %r8d                                    #89.7
        andl      $-2147479553, %r13d                           #89.7
        jge       ..B1.365      # Prob 50%                      #89.7
                                # LOE rcx rbx r9 r12 eax edx r8d r11d r13d xmm0 xmm1
..B1.366:                       # Preds ..B1.17
                                # Execution count [2.50e+01]
        subl      $1, %r13d                                     #89.7
        orl       $-4096, %r13d                                 #89.7
        incl      %r13d                                         #89.7
                                # LOE rcx rbx r9 r12 eax edx r8d r11d r13d xmm0 xmm1
..B1.365:                       # Preds ..B1.17 ..B1.366
                                # Execution count [2.50e+01]
        pxor      %xmm5, %xmm5                                  #89.7
        pxor      %xmm2, %xmm2                                  #89.7
        cvtsi2sd  %eax, %xmm5                                   #89.7
        cvtsi2sd  %edx, %xmm2                                   #89.7
        mulsd     %xmm1, %xmm5                                  #89.7
        pxor      %xmm3, %xmm3                                  #89.7
        pxor      %xmm4, %xmm4                                  #89.7
        cvtsi2sd  %r8d, %xmm3                                   #89.7
        cvtsi2sd  %r13d, %xmm4                                  #89.7
        addsd     %xmm2, %xmm5                                  #89.7
        mulsd     %xmm1, %xmm5                                  #89.7
        movl      %r8d, %r10d                                   #89.7
        movl      %edx, %edi                                    #89.7
        movl      %eax, %r14d                                   #89.7
        addsd     %xmm3, %xmm5                                  #89.7
        mulsd     %xmm1, %xmm5                                  #89.7
        addsd     %xmm4, %xmm5                                  #89.7
        mulsd     %xmm1, %xmm5                                  #89.7
        subsd     %xmm0, %xmm5                                  #89.7
        movsd     %xmm5, (%r9,%rcx,8)                           #89.7
        incq      %rcx                                          #89.7
        cmpq      $1500, %rcx                                   #89.7
        jb        ..B1.17       # Prob 82%                      #89.7
                                # LOE rcx rbx r9 r12 eax edx edi r8d r10d r11d r13d r14d xmm0 xmm1
..B1.18:                        # Preds ..B1.365
                                # Execution count [4.50e+00]
        incl      %r11d                                         #89.7
        addq      $12008, %r9                                   #89.7
        cmpl      $1500, %r11d                                  #89.7
        jb        ..B1.16       # Prob 91%                      #89.7
                                # LOE rbx r9 r12 eax edx edi r8d r10d r11d r13d r14d xmm0 xmm1
..B1.19:                        # Preds ..B1.18
                                # Execution count [1.00e+00]
        movl      $12000, %edi                                  #90.20
        movl      %eax, 12(%rsp)                                #89.7
        movl      %edx, 8(%rsp)                                 #89.7
        movl      %r8d, 4(%rsp)                                 #89.7
        movl      %r13d, (%rsp)                                 #89.7
#       malloc(size_t)
        call      malloc                                        #90.20
                                # LOE rax rbx r12
..B1.379:                       # Preds ..B1.19
                                # Execution count [1.00e+00]
        movq      %rax, %r13                                    #90.20
                                # LOE rbx r12 r13
..B1.20:                        # Preds ..B1.379
                                # Execution count [1.00e+00]
        movl      $6000, %edi                                   #91.20
#       malloc(size_t)
        call      malloc                                        #91.20
                                # LOE rax rbx r12 r13
..B1.380:                       # Preds ..B1.20
                                # Execution count [1.00e+00]
        movq      %rax, 88(%rsp)                                #91.20[spill]
                                # LOE rbx r12 r13
..B1.21:                        # Preds ..B1.380
                                # Execution count [1.00e+00]
        movl      $12000, %edi                                  #92.24
#       malloc(size_t)
        call      malloc                                        #92.24
                                # LOE rax rbx r12 r13
..B1.381:                       # Preds ..B1.21
                                # Execution count [1.00e+00]
        movq      %rax, 216(%rsp)                               #92.24[spill]
                                # LOE rbx r12 r13
..B1.22:                        # Preds ..B1.381
                                # Execution count [1.00e+00]
        movl      $12000, %edi                                  #93.22
#       malloc(size_t)
        call      malloc                                        #93.22
                                # LOE rax rbx r12 r13
..B1.382:                       # Preds ..B1.22
                                # Execution count [1.00e+00]
        movq      %rax, 232(%rsp)                               #93.22[spill]
                                # LOE rbx r12 r13
..B1.23:                        # Preds ..B1.382
                                # Execution count [1.00e+00]
        movl      $12000, %edi                                  #94.20
#       malloc(size_t)
        call      malloc                                        #94.20
                                # LOE rax rbx r12 r13
..B1.383:                       # Preds ..B1.23
                                # Execution count [1.00e+00]
        movq      %rax, %r14                                    #94.20
                                # LOE rbx r12 r13 r14
..B1.24:                        # Preds ..B1.383
                                # Execution count [8.84e-01]
        xorl      %eax, %eax                                    #97.3
        pxor      %xmm0, %xmm0                                  #96.3
        movsd     %xmm0, 64(%rsp)                               #96.3[spill]
                                # LOE rbx r12 r13 r14 eax xmm0
..B1.25:                        # Preds ..B1.35 ..B1.24
                                # Execution count [1.50e+03]
        movq      %rbx, %rdx                                    #99.5
        andq      $15, %rdx                                     #99.5
        testb     %dl, %dl                                      #99.5
        je        ..B1.28       # Prob 50%                      #99.5
                                # LOE rbx r12 r13 r14 eax dl xmm0
..B1.26:                        # Preds ..B1.25
                                # Execution count [1.50e+03]
        testb     $7, %dl                                       #99.5
        jne       ..B1.133      # Prob 10%                      #99.5
                                # LOE rbx r12 r13 r14 eax xmm0
..B1.27:                        # Preds ..B1.26
                                # Execution count [1.50e+03]
        movb      $1, %dl                                       #99.5
        maxsd     (%rbx), %xmm0                                 #101.7
                                # LOE rbx r12 r13 r14 eax dl xmm0
..B1.28:                        # Preds ..B1.27 ..B1.25
                                # Execution count [1.50e+03]
        movzbl    %dl, %ecx                                     #99.5
        negb      %dl                                           #99.5
        addb      $4, %dl                                       #99.5
        andb      $7, %dl                                       #99.5
        movzbl    %dl, %esi                                     #99.5
        negq      %rsi                                          #99.5
        lea       (%rbx,%rcx,8), %rdx                           #99.5
        unpcklpd  %xmm0, %xmm0                                  #53.3
        addq      $1500, %rsi                                   #99.5
                                # LOE rdx rcx rbx rsi r12 r13 r14 eax xmm0
..B1.29:                        # Preds ..B1.29 ..B1.28
                                # Execution count [2.25e+06]
        maxpd     (%rdx), %xmm0                                 #101.15
        maxpd     16(%rdx), %xmm0                               #101.15
        maxpd     32(%rdx), %xmm0                               #101.15
        addq      $8, %rcx                                      #99.5
        maxpd     48(%rdx), %xmm0                               #101.15
        addq      $64, %rdx                                     #99.5
        cmpq      %rsi, %rcx                                    #99.5
        jb        ..B1.29       # Prob 99%                      #99.5
                                # LOE rdx rcx rbx rsi r12 r13 r14 eax xmm0
..B1.30:                        # Preds ..B1.29
                                # Execution count [1.50e+03]
        movaps    %xmm0, %xmm1                                  #53.3
        unpckhpd  %xmm0, %xmm1                                  #53.3
        maxsd     %xmm1, %xmm0                                  #53.3
                                # LOE rbx rsi r12 r13 r14 eax xmm0
..B1.31:                        # Preds ..B1.30 ..B1.133
                                # Execution count [1.50e+03]
        cmpq      $1500, %rsi                                   #99.5
        jae       ..B1.35       # Prob 0%                       #99.5
                                # LOE rbx rsi r12 r13 r14 eax xmm0
..B1.33:                        # Preds ..B1.31 ..B1.33
                                # Execution count [2.25e+06]
        maxsd     (%rbx,%rsi,8), %xmm0                          #101.7
        incq      %rsi                                          #99.5
        cmpq      $1500, %rsi                                   #99.5
        jb        ..B1.33       # Prob 99%                      #99.5
                                # LOE rbx rsi r12 r13 r14 eax xmm0
..B1.35:                        # Preds ..B1.33 ..B1.31
                                # Execution count [1.50e+03]
        incl      %eax                                          #97.3
        addq      $12008, %rbx                                  #97.3
        cmpl      $1500, %eax                                   #97.3
        jb        ..B1.25       # Prob 99%                      #97.3
                                # LOE rbx r12 r13 r14 eax xmm0
..B1.36:                        # Preds ..B1.35
                                # Execution count [1.00e+00]
        movq      %r14, %rax                                    #105.3
        andq      $15, %rax                                     #105.3
        movsd     %xmm0, 64(%rsp)                               #[spill]
        movb      %al, 48(%rsp)                                 #105.3[spill]
        testb     %al, %al                                      #105.3
        je        ..B1.39       # Prob 50%                      #105.3
                                # LOE r12 r13 r14 al
..B1.37:                        # Preds ..B1.36
                                # Execution count [1.00e+00]
        testb     $7, 48(%rsp)                                  #105.3[spill]
        jne       ..B1.134      # Prob 10%                      #105.3
                                # LOE r12 r13 r14
..B1.38:                        # Preds ..B1.37
                                # Execution count [1.00e+00]
        movq      $0x3ff0000000000000, %rdx                     #107.5
        movb      $1, %al                                       #105.3
        movq      %rdx, (%r14)                                  #107.5
                                # LOE r12 r13 r14 al
..B1.39:                        # Preds ..B1.38 ..B1.36
                                # Execution count [1.00e+00]
        movzbl    %al, %edx                                     #105.3
        negb      %al                                           #105.3
        addb      $4, %al                                       #105.3
        andb      $7, %al                                       #105.3
        movzbl    %al, %eax                                     #105.3
        negq      %rax                                          #105.3
        movups    .L_2il0floatpacket.2(%rip), %xmm0             #107.12
        addq      $1500, %rax                                   #105.3
                                # LOE rax rdx r12 r13 r14 xmm0
..B1.40:                        # Preds ..B1.40 ..B1.39
                                # Execution count [1.50e+03]
        movups    %xmm0, (%r14,%rdx,8)                          #107.5
        movups    %xmm0, 16(%r14,%rdx,8)                        #107.5
        movups    %xmm0, 32(%r14,%rdx,8)                        #107.5
        movups    %xmm0, 48(%r14,%rdx,8)                        #107.5
        addq      $8, %rdx                                      #105.3
        cmpq      %rax, %rdx                                    #105.3
        jb        ..B1.40       # Prob 99%                      #105.3
                                # LOE rax rdx r12 r13 r14 xmm0
..B1.42:                        # Preds ..B1.40 ..B1.134
                                # Execution count [1.00e+00]
        cmpq      $1500, %rax                                   #105.3
        jae       ..B1.46       # Prob 0%                       #105.3
                                # LOE rax r12 r13 r14
..B1.43:                        # Preds ..B1.42
                                # Execution count [1.00e+00]
        movq      $0x3ff0000000000000, %rdx                     #107.12
                                # LOE rax rdx r12 r13 r14
..B1.44:                        # Preds ..B1.44 ..B1.43
                                # Execution count [1.50e+03]
        movq      %rdx, (%r14,%rax,8)                           #107.5
        incq      %rax                                          #105.3
        cmpq      $1500, %rax                                   #105.3
        jb        ..B1.44       # Prob 99%                      #105.3
                                # LOE rax rdx r12 r13 r14
..B1.46:                        # Preds ..B1.44 ..B1.42
                                # Execution count [0.00e+00]
        movq      %r13, %rdi                                    #110.3
        xorl      %esi, %esi                                    #110.3
        movl      $12000, %edx                                  #110.3
        call      _intel_fast_memset                            #110.3
                                # LOE r12 r13 r14
..B1.47:                        # Preds ..B1.46
                                # Execution count [7.81e+02]
        movq      %r13, %r9                                     #110.3
        xorl      %esi, %esi                                    #113.5
        andq      $15, %r9                                      #110.3
        xorl      %r10d, %r10d                                  #113.5
        movl      %r9d, %eax                                    #110.3
        xorl      %r11d, %r11d                                  #113.5
        andl      $7, %eax                                      #110.3
        xorl      %r8d, %r8d                                    #113.5
        movl      %eax, (%rsp)                                  #113.5[spill]
                                # LOE r8 r10 r12 r13 r14 esi r9d r11d
..B1.48:                        # Preds ..B1.68 ..B1.47
                                # Execution count [1.56e+03]
        movsd     (%r8,%r14), %xmm1                             #115.34
        movl      %r9d, %ecx                                    #110.3
        movsd     8(%r8,%r14), %xmm3                            #115.34
        testl     %r9d, %r9d                                    #110.3
        je        ..B1.52       # Prob 50%                      #110.3
                                # LOE r8 r10 r12 r13 r14 ecx esi r9d r11d xmm1 xmm3
..B1.49:                        # Preds ..B1.48
                                # Execution count [1.56e+03]
        cmpl      $0, (%rsp)                                    #110.3[spill]
        jne       ..B1.135      # Prob 10%                      #110.3
                                # LOE r8 r10 r12 r13 r14 esi r9d r11d xmm1 xmm3
..B1.50:                        # Preds ..B1.49
                                # Execution count [1.56e+03]
        movsd     (%r10,%r12), %xmm2                            #115.21
        movl      $1, %ecx                                      #110.3
        mulsd     %xmm1, %xmm2                                  #115.34
        movsd     12008(%r10,%r12), %xmm0                       #115.21
        mulsd     %xmm3, %xmm0                                  #115.34
        addsd     (%r13), %xmm2                                 #115.34
        addsd     %xmm0, %xmm2                                  #115.34
        movsd     %xmm2, (%r13)                                 #115.7
                                # LOE r8 r10 r12 r13 r14 ecx esi r9d r11d xmm1 xmm3
..B1.52:                        # Preds ..B1.48 ..B1.50
                                # Execution count [2.25e+06]
        movl      %ecx, %eax                                    #110.3
        lea       (%r12,%r10), %r15                             #115.21
        negl      %eax                                          #110.3
        addl      $4, %eax                                      #110.3
        movl      %ecx, %edx                                    #110.3
        addl      %r11d, %ecx                                   #115.27
        andl      $7, %eax                                      #110.3
        movslq    %ecx, %rcx                                    #115.27
        negl      %eax                                          #110.3
        lea       (%r12,%rcx,8), %rcx                           #115.21
        lea       1500(%rax), %ebx                              #110.3
        testq     $15, %rcx                                     #110.3
        movl      %ebx, %ecx                                    #110.3
        je        ..B1.56       # Prob 60%                      #110.3
                                # LOE rdx rcx r8 r10 r12 r13 r14 r15 eax ebx esi r9d r11d xmm1 xmm3
..B1.53:                        # Preds ..B1.52
                                # Execution count [1.56e+03]
        movaps    %xmm1, %xmm2                                  #115.34
        movaps    %xmm3, %xmm0                                  #115.34
        unpcklpd  %xmm2, %xmm2                                  #115.34
        unpcklpd  %xmm0, %xmm0                                  #115.34
                                # LOE rdx rcx r8 r10 r12 r13 r14 r15 eax ebx esi r9d r11d xmm0 xmm1 xmm2 xmm3
..B1.54:                        # Preds ..B1.54 ..B1.53
                                # Execution count [2.34e+06]
        movups    (%r15,%rdx,8), %xmm5                          #115.21
        movups    16(%r15,%rdx,8), %xmm7                        #115.21
        movups    32(%r15,%rdx,8), %xmm9                        #115.21
        movups    48(%r15,%rdx,8), %xmm11                       #115.21
        mulpd     %xmm2, %xmm5                                  #115.34
        mulpd     %xmm2, %xmm7                                  #115.34
        mulpd     %xmm2, %xmm9                                  #115.34
        mulpd     %xmm2, %xmm11                                 #115.34
        movups    12008(%r15,%rdx,8), %xmm4                     #115.21
        movups    12024(%r15,%rdx,8), %xmm6                     #115.21
        movups    12040(%r15,%rdx,8), %xmm8                     #115.21
        movups    12056(%r15,%rdx,8), %xmm10                    #115.21
        mulpd     %xmm0, %xmm4                                  #115.34
        mulpd     %xmm0, %xmm6                                  #115.34
        mulpd     %xmm0, %xmm8                                  #115.34
        mulpd     %xmm0, %xmm10                                 #115.34
        addpd     (%r13,%rdx,8), %xmm5                          #115.34
        addpd     16(%r13,%rdx,8), %xmm7                        #115.34
        addpd     32(%r13,%rdx,8), %xmm9                        #115.34
        addpd     48(%r13,%rdx,8), %xmm11                       #115.34
        addpd     %xmm4, %xmm5                                  #115.34
        addpd     %xmm6, %xmm7                                  #115.34
        addpd     %xmm8, %xmm9                                  #115.34
        addpd     %xmm10, %xmm11                                #115.34
        movups    %xmm5, (%r13,%rdx,8)                          #115.7
        movups    %xmm7, 16(%r13,%rdx,8)                        #115.7
        movups    %xmm9, 32(%r13,%rdx,8)                        #115.7
        movups    %xmm11, 48(%r13,%rdx,8)                       #115.7
        addq      $8, %rdx                                      #110.3
        cmpq      %rcx, %rdx                                    #110.3
        jb        ..B1.54       # Prob 99%                      #110.3
        jmp       ..B1.59       # Prob 100%                     #110.3
                                # LOE rdx rcx r8 r10 r12 r13 r14 r15 eax ebx esi r9d r11d xmm0 xmm1 xmm2 xmm3
..B1.56:                        # Preds ..B1.52
                                # Execution count [1.56e+03]
        movaps    %xmm1, %xmm2                                  #115.34
        movaps    %xmm3, %xmm0                                  #115.34
        unpcklpd  %xmm2, %xmm2                                  #115.34
        unpcklpd  %xmm0, %xmm0                                  #115.34
                                # LOE rdx rcx r8 r10 r12 r13 r14 r15 eax ebx esi r9d r11d xmm0 xmm1 xmm2 xmm3
..B1.57:                        # Preds ..B1.57 ..B1.56
                                # Execution count [2.34e+06]
        movups    (%r15,%rdx,8), %xmm5                          #115.21
        movups    16(%r15,%rdx,8), %xmm7                        #115.21
        movups    32(%r15,%rdx,8), %xmm9                        #115.21
        movups    48(%r15,%rdx,8), %xmm11                       #115.21
        mulpd     %xmm2, %xmm5                                  #115.34
        mulpd     %xmm2, %xmm7                                  #115.34
        mulpd     %xmm2, %xmm9                                  #115.34
        mulpd     %xmm2, %xmm11                                 #115.34
        movups    12008(%r15,%rdx,8), %xmm4                     #115.21
        movups    12024(%r15,%rdx,8), %xmm6                     #115.21
        movups    12040(%r15,%rdx,8), %xmm8                     #115.21
        movups    12056(%r15,%rdx,8), %xmm10                    #115.21
        mulpd     %xmm0, %xmm4                                  #115.34
        mulpd     %xmm0, %xmm6                                  #115.34
        mulpd     %xmm0, %xmm8                                  #115.34
        mulpd     %xmm0, %xmm10                                 #115.34
        addpd     (%r13,%rdx,8), %xmm5                          #115.34
        addpd     16(%r13,%rdx,8), %xmm7                        #115.34
        addpd     32(%r13,%rdx,8), %xmm9                        #115.34
        addpd     48(%r13,%rdx,8), %xmm11                       #115.34
        addpd     %xmm4, %xmm5                                  #115.34
        addpd     %xmm6, %xmm7                                  #115.34
        addpd     %xmm8, %xmm9                                  #115.34
        addpd     %xmm10, %xmm11                                #115.34
        movups    %xmm5, (%r13,%rdx,8)                          #115.7
        movups    %xmm7, 16(%r13,%rdx,8)                        #115.7
        movups    %xmm9, 32(%r13,%rdx,8)                        #115.7
        movups    %xmm11, 48(%r13,%rdx,8)                       #115.7
        addq      $8, %rdx                                      #110.3
        cmpq      %rcx, %rdx                                    #110.3
        jb        ..B1.57       # Prob 99%                      #110.3
                                # LOE rdx rcx r8 r10 r12 r13 r14 r15 eax ebx esi r9d r11d xmm0 xmm1 xmm2 xmm3
..B1.59:                        # Preds ..B1.57 ..B1.54
                                # Execution count [1.25e+03]
        lea       1501(%rax), %edx                              #110.3
        cmpl      $1500, %edx                                   #110.3
        ja        ..B1.68       # Prob 50%                      #110.3
                                # LOE r8 r10 r12 r13 r14 eax ebx esi r9d r11d xmm0 xmm1 xmm2 xmm3
..B1.60:                        # Preds ..B1.59
                                # Execution count [1.56e+03]
        movl      %ebx, %ecx                                    #110.3
        negl      %ecx                                          #110.3
        addl      $1500, %ecx                                   #110.3
        cmpl      $2, %ecx                                      #110.3
        jb        ..B1.362      # Prob 10%                      #110.3
                                # LOE r8 r10 r12 r13 r14 eax ecx ebx esi r9d r11d xmm0 xmm1 xmm2 xmm3
..B1.61:                        # Preds ..B1.60
                                # Execution count [1.56e+03]
        movl      %ecx, %edx                                    #110.3
        lea       1500(%r11,%rax), %r15d                        #115.27
        movslq    %r15d, %r15                                   #115.27
        andl      $-2, %edx                                     #110.3
        movq      %r12, 240(%rsp)                               #115.21[spill]
        xorl      %edi, %edi                                    #110.3
        lea       (%r12,%r15,8), %r15                           #115.21
                                # LOE r8 r10 r13 r14 r15 eax edx ecx ebx esi edi r9d r11d xmm0 xmm1 xmm2 xmm3
..B1.62:                        # Preds ..B1.62 ..B1.61
                                # Execution count [2.34e+06]
        movups    (%r15), %xmm5                                 #115.21
        movups    12008(%r15), %xmm4                            #115.21
        mulpd     %xmm2, %xmm5                                  #115.34
        mulpd     %xmm0, %xmm4                                  #115.34
        addq      $16, %r15                                     #110.3
        lea       1500(%rdi,%rax), %r12d                        #112.5
        movslq    %r12d, %r12                                   #112.5
        addl      $2, %edi                                      #110.3
        addpd     (%r13,%r12,8), %xmm5                          #115.34
        addpd     %xmm4, %xmm5                                  #115.34
        movups    %xmm5, (%r13,%r12,8)                          #115.7
        cmpl      %edx, %edi                                    #110.3
        jb        ..B1.62       # Prob 99%                      #110.3
                                # LOE r8 r10 r13 r14 r15 eax edx ecx ebx esi edi r9d r11d xmm0 xmm1 xmm2 xmm3
..B1.63:                        # Preds ..B1.62
                                # Execution count [1.56e+03]
        movq      240(%rsp), %r12                               #[spill]
                                # LOE r8 r10 r12 r13 r14 edx ecx ebx esi r9d r11d xmm1 xmm3
..B1.64:                        # Preds ..B1.63 ..B1.362 ..B1.135
                                # Execution count [1.56e+03]
        movl      %edx, %eax                                    #110.3
        cmpl      %ecx, %edx                                    #110.3
        jae       ..B1.68       # Prob 0%                       #110.3
                                # LOE rax r8 r10 r12 r13 r14 edx ecx ebx esi r9d r11d xmm1 xmm3
..B1.65:                        # Preds ..B1.64
                                # Execution count [1.56e+03]
        lea       (%rbx,%r11), %r15d                            #115.27
        movslq    %r15d, %r15                                   #115.27
        lea       (%r12,%r15,8), %r15                           #115.21
        lea       (%r15,%rax,8), %rax                           #115.21
                                # LOE rax r8 r10 r12 r13 r14 edx ecx ebx esi r9d r11d xmm1 xmm3
..B1.66:                        # Preds ..B1.66 ..B1.65
                                # Execution count [2.34e+06]
        movsd     (%rax), %xmm2                                 #115.21
        lea       (%rbx,%rdx), %r15d                            #112.5
        mulsd     %xmm1, %xmm2                                  #115.34
        incl      %edx                                          #110.3
        movslq    %r15d, %r15                                   #112.5
        movsd     12008(%rax), %xmm0                            #115.21
        addq      $8, %rax                                      #110.3
        mulsd     %xmm3, %xmm0                                  #115.34
        addsd     (%r13,%r15,8), %xmm2                          #115.34
        addsd     %xmm0, %xmm2                                  #115.34
        movsd     %xmm2, (%r13,%r15,8)                          #115.7
        cmpl      %ecx, %edx                                    #110.3
        jb        ..B1.66       # Prob 99%                      #110.3
                                # LOE rax r8 r10 r12 r13 r14 edx ecx ebx esi r9d r11d xmm1 xmm3
..B1.68:                        # Preds ..B1.66 ..B1.64 ..B1.59
                                # Execution count [7.80e+02]
        incl      %esi                                          #113.5
        addl      $3002, %r11d                                  #113.5
        addq      $24016, %r10                                  #113.5
        addq      $16, %r8                                      #113.5
        cmpl      $750, %esi                                    #113.5
        jb        ..B1.48       # Prob 99%                      #113.5
                                # LOE r8 r10 r12 r13 r14 esi r9d r11d
..B1.69:                        # Preds ..B1.68
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #118.8
                                # LOE rax r12 r13 r14
..B1.384:                       # Preds ..B1.69
                                # Execution count [1.00e+00]
        movq      %rax, %r15                                    #118.8
                                # LOE r12 r13 r14 r15
..B1.70:                        # Preds ..B1.384
                                # Execution count [0.00e+00]
        movsd     .L_2il0floatpacket.3(%rip), %xmm0             #196.15
        xorl      %edx, %edx                                    #120.10
        movsd     %xmm0, 24(%rsp)                               #196.15[spill]
        xorl      %r8d, %r8d                                    #120.10
        incq      %r8                                           #120.10
        movl      %edx, 16(%rsp)                                #120.10[spill]
        movq      %r8, %rbx                                     #120.10
        movq      %r15, 8(%rsp)                                 #120.10[spill]
        xorl      %r9d, %r9d                                    #120.10
        movq      %r14, 208(%rsp)                               #120.10[spill]
        pxor      %xmm1, %xmm1                                  #120.10
        movq      %r13, 224(%rsp)                               #120.10[spill]
        jmp       ..B1.71       # Prob 100%                     #120.10
                                # LOE rbx r8 r12 r9d xmm0 xmm1
..B1.132:                       # Preds ..B1.131
                                # Execution count [3.12e+00]
        movl      $1, %ebx                                      #
                                # LOE rbx r8 r12 r9d xmm0 xmm1
..B1.71:                        # Preds ..B1.70 ..B1.132
                                # Execution count [3.12e+00]
        imull     $1501, %r9d, %r15d                            #120.10
        movq      %rbx, %rax                                    #120.10
        movslq    %r15d, %rdx                                   #120.10
        movslq    %r9d, %r14                                    #120.10
        addq      %rdx, %r14                                    #120.10
        movsd     (%r12,%r14,8), %xmm2                          #120.10
        lea       1(%r9), %r14d                                 #120.10
        movl      %r14d, %ecx                                   #120.26
        negl      %ecx                                          #120.26
        addl      $1501, %ecx                                   #120.26
        andps     .L_2il0floatpacket.11(%rip), %xmm2            #120.10
        cmpl      $1, %ecx                                      #120.10
        jle       ..B1.78       # Prob 50%                      #120.10
                                # LOE rax rdx rbx r8 r12 r9d r14d r15d xmm0 xmm1 xmm2
..B1.72:                        # Preds ..B1.71
                                # Execution count [3.12e+00]
        movl      %r9d, %r13d                                   #120.10
        xorl      %esi, %esi                                    #120.10
        negl      %r13d                                         #120.10
        movl      $1, %ecx                                      #120.10
        addl      $1499, %r13d                                  #120.10
        xorl      %r10d, %r10d                                  #120.10
        movl      %r13d, %r11d                                  #120.10
        shrl      $1, %r11d                                     #120.10
        je        ..B1.76       # Prob 10%                      #120.10
                                # LOE rax rdx rbx r8 r12 ecx esi r9d r10d r11d r13d r14d r15d xmm0 xmm1 xmm2
..B1.73:                        # Preds ..B1.72
                                # Execution count [6.24e-03]
        imulq     $12016, %r8, %rcx                             #120.10
        addq      %r12, %rcx                                    #120.10
        .align    16,0x90
                                # LOE rax rdx rcx r8 r12 esi r9d r10d r11d r13d r14d r15d xmm0 xmm1 xmm2
..B1.74:                        # Preds ..B1.74 ..B1.73
                                # Execution count [1.25e+00]
        movslq    %esi, %rbx                                    #120.10
        lea       2(%r10), %edi                                 #120.10
        shlq      $4, %rbx                                      #120.10
        addl      $3, %r10d                                     #120.10
        incl      %esi                                          #120.10
        movsd     -12008(%rcx,%rbx), %xmm3                      #120.10
        andps     .L_2il0floatpacket.11(%rip), %xmm3            #120.10
        movaps    %xmm3, %xmm5                                  #120.10
        comisd    %xmm2, %xmm5                                  #120.10
        movsd     -12000(%rcx,%rbx), %xmm4                      #120.10
        ja        ..L31         # Prob 50%                      #120.10
        movaps    %xmm2, %xmm5                                  #120.10
..L31:                                                          #
        comisd    %xmm2, %xmm3                                  #120.10
        andps     .L_2il0floatpacket.11(%rip), %xmm4            #120.10
        movslq    %edi, %rbx                                    #120.10
        movaps    %xmm4, %xmm2                                  #120.10
        ja        ..L32         # Prob 50%                      #120.10
        movq      %rax, %rbx                                    #120.10
..L32:                                                          #
        comisd    %xmm5, %xmm4                                  #120.10
        maxsd     %xmm5, %xmm2                                  #120.10
        movslq    %r10d, %rax                                   #120.10
        movl      %edi, %r10d                                   #120.10
        cmovbe    %rbx, %rax                                    #120.10
        cmpl      %r11d, %esi                                   #120.10
        jb        ..B1.74       # Prob 99%                      #120.10
                                # LOE rax rdx rcx r8 r12 esi r9d r10d r11d r13d r14d r15d xmm0 xmm1 xmm2
..B1.75:                        # Preds ..B1.74
                                # Execution count [2.81e+00]
        movl      $1, %ebx                                      #
        lea       1(%rsi,%rsi), %ecx                            #120.10
                                # LOE rax rdx rbx r8 r12 ecx r9d r13d r14d r15d xmm0 xmm1 xmm2
..B1.76:                        # Preds ..B1.75 ..B1.72
                                # Execution count [3.12e+00]
        lea       -1(%rcx), %esi                                #120.10
        cmpl      %r13d, %esi                                   #120.10
        jae       ..B1.78       # Prob 10%                      #120.10
                                # LOE rax rdx rbx r8 r12 ecx r9d r14d r15d xmm0 xmm1 xmm2
..B1.77:                        # Preds ..B1.76
                                # Execution count [2.81e+00]
        imulq     $12016, %r8, %r11                             #120.10
        lea       1(%rcx), %esi                                 #120.10
        movslq    %ecx, %rcx                                    #120.10
        movslq    %esi, %rsi                                    #120.10
        lea       (%r12,%rcx,8), %r10                           #120.10
        movsd     -12016(%r10,%r11), %xmm3                      #120.10
        andps     .L_2il0floatpacket.11(%rip), %xmm3            #120.10
        comisd    %xmm2, %xmm3                                  #120.10
        cmova     %rsi, %rax                                    #120.10
                                # LOE rax rdx rbx r8 r12 r9d r14d r15d xmm0 xmm1
..B1.78:                        # Preds ..B1.77 ..B1.76 ..B1.71
                                # Execution count [4.77e+00]
        movl      %r14d, 96(%rsp)                               #[spill]
        movl      %r15d, 80(%rsp)                               #[spill]
        jmp       ..B1.79       # Prob 100%                     #
                                # LOE rax rdx r8 r12 r9d xmm0 xmm1
..B1.136:                       # Preds ..B1.131
                                # Execution count [2.31e-01]: Infreq
        movl      $1500, 96(%rsp)                               #120.10[spill]
        movl      $1, %eax                                      #120.10
        movl      $2249999, 80(%rsp)                            #120.10[spill]
        movl      $2249999, %edx                                #120.10
                                # LOE rax rdx r8 r12 r9d xmm0 xmm1
..B1.79:                        # Preds ..B1.136 ..B1.78
                                # Execution count [5.00e+00]: Infreq
        movslq    %r9d, %rsi                                    #120.10
        lea       (%rax,%rsi), %rbx                             #120.10
        movq      88(%rsp), %rax                                #120.10[spill]
        addq      %rbx, %rdx                                    #120.10
        lea       1(%rsi), %rcx                                 #120.10
        movl      %ebx, (%rax,%rsi,4)                           #120.10
        movsd     -8(%r12,%rdx,8), %xmm2                        #120.10
        ucomisd   %xmm1, %xmm2                                  #120.10
        jp        ..B1.80       # Prob 0%                       #120.10
        je        ..B1.361      # Prob 16%                      #120.10
                                # LOE rdx rcx rbx rsi r8 r12 r9d xmm0 xmm1 xmm2
..B1.80:                        # Preds ..B1.79
                                # Execution count [4.20e+00]: Infreq
        imulq     $12016, %rsi, %r10                            #120.10
        cmpq      %rcx, %rbx                                    #120.10
        je        ..B1.82       # Prob 50%                      #120.10
                                # LOE rdx rcx rbx rsi r8 r10 r12 r9d xmm0 xmm1 xmm2
..B1.81:                        # Preds ..B1.80
                                # Execution count [2.10e+00]: Infreq
        movq      (%r12,%r10), %rax                             #120.10
        movq      %rax, -8(%r12,%rdx,8)                         #120.10
        movsd     %xmm2, (%r12,%r10)                            #120.10
        jmp       ..B1.83       # Prob 100%                     #120.10
                                # LOE rcx rbx rsi r8 r12 r9d xmm0 xmm1 xmm2
..B1.82:                        # Preds ..B1.80
                                # Execution count [2.10e+00]: Infreq
        movsd     (%r12,%r10), %xmm2                            #120.10
                                # LOE rcx rbx rsi r8 r12 r9d xmm0 xmm1 xmm2
..B1.83:                        # Preds ..B1.81 ..B1.82
                                # Execution count [5.65e-01]: Infreq
        movl      96(%rsp), %r10d                               #120.26[spill]
        movl      $1717986919, %eax                             #120.10
        negl      %r10d                                         #120.26
        movaps    %xmm0, %xmm3                                  #120.10
        movl      %r10d, 32(%rsp)                               #120.26[spill]
        divsd     %xmm2, %xmm3                                  #120.10
        lea       1500(%r10), %r13d                             #120.26
        movl      %r13d, 152(%rsp)                              #120.26[spill]
        imull     %r13d                                         #120.10
        movl      %r13d, %r11d                                  #120.10
        sarl      $1, %edx                                      #120.10
        sarl      $31, %r11d                                    #120.10
        subl      %r11d, %edx                                   #120.10
        lea       (%rdx,%rdx,4), %r10d                          #120.10
        negl      %r10d                                         #120.10
        addl      %r13d, %r10d                                  #120.10
        movslq    %r10d, %r11                                   #120.10
        testq     %r11, %r11                                    #120.10
        jle       ..B1.92       # Prob 50%                      #120.10
                                # LOE rcx rbx rsi r8 r11 r12 r9d r10d xmm0 xmm1 xmm3
..B1.84:                        # Preds ..B1.83
                                # Execution count [4.78e-01]: Infreq
        cmpq      $4, %r11                                      #120.10
        jl        ..B1.360      # Prob 10%                      #120.10
                                # LOE rcx rbx rsi r8 r11 r12 r9d r10d xmm0 xmm1 xmm3
..B1.85:                        # Preds ..B1.84
                                # Execution count [4.78e-01]: Infreq
        imulq     $12016, %r8, %rdx                             #120.10
        movl      %r10d, %eax                                   #120.10
        movaps    %xmm3, %xmm2                                  #120.10
        andl      $-4, %eax                                     #120.10
        xorl      %r13d, %r13d                                  #120.10
        unpcklpd  %xmm2, %xmm2                                  #120.10
        addq      %r12, %rdx                                    #120.10
        movslq    %eax, %rax                                    #120.10
                                # LOE rax rdx rcx rbx rsi r8 r11 r12 r13 r9d r10d xmm0 xmm1 xmm2 xmm3
..B1.86:                        # Preds ..B1.86 ..B1.85
                                # Execution count [2.66e+00]: Infreq
        movups    -12008(%rdx,%r13,8), %xmm4                    #120.10
        movups    -11992(%rdx,%r13,8), %xmm5                    #120.10
        mulpd     %xmm2, %xmm4                                  #120.10
        mulpd     %xmm2, %xmm5                                  #120.10
        movups    %xmm4, -12008(%rdx,%r13,8)                    #120.10
        movups    %xmm5, -11992(%rdx,%r13,8)                    #120.10
        addq      $4, %r13                                      #120.10
        cmpq      %rax, %r13                                    #120.10
        jb        ..B1.86       # Prob 82%                      #120.10
                                # LOE rax rdx rcx rbx rsi r8 r11 r12 r13 r9d r10d xmm0 xmm1 xmm2 xmm3
..B1.88:                        # Preds ..B1.86 ..B1.360
                                # Execution count [5.65e-01]: Infreq
        cmpq      %r11, %rax                                    #120.10
        jae       ..B1.92       # Prob 15%                      #120.10
                                # LOE rax rcx rbx rsi r8 r11 r12 r9d r10d xmm0 xmm1 xmm3
..B1.89:                        # Preds ..B1.88
                                # Execution count [4.78e-01]: Infreq
        imulq     $12016, %r8, %rdx                             #120.10
        addq      %r12, %rdx                                    #120.10
                                # LOE rax rdx rcx rbx rsi r8 r11 r12 r9d r10d xmm0 xmm1 xmm3
..B1.90:                        # Preds ..B1.90 ..B1.89
                                # Execution count [2.66e+00]: Infreq
        movsd     -12008(%rdx,%rax,8), %xmm2                    #120.10
        mulsd     %xmm3, %xmm2                                  #120.10
        movsd     %xmm2, -12008(%rdx,%rax,8)                    #120.10
        incq      %rax                                          #120.10
        cmpq      %r11, %rax                                    #120.10
        jb        ..B1.90       # Prob 82%                      #120.10
                                # LOE rax rdx rcx rbx rsi r8 r11 r12 r9d r10d xmm0 xmm1 xmm3
..B1.92:                        # Preds ..B1.90 ..B1.83 ..B1.88
                                # Execution count [5.65e-01]: Infreq
        movq      %rcx, %rax                                    #120.26
        negq      %rax                                          #120.26
        addq      $1500, %rax                                   #120.26
        cmpq      %rax, %r11                                    #120.10
        jge       ..B1.109      # Prob 50%                      #120.10
                                # LOE rcx rbx rsi r8 r11 r12 r9d r10d xmm0 xmm1 xmm3
..B1.93:                        # Preds ..B1.92
                                # Execution count [5.08e-01]: Infreq
        incl      %r10d                                         #120.10
        movl      $1717986919, %eax                             #120.10
        negl      %r10d                                         #120.10
        addl      152(%rsp), %r10d                              #120.10[spill]
        addl      $5, %r10d                                     #120.10
        imull     %r10d                                         #120.10
        sarl      $31, %r10d                                    #120.10
        sarl      $1, %edx                                      #120.10
        subl      %r10d, %edx                                   #120.10
        lea       (%rdx,%rdx,4), %edx                           #120.10
        movslq    %edx, %r10                                    #120.10
        cmpq      $8, %r10                                      #120.10
        jl        ..B1.357      # Prob 10%                      #120.10
                                # LOE rcx rbx rsi r8 r10 r11 r12 edx r9d xmm0 xmm1 xmm3
..B1.94:                        # Preds ..B1.93
                                # Execution count [5.08e-01]: Infreq
        imulq     $12016, %r8, %r13                             #120.10
        lea       (%r12,%r11,8), %r14                           #120.10
        lea       (%r14,%r13), %rax                             #120.10
        movq      %rax, (%rsp)                                  #120.10[spill]
        lea       -12008(%r13,%r14), %r13                       #120.10
        andq      $15, %r13                                     #120.10
        movl      %r13d, %r13d                                  #120.10
        testl     %r13d, %r13d                                  #120.10
        je        ..B1.97       # Prob 50%                      #120.10
                                # LOE rcx rbx rsi r8 r10 r11 r12 r13 edx r9d xmm0 xmm1 xmm3
..B1.95:                        # Preds ..B1.94
                                # Execution count [5.08e-01]: Infreq
        testl     $7, %r13d                                     #120.10
        jne       ..B1.357      # Prob 10%                      #120.10
                                # LOE rcx rbx rsi r8 r10 r11 r12 edx r9d xmm0 xmm1 xmm3
..B1.96:                        # Preds ..B1.95
                                # Execution count [2.54e-01]: Infreq
        movl      $1, %r13d                                     #120.10
                                # LOE rcx rbx rsi r8 r10 r11 r12 r13 edx r9d xmm0 xmm1 xmm3
..B1.97:                        # Preds ..B1.96 ..B1.94
                                # Execution count [5.08e-01]: Infreq
        lea       8(%r13), %eax                                 #120.10
        cmpq      %rax, %r10                                    #120.10
        jl        ..B1.357      # Prob 10%                      #120.10
                                # LOE rcx rbx rsi r8 r10 r11 r12 r13 edx r9d xmm0 xmm1 xmm3
..B1.98:                        # Preds ..B1.97
                                # Execution count [5.65e-01]: Infreq
        movl      %edx, %eax                                    #120.10
        subl      %r13d, %eax                                   #120.10
        andl      $7, %eax                                      #120.10
        subl      %eax, %edx                                    #120.10
        xorl      %eax, %eax                                    #120.10
        testl     %r13d, %r13d                                  #120.10
        jbe       ..B1.102      # Prob 9%                       #120.10
                                # LOE rax rcx rbx rsi r8 r10 r11 r12 r13 edx r9d xmm0 xmm1 xmm3
..B1.99:                        # Preds ..B1.98
                                # Execution count [5.08e-01]: Infreq
        movq      (%rsp), %r14                                  #[spill]
                                # LOE rax rcx rbx rsi r8 r10 r11 r12 r13 r14 edx r9d xmm0 xmm1 xmm3
..B1.100:                       # Preds ..B1.99 ..B1.100
                                # Execution count [2.82e+00]: Infreq
        movsd     -12008(%r14,%rax,8), %xmm2                    #120.10
        mulsd     %xmm3, %xmm2                                  #120.10
        movsd     %xmm2, -12008(%r14,%rax,8)                    #120.10
        incq      %rax                                          #120.10
        cmpq      %r13, %rax                                    #120.10
        jb        ..B1.100      # Prob 82%                      #120.10
                                # LOE rax rcx rbx rsi r8 r10 r11 r12 r13 r14 edx r9d xmm0 xmm1 xmm3
..B1.102:                       # Preds ..B1.100 ..B1.98
                                # Execution count [5.08e-01]: Infreq
        movaps    %xmm3, %xmm2                                  #120.10
        unpcklpd  %xmm2, %xmm2                                  #120.10
        movslq    %edx, %rax                                    #120.10
        movq      (%rsp), %r14                                  #120.10[spill]
        .align    16,0x90
                                # LOE rax rcx rbx rsi r8 r10 r11 r12 r13 r14 edx r9d xmm0 xmm1 xmm2 xmm3
..B1.103:                       # Preds ..B1.103 ..B1.102
                                # Execution count [2.82e+00]: Infreq
        movups    -12008(%r14,%r13,8), %xmm4                    #120.10
        movups    -11992(%r14,%r13,8), %xmm5                    #120.10
        movups    -11976(%r14,%r13,8), %xmm6                    #120.10
        movups    -11960(%r14,%r13,8), %xmm7                    #120.10
        mulpd     %xmm2, %xmm4                                  #120.10
        mulpd     %xmm2, %xmm5                                  #120.10
        mulpd     %xmm2, %xmm6                                  #120.10
        mulpd     %xmm2, %xmm7                                  #120.10
        movups    %xmm4, -12008(%r14,%r13,8)                    #120.10
        movups    %xmm5, -11992(%r14,%r13,8)                    #120.10
        movups    %xmm6, -11976(%r14,%r13,8)                    #120.10
        movups    %xmm7, -11960(%r14,%r13,8)                    #120.10
        addq      $8, %r13                                      #120.10
        cmpq      %rax, %r13                                    #120.10
        jb        ..B1.103      # Prob 82%                      #120.10
                                # LOE rax rcx rbx rsi r8 r10 r11 r12 r13 r14 edx r9d xmm0 xmm1 xmm2 xmm3
..B1.105:                       # Preds ..B1.103 ..B1.357
                                # Execution count [5.65e-01]: Infreq
        xorl      %eax, %eax                                    #120.10
        lea       1(%rdx), %r13d                                #120.10
        movslq    %r13d, %r13                                   #120.10
        cmpq      %r10, %r13                                    #120.10
        ja        ..B1.109      # Prob 9%                       #120.10
                                # LOE rax rcx rbx rsi r8 r10 r11 r12 edx r9d xmm0 xmm1 xmm3
..B1.106:                       # Preds ..B1.105
                                # Execution count [5.08e-01]: Infreq
        imulq     $12008, %r8, %r13                             #120.10
        movslq    %edx, %rdx                                    #120.10
        addq      %r8, %r11                                     #120.10
        addq      %rdx, %r11                                    #120.10
        subq      %rdx, %r10                                    #120.10
        addq      %r12, %r13                                    #120.10
        lea       (%r13,%r11,8), %rdx                           #120.10
                                # LOE rax rdx rcx rbx rsi r8 r10 r12 r9d xmm0 xmm1 xmm3
..B1.107:                       # Preds ..B1.107 ..B1.106
                                # Execution count [2.82e+00]: Infreq
        movsd     -12008(%rdx,%rax,8), %xmm2                    #120.10
        mulsd     %xmm3, %xmm2                                  #120.10
        movsd     %xmm2, -12008(%rdx,%rax,8)                    #120.10
        incq      %rax                                          #120.10
        cmpq      %r10, %rax                                    #120.10
        jb        ..B1.107      # Prob 82%                      #120.10
                                # LOE rax rdx rcx rbx rsi r8 r10 r12 r9d xmm0 xmm1 xmm3
..B1.109:                       # Preds ..B1.107 ..B1.105 ..B1.92
                                # Execution count [4.20e+00]: Infreq
        xorl      %r14d, %r14d                                  #120.10
        lea       2(%r9), %edx                                  #120.10
        xorl      %r15d, %r15d                                  #120.10
        lea       2(%rsi), %rax                                 #120.10
        movq      %rax, %r13                                    #120.10
        xorl      %r10d, %r10d                                  #120.10
        cmpl      $1500, %edx                                   #120.10
        jg        ..B1.130      # Prob 10%                      #120.10
                                # LOE rax rcx rbx rsi r8 r10 r12 r13 r9d r14d r15d xmm0 xmm1
..B1.110:                       # Preds ..B1.109
                                # Execution count [3.78e+00]: Infreq
        movl      152(%rsp), %r11d                              #120.10[spill]
        andl      $-2147483645, %r11d                           #120.10
        jge       ..B1.367      # Prob 50%                      #120.10
                                # LOE rax rcx rbx rsi r8 r10 r12 r13 r9d r11d r14d r15d xmm0 xmm1
..B1.368:                       # Preds ..B1.110
                                # Execution count [3.78e+00]: Infreq
        subl      $1, %r11d                                     #120.10
        orl       $-4, %r11d                                    #120.10
        incl      %r11d                                         #120.10
                                # LOE rax rcx rbx rsi r8 r10 r12 r13 r9d r11d r14d r15d xmm0 xmm1
..B1.367:                       # Preds ..B1.110 ..B1.368
                                # Execution count [3.78e+00]: Infreq
        movl      %r9d, %edx                                    #120.26
        imull     $1502, %r9d, %r9d                             #120.10
        negl      %edx                                          #120.26
        movl      %r9d, 184(%rsp)                               #120.10[spill]
        lea       (%r12,%r8,8), %r9                             #120.10
        movq      %r9, 112(%rsp)                                #120.10[spill]
        addl      $1499, %edx                                   #120.26
        imulq     $12008, %r8, %r9                              #120.10
        movl      %edx, 192(%rsp)                               #120.26[spill]
        lea       1(%r11), %edx                                 #120.10
        movl      152(%rsp), %edi                               #120.10[spill]
        addq      %r12, %r9                                     #120.10
        subl      %edx, %edi                                    #120.10
        addl      $4, %edi                                      #120.10
        sarl      $1, %edi                                      #120.10
        shrl      $30, %edi                                     #120.10
        lea       (%r9,%r8,8), %r9                              #120.10
        movslq    %r11d, %r11                                   #120.10
        lea       (%r12,%rbx,8), %r8                            #120.10
        movq      %r8, 40(%rsp)                                 #120.10[spill]
        movl      32(%rsp), %r8d                                #120.10[spill]
        movq      %rax, 72(%rsp)                                #120.10[spill]
        movq      %r11, 136(%rsp)                               #120.10[spill]
        movq      %r9, 144(%rsp)                                #120.10[spill]
        lea       1504(%r8,%rdi), %r8d                          #120.10
        subl      %edx, %r8d                                    #120.10
        lea       (%r9,%r11,8), %rdi                            #120.10
        andl      $-4, %r8d                                     #120.10
        movl      %r8d, %edx                                    #120.10
        movq      %rdi, 128(%rsp)                               #120.10[spill]
        movl      %r11d, %edi                                   #120.10
        shrl      $1, %edx                                      #120.10
        shrl      $1, %edi                                      #120.10
        movq      %rdx, 120(%rsp)                               #120.10[spill]
        movl      %edx, 168(%rsp)                               #120.10[spill]
        movq      %rdi, 104(%rsp)                               #120.10[spill]
        movl      %edi, 160(%rsp)                               #120.10[spill]
        movl      %r8d, 176(%rsp)                               #120.10[spill]
        movq      %rcx, 200(%rsp)                               #120.10[spill]
        movq      40(%rsp), %rdx                                #120.10[spill]
        movl      80(%rsp), %eax                                #120.10[spill]
                                # LOE rdx rbx rsi r10 r12 r13 eax r11d r14d r15d xmm0 xmm1
..B1.111:                       # Preds ..B1.128 ..B1.367
                                # Execution count [2.10e+01]: Infreq
        lea       (%rax,%r15), %ecx                             #120.10
        movslq    %ecx, %rcx                                    #120.10
        movsd     12000(%rdx,%rcx,8), %xmm2                     #120.10
        cmpq      200(%rsp), %rbx                               #120.10[spill]
        je        ..B1.113      # Prob 50%                      #120.10
                                # LOE rdx rcx rbx rsi r10 r12 r13 eax r11d r14d r15d xmm0 xmm1 xmm2
..B1.112:                       # Preds ..B1.111
                                # Execution count [1.05e+01]: Infreq
        movl      184(%rsp), %r8d                               #120.10[spill]
        lea       (%r8,%r15), %r9d                              #120.10
        movslq    %r9d, %r9                                     #120.10
        movq      12008(%r12,%r9,8), %r8                        #120.10
        movq      %r8, 12000(%rdx,%rcx,8)                       #120.10
        movsd     %xmm2, 12008(%r12,%r9,8)                      #120.10
                                # LOE rdx rbx rsi r10 r12 r13 eax r11d r14d r15d xmm0 xmm1 xmm2
..B1.113:                       # Preds ..B1.111 ..B1.112
                                # Execution count [1.96e+01]: Infreq
        ucomisd   %xmm1, %xmm2                                  #120.10
        jp        ..B1.114      # Prob 0%                       #120.10
        je        ..B1.128      # Prob 6%                       #120.10
                                # LOE rdx rbx rsi r10 r12 r13 eax r11d r14d r15d xmm0 xmm1 xmm2
..B1.114:                       # Preds ..B1.113
                                # Execution count [9.11e+00]: Infreq
        testl     %r11d, %r11d                                  #120.10
        jle       ..B1.121      # Prob 50%                      #120.10
                                # LOE rdx rbx rsi r10 r12 r13 eax r11d r14d r15d xmm0 xmm1 xmm2
..B1.115:                       # Preds ..B1.114
                                # Execution count [9.11e+00]: Infreq
        xorl      %r9d, %r9d                                    #120.10
        movl      $1, %edi                                      #120.10
        xorl      %r8d, %r8d                                    #120.10
        cmpl      $0, 160(%rsp)                                 #120.10[spill]
        je        ..B1.119      # Prob 15%                      #120.10
                                # LOE rdx rbx rsi r8 r9 r10 r12 r13 eax edi r11d r14d r15d xmm0 xmm1 xmm2
..B1.116:                       # Preds ..B1.115
                                # Execution count [7.71e+00]: Infreq
        imulq     $12008, %r13, %rcx                            #120.10
        movq      %r12, 240(%rsp)                               #120.10[spill]
        addq      112(%rsp), %rcx                               #120.10[spill]
        movq      104(%rsp), %rdi                               #120.10[spill]
        movq      144(%rsp), %r12                               #120.10[spill]
        .align    16,0x90
                                # LOE rdx rcx rbx rsi rdi r8 r9 r10 r12 r13 eax r11d r14d r15d xmm0 xmm1 xmm2
..B1.117:                       # Preds ..B1.117 ..B1.116
                                # Execution count [2.14e+01]: Infreq
        movsd     -12008(%r8,%r12), %xmm3                       #120.10
        incq      %r9                                           #120.10
        mulsd     %xmm2, %xmm3                                  #120.10
        addsd     -12008(%r8,%rcx), %xmm3                       #120.10
        movsd     %xmm3, -12008(%r8,%rcx)                       #120.10
        movsd     -12000(%r8,%r12), %xmm4                       #120.10
        mulsd     %xmm2, %xmm4                                  #120.10
        addsd     -12000(%r8,%rcx), %xmm4                       #120.10
        movsd     %xmm4, -12000(%r8,%rcx)                       #120.10
        addq      $16, %r8                                      #120.10
        cmpq      %rdi, %r9                                     #120.10
        jb        ..B1.117      # Prob 64%                      #120.10
                                # LOE rdx rcx rbx rsi rdi r8 r9 r10 r12 r13 eax r11d r14d r15d xmm0 xmm1 xmm2
..B1.118:                       # Preds ..B1.117
                                # Execution count [7.71e+00]: Infreq
        movq      240(%rsp), %r12                               #[spill]
        lea       1(%r9,%r9), %edi                              #120.10
                                # LOE rdx rbx rsi r10 r12 r13 eax edi r11d r14d r15d xmm0 xmm1 xmm2
..B1.119:                       # Preds ..B1.118 ..B1.115
                                # Execution count [9.11e+00]: Infreq
        lea       -1(%rdi), %ecx                                #120.10
        cmpl      %r11d, %ecx                                   #120.10
        jae       ..B1.121      # Prob 15%                      #120.10
                                # LOE rdx rbx rsi r10 r12 r13 eax edi r11d r14d r15d xmm0 xmm1 xmm2
..B1.120:                       # Preds ..B1.119
                                # Execution count [7.71e+00]: Infreq
        imulq     $12008, %r13, %r8                             #120.10
        movslq    %edi, %rdi                                    #120.10
        movq      144(%rsp), %rcx                               #120.10[spill]
        addq      112(%rsp), %r8                                #120.10[spill]
        movsd     -12016(%rcx,%rdi,8), %xmm3                    #120.10
        mulsd     %xmm2, %xmm3                                  #120.10
        addsd     -12016(%r8,%rdi,8), %xmm3                     #120.10
        movsd     %xmm3, -12016(%r8,%rdi,8)                     #120.10
                                # LOE rdx rbx rsi r10 r12 r13 eax r11d r14d r15d xmm0 xmm1 xmm2
..B1.121:                       # Preds ..B1.114 ..B1.119 ..B1.120
                                # Execution count [9.11e+00]: Infreq
        cmpl      152(%rsp), %r11d                              #120.10[spill]
        jge       ..B1.128      # Prob 50%                      #120.10
                                # LOE rdx rbx rsi r10 r12 r13 eax r11d r14d r15d xmm0 xmm1 xmm2
..B1.122:                       # Preds ..B1.121
                                # Execution count [9.11e+00]: Infreq
        xorl      %r9d, %r9d                                    #120.10
        movl      $1, %edi                                      #120.10
        xorl      %r8d, %r8d                                    #120.10
        cmpl      $0, 168(%rsp)                                 #120.10[spill]
        je        ..B1.126      # Prob 9%                       #120.10
                                # LOE rdx rbx rsi r8 r9 r10 r12 r13 eax edi r11d r14d r15d xmm0 xmm1 xmm2
..B1.123:                       # Preds ..B1.122
                                # Execution count [8.20e+00]: Infreq
        imulq     $12008, %r13, %rcx                            #120.10
        addq      112(%rsp), %rcx                               #120.10[spill]
        movq      136(%rsp), %rdi                               #120.10[spill]
        movq      %r12, 240(%rsp)                               #120.10[spill]
        movq      120(%rsp), %r12                               #120.10[spill]
        lea       (%rcx,%rdi,8), %rcx                           #120.10
        movq      128(%rsp), %rdi                               #120.10[spill]
        .align    16,0x90
                                # LOE rdx rcx rbx rsi rdi r8 r9 r10 r12 r13 eax r11d r14d r15d xmm0 xmm1 xmm2
..B1.124:                       # Preds ..B1.124 ..B1.123
                                # Execution count [2.28e+01]: Infreq
        movsd     -12008(%r8,%rdi), %xmm3                       #120.10
        incq      %r9                                           #120.10
        mulsd     %xmm2, %xmm3                                  #120.10
        addsd     -12008(%r8,%rcx), %xmm3                       #120.10
        movsd     %xmm3, -12008(%r8,%rcx)                       #120.10
        movsd     -12000(%r8,%rdi), %xmm4                       #120.10
        mulsd     %xmm2, %xmm4                                  #120.10
        addsd     -12000(%r8,%rcx), %xmm4                       #120.10
        movsd     %xmm4, -12000(%r8,%rcx)                       #120.10
        addq      $16, %r8                                      #120.10
        cmpq      %r12, %r9                                     #120.10
        jb        ..B1.124      # Prob 63%                      #120.10
                                # LOE rdx rcx rbx rsi rdi r8 r9 r10 r12 r13 eax r11d r14d r15d xmm0 xmm1 xmm2
..B1.125:                       # Preds ..B1.124
                                # Execution count [8.20e+00]: Infreq
        movq      240(%rsp), %r12                               #[spill]
        lea       1(%r9,%r9), %edi                              #120.10
                                # LOE rdx rbx rsi r10 r12 r13 eax edi r11d r14d r15d xmm0 xmm1 xmm2
..B1.126:                       # Preds ..B1.125 ..B1.122
                                # Execution count [9.11e+00]: Infreq
        lea       -1(%rdi), %ecx                                #120.10
        cmpl      176(%rsp), %ecx                               #120.10[spill]
        jae       ..B1.128      # Prob 9%                       #120.10
                                # LOE rdx rbx rsi r10 r12 r13 eax edi r11d r14d r15d xmm0 xmm1 xmm2
..B1.127:                       # Preds ..B1.126
                                # Execution count [8.20e+00]: Infreq
        imulq     $12008, %r13, %rcx                            #120.10
        movslq    %edi, %rdi                                    #120.10
        addq      136(%rsp), %rdi                               #120.10[spill]
        movq      144(%rsp), %r13                               #120.10[spill]
        addq      112(%rsp), %rcx                               #120.10[spill]
        mulsd     -12016(%r13,%rdi,8), %xmm2                    #120.10
        addsd     -12016(%rcx,%rdi,8), %xmm2                    #120.10
        movsd     %xmm2, -12016(%rcx,%rdi,8)                    #120.10
                                # LOE rdx rbx rsi r10 r12 eax r11d r14d r15d xmm0 xmm1
..B1.128:                       # Preds ..B1.113 ..B1.121 ..B1.126 ..B1.127
                                # Execution count [2.10e+01]: Infreq
        incl      %r14d                                         #120.10
        addl      $1501, %r15d                                  #120.10
        lea       3(%r10,%rsi), %r13                            #120.10
        incq      %r10                                          #120.10
        cmpl      192(%rsp), %r14d                              #120.10[spill]
        jb        ..B1.111      # Prob 82%                      #120.10
                                # LOE rdx rbx rsi r10 r12 r13 eax r11d r14d r15d xmm0 xmm1
..B1.129:                       # Preds ..B1.128
                                # Execution count [3.78e+00]: Infreq
        movq      72(%rsp), %rax                                #[spill]
                                # LOE rax r12 xmm0 xmm1
..B1.130:                       # Preds ..B1.129 ..B1.361 ..B1.109
                                # Execution count [5.00e+00]: Infreq
        movl      96(%rsp), %r9d                                #120.10[spill]
        movq      %rax, %r8                                     #120.10
        cmpl      $1499, %r9d                                   #120.10
        jae       ..B1.137      # Prob 18%                      #120.10
                                # LOE r8 r12 r9d xmm0 xmm1
..B1.131:                       # Preds ..B1.130
                                # Execution count [3.35e+00]: Infreq
        cmpl      $1499, 96(%rsp)                               #120.10[spill]
        je        ..B1.136      # Prob 6%                       #120.10
        jmp       ..B1.132      # Prob 100%                     #120.10
                                # LOE r8 r12 r9d xmm0 xmm1
..B1.133:                       # Preds ..B1.26
                                # Execution count [1.50e+02]: Infreq
        xorl      %esi, %esi                                    #99.5
        jmp       ..B1.31       # Prob 100%                     #99.5
                                # LOE rbx rsi r12 r13 r14 eax xmm0
..B1.134:                       # Preds ..B1.37
                                # Execution count [1.00e-01]: Infreq
        xorl      %eax, %eax                                    #105.3
        jmp       ..B1.42       # Prob 100%                     #105.3
                                # LOE rax r12 r13 r14
..B1.135:                       # Preds ..B1.49
                                # Execution count [1.56e+02]: Infreq
        xorl      %ebx, %ebx                                    #110.3
        movl      $1500, %ecx                                   #110.3
        xorl      %edx, %edx                                    #110.3
        jmp       ..B1.64       # Prob 100%                     #110.3
                                # LOE r8 r10 r12 r13 r14 edx ecx ebx esi r9d r11d xmm1 xmm3
..B1.137:                       # Preds ..B1.130
                                # Execution count [1.00e+00]: Infreq
        movq      88(%rsp), %rax                                #120.10[spill]
        movl      $1, %ebx                                      #
        movsd     18011984(%r12), %xmm0                         #120.10
        pxor      %xmm1, %xmm1                                  #120.10
        movl      16(%rsp), %edx                                #[spill]
        movq      8(%rsp), %r15                                 #[spill]
        movq      208(%rsp), %r14                               #[spill]
        movq      224(%rsp), %r13                               #[spill]
        movl      $1500, 5996(%rax)                             #120.10
        ucomisd   %xmm1, %xmm0                                  #120.10
        jp        ..B1.138      # Prob 0%                       #120.10
        je        ..B1.340      # Prob 16%                      #120.10
                                # LOE rbx r12 r13 r14 r15 edx
..B1.138:                       # Preds ..B1.137
                                # Execution count [8.40e-01]: Infreq
        testl     %edx, %edx                                    #122.16
        jne       ..B1.340      # Prob 28%                      #122.16
                                # LOE rbx r12 r13 r14 r15
..B1.139:                       # Preds ..B1.138
                                # Execution count [7.20e-01]: Infreq
#       clock(void)
        call      clock                                         #131.8
                                # LOE rax rbx r12 r13 r14 r15
..B1.140:                       # Preds ..B1.139
                                # Execution count [7.20e-01]: Infreq
        pxor      %xmm2, %xmm2                                  #131.8
        pxor      %xmm1, %xmm1                                  #118.8
        cvtsi2sdq %rax, %xmm2                                   #131.8
        cvtsi2sdq %r15, %xmm1                                   #118.8
        movsd     .L_2il0floatpacket.4(%rip), %xmm0             #131.8
        divsd     %xmm0, %xmm2                                  #131.8
        divsd     %xmm0, %xmm1                                  #118.8
        subsd     %xmm1, %xmm2                                  #132.18
        movsd     %xmm2, 32(%rsp)                               #132.18[spill]
#       clock(void)
        call      clock                                         #134.8
                                # LOE rax rbx r12 r13 r14
..B1.386:                       # Preds ..B1.140
                                # Execution count [7.20e-01]: Infreq
        movq      %rax, %r15                                    #134.8
                                # LOE rbx r12 r13 r14 r15
..B1.141:                       # Preds ..B1.386
                                # Execution count [3.05e-01]: Infreq
        xorl      %edx, %edx                                    #137.3
        xorl      %ecx, %ecx                                    #137.3
        movq      %r15, 8(%rsp)                                 #137.3[spill]
        xorl      %eax, %eax                                    #137.3
        movq      %r14, 208(%rsp)                               #137.3[spill]
        pxor      %xmm1, %xmm1                                  #137.3
        movq      88(%rsp), %rdi                                #137.3[spill]
                                # LOE rcx rbx rdi r12 r13 eax edx xmm1
..B1.142:                       # Preds ..B1.187 ..B1.141
                                # Execution count [1.69e+00]: Infreq
        movslq    (%rdi,%rcx,4), %r8                            #137.3
        incl      %edx                                          #137.3
        decl      %eax                                          #137.3
        movsd     -8(%r13,%r8,8), %xmm0                         #137.3
        cmpl      (%rdi,%rcx,4), %edx                           #137.3
        je        ..B1.144      # Prob 50%                      #137.3
                                # LOE rcx rbx rdi r8 r12 r13 eax edx xmm0 xmm1
..B1.143:                       # Preds ..B1.142
                                # Execution count [8.47e-01]: Infreq
        movq      (%r13,%rcx,8), %rsi                           #137.3
        movq      %rsi, -8(%r13,%r8,8)                          #137.3
        movsd     %xmm0, (%r13,%rcx,8)                          #137.3
                                # LOE rcx rbx rdi r12 r13 eax edx xmm0 xmm1
..B1.144:                       # Preds ..B1.142 ..B1.143
                                # Execution count [1.58e+00]: Infreq
        ucomisd   %xmm1, %xmm0                                  #137.3
        jp        ..B1.145      # Prob 0%                       #137.3
        je        ..B1.187      # Prob 6%                       #137.3
                                # LOE rcx rbx rdi r12 r13 eax edx xmm0 xmm1
..B1.145:                       # Preds ..B1.144
                                # Execution count [7.34e-01]: Infreq
        lea       1500(%rax), %r10d                             #137.19
        movl      %r10d, %r9d                                   #137.3
        andl      $-2147483645, %r9d                            #137.3
        jge       ..B1.369      # Prob 50%                      #137.3
                                # LOE rcx rbx rdi r12 r13 eax edx r9d r10d xmm0 xmm1
..B1.370:                       # Preds ..B1.145
                                # Execution count [7.34e-01]: Infreq
        subl      $1, %r9d                                      #137.3
        orl       $-4, %r9d                                     #137.3
        incl      %r9d                                          #137.3
                                # LOE rcx rbx rdi r12 r13 eax edx r9d r10d xmm0 xmm1
..B1.369:                       # Preds ..B1.145 ..B1.370
                                # Execution count [7.34e-01]: Infreq
        testl     %r9d, %r9d                                    #137.3
        jle       ..B1.166      # Prob 50%                      #137.3
                                # LOE rcx rbx rdi r12 r13 eax edx r9d r10d xmm0 xmm1
..B1.146:                       # Preds ..B1.369
                                # Execution count [7.34e-01]: Infreq
        movl      %r9d, %r8d                                    #137.3
        xorl      %r14d, %r14d                                  #137.3
        movl      $1, %esi                                      #137.3
        xorl      %r11d, %r11d                                  #137.3
        shrl      $3, %r8d                                      #137.3
        je        ..B1.150      # Prob 15%                      #137.3
                                # LOE rcx rbx rdi r8 r11 r12 r13 r14 eax edx esi r9d r10d xmm0 xmm1
..B1.147:                       # Preds ..B1.146
                                # Execution count [2.16e-03]: Infreq
        imulq     $12008, %rbx, %r15                            #137.3
        lea       (%r12,%rbx,8), %rsi                           #137.3
        movq      %r8, (%rsp)                                   #137.3[spill]
        lea       (%r13,%rbx,8), %r8                            #137.3
        addq      %r15, %rsi                                    #137.3
        movq      (%rsp), %r15                                  #137.3[spill]
                                # LOE rcx rbx rsi rdi r8 r11 r12 r13 r14 r15 eax edx r9d r10d xmm0 xmm1
..B1.148:                       # Preds ..B1.148 ..B1.147
                                # Execution count [4.32e-01]: Infreq
        movsd     -12008(%r11,%rsi), %xmm2                      #137.3
        incq      %r14                                          #137.3
        movsd     -12000(%r11,%rsi), %xmm3                      #137.3
        movsd     -11992(%r11,%rsi), %xmm4                      #137.3
        movsd     -11984(%r11,%rsi), %xmm5                      #137.3
        movsd     -11976(%r11,%rsi), %xmm6                      #137.3
        movsd     -11968(%r11,%rsi), %xmm7                      #137.3
        movsd     -11960(%r11,%rsi), %xmm8                      #137.3
        movsd     -11952(%r11,%rsi), %xmm9                      #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        mulsd     %xmm0, %xmm3                                  #137.3
        mulsd     %xmm0, %xmm4                                  #137.3
        addsd     (%r11,%r8), %xmm2                             #137.3
        mulsd     %xmm0, %xmm5                                  #137.3
        addsd     8(%r11,%r8), %xmm3                            #137.3
        mulsd     %xmm0, %xmm6                                  #137.3
        addsd     16(%r11,%r8), %xmm4                           #137.3
        mulsd     %xmm0, %xmm7                                  #137.3
        addsd     24(%r11,%r8), %xmm5                           #137.3
        mulsd     %xmm0, %xmm8                                  #137.3
        addsd     32(%r11,%r8), %xmm6                           #137.3
        mulsd     %xmm0, %xmm9                                  #137.3
        addsd     40(%r11,%r8), %xmm7                           #137.3
        addsd     48(%r11,%r8), %xmm8                           #137.3
        addsd     56(%r11,%r8), %xmm9                           #137.3
        movsd     %xmm2, (%r11,%r8)                             #137.3
        movsd     %xmm3, 8(%r11,%r8)                            #137.3
        movsd     %xmm4, 16(%r11,%r8)                           #137.3
        movsd     %xmm5, 24(%r11,%r8)                           #137.3
        movsd     %xmm6, 32(%r11,%r8)                           #137.3
        movsd     %xmm7, 40(%r11,%r8)                           #137.3
        movsd     %xmm8, 48(%r11,%r8)                           #137.3
        movsd     %xmm9, 56(%r11,%r8)                           #137.3
        addq      $64, %r11                                     #137.3
        cmpq      %r15, %r14                                    #137.3
        jb        ..B1.148      # Prob 99%                      #137.3
                                # LOE rcx rbx rsi rdi r8 r11 r12 r13 r14 r15 eax edx r9d r10d xmm0 xmm1
..B1.149:                       # Preds ..B1.148
                                # Execution count [6.21e-01]: Infreq
        lea       1(,%r14,8), %esi                              #137.3
                                # LOE rcx rbx rdi r12 r13 eax edx esi r9d r10d xmm0 xmm1
..B1.150:                       # Preds ..B1.149 ..B1.146
                                # Execution count [7.34e-01]: Infreq
        cmpl      %r9d, %esi                                    #137.3
        ja        ..B1.166      # Prob 50%                      #137.3
                                # LOE rcx rbx rdi r12 r13 eax edx esi r9d r10d xmm0 xmm1
..B1.151:                       # Preds ..B1.150
                                # Execution count [0.00e+00]: Infreq
        lea       -1(%rsi), %r8d                                #137.3
        negl      %r8d                                          #137.3
        addl      %r9d, %r8d                                    #137.3
        decl      %r8d                                          #137.3
        jmp       *.2.29_2.switchtab.136(,%r8,8)                #137.3
                                # LOE rcx rbx rdi r12 r13 eax edx esi r9d r10d xmm0 xmm1
..1.29_0.TAG.6:
..B1.153:                       # Preds ..B1.151
                                # Execution count [0.00e+00]: Infreq
        imulq     $12008, %rbx, %r8                             #137.3
        movslq    %esi, %rsi                                    #137.3
        lea       (%r12,%rbx,8), %r11                           #137.3
        addq      %r8, %r11                                     #137.3
        lea       (%r13,%rbx,8), %r14                           #137.3
        movsd     -11968(%r11,%rsi,8), %xmm2                    #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     40(%r14,%rsi,8), %xmm2                        #137.3
        movsd     %xmm2, 40(%r14,%rsi,8)                        #137.3
                                # LOE rcx rbx rdi r12 r13 eax edx esi r9d r10d xmm0 xmm1
..1.29_0.TAG.5:
..B1.155:                       # Preds ..B1.151 ..B1.153
                                # Execution count [0.00e+00]: Infreq
        imulq     $12008, %rbx, %r8                             #137.3
        movslq    %esi, %rsi                                    #137.3
        lea       (%r12,%rbx,8), %r11                           #137.3
        addq      %r8, %r11                                     #137.3
        lea       (%r13,%rbx,8), %r14                           #137.3
        movsd     -11976(%r11,%rsi,8), %xmm2                    #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     32(%r14,%rsi,8), %xmm2                        #137.3
        movsd     %xmm2, 32(%r14,%rsi,8)                        #137.3
                                # LOE rcx rbx rdi r12 r13 eax edx esi r9d r10d xmm0 xmm1
..1.29_0.TAG.4:
..B1.157:                       # Preds ..B1.151 ..B1.155
                                # Execution count [0.00e+00]: Infreq
        imulq     $12008, %rbx, %r8                             #137.3
        movslq    %esi, %rsi                                    #137.3
        lea       (%r12,%rbx,8), %r11                           #137.3
        addq      %r8, %r11                                     #137.3
        lea       (%r13,%rbx,8), %r14                           #137.3
        movsd     -11984(%r11,%rsi,8), %xmm2                    #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     24(%r14,%rsi,8), %xmm2                        #137.3
        movsd     %xmm2, 24(%r14,%rsi,8)                        #137.3
                                # LOE rcx rbx rdi r12 r13 eax edx esi r9d r10d xmm0 xmm1
..1.29_0.TAG.3:
..B1.159:                       # Preds ..B1.151 ..B1.157
                                # Execution count [0.00e+00]: Infreq
        imulq     $12008, %rbx, %r8                             #137.3
        movslq    %esi, %rsi                                    #137.3
        lea       (%r12,%rbx,8), %r11                           #137.3
        addq      %r8, %r11                                     #137.3
        lea       (%r13,%rbx,8), %r14                           #137.3
        movsd     -11992(%r11,%rsi,8), %xmm2                    #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     16(%r14,%rsi,8), %xmm2                        #137.3
        movsd     %xmm2, 16(%r14,%rsi,8)                        #137.3
                                # LOE rcx rbx rdi r12 r13 eax edx esi r9d r10d xmm0 xmm1
..1.29_0.TAG.2:
..B1.161:                       # Preds ..B1.151 ..B1.159
                                # Execution count [0.00e+00]: Infreq
        imulq     $12008, %rbx, %r8                             #137.3
        movslq    %esi, %rsi                                    #137.3
        lea       (%r12,%rbx,8), %r11                           #137.3
        addq      %r8, %r11                                     #137.3
        lea       (%r13,%rbx,8), %r14                           #137.3
        movsd     -12000(%r11,%rsi,8), %xmm2                    #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     8(%r14,%rsi,8), %xmm2                         #137.3
        movsd     %xmm2, 8(%r14,%rsi,8)                         #137.3
                                # LOE rcx rbx rdi r12 r13 eax edx esi r9d r10d xmm0 xmm1
..1.29_0.TAG.1:
..B1.163:                       # Preds ..B1.151 ..B1.161
                                # Execution count [0.00e+00]: Infreq
        imulq     $12008, %rbx, %r8                             #137.3
        movslq    %esi, %rsi                                    #137.3
        lea       (%r12,%rbx,8), %r11                           #137.3
        addq      %r8, %r11                                     #137.3
        lea       (%r13,%rbx,8), %r14                           #137.3
        movsd     -12008(%r11,%rsi,8), %xmm2                    #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     (%r14,%rsi,8), %xmm2                          #137.3
        movsd     %xmm2, (%r14,%rsi,8)                          #137.3
                                # LOE rcx rbx rdi r12 r13 eax edx esi r9d r10d xmm0 xmm1
..1.29_0.TAG.0:
..B1.165:                       # Preds ..B1.151 ..B1.163
                                # Execution count [6.21e-01]: Infreq
        imulq     $12008, %rbx, %r8                             #137.3
        movslq    %esi, %rsi                                    #137.3
        lea       (%r12,%rbx,8), %r11                           #137.3
        addq      %r8, %r11                                     #137.3
        lea       (%r13,%rbx,8), %r14                           #137.3
        movsd     -12016(%r11,%rsi,8), %xmm2                    #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     -8(%r14,%rsi,8), %xmm2                        #137.3
        movsd     %xmm2, -8(%r14,%rsi,8)                        #137.3
                                # LOE rcx rbx rdi r12 r13 eax edx r9d r10d xmm0 xmm1
..B1.166:                       # Preds ..B1.369 ..B1.150 ..B1.165
                                # Execution count [7.34e-01]: Infreq
        cmpl      %r10d, %r9d                                   #137.3
        jge       ..B1.187      # Prob 50%                      #137.3
                                # LOE rcx rbx rdi r12 r13 eax edx r9d r10d xmm0 xmm1
..B1.167:                       # Preds ..B1.166
                                # Execution count [6.61e-01]: Infreq
        lea       1(%r9), %esi                                  #137.3
        subl      %esi, %r10d                                   #137.3
        addl      $4, %r10d                                     #137.3
        sarl      $1, %r10d                                     #137.3
        shrl      $30, %r10d                                    #137.3
        lea       1504(%rax,%r10), %r14d                        #137.3
        subl      %esi, %r14d                                   #137.3
        andl      $-4, %r14d                                    #137.3
        movslq    %r14d, %r15                                   #137.3
        cmpq      $8, %r15                                      #137.3
        jl        ..B1.354      # Prob 10%                      #137.3
                                # LOE rcx rbx rdi r12 r13 r15 eax edx r9d r14d xmm0 xmm1
..B1.168:                       # Preds ..B1.167
                                # Execution count [6.61e-01]: Infreq
        movslq    %r9d, %r11                                    #137.3
        lea       (%r13,%rbx,8), %rsi                           #137.3
        lea       (%rsi,%r11,8), %rsi                           #137.3
        movq      %rsi, 16(%rsp)                                #137.3[spill]
        andq      $15, %rsi                                     #137.3
        movl      %esi, %esi                                    #137.3
        testl     %esi, %esi                                    #137.3
        je        ..B1.171      # Prob 50%                      #137.3
                                # LOE rcx rbx rsi rdi r11 r12 r13 r15 eax edx r9d r14d xmm0 xmm1
..B1.169:                       # Preds ..B1.168
                                # Execution count [6.61e-01]: Infreq
        testl     $7, %esi                                      #137.3
        jne       ..B1.354      # Prob 10%                      #137.3
                                # LOE rcx rbx rdi r11 r12 r13 r15 eax edx r9d r14d xmm0 xmm1
..B1.170:                       # Preds ..B1.169
                                # Execution count [3.30e-01]: Infreq
        movl      $1, %esi                                      #137.3
                                # LOE rcx rbx rsi rdi r11 r12 r13 r15 eax edx r9d r14d xmm0 xmm1
..B1.171:                       # Preds ..B1.170 ..B1.168
                                # Execution count [6.61e-01]: Infreq
        lea       8(%rsi), %r8d                                 #137.3
        cmpq      %r8, %r15                                     #137.3
        jl        ..B1.354      # Prob 10%                      #137.3
                                # LOE rcx rbx rsi rdi r11 r12 r13 r15 eax edx r9d r14d xmm0 xmm1
..B1.172:                       # Preds ..B1.171
                                # Execution count [7.34e-01]: Infreq
        imulq     $12008, %rbx, %r8                             #137.3
        movl      %r14d, %r10d                                  #137.3
        subl      %esi, %r10d                                   #137.3
        andl      $7, %r10d                                     #137.3
        subl      %r10d, %r14d                                  #137.3
        lea       (%r12,%rbx,8), %r10                           #137.3
        addq      %r8, %r10                                     #137.3
        movq      $0, 40(%rsp)                                  #137.3[spill]
        lea       (%r10,%r11,8), %r8                            #137.3
        testl     %esi, %esi                                    #137.3
        jbe       ..B1.176      # Prob 10%                      #137.3
                                # LOE rcx rbx rsi rdi r8 r10 r11 r12 r13 r15 eax edx r9d r14d xmm0 xmm1
..B1.173:                       # Preds ..B1.172
                                # Execution count [6.61e-01]: Infreq
        movq      %r13, 224(%rsp)                               #[spill]
        movq      %r12, 240(%rsp)                               #[spill]
        movq      40(%rsp), %r12                                #[spill]
        movq      16(%rsp), %r13                                #[spill]
                                # LOE rcx rbx rsi rdi r8 r10 r11 r12 r13 r15 eax edx r9d r14d xmm0 xmm1
..B1.174:                       # Preds ..B1.173 ..B1.174
                                # Execution count [3.67e+00]: Infreq
        movsd     -12008(%r8,%r12,8), %xmm2                     #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     (%r13,%r12,8), %xmm2                          #137.3
        movsd     %xmm2, (%r13,%r12,8)                          #137.3
        incq      %r12                                          #137.3
        cmpq      %rsi, %r12                                    #137.3
        jb        ..B1.174      # Prob 82%                      #137.3
                                # LOE rcx rbx rsi rdi r8 r10 r11 r12 r13 r15 eax edx r9d r14d xmm0 xmm1
..B1.175:                       # Preds ..B1.174
                                # Execution count [6.61e-01]: Infreq
        movq      224(%rsp), %r13                               #[spill]
        movq      240(%rsp), %r12                               #[spill]
                                # LOE rcx rbx rsi rdi r8 r10 r11 r12 r13 r15 eax edx r9d r14d xmm0 xmm1
..B1.176:                       # Preds ..B1.172 ..B1.175
                                # Execution count [3.67e+00]: Infreq
        addq      %rsi, %r11                                    #137.3
        lea       -12008(%r10,%r11,8), %r10                     #137.3
        testq     $15, %r10                                     #137.3
        movslq    %r14d, %r10                                   #137.3
        je        ..B1.180      # Prob 60%                      #137.3
                                # LOE rcx rbx rsi rdi r8 r10 r12 r13 r15 eax edx r9d r14d xmm0 xmm1
..B1.177:                       # Preds ..B1.176
                                # Execution count [6.61e-01]: Infreq
        movaps    %xmm0, %xmm2                                  #137.3
        unpcklpd  %xmm2, %xmm2                                  #137.3
        movq      16(%rsp), %r11                                #137.3[spill]
        .align    16,0x90
                                # LOE rcx rbx rsi rdi r8 r10 r11 r12 r13 r15 eax edx r9d r14d xmm0 xmm1 xmm2
..B1.178:                       # Preds ..B1.178 ..B1.177
                                # Execution count [3.67e+00]: Infreq
        movups    -12008(%r8,%rsi,8), %xmm3                     #137.3
        movups    -11992(%r8,%rsi,8), %xmm4                     #137.3
        movups    -11976(%r8,%rsi,8), %xmm5                     #137.3
        movups    -11960(%r8,%rsi,8), %xmm6                     #137.3
        mulpd     %xmm2, %xmm3                                  #137.3
        mulpd     %xmm2, %xmm4                                  #137.3
        mulpd     %xmm2, %xmm5                                  #137.3
        mulpd     %xmm2, %xmm6                                  #137.3
        addpd     (%r11,%rsi,8), %xmm3                          #137.3
        addpd     16(%r11,%rsi,8), %xmm4                        #137.3
        addpd     32(%r11,%rsi,8), %xmm5                        #137.3
        addpd     48(%r11,%rsi,8), %xmm6                        #137.3
        movups    %xmm3, (%r11,%rsi,8)                          #137.3
        movups    %xmm4, 16(%r11,%rsi,8)                        #137.3
        movups    %xmm5, 32(%r11,%rsi,8)                        #137.3
        movups    %xmm6, 48(%r11,%rsi,8)                        #137.3
        addq      $8, %rsi                                      #137.3
        cmpq      %r10, %rsi                                    #137.3
        jb        ..B1.178      # Prob 82%                      #137.3
        jmp       ..B1.183      # Prob 100%                     #137.3
                                # LOE rcx rbx rsi rdi r8 r10 r11 r12 r13 r15 eax edx r9d r14d xmm0 xmm1 xmm2
..B1.180:                       # Preds ..B1.176
                                # Execution count [6.61e-01]: Infreq
        movaps    %xmm0, %xmm2                                  #137.3
        unpcklpd  %xmm2, %xmm2                                  #137.3
        movq      16(%rsp), %r11                                #137.3[spill]
        .align    16,0x90
                                # LOE rcx rbx rsi rdi r8 r10 r11 r12 r13 r15 eax edx r9d r14d xmm0 xmm1 xmm2
..B1.181:                       # Preds ..B1.181 ..B1.180
                                # Execution count [3.67e+00]: Infreq
        movups    -12008(%r8,%rsi,8), %xmm3                     #137.3
        movups    -11992(%r8,%rsi,8), %xmm4                     #137.3
        movups    -11976(%r8,%rsi,8), %xmm5                     #137.3
        movups    -11960(%r8,%rsi,8), %xmm6                     #137.3
        mulpd     %xmm2, %xmm3                                  #137.3
        mulpd     %xmm2, %xmm4                                  #137.3
        mulpd     %xmm2, %xmm5                                  #137.3
        mulpd     %xmm2, %xmm6                                  #137.3
        addpd     (%r11,%rsi,8), %xmm3                          #137.3
        addpd     16(%r11,%rsi,8), %xmm4                        #137.3
        addpd     32(%r11,%rsi,8), %xmm5                        #137.3
        addpd     48(%r11,%rsi,8), %xmm6                        #137.3
        movups    %xmm3, (%r11,%rsi,8)                          #137.3
        movups    %xmm4, 16(%r11,%rsi,8)                        #137.3
        movups    %xmm5, 32(%r11,%rsi,8)                        #137.3
        movups    %xmm6, 48(%r11,%rsi,8)                        #137.3
        addq      $8, %rsi                                      #137.3
        cmpq      %r10, %rsi                                    #137.3
        jb        ..B1.181      # Prob 82%                      #137.3
                                # LOE rcx rbx rsi rdi r8 r10 r11 r12 r13 r15 eax edx r9d r14d xmm0 xmm1 xmm2
..B1.183:                       # Preds ..B1.181 ..B1.178 ..B1.354
                                # Execution count [7.34e-01]: Infreq
        xorl      %r8d, %r8d                                    #137.3
        lea       1(%r14), %esi                                 #137.3
        movslq    %esi, %rsi                                    #137.3
        cmpq      %r15, %rsi                                    #137.3
        ja        ..B1.187      # Prob 10%                      #137.3
                                # LOE rcx rbx rdi r8 r12 r13 r15 eax edx r9d r14d xmm0 xmm1
..B1.184:                       # Preds ..B1.183
                                # Execution count [6.61e-01]: Infreq
        imulq     $12008, %rbx, %rsi                            #137.3
        movslq    %r9d, %r9                                     #137.3
        lea       (%r12,%rbx,8), %r10                           #137.3
        addq      %rsi, %r10                                    #137.3
        lea       (%r13,%rbx,8), %rbx                           #137.3
        movslq    %r14d, %r14                                   #137.3
        subq      %r14, %r15                                    #137.3
        lea       (%rbx,%r9,8), %rbx                            #137.3
        lea       (%r10,%r9,8), %r11                            #137.3
        lea       (%r11,%r14,8), %rsi                           #137.3
        lea       (%rbx,%r14,8), %rbx                           #137.3
                                # LOE rcx rbx rsi rdi r8 r12 r13 r15 eax edx xmm0 xmm1
..B1.185:                       # Preds ..B1.185 ..B1.184
                                # Execution count [3.67e+00]: Infreq
        movsd     -12008(%rsi,%r8,8), %xmm2                     #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     (%rbx,%r8,8), %xmm2                           #137.3
        movsd     %xmm2, (%rbx,%r8,8)                           #137.3
        incq      %r8                                           #137.3
        cmpq      %r15, %r8                                     #137.3
        jb        ..B1.185      # Prob 82%                      #137.3
                                # LOE rcx rbx rsi rdi r8 r12 r13 r15 eax edx xmm0 xmm1
..B1.187:                       # Preds ..B1.185 ..B1.183 ..B1.144 ..B1.166
                                # Execution count [1.69e+00]: Infreq
        lea       2(%rcx), %rbx                                 #137.3
        incq      %rcx                                          #137.3
        cmpl      $1499, %edx                                   #137.3
        jb        ..B1.142      # Prob 82%                      #137.3
                                # LOE rcx rbx rdi r12 r13 eax edx xmm1
..B1.188:                       # Preds ..B1.187
                                # Execution count [3.24e-01]: Infreq
        xorl      %ecx, %ecx                                    #137.3
        xorl      %eax, %eax                                    #137.3
        movq      8(%rsp), %r15                                 #[spill]
        movl      $1500, %edx                                   #137.3
        movq      208(%rsp), %r14                               #[spill]
        xorl      %ebx, %ebx                                    #137.3
        xorl      %esi, %esi                                    #137.3
        pxor      %xmm1, %xmm1                                  #137.3
                                # LOE rax rdx rsi r12 r13 ecx ebx xmm1
..B1.189:                       # Preds ..B1.233 ..B1.188
                                # Execution count [1.80e+00]: Infreq
        movsd     11992(%r13,%rsi,8), %xmm0                     #137.3
        lea       1499(%rbx), %r9d                              #137.3
        divsd     18011984(%rax,%r12), %xmm0                    #137.3
        movsd     %xmm0, 11992(%r13,%rsi,8)                     #137.3
        xorps     .L_2il0floatpacket.12(%rip), %xmm0            #137.3
        testl     %r9d, %r9d                                    #137.3
        jle       ..B1.233      # Prob 6%                       #137.3
                                # LOE rax rdx rsi r12 r13 ecx ebx r9d xmm0 xmm1
..B1.190:                       # Preds ..B1.189
                                # Execution count [1.68e+00]: Infreq
        ucomisd   %xmm1, %xmm0                                  #137.3
        jp        ..B1.191      # Prob 0%                       #137.3
        je        ..B1.233      # Prob 6%                       #137.3
                                # LOE rax rdx rsi r12 r13 ecx ebx r9d xmm0 xmm1
..B1.191:                       # Preds ..B1.190
                                # Execution count [7.80e-01]: Infreq
        movl      %r9d, %r11d                                   #137.3
        andl      $-2147483645, %r11d                           #137.3
        jge       ..B1.371      # Prob 50%                      #137.3
                                # LOE rax rdx rsi r12 r13 ecx ebx r9d r11d xmm0 xmm1
..B1.372:                       # Preds ..B1.191
                                # Execution count [7.80e-01]: Infreq
        subl      $1, %r11d                                     #137.3
        orl       $-4, %r11d                                    #137.3
        incl      %r11d                                         #137.3
                                # LOE rax rdx rsi r12 r13 ecx ebx r9d r11d xmm0 xmm1
..B1.371:                       # Preds ..B1.191 ..B1.372
                                # Execution count [7.80e-01]: Infreq
        testl     %r11d, %r11d                                  #137.3
        jle       ..B1.212      # Prob 50%                      #137.3
                                # LOE rax rdx rsi r12 r13 ecx ebx r9d r11d xmm0 xmm1
..B1.192:                       # Preds ..B1.371
                                # Execution count [7.80e-01]: Infreq
        movl      %r11d, %r15d                                  #137.3
        xorl      %r14d, %r14d                                  #137.3
        movl      $1, %r8d                                      #137.3
        xorl      %r10d, %r10d                                  #137.3
        shrl      $3, %r15d                                     #137.3
        je        ..B1.196      # Prob 15%                      #137.3
                                # LOE rax rdx rsi r10 r12 r13 r14 r15 ecx ebx r8d r9d r11d xmm0 xmm1
..B1.193:                       # Preds ..B1.192
                                # Execution count [2.29e-03]: Infreq
        imulq     $12008, %rdx, %r8                             #137.3
        addq      %r12, %r8                                     #137.3
                                # LOE rax rdx rsi r8 r10 r12 r13 r14 r15 ecx ebx r9d r11d xmm0 xmm1
..B1.194:                       # Preds ..B1.194 ..B1.193
                                # Execution count [4.59e-01]: Infreq
        movsd     -12008(%r10,%r8), %xmm2                       #137.3
        incq      %r14                                          #137.3
        movsd     -12000(%r10,%r8), %xmm3                       #137.3
        movsd     -11992(%r10,%r8), %xmm4                       #137.3
        movsd     -11984(%r10,%r8), %xmm5                       #137.3
        movsd     -11976(%r10,%r8), %xmm6                       #137.3
        movsd     -11968(%r10,%r8), %xmm7                       #137.3
        movsd     -11960(%r10,%r8), %xmm8                       #137.3
        movsd     -11952(%r10,%r8), %xmm9                       #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        mulsd     %xmm0, %xmm3                                  #137.3
        mulsd     %xmm0, %xmm4                                  #137.3
        addsd     (%r10,%r13), %xmm2                            #137.3
        mulsd     %xmm0, %xmm5                                  #137.3
        addsd     8(%r10,%r13), %xmm3                           #137.3
        mulsd     %xmm0, %xmm6                                  #137.3
        addsd     16(%r10,%r13), %xmm4                          #137.3
        mulsd     %xmm0, %xmm7                                  #137.3
        addsd     24(%r10,%r13), %xmm5                          #137.3
        mulsd     %xmm0, %xmm8                                  #137.3
        addsd     32(%r10,%r13), %xmm6                          #137.3
        mulsd     %xmm0, %xmm9                                  #137.3
        addsd     40(%r10,%r13), %xmm7                          #137.3
        addsd     48(%r10,%r13), %xmm8                          #137.3
        addsd     56(%r10,%r13), %xmm9                          #137.3
        movsd     %xmm2, (%r10,%r13)                            #137.3
        movsd     %xmm3, 8(%r10,%r13)                           #137.3
        movsd     %xmm4, 16(%r10,%r13)                          #137.3
        movsd     %xmm5, 24(%r10,%r13)                          #137.3
        movsd     %xmm6, 32(%r10,%r13)                          #137.3
        movsd     %xmm7, 40(%r10,%r13)                          #137.3
        movsd     %xmm8, 48(%r10,%r13)                          #137.3
        movsd     %xmm9, 56(%r10,%r13)                          #137.3
        addq      $64, %r10                                     #137.3
        cmpq      %r15, %r14                                    #137.3
        jb        ..B1.194      # Prob 99%                      #137.3
                                # LOE rax rdx rsi r8 r10 r12 r13 r14 r15 ecx ebx r9d r11d xmm0 xmm1
..B1.195:                       # Preds ..B1.194
                                # Execution count [6.61e-01]: Infreq
        lea       1(,%r14,8), %r8d                              #137.3
                                # LOE rax rdx rsi r12 r13 ecx ebx r8d r9d r11d xmm0 xmm1
..B1.196:                       # Preds ..B1.195 ..B1.192
                                # Execution count [7.80e-01]: Infreq
        cmpl      %r11d, %r8d                                   #137.3
        ja        ..B1.212      # Prob 50%                      #137.3
                                # LOE rax rdx rsi r12 r13 ecx ebx r8d r9d r11d xmm0 xmm1
..B1.197:                       # Preds ..B1.196
                                # Execution count [0.00e+00]: Infreq
        lea       -1(%r8), %r10d                                #137.3
        negl      %r10d                                         #137.3
        addl      %r11d, %r10d                                  #137.3
        decl      %r10d                                         #137.3
        jmp       *.2.29_2.switchtab.137(,%r10,8)               #137.3
                                # LOE rax rdx rsi r12 r13 ecx ebx r8d r9d r11d xmm0 xmm1
..1.29_1.TAG.6:
..B1.199:                       # Preds ..B1.197
                                # Execution count [0.00e+00]: Infreq
        imulq     $12008, %rdx, %r10                            #137.3
        movslq    %r8d, %r8                                     #137.3
        addq      %r12, %r10                                    #137.3
        movsd     -11968(%r10,%r8,8), %xmm2                     #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        lea       40(%r13,%r8,8), %rdi                          #137.3
        addsd     (%rdi), %xmm2                                 #137.3
        movsd     %xmm2, (%rdi)                                 #137.3
                                # LOE rax rdx rsi r12 r13 ecx ebx r8d r9d r11d xmm0 xmm1
..1.29_1.TAG.5:
..B1.201:                       # Preds ..B1.197 ..B1.199
                                # Execution count [0.00e+00]: Infreq
        imulq     $12008, %rdx, %r10                            #137.3
        movslq    %r8d, %r8                                     #137.3
        addq      %r12, %r10                                    #137.3
        movsd     -11976(%r10,%r8,8), %xmm2                     #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        lea       32(%r13,%r8,8), %rdi                          #137.3
        addsd     (%rdi), %xmm2                                 #137.3
        movsd     %xmm2, (%rdi)                                 #137.3
                                # LOE rax rdx rsi r12 r13 ecx ebx r8d r9d r11d xmm0 xmm1
..1.29_1.TAG.4:
..B1.203:                       # Preds ..B1.197 ..B1.201
                                # Execution count [0.00e+00]: Infreq
        imulq     $12008, %rdx, %r10                            #137.3
        movslq    %r8d, %r8                                     #137.3
        addq      %r12, %r10                                    #137.3
        movsd     -11984(%r10,%r8,8), %xmm2                     #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        lea       24(%r13,%r8,8), %rdi                          #137.3
        addsd     (%rdi), %xmm2                                 #137.3
        movsd     %xmm2, (%rdi)                                 #137.3
                                # LOE rax rdx rsi r12 r13 ecx ebx r8d r9d r11d xmm0 xmm1
..1.29_1.TAG.3:
..B1.205:                       # Preds ..B1.197 ..B1.203
                                # Execution count [0.00e+00]: Infreq
        imulq     $12008, %rdx, %r10                            #137.3
        movslq    %r8d, %r8                                     #137.3
        addq      %r12, %r10                                    #137.3
        movsd     -11992(%r10,%r8,8), %xmm2                     #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        lea       16(%r13,%r8,8), %rdi                          #137.3
        addsd     (%rdi), %xmm2                                 #137.3
        movsd     %xmm2, (%rdi)                                 #137.3
                                # LOE rax rdx rsi r12 r13 ecx ebx r8d r9d r11d xmm0 xmm1
..1.29_1.TAG.2:
..B1.207:                       # Preds ..B1.197 ..B1.205
                                # Execution count [0.00e+00]: Infreq
        imulq     $12008, %rdx, %r10                            #137.3
        movslq    %r8d, %r8                                     #137.3
        addq      %r12, %r10                                    #137.3
        movsd     -12000(%r10,%r8,8), %xmm2                     #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        lea       8(%r13,%r8,8), %rdi                           #137.3
        addsd     (%rdi), %xmm2                                 #137.3
        movsd     %xmm2, (%rdi)                                 #137.3
                                # LOE rax rdx rsi r12 r13 ecx ebx r8d r9d r11d xmm0 xmm1
..1.29_1.TAG.1:
..B1.209:                       # Preds ..B1.197 ..B1.207
                                # Execution count [0.00e+00]: Infreq
        imulq     $12008, %rdx, %r10                            #137.3
        movslq    %r8d, %r8                                     #137.3
        addq      %r12, %r10                                    #137.3
        movsd     -12008(%r10,%r8,8), %xmm2                     #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        lea       (%r13,%r8,8), %rdi                            #137.3
        addsd     (%rdi), %xmm2                                 #137.3
        movsd     %xmm2, (%rdi)                                 #137.3
                                # LOE rax rdx rsi r12 r13 ecx ebx r8d r9d r11d xmm0 xmm1
..1.29_1.TAG.0:
..B1.211:                       # Preds ..B1.197 ..B1.209
                                # Execution count [6.61e-01]: Infreq
        imulq     $12008, %rdx, %r10                            #137.3
        movslq    %r8d, %r8                                     #137.3
        addq      %r12, %r10                                    #137.3
        movsd     -12016(%r10,%r8,8), %xmm2                     #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     -8(%r13,%r8,8), %xmm2                         #137.3
        movsd     %xmm2, -8(%r13,%r8,8)                         #137.3
                                # LOE rax rdx rsi r12 r13 ecx ebx r9d r11d xmm0 xmm1
..B1.212:                       # Preds ..B1.371 ..B1.196 ..B1.211
                                # Execution count [7.80e-01]: Infreq
        cmpl      %r9d, %r11d                                   #137.3
        jge       ..B1.233      # Prob 50%                      #137.3
                                # LOE rax rdx rsi r12 r13 ecx ebx r9d r11d xmm0 xmm1
..B1.213:                       # Preds ..B1.212
                                # Execution count [7.02e-01]: Infreq
        lea       1(%r11), %r8d                                 #137.3
        subl      %r8d, %r9d                                    #137.3
        lea       4(%r9), %r10d                                 #137.3
        sarl      $1, %r10d                                     #137.3
        shrl      $30, %r10d                                    #137.3
        lea       4(%r9,%r10), %r15d                            #137.3
        andl      $-4, %r15d                                    #137.3
        movslq    %r15d, %rdi                                   #137.3
        cmpq      $8, %rdi                                      #137.3
        jl        ..B1.351      # Prob 10%                      #137.3
                                # LOE rax rdx rsi rdi r12 r13 ecx ebx r11d r15d xmm0 xmm1
..B1.214:                       # Preds ..B1.213
                                # Execution count [7.02e-01]: Infreq
        movslq    %r11d, %r14                                   #137.3
        lea       (%r13,%r14,8), %r8                            #137.3
        movq      %r8, (%rsp)                                   #137.3[spill]
        andq      $15, %r8                                      #137.3
        movl      %r8d, %r8d                                    #137.3
        testl     %r8d, %r8d                                    #137.3
        je        ..B1.217      # Prob 50%                      #137.3
                                # LOE rax rdx rsi rdi r8 r12 r13 r14 ecx ebx r11d r15d xmm0 xmm1
..B1.215:                       # Preds ..B1.214
                                # Execution count [7.02e-01]: Infreq
        testl     $7, %r8d                                      #137.3
        jne       ..B1.351      # Prob 10%                      #137.3
                                # LOE rax rdx rsi rdi r12 r13 r14 ecx ebx r11d r15d xmm0 xmm1
..B1.216:                       # Preds ..B1.215
                                # Execution count [3.51e-01]: Infreq
        movl      $1, %r8d                                      #137.3
                                # LOE rax rdx rsi rdi r8 r12 r13 r14 ecx ebx r11d r15d xmm0 xmm1
..B1.217:                       # Preds ..B1.216 ..B1.214
                                # Execution count [7.02e-01]: Infreq
        lea       8(%r8), %r9d                                  #137.3
        cmpq      %r9, %rdi                                     #137.3
        jl        ..B1.351      # Prob 10%                      #137.3
                                # LOE rax rdx rsi rdi r8 r12 r13 r14 ecx ebx r11d r15d xmm0 xmm1
..B1.218:                       # Preds ..B1.217
                                # Execution count [7.80e-01]: Infreq
        imulq     $12008, %rdx, %r10                            #137.3
        movl      %r15d, %r9d                                   #137.3
        addq      %r12, %r10                                    #137.3
        subl      %r8d, %r9d                                    #137.3
        andl      $7, %r9d                                      #137.3
        subl      %r9d, %r15d                                   #137.3
        movq      $0, 16(%rsp)                                  #137.3[spill]
        lea       (%r10,%r14,8), %r9                            #137.3
        testl     %r8d, %r8d                                    #137.3
        jbe       ..B1.222      # Prob 9%                       #137.3
                                # LOE rax rdx rsi rdi r8 r9 r10 r12 r13 r14 ecx ebx r11d r15d xmm0 xmm1
..B1.219:                       # Preds ..B1.218
                                # Execution count [7.02e-01]: Infreq
        movq      %r13, 224(%rsp)                               #[spill]
        movq      %r12, 240(%rsp)                               #[spill]
        movq      16(%rsp), %r12                                #[spill]
        movq      (%rsp), %r13                                  #[spill]
                                # LOE rax rdx rsi rdi r8 r9 r10 r12 r13 r14 ecx ebx r11d r15d xmm0 xmm1
..B1.220:                       # Preds ..B1.219 ..B1.220
                                # Execution count [3.90e+00]: Infreq
        movsd     -12008(%r9,%r12,8), %xmm2                     #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     (%r13,%r12,8), %xmm2                          #137.3
        movsd     %xmm2, (%r13,%r12,8)                          #137.3
        incq      %r12                                          #137.3
        cmpq      %r8, %r12                                     #137.3
        jb        ..B1.220      # Prob 82%                      #137.3
                                # LOE rax rdx rsi rdi r8 r9 r10 r12 r13 r14 ecx ebx r11d r15d xmm0 xmm1
..B1.221:                       # Preds ..B1.220
                                # Execution count [7.02e-01]: Infreq
        movq      224(%rsp), %r13                               #[spill]
        movq      240(%rsp), %r12                               #[spill]
                                # LOE rax rdx rsi rdi r8 r9 r10 r12 r13 r14 ecx ebx r11d r15d xmm0 xmm1
..B1.222:                       # Preds ..B1.218 ..B1.221
                                # Execution count [3.90e+00]: Infreq
        addq      %r8, %r14                                     #137.3
        lea       -12008(%r10,%r14,8), %r10                     #137.3
        testq     $15, %r10                                     #137.3
        movslq    %r15d, %r10                                   #137.3
        je        ..B1.226      # Prob 60%                      #137.3
                                # LOE rax rdx rsi rdi r8 r9 r10 r12 r13 ecx ebx r11d r15d xmm0 xmm1
..B1.223:                       # Preds ..B1.222
                                # Execution count [7.02e-01]: Infreq
        movaps    %xmm0, %xmm2                                  #137.3
        unpcklpd  %xmm2, %xmm2                                  #137.3
        movq      (%rsp), %r14                                  #137.3[spill]
        .align    16,0x90
                                # LOE rax rdx rsi rdi r8 r9 r10 r12 r13 r14 ecx ebx r11d r15d xmm0 xmm1 xmm2
..B1.224:                       # Preds ..B1.224 ..B1.223
                                # Execution count [3.90e+00]: Infreq
        movups    -12008(%r9,%r8,8), %xmm3                      #137.3
        movups    -11992(%r9,%r8,8), %xmm4                      #137.3
        movups    -11976(%r9,%r8,8), %xmm5                      #137.3
        movups    -11960(%r9,%r8,8), %xmm6                      #137.3
        mulpd     %xmm2, %xmm3                                  #137.3
        mulpd     %xmm2, %xmm4                                  #137.3
        mulpd     %xmm2, %xmm5                                  #137.3
        mulpd     %xmm2, %xmm6                                  #137.3
        addpd     (%r14,%r8,8), %xmm3                           #137.3
        addpd     16(%r14,%r8,8), %xmm4                         #137.3
        addpd     32(%r14,%r8,8), %xmm5                         #137.3
        addpd     48(%r14,%r8,8), %xmm6                         #137.3
        movups    %xmm3, (%r14,%r8,8)                           #137.3
        movups    %xmm4, 16(%r14,%r8,8)                         #137.3
        movups    %xmm5, 32(%r14,%r8,8)                         #137.3
        movups    %xmm6, 48(%r14,%r8,8)                         #137.3
        addq      $8, %r8                                       #137.3
        cmpq      %r10, %r8                                     #137.3
        jb        ..B1.224      # Prob 82%                      #137.3
        jmp       ..B1.229      # Prob 100%                     #137.3
                                # LOE rax rdx rsi rdi r8 r9 r10 r12 r13 r14 ecx ebx r11d r15d xmm0 xmm1 xmm2
..B1.226:                       # Preds ..B1.222
                                # Execution count [7.02e-01]: Infreq
        movaps    %xmm0, %xmm2                                  #137.3
        unpcklpd  %xmm2, %xmm2                                  #137.3
        movq      (%rsp), %r14                                  #137.3[spill]
        .align    16,0x90
                                # LOE rax rdx rsi rdi r8 r9 r10 r12 r13 r14 ecx ebx r11d r15d xmm0 xmm1 xmm2
..B1.227:                       # Preds ..B1.227 ..B1.226
                                # Execution count [3.90e+00]: Infreq
        movups    -12008(%r9,%r8,8), %xmm3                      #137.3
        movups    -11992(%r9,%r8,8), %xmm4                      #137.3
        movups    -11976(%r9,%r8,8), %xmm5                      #137.3
        movups    -11960(%r9,%r8,8), %xmm6                      #137.3
        mulpd     %xmm2, %xmm3                                  #137.3
        mulpd     %xmm2, %xmm4                                  #137.3
        mulpd     %xmm2, %xmm5                                  #137.3
        mulpd     %xmm2, %xmm6                                  #137.3
        addpd     (%r14,%r8,8), %xmm3                           #137.3
        addpd     16(%r14,%r8,8), %xmm4                         #137.3
        addpd     32(%r14,%r8,8), %xmm5                         #137.3
        addpd     48(%r14,%r8,8), %xmm6                         #137.3
        movups    %xmm3, (%r14,%r8,8)                           #137.3
        movups    %xmm4, 16(%r14,%r8,8)                         #137.3
        movups    %xmm5, 32(%r14,%r8,8)                         #137.3
        movups    %xmm6, 48(%r14,%r8,8)                         #137.3
        addq      $8, %r8                                       #137.3
        cmpq      %r10, %r8                                     #137.3
        jb        ..B1.227      # Prob 82%                      #137.3
                                # LOE rax rdx rsi rdi r8 r9 r10 r12 r13 r14 ecx ebx r11d r15d xmm0 xmm1 xmm2
..B1.229:                       # Preds ..B1.227 ..B1.224 ..B1.351
                                # Execution count [7.80e-01]: Infreq
        xorl      %r8d, %r8d                                    #137.3
        lea       1(%r15), %r9d                                 #137.3
        movslq    %r9d, %r9                                     #137.3
        cmpq      %rdi, %r9                                     #137.3
        ja        ..B1.233      # Prob 9%                       #137.3
                                # LOE rax rdx rsi rdi r8 r12 r13 ecx ebx r11d r15d xmm0 xmm1
..B1.230:                       # Preds ..B1.229
                                # Execution count [7.02e-01]: Infreq
        imulq     $12008, %rdx, %r9                             #137.3
        movslq    %r11d, %r11                                   #137.3
        addq      %r12, %r9                                     #137.3
        movslq    %r15d, %r15                                   #137.3
        subq      %r15, %rdi                                    #137.3
        lea       (%r9,%r11,8), %rdx                            #137.3
        lea       (%r13,%r11,8), %r10                           #137.3
        lea       (%rdx,%r15,8), %r9                            #137.3
        lea       (%r10,%r15,8), %rdx                           #137.3
                                # LOE rax rdx rsi rdi r8 r9 r12 r13 ecx ebx xmm0 xmm1
..B1.231:                       # Preds ..B1.231 ..B1.230
                                # Execution count [3.90e+00]: Infreq
        movsd     -12008(%r9,%r8,8), %xmm2                      #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     (%rdx,%r8,8), %xmm2                           #137.3
        movsd     %xmm2, (%rdx,%r8,8)                           #137.3
        incq      %r8                                           #137.3
        cmpq      %rdi, %r8                                     #137.3
        jb        ..B1.231      # Prob 82%                      #137.3
                                # LOE rax rdx rsi rdi r8 r9 r12 r13 ecx ebx xmm0 xmm1
..B1.233:                       # Preds ..B1.231 ..B1.189 ..B1.190 ..B1.212 ..B1.229
                                #      
                                # Execution count [1.80e+00]: Infreq
        incl      %ecx                                          #137.3
        decl      %ebx                                          #137.3
        addq      $-12016, %rax                                 #137.3
        lea       1499(%rsi), %rdx                              #137.3
        decq      %rsi                                          #137.3
        cmpl      $1500, %ecx                                   #137.3
        jb        ..B1.189      # Prob 82%                      #137.3
                                # LOE rax rdx rsi r12 r13 ecx ebx xmm1
..B1.234:                       # Preds ..B1.233
                                # Execution count [3.24e-01]: Infreq
        movq      8(%rsp), %r15                                 #[spill]
        movq      208(%rsp), %r14                               #[spill]
#       clock(void)
        call      clock                                         #139.8
                                # LOE rax r12 r13 r14 r15
..B1.235:                       # Preds ..B1.234
                                # Execution count [7.20e-01]: Infreq
        pxor      %xmm3, %xmm3                                  #139.8
        pxor      %xmm1, %xmm1                                  #134.8
        cvtsi2sdq %rax, %xmm3                                   #139.8
        cvtsi2sdq %r15, %xmm1                                   #134.8
        movsd     .L_2il0floatpacket.4(%rip), %xmm0             #139.8
        movq      %r12, %rdi                                    #144.3
        divsd     %xmm0, %xmm3                                  #139.8
        divsd     %xmm0, %xmm1                                  #134.8
        movsd     32(%rsp), %xmm2                               #142.21[spill]
        subsd     %xmm1, %xmm3                                  #140.18
        movsd     %xmm3, 16(%rsp)                               #140.18[spill]
        addsd     %xmm3, %xmm2                                  #142.21
        movsd     %xmm2, 40(%rsp)                               #142.21[spill]
#       free(void *)
        call      free                                          #144.3
                                # LOE r13 r14
..B1.236:                       # Preds ..B1.235
                                # Execution count [7.20e-01]: Infreq
        movups    init.956.0.0.13(%rip), %xmm0                  #148.7
        movups    %xmm0, (%rsp)                                 #148.7
                                # LOE r13 r14
..B1.237:                       # Preds ..B1.236
                                # Execution count [7.20e-01]: Infreq
        movl      $18012000, %edi                               #148.7
#       malloc(size_t)
        call      malloc                                        #148.7
                                # LOE rax r13 r14
..B1.388:                       # Preds ..B1.237
                                # Execution count [7.20e-01]: Infreq
        movq      %rax, %rbx                                    #148.7
                                # LOE rbx r13 r14
..B1.238:                       # Preds ..B1.388
                                # Execution count [2.88e-01]: Infreq
        movl      12(%rsp), %edi                                #148.7
        xorl      %r8d, %r8d                                    #148.7
        movl      8(%rsp), %ecx                                 #148.7
        movq      %rbx, %rsi                                    #148.7
        movl      4(%rsp), %r11d                                #148.7
        movl      (%rsp), %r9d                                  #148.7
        movq      %r13, 224(%rsp)                               #148.7[spill]
        movsd     .L_2il0floatpacket.1(%rip), %xmm0             #148.7
        movsd     .L_2il0floatpacket.0(%rip), %xmm1             #148.7
                                # LOE rbx rsi r14 ecx edi r8d r9d r11d xmm0 xmm1
..B1.239:                       # Preds ..B1.241 ..B1.238
                                # Execution count [3.24e+00]: Infreq
        xorl      %eax, %eax                                    #148.7
                                # LOE rax rbx rsi r14 ecx edi r8d r9d r11d xmm0 xmm1
..B1.240:                       # Preds ..B1.373 ..B1.239
                                # Execution count [1.80e+01]: Infreq
        imull     $2549, %edi, %r15d                            #148.7
        imull     $2549, %r9d, %edx                             #148.7
        imull     $2508, %edi, %r9d                             #148.7
        movl      %r15d, %r10d                                  #148.7
        sarl      $11, %r10d                                    #148.7
        shrl      $20, %r10d                                    #148.7
        addl      %r15d, %r10d                                  #148.7
        sarl      $12, %r10d                                    #148.7
        movl      %r10d, %r12d                                  #148.7
        addl      %r9d, %r10d                                   #148.7
        shll      $12, %r12d                                    #148.7
        subl      %r12d, %r15d                                  #148.7
        imull     $2549, %ecx, %r12d                            #148.7
        imull     $322, %edi, %r9d                              #148.7
        addl      %r12d, %r10d                                  #148.7
        movl      %r10d, %r12d                                  #148.7
        sarl      $11, %r12d                                    #148.7
        shrl      $20, %r12d                                    #148.7
        addl      %r10d, %r12d                                  #148.7
        sarl      $12, %r12d                                    #148.7
        movl      %r12d, %r13d                                  #148.7
        addl      %r9d, %r12d                                   #148.7
        shll      $12, %r13d                                    #148.7
        imull     $494, %edi, %r9d                              #148.7
        subl      %r13d, %r10d                                  #148.7
        imull     $2508, %ecx, %r13d                            #148.7
        imull     $2549, %r11d, %edi                            #148.7
        imull     $2508, %r11d, %r11d                           #148.7
        imull     $322, %ecx, %ecx                              #148.7
        addl      %edi, %r13d                                   #148.7
        addl      %edx, %r11d                                   #148.7
        addl      %r13d, %r12d                                  #148.7
        movl      %r12d, %edx                                   #148.7
        sarl      $11, %edx                                     #148.7
        shrl      $20, %edx                                     #148.7
        addl      %r12d, %edx                                   #148.7
        sarl      $12, %edx                                     #148.7
        addl      %edx, %r9d                                    #148.7
        addl      %ecx, %r9d                                    #148.7
        shll      $12, %edx                                     #148.7
        addl      %r11d, %r9d                                   #148.7
        subl      %edx, %r12d                                   #148.7
        andl      $-2147479553, %r9d                            #148.7
        jge       ..B1.373      # Prob 50%                      #148.7
                                # LOE rax rbx rsi r14 r8d r9d r10d r12d r15d xmm0 xmm1
..B1.374:                       # Preds ..B1.240
                                # Execution count [1.80e+01]: Infreq
        subl      $1, %r9d                                      #148.7
        orl       $-4096, %r9d                                  #148.7
        incl      %r9d                                          #148.7
                                # LOE rax rbx rsi r14 r8d r9d r10d r12d r15d xmm0 xmm1
..B1.373:                       # Preds ..B1.240 ..B1.374
                                # Execution count [1.80e+01]: Infreq
        pxor      %xmm5, %xmm5                                  #148.7
        pxor      %xmm2, %xmm2                                  #148.7
        cvtsi2sd  %r15d, %xmm5                                  #148.7
        cvtsi2sd  %r10d, %xmm2                                  #148.7
        mulsd     %xmm1, %xmm5                                  #148.7
        pxor      %xmm3, %xmm3                                  #148.7
        pxor      %xmm4, %xmm4                                  #148.7
        cvtsi2sd  %r12d, %xmm3                                  #148.7
        cvtsi2sd  %r9d, %xmm4                                   #148.7
        addsd     %xmm2, %xmm5                                  #148.7
        mulsd     %xmm1, %xmm5                                  #148.7
        movl      %r12d, %r11d                                  #148.7
        movl      %r10d, %ecx                                   #148.7
        movl      %r15d, %edi                                   #148.7
        addsd     %xmm3, %xmm5                                  #148.7
        mulsd     %xmm1, %xmm5                                  #148.7
        addsd     %xmm4, %xmm5                                  #148.7
        mulsd     %xmm1, %xmm5                                  #148.7
        subsd     %xmm0, %xmm5                                  #148.7
        movsd     %xmm5, (%rsi,%rax,8)                          #148.7
        incq      %rax                                          #148.7
        cmpq      $1500, %rax                                   #148.7
        jb        ..B1.240      # Prob 82%                      #148.7
                                # LOE rax rbx rsi r14 ecx edi r8d r9d r10d r11d r12d r15d xmm0 xmm1
..B1.241:                       # Preds ..B1.373
                                # Execution count [3.24e+00]: Infreq
        incl      %r8d                                          #148.7
        addq      $12008, %rsi                                  #148.7
        cmpl      $1500, %r8d                                   #148.7
        jb        ..B1.239      # Prob 91%                      #148.7
                                # LOE rbx rsi r14 ecx edi r8d r9d r10d r11d r12d r15d xmm0 xmm1
..B1.242:                       # Preds ..B1.241
                                # Execution count [7.20e-01]: Infreq
        movb      48(%rsp), %al                                 #150.3[spill]
        movq      224(%rsp), %r13                               #[spill]
        movl      %r15d, 12(%rsp)                               #148.7
        movl      %r10d, 8(%rsp)                                #148.7
        movl      %r12d, 4(%rsp)                                #148.7
        movl      %r9d, (%rsp)                                  #148.7
        movsd     .L_2il0floatpacket.10(%rip), %xmm4            #152.12
        testb     %al, %al                                      #150.3
        je        ..B1.245      # Prob 50%                      #150.3
                                # LOE rbx r13 r14 xmm4
..B1.243:                       # Preds ..B1.242
                                # Execution count [7.20e-01]: Infreq
        testb     $7, 48(%rsp)                                  #150.3[spill]
        jne       ..B1.345      # Prob 10%                      #150.3
                                # LOE rbx r13 r14 xmm4
..B1.244:                       # Preds ..B1.243
                                # Execution count [7.20e-01]: Infreq
        movsd     %xmm4, (%r14)                                 #152.5
        movb      $1, 48(%rsp)                                  #150.3[spill]
                                # LOE rbx r13 r14 xmm4
..B1.245:                       # Preds ..B1.242 ..B1.244
                                # Execution count [7.20e-01]: Infreq
        movb      48(%rsp), %al                                 #150.3[spill]
        movzbl    %al, %edx                                     #150.3
        negb      %al                                           #150.3
        addb      $4, %al                                       #150.3
        andb      $7, %al                                       #150.3
        movzbl    %al, %eax                                     #150.3
        negq      %rax                                          #150.3
        movups    .L_2il0floatpacket.2(%rip), %xmm0             #152.12
        addq      $1500, %rax                                   #150.3
                                # LOE rax rdx rbx r13 r14 xmm0 xmm4
..B1.246:                       # Preds ..B1.246 ..B1.245
                                # Execution count [1.08e+03]: Infreq
        movups    %xmm0, (%r14,%rdx,8)                          #152.5
        movups    %xmm0, 16(%r14,%rdx,8)                        #152.5
        movups    %xmm0, 32(%r14,%rdx,8)                        #152.5
        movups    %xmm0, 48(%r14,%rdx,8)                        #152.5
        addq      $8, %rdx                                      #150.3
        cmpq      %rax, %rdx                                    #150.3
        jb        ..B1.246      # Prob 99%                      #150.3
                                # LOE rax rdx rbx r13 r14 xmm0 xmm4
..B1.248:                       # Preds ..B1.246 ..B1.345
                                # Execution count [7.20e-01]: Infreq
        cmpq      $1500, %rax                                   #150.3
        jae       ..B1.252      # Prob 0%                       #150.3
                                # LOE rax rbx r13 r14 xmm4
..B1.250:                       # Preds ..B1.248 ..B1.250
                                # Execution count [1.08e+03]: Infreq
        movsd     %xmm4, (%r14,%rax,8)                          #152.5
        incq      %rax                                          #150.3
        cmpq      $1500, %rax                                   #150.3
        jb        ..B1.250      # Prob 99%                      #150.3
                                # LOE rax rbx r13 r14 xmm4
..B1.252:                       # Preds ..B1.250 ..B1.248
                                # Execution count [0.00e+00]: Infreq
        xorl      %esi, %esi                                    #155.3
        movl      $12000, %edx                                  #155.3
        movq      232(%rsp), %rdi                               #155.3[spill]
        call      _intel_fast_memset                            #155.3
                                # LOE rbx r13 r14
..B1.253:                       # Preds ..B1.252
                                # Execution count [5.35e+02]: Infreq
        movq      232(%rsp), %rcx                               #155.3[spill]
        xorl      %esi, %esi                                    #158.5
        andq      $15, %rcx                                     #155.3
        xorl      %eax, %eax                                    #158.5
        movl      %ecx, %r8d                                    #155.3
        xorl      %r9d, %r9d                                    #158.5
        movsd     .L_2il0floatpacket.10(%rip), %xmm4            #
        andl      $7, %r8d                                      #155.3
        movq      %r13, 224(%rsp)                               #158.5[spill]
        xorl      %edx, %edx                                    #158.5
                                # LOE rax rdx rbx r14 ecx esi r8d r9d xmm4
..B1.254:                       # Preds ..B1.274 ..B1.253
                                # Execution count [1.07e+03]: Infreq
        movl      %ecx, %r10d                                   #155.3
        movsd     (%rdx,%r14), %xmm1                            #160.38
        movsd     8(%rdx,%r14), %xmm3                           #160.38
        testl     %ecx, %ecx                                    #155.3
        je        ..B1.258      # Prob 50%                      #155.3
                                # LOE rax rdx rbx r14 ecx esi r8d r9d r10d xmm1 xmm3 xmm4
..B1.255:                       # Preds ..B1.254
                                # Execution count [1.07e+03]: Infreq
        testl     %r8d, %r8d                                    #155.3
        jne       ..B1.346      # Prob 10%                      #155.3
                                # LOE rax rdx rbx r14 ecx esi r8d r9d xmm1 xmm3 xmm4
..B1.256:                       # Preds ..B1.255
                                # Execution count [1.07e+03]: Infreq
        movsd     (%rax,%rbx), %xmm2                            #160.25
        mulsd     %xmm1, %xmm2                                  #160.38
        movq      232(%rsp), %r10                               #160.38[spill]
        movsd     12008(%rax,%rbx), %xmm0                       #160.25
        mulsd     %xmm3, %xmm0                                  #160.38
        addsd     (%r10), %xmm2                                 #160.38
        addsd     %xmm0, %xmm2                                  #160.38
        movsd     %xmm2, (%r10)                                 #160.7
        movl      $1, %r10d                                     #155.3
                                # LOE rax rdx rbx r14 ecx esi r8d r9d r10d xmm1 xmm3 xmm4
..B1.258:                       # Preds ..B1.254 ..B1.256
                                # Execution count [1.62e+06]: Infreq
        movl      %r10d, %r12d                                  #155.3
        lea       (%rax,%rbx), %r11                             #160.25
        negl      %r12d                                         #155.3
        addl      $4, %r12d                                     #155.3
        movl      %r10d, %r15d                                  #155.3
        addl      %r9d, %r10d                                   #160.31
        andl      $7, %r12d                                     #155.3
        movslq    %r10d, %r10                                   #160.31
        negl      %r12d                                         #155.3
        lea       (%rbx,%r10,8), %r10                           #160.25
        lea       1500(%r12), %r13d                             #155.3
        testq     $15, %r10                                     #155.3
        movl      %r13d, %r10d                                  #155.3
        je        ..B1.262      # Prob 60%                      #155.3
                                # LOE rax rdx rbx r10 r11 r14 r15 ecx esi r8d r9d r12d r13d xmm1 xmm3 xmm4
..B1.259:                       # Preds ..B1.258
                                # Execution count [1.07e+03]: Infreq
        movaps    %xmm1, %xmm2                                  #160.38
        movaps    %xmm3, %xmm0                                  #160.38
        unpcklpd  %xmm2, %xmm2                                  #160.38
        unpcklpd  %xmm0, %xmm0                                  #160.38
        movq      232(%rsp), %rdi                               #160.38[spill]
                                # LOE rax rdx rbx rdi r10 r11 r14 r15 ecx esi r8d r9d r12d r13d xmm0 xmm1 xmm2 xmm3 xmm4
..B1.260:                       # Preds ..B1.260 ..B1.259
                                # Execution count [1.60e+06]: Infreq
        movups    (%r11,%r15,8), %xmm6                          #160.25
        movups    16(%r11,%r15,8), %xmm8                        #160.25
        movups    32(%r11,%r15,8), %xmm10                       #160.25
        movups    48(%r11,%r15,8), %xmm12                       #160.25
        mulpd     %xmm2, %xmm6                                  #160.38
        mulpd     %xmm2, %xmm8                                  #160.38
        mulpd     %xmm2, %xmm10                                 #160.38
        mulpd     %xmm2, %xmm12                                 #160.38
        movups    12008(%r11,%r15,8), %xmm5                     #160.25
        movups    12024(%r11,%r15,8), %xmm7                     #160.25
        movups    12040(%r11,%r15,8), %xmm9                     #160.25
        movups    12056(%r11,%r15,8), %xmm11                    #160.25
        mulpd     %xmm0, %xmm5                                  #160.38
        mulpd     %xmm0, %xmm7                                  #160.38
        mulpd     %xmm0, %xmm9                                  #160.38
        mulpd     %xmm0, %xmm11                                 #160.38
        addpd     (%rdi,%r15,8), %xmm6                          #160.38
        addpd     16(%rdi,%r15,8), %xmm8                        #160.38
        addpd     32(%rdi,%r15,8), %xmm10                       #160.38
        addpd     48(%rdi,%r15,8), %xmm12                       #160.38
        addpd     %xmm5, %xmm6                                  #160.38
        addpd     %xmm7, %xmm8                                  #160.38
        addpd     %xmm9, %xmm10                                 #160.38
        addpd     %xmm11, %xmm12                                #160.38
        movups    %xmm6, (%rdi,%r15,8)                          #160.7
        movups    %xmm8, 16(%rdi,%r15,8)                        #160.7
        movups    %xmm10, 32(%rdi,%r15,8)                       #160.7
        movups    %xmm12, 48(%rdi,%r15,8)                       #160.7
        addq      $8, %r15                                      #155.3
        cmpq      %r10, %r15                                    #155.3
        jb        ..B1.260      # Prob 99%                      #155.3
        jmp       ..B1.265      # Prob 100%                     #155.3
                                # LOE rax rdx rbx rdi r10 r11 r14 r15 ecx esi r8d r9d r12d r13d xmm0 xmm1 xmm2 xmm3 xmm4
..B1.262:                       # Preds ..B1.258
                                # Execution count [1.07e+03]: Infreq
        movaps    %xmm1, %xmm2                                  #160.38
        movaps    %xmm3, %xmm0                                  #160.38
        unpcklpd  %xmm2, %xmm2                                  #160.38
        unpcklpd  %xmm0, %xmm0                                  #160.38
        movq      232(%rsp), %rdi                               #160.38[spill]
                                # LOE rax rdx rbx rdi r10 r11 r14 r15 ecx esi r8d r9d r12d r13d xmm0 xmm1 xmm2 xmm3 xmm4
..B1.263:                       # Preds ..B1.263 ..B1.262
                                # Execution count [1.60e+06]: Infreq
        movups    (%r11,%r15,8), %xmm6                          #160.25
        movups    16(%r11,%r15,8), %xmm8                        #160.25
        movups    32(%r11,%r15,8), %xmm10                       #160.25
        movups    48(%r11,%r15,8), %xmm12                       #160.25
        mulpd     %xmm2, %xmm6                                  #160.38
        mulpd     %xmm2, %xmm8                                  #160.38
        mulpd     %xmm2, %xmm10                                 #160.38
        mulpd     %xmm2, %xmm12                                 #160.38
        movups    12008(%r11,%r15,8), %xmm5                     #160.25
        movups    12024(%r11,%r15,8), %xmm7                     #160.25
        movups    12040(%r11,%r15,8), %xmm9                     #160.25
        movups    12056(%r11,%r15,8), %xmm11                    #160.25
        mulpd     %xmm0, %xmm5                                  #160.38
        mulpd     %xmm0, %xmm7                                  #160.38
        mulpd     %xmm0, %xmm9                                  #160.38
        mulpd     %xmm0, %xmm11                                 #160.38
        addpd     (%rdi,%r15,8), %xmm6                          #160.38
        addpd     16(%rdi,%r15,8), %xmm8                        #160.38
        addpd     32(%rdi,%r15,8), %xmm10                       #160.38
        addpd     48(%rdi,%r15,8), %xmm12                       #160.38
        addpd     %xmm5, %xmm6                                  #160.38
        addpd     %xmm7, %xmm8                                  #160.38
        addpd     %xmm9, %xmm10                                 #160.38
        addpd     %xmm11, %xmm12                                #160.38
        movups    %xmm6, (%rdi,%r15,8)                          #160.7
        movups    %xmm8, 16(%rdi,%r15,8)                        #160.7
        movups    %xmm10, 32(%rdi,%r15,8)                       #160.7
        movups    %xmm12, 48(%rdi,%r15,8)                       #160.7
        addq      $8, %r15                                      #155.3
        cmpq      %r10, %r15                                    #155.3
        jb        ..B1.263      # Prob 99%                      #155.3
                                # LOE rax rdx rbx rdi r10 r11 r14 r15 ecx esi r8d r9d r12d r13d xmm0 xmm1 xmm2 xmm3 xmm4
..B1.265:                       # Preds ..B1.263 ..B1.260
                                # Execution count [8.54e+02]: Infreq
        lea       1501(%r12), %r10d                             #155.3
        cmpl      $1500, %r10d                                  #155.3
        ja        ..B1.274      # Prob 50%                      #155.3
                                # LOE rax rdx rbx r14 ecx esi r8d r9d r12d r13d xmm0 xmm1 xmm2 xmm3 xmm4
..B1.266:                       # Preds ..B1.265
                                # Execution count [1.07e+03]: Infreq
        movl      %r13d, %edi                                   #155.3
        negl      %edi                                          #155.3
        addl      $1500, %edi                                   #155.3
        cmpl      $2, %edi                                      #155.3
        jb        ..B1.350      # Prob 10%                      #155.3
                                # LOE rax rdx rbx r14 ecx esi edi r8d r9d r12d r13d xmm0 xmm1 xmm2 xmm3 xmm4
..B1.267:                       # Preds ..B1.266
                                # Execution count [1.07e+03]: Infreq
        movl      %edi, %r15d                                   #155.3
        lea       1500(%r9,%r12), %r10d                         #160.31
        movslq    %r10d, %r10                                   #160.31
        andl      $-2, %r15d                                    #155.3
        movq      %rbx, (%rsp)                                  #160.25[spill]
        xorl      %r11d, %r11d                                  #155.3
        movq      %r14, 208(%rsp)                               #160.25[spill]
        lea       (%rbx,%r10,8), %r10                           #160.25
        movq      232(%rsp), %rbx                               #160.25[spill]
                                # LOE rax rdx rbx r10 ecx esi edi r8d r9d r11d r12d r13d r15d xmm0 xmm1 xmm2 xmm3 xmm4
..B1.268:                       # Preds ..B1.268 ..B1.267
                                # Execution count [1.60e+06]: Infreq
        movups    (%r10), %xmm6                                 #160.25
        movups    12008(%r10), %xmm5                            #160.25
        mulpd     %xmm2, %xmm6                                  #160.38
        mulpd     %xmm0, %xmm5                                  #160.38
        addq      $16, %r10                                     #155.3
        lea       1500(%r11,%r12), %r14d                        #157.5
        movslq    %r14d, %r14                                   #157.5
        addl      $2, %r11d                                     #155.3
        addpd     (%rbx,%r14,8), %xmm6                          #160.38
        addpd     %xmm5, %xmm6                                  #160.38
        movups    %xmm6, (%rbx,%r14,8)                          #160.7
        cmpl      %r15d, %r11d                                  #155.3
        jb        ..B1.268      # Prob 99%                      #155.3
                                # LOE rax rdx rbx r10 ecx esi edi r8d r9d r11d r12d r13d r15d xmm0 xmm1 xmm2 xmm3 xmm4
..B1.269:                       # Preds ..B1.268
                                # Execution count [1.07e+03]: Infreq
        movq      (%rsp), %rbx                                  #[spill]
        movq      208(%rsp), %r14                               #[spill]
                                # LOE rax rdx rbx r14 ecx esi edi r8d r9d r13d r15d xmm1 xmm3 xmm4
..B1.270:                       # Preds ..B1.269 ..B1.350 ..B1.346
                                # Execution count [1.07e+03]: Infreq
        movl      %r15d, %r10d                                  #155.3
        cmpl      %edi, %r15d                                   #155.3
        jae       ..B1.274      # Prob 0%                       #155.3
                                # LOE rax rdx rbx r10 r14 ecx esi edi r8d r9d r13d r15d xmm1 xmm3 xmm4
..B1.271:                       # Preds ..B1.270
                                # Execution count [1.07e+03]: Infreq
        lea       (%r13,%r9), %r11d                             #160.31
        movslq    %r11d, %r11                                   #160.31
        lea       (%rbx,%r11,8), %r12                           #160.25
        movq      232(%rsp), %r11                               #160.25[spill]
        lea       (%r12,%r10,8), %r10                           #160.25
                                # LOE rax rdx rbx r10 r11 r14 ecx esi edi r8d r9d r13d r15d xmm1 xmm3 xmm4
..B1.272:                       # Preds ..B1.272 ..B1.271
                                # Execution count [1.60e+06]: Infreq
        movsd     (%r10), %xmm2                                 #160.25
        lea       (%r13,%r15), %r12d                            #157.5
        mulsd     %xmm1, %xmm2                                  #160.38
        incl      %r15d                                         #155.3
        movslq    %r12d, %r12                                   #157.5
        movsd     12008(%r10), %xmm0                            #160.25
        addq      $8, %r10                                      #155.3
        mulsd     %xmm3, %xmm0                                  #160.38
        addsd     (%r11,%r12,8), %xmm2                          #160.38
        addsd     %xmm0, %xmm2                                  #160.38
        movsd     %xmm2, (%r11,%r12,8)                          #160.7
        cmpl      %edi, %r15d                                   #155.3
        jb        ..B1.272      # Prob 99%                      #155.3
                                # LOE rax rdx rbx r10 r11 r14 ecx esi edi r8d r9d r13d r15d xmm1 xmm3 xmm4
..B1.274:                       # Preds ..B1.272 ..B1.265 ..B1.270
                                # Execution count [5.34e+02]: Infreq
        incl      %esi                                          #158.5
        addl      $3002, %r9d                                   #158.5
        addq      $24016, %rax                                  #158.5
        addq      $16, %rdx                                     #158.5
        cmpl      $750, %esi                                    #158.5
        jb        ..B1.254      # Prob 99%                      #158.5
                                # LOE rax rdx rbx r14 ecx esi r8d r9d xmm4
..B1.275:                       # Preds ..B1.274
                                # Execution count [7.12e-01]: Infreq
        movq      216(%rsp), %rcx                               #164.3[spill]
        andq      $15, %rcx                                     #164.3
        movl      %ecx, %eax                                    #164.3
        movq      224(%rsp), %r13                               #[spill]
        movl      %eax, %r10d                                   #164.3
        testl     %ecx, %ecx                                    #164.3
        je        ..B1.278      # Prob 50%                      #164.3
                                # LOE rbx r13 r14 eax ecx r10d xmm4
..B1.276:                       # Preds ..B1.275
                                # Execution count [7.14e-01]: Infreq
        testb     $7, %cl                                       #164.3
        jne       ..B1.349      # Prob 10%                      #164.3
                                # LOE rbx r13 r14 ecx r10d xmm4
..B1.277:                       # Preds ..B1.276
                                # Execution count [7.14e-01]: Infreq
        movq      232(%rsp), %rax                               #166.17[spill]
        movq      216(%rsp), %rdx                               #166.5[spill]
        movsd     (%rax), %xmm0                                 #166.17
        movl      $1, %eax                                      #164.3
        xorps     .L_2il0floatpacket.12(%rip), %xmm0            #166.17
        movsd     %xmm0, (%rdx)                                 #166.5
                                # LOE rbx r13 r14 eax ecx r10d xmm4
..B1.278:                       # Preds ..B1.277 ..B1.275
                                # Execution count [1.08e+03]: Infreq
        movl      %eax, %edx                                    #166.5
        negl      %eax                                          #164.3
        movq      232(%rsp), %rsi                               #166.17[spill]
        addl      $4, %eax                                      #164.3
        andl      $7, %eax                                      #164.3
        negq      %rax                                          #164.3
        lea       (%rsi,%rdx,8), %r8                            #166.17
        addq      $1500, %rax                                   #164.3
        testq     $15, %r8                                      #164.3
        je        ..B1.282      # Prob 60%                      #164.3
                                # LOE rax rdx rbx rsi r13 r14 ecx r10d xmm4
..B1.279:                       # Preds ..B1.278
                                # Execution count [7.14e-01]: Infreq
        movq      216(%rsp), %r8                                #[spill]
        .align    16,0x90
                                # LOE rax rdx rbx rsi r8 r13 r14 ecx r10d xmm4
..B1.280:                       # Preds ..B1.280 ..B1.279
                                # Execution count [1.08e+03]: Infreq
        movups    (%rsi,%rdx,8), %xmm0                          #166.17
        movups    16(%rsi,%rdx,8), %xmm1                        #166.17
        movups    32(%rsi,%rdx,8), %xmm2                        #166.17
        movups    48(%rsi,%rdx,8), %xmm3                        #166.17
        xorps     .L_2il0floatpacket.5(%rip), %xmm0             #166.17
        xorps     .L_2il0floatpacket.5(%rip), %xmm1             #166.17
        xorps     .L_2il0floatpacket.5(%rip), %xmm2             #166.17
        xorps     .L_2il0floatpacket.5(%rip), %xmm3             #166.17
        movups    %xmm0, (%r8,%rdx,8)                           #166.5
        movups    %xmm1, 16(%r8,%rdx,8)                         #166.5
        movups    %xmm2, 32(%r8,%rdx,8)                         #166.5
        movups    %xmm3, 48(%r8,%rdx,8)                         #166.5
        addq      $8, %rdx                                      #164.3
        cmpq      %rax, %rdx                                    #164.3
        jb        ..B1.280      # Prob 99%                      #164.3
        jmp       ..B1.285      # Prob 100%                     #164.3
                                # LOE rax rdx rbx rsi r8 r13 r14 ecx r10d xmm4
..B1.282:                       # Preds ..B1.278
                                # Execution count [7.14e-01]: Infreq
        movq      216(%rsp), %r8                                #[spill]
        .align    16,0x90
                                # LOE rax rdx rbx rsi r8 r13 r14 ecx r10d xmm4
..B1.283:                       # Preds ..B1.283 ..B1.282
                                # Execution count [1.08e+03]: Infreq
        movups    (%rsi,%rdx,8), %xmm0                          #166.17
        movups    16(%rsi,%rdx,8), %xmm1                        #166.17
        movups    32(%rsi,%rdx,8), %xmm2                        #166.17
        movups    48(%rsi,%rdx,8), %xmm3                        #166.17
        xorps     .L_2il0floatpacket.5(%rip), %xmm0             #166.17
        xorps     .L_2il0floatpacket.5(%rip), %xmm1             #166.17
        xorps     .L_2il0floatpacket.5(%rip), %xmm2             #166.17
        xorps     .L_2il0floatpacket.5(%rip), %xmm3             #166.17
        movups    %xmm0, (%r8,%rdx,8)                           #166.5
        movups    %xmm1, 16(%r8,%rdx,8)                         #166.5
        movups    %xmm2, 32(%r8,%rdx,8)                         #166.5
        movups    %xmm3, 48(%r8,%rdx,8)                         #166.5
        addq      $8, %rdx                                      #164.3
        cmpq      %rax, %rdx                                    #164.3
        jb        ..B1.283      # Prob 99%                      #164.3
                                # LOE rax rdx rbx rsi r8 r13 r14 ecx r10d xmm4
..B1.285:                       # Preds ..B1.283 ..B1.280 ..B1.349
                                # Execution count [5.37e+02]: Infreq
        cmpq      $1500, %rax                                   #164.3
        jae       ..B1.289      # Prob 0%                       #164.3
                                # LOE rax rbx r13 r14 ecx r10d xmm4
..B1.286:                       # Preds ..B1.285
                                # Execution count [7.14e-01]: Infreq
        movq      232(%rsp), %rdx                               #[spill]
        movq      216(%rsp), %rsi                               #[spill]
                                # LOE rax rdx rbx rsi r13 r14 ecx r10d xmm4
..B1.287:                       # Preds ..B1.287 ..B1.286
                                # Execution count [1.08e+03]: Infreq
        movsd     (%rdx,%rax,8), %xmm0                          #166.17
        xorps     .L_2il0floatpacket.12(%rip), %xmm0            #166.17
        movsd     %xmm0, (%rsi,%rax,8)                          #166.5
        incq      %rax                                          #164.3
        cmpq      $1500, %rax                                   #164.3
        jb        ..B1.287      # Prob 99%                      #164.3
                                # LOE rax rdx rbx rsi r13 r14 ecx r10d xmm4
..B1.289:                       # Preds ..B1.287 ..B1.285
                                # Execution count [5.37e+02]: Infreq
        xorl      %r8d, %r8d                                    #167.5
        movl      %ecx, %r9d                                    #164.3
        xorl      %edx, %edx                                    #167.5
        andl      $7, %r9d                                      #164.3
        movl      %r10d, 8(%rsp)                                #167.5[spill]
        xorl      %eax, %eax                                    #167.5
        movq      %r14, 208(%rsp)                               #167.5[spill]
        xorl      %esi, %esi                                    #167.5
                                # LOE rdx rbx rsi r13 eax ecx r8d r9d xmm4
..B1.290:                       # Preds ..B1.310 ..B1.289
                                # Execution count [1.07e+03]: Infreq
        movl      8(%rsp), %r10d                                #164.3[spill]
        movsd     (%rsi,%r13), %xmm1                            #169.42
        movsd     8(%rsi,%r13), %xmm3                           #169.42
        testl     %ecx, %ecx                                    #164.3
        je        ..B1.294      # Prob 50%                      #164.3
                                # LOE rdx rbx rsi r13 eax ecx r8d r9d r10d xmm1 xmm3 xmm4
..B1.291:                       # Preds ..B1.290
                                # Execution count [1.07e+03]: Infreq
        testl     %r9d, %r9d                                    #164.3
        jne       ..B1.347      # Prob 10%                      #164.3
                                # LOE rdx rbx rsi r13 eax ecx r8d r9d xmm1 xmm3 xmm4
..B1.292:                       # Preds ..B1.291
                                # Execution count [1.07e+03]: Infreq
        movsd     (%rdx,%rbx), %xmm2                            #169.29
        mulsd     %xmm1, %xmm2                                  #169.42
        movq      216(%rsp), %r10                               #169.42[spill]
        movsd     12008(%rdx,%rbx), %xmm0                       #169.29
        mulsd     %xmm3, %xmm0                                  #169.42
        addsd     (%r10), %xmm2                                 #169.42
        addsd     %xmm0, %xmm2                                  #169.42
        movsd     %xmm2, (%r10)                                 #169.7
        movl      $1, %r10d                                     #164.3
                                # LOE rdx rbx rsi r13 eax ecx r8d r9d r10d xmm1 xmm3 xmm4
..B1.294:                       # Preds ..B1.290 ..B1.292
                                # Execution count [1.62e+06]: Infreq
        movl      %r10d, %r12d                                  #164.3
        lea       (%rdx,%rbx), %r11                             #169.29
        negl      %r12d                                         #164.3
        addl      $4, %r12d                                     #164.3
        movl      %r10d, %r15d                                  #164.3
        addl      %eax, %r10d                                   #169.35
        andl      $7, %r12d                                     #164.3
        movslq    %r10d, %r10                                   #169.35
        negl      %r12d                                         #164.3
        lea       (%rbx,%r10,8), %r10                           #169.29
        lea       1500(%r12), %r14d                             #164.3
        testq     $15, %r10                                     #164.3
        movl      %r14d, %r10d                                  #164.3
        je        ..B1.298      # Prob 60%                      #164.3
                                # LOE rdx rbx rsi r10 r11 r13 r15 eax ecx r8d r9d r12d r14d xmm1 xmm3 xmm4
..B1.295:                       # Preds ..B1.294
                                # Execution count [1.07e+03]: Infreq
        movaps    %xmm1, %xmm2                                  #169.42
        movaps    %xmm3, %xmm0                                  #169.42
        unpcklpd  %xmm2, %xmm2                                  #169.42
        unpcklpd  %xmm0, %xmm0                                  #169.42
        movq      216(%rsp), %rdi                               #169.42[spill]
                                # LOE rdx rbx rsi rdi r10 r11 r13 r15 eax ecx r8d r9d r12d r14d xmm0 xmm1 xmm2 xmm3 xmm4
..B1.296:                       # Preds ..B1.296 ..B1.295
                                # Execution count [1.61e+06]: Infreq
        movups    (%r11,%r15,8), %xmm6                          #169.29
        movups    16(%r11,%r15,8), %xmm8                        #169.29
        movups    32(%r11,%r15,8), %xmm10                       #169.29
        movups    48(%r11,%r15,8), %xmm12                       #169.29
        mulpd     %xmm2, %xmm6                                  #169.42
        mulpd     %xmm2, %xmm8                                  #169.42
        mulpd     %xmm2, %xmm10                                 #169.42
        mulpd     %xmm2, %xmm12                                 #169.42
        movups    12008(%r11,%r15,8), %xmm5                     #169.29
        movups    12024(%r11,%r15,8), %xmm7                     #169.29
        movups    12040(%r11,%r15,8), %xmm9                     #169.29
        movups    12056(%r11,%r15,8), %xmm11                    #169.29
        mulpd     %xmm0, %xmm5                                  #169.42
        mulpd     %xmm0, %xmm7                                  #169.42
        mulpd     %xmm0, %xmm9                                  #169.42
        mulpd     %xmm0, %xmm11                                 #169.42
        addpd     (%rdi,%r15,8), %xmm6                          #169.42
        addpd     16(%rdi,%r15,8), %xmm8                        #169.42
        addpd     32(%rdi,%r15,8), %xmm10                       #169.42
        addpd     48(%rdi,%r15,8), %xmm12                       #169.42
        addpd     %xmm5, %xmm6                                  #169.42
        addpd     %xmm7, %xmm8                                  #169.42
        addpd     %xmm9, %xmm10                                 #169.42
        addpd     %xmm11, %xmm12                                #169.42
        movups    %xmm6, (%rdi,%r15,8)                          #169.7
        movups    %xmm8, 16(%rdi,%r15,8)                        #169.7
        movups    %xmm10, 32(%rdi,%r15,8)                       #169.7
        movups    %xmm12, 48(%rdi,%r15,8)                       #169.7
        addq      $8, %r15                                      #164.3
        cmpq      %r10, %r15                                    #164.3
        jb        ..B1.296      # Prob 99%                      #164.3
        jmp       ..B1.301      # Prob 100%                     #164.3
                                # LOE rdx rbx rsi rdi r10 r11 r13 r15 eax ecx r8d r9d r12d r14d xmm0 xmm1 xmm2 xmm3 xmm4
..B1.298:                       # Preds ..B1.294
                                # Execution count [1.07e+03]: Infreq
        movaps    %xmm1, %xmm2                                  #169.42
        movaps    %xmm3, %xmm0                                  #169.42
        unpcklpd  %xmm2, %xmm2                                  #169.42
        unpcklpd  %xmm0, %xmm0                                  #169.42
        movq      216(%rsp), %rdi                               #169.42[spill]
                                # LOE rdx rbx rsi rdi r10 r11 r13 r15 eax ecx r8d r9d r12d r14d xmm0 xmm1 xmm2 xmm3 xmm4
..B1.299:                       # Preds ..B1.299 ..B1.298
                                # Execution count [1.61e+06]: Infreq
        movups    (%r11,%r15,8), %xmm6                          #169.29
        movups    16(%r11,%r15,8), %xmm8                        #169.29
        movups    32(%r11,%r15,8), %xmm10                       #169.29
        movups    48(%r11,%r15,8), %xmm12                       #169.29
        mulpd     %xmm2, %xmm6                                  #169.42
        mulpd     %xmm2, %xmm8                                  #169.42
        mulpd     %xmm2, %xmm10                                 #169.42
        mulpd     %xmm2, %xmm12                                 #169.42
        movups    12008(%r11,%r15,8), %xmm5                     #169.29
        movups    12024(%r11,%r15,8), %xmm7                     #169.29
        movups    12040(%r11,%r15,8), %xmm9                     #169.29
        movups    12056(%r11,%r15,8), %xmm11                    #169.29
        mulpd     %xmm0, %xmm5                                  #169.42
        mulpd     %xmm0, %xmm7                                  #169.42
        mulpd     %xmm0, %xmm9                                  #169.42
        mulpd     %xmm0, %xmm11                                 #169.42
        addpd     (%rdi,%r15,8), %xmm6                          #169.42
        addpd     16(%rdi,%r15,8), %xmm8                        #169.42
        addpd     32(%rdi,%r15,8), %xmm10                       #169.42
        addpd     48(%rdi,%r15,8), %xmm12                       #169.42
        addpd     %xmm5, %xmm6                                  #169.42
        addpd     %xmm7, %xmm8                                  #169.42
        addpd     %xmm9, %xmm10                                 #169.42
        addpd     %xmm11, %xmm12                                #169.42
        movups    %xmm6, (%rdi,%r15,8)                          #169.7
        movups    %xmm8, 16(%rdi,%r15,8)                        #169.7
        movups    %xmm10, 32(%rdi,%r15,8)                       #169.7
        movups    %xmm12, 48(%rdi,%r15,8)                       #169.7
        addq      $8, %r15                                      #164.3
        cmpq      %r10, %r15                                    #164.3
        jb        ..B1.299      # Prob 99%                      #164.3
                                # LOE rdx rbx rsi rdi r10 r11 r13 r15 eax ecx r8d r9d r12d r14d xmm0 xmm1 xmm2 xmm3 xmm4
..B1.301:                       # Preds ..B1.299 ..B1.296
                                # Execution count [8.57e+02]: Infreq
        lea       1501(%r12), %r10d                             #164.3
        cmpl      $1500, %r10d                                  #164.3
        ja        ..B1.310      # Prob 50%                      #164.3
                                # LOE rdx rbx rsi r13 eax ecx r8d r9d r12d r14d xmm0 xmm1 xmm2 xmm3 xmm4
..B1.302:                       # Preds ..B1.301
                                # Execution count [1.07e+03]: Infreq
        movl      %r14d, %edi                                   #164.3
        negl      %edi                                          #164.3
        addl      $1500, %edi                                   #164.3
        cmpl      $2, %edi                                      #164.3
        jb        ..B1.348      # Prob 10%                      #164.3
                                # LOE rdx rbx rsi r13 eax ecx edi r8d r9d r12d r14d xmm0 xmm1 xmm2 xmm3 xmm4
..B1.303:                       # Preds ..B1.302
                                # Execution count [1.07e+03]: Infreq
        movl      %edi, %r15d                                   #164.3
        lea       1500(%rax,%r12), %r10d                        #169.35
        movslq    %r10d, %r10                                   #169.35
        andl      $-2, %r15d                                    #164.3
        movq      %rbx, (%rsp)                                  #169.29[spill]
        xorl      %r11d, %r11d                                  #164.3
        movq      %r13, 224(%rsp)                               #169.29[spill]
        lea       (%rbx,%r10,8), %r10                           #169.29
        movq      216(%rsp), %rbx                               #169.29[spill]
                                # LOE rdx rbx rsi r10 eax ecx edi r8d r9d r11d r12d r14d r15d xmm0 xmm1 xmm2 xmm3 xmm4
..B1.304:                       # Preds ..B1.304 ..B1.303
                                # Execution count [1.61e+06]: Infreq
        movups    (%r10), %xmm6                                 #169.29
        movups    12008(%r10), %xmm5                            #169.29
        mulpd     %xmm2, %xmm6                                  #169.42
        mulpd     %xmm0, %xmm5                                  #169.42
        addq      $16, %r10                                     #164.3
        lea       1500(%r11,%r12), %r13d                        #166.5
        movslq    %r13d, %r13                                   #166.5
        addl      $2, %r11d                                     #164.3
        addpd     (%rbx,%r13,8), %xmm6                          #169.42
        addpd     %xmm5, %xmm6                                  #169.42
        movups    %xmm6, (%rbx,%r13,8)                          #169.7
        cmpl      %r15d, %r11d                                  #164.3
        jb        ..B1.304      # Prob 99%                      #164.3
                                # LOE rdx rbx rsi r10 eax ecx edi r8d r9d r11d r12d r14d r15d xmm0 xmm1 xmm2 xmm3 xmm4
..B1.305:                       # Preds ..B1.304
                                # Execution count [1.07e+03]: Infreq
        movq      (%rsp), %rbx                                  #[spill]
        movq      224(%rsp), %r13                               #[spill]
                                # LOE rdx rbx rsi r13 eax ecx edi r8d r9d r14d r15d xmm1 xmm3 xmm4
..B1.306:                       # Preds ..B1.305 ..B1.348 ..B1.347
                                # Execution count [1.07e+03]: Infreq
        movl      %r15d, %r10d                                  #164.3
        cmpl      %edi, %r15d                                   #164.3
        jae       ..B1.310      # Prob 0%                       #164.3
                                # LOE rdx rbx rsi r10 r13 eax ecx edi r8d r9d r14d r15d xmm1 xmm3 xmm4
..B1.307:                       # Preds ..B1.306
                                # Execution count [1.07e+03]: Infreq
        lea       (%r14,%rax), %r11d                            #169.35
        movslq    %r11d, %r11                                   #169.35
        lea       (%rbx,%r11,8), %r12                           #169.29
        movq      216(%rsp), %r11                               #169.29[spill]
        lea       (%r12,%r10,8), %r10                           #169.29
                                # LOE rdx rbx rsi r10 r11 r13 eax ecx edi r8d r9d r14d r15d xmm1 xmm3 xmm4
..B1.308:                       # Preds ..B1.308 ..B1.307
                                # Execution count [1.61e+06]: Infreq
        movsd     (%r10), %xmm2                                 #169.29
        lea       (%r14,%r15), %r12d                            #166.5
        mulsd     %xmm1, %xmm2                                  #169.42
        incl      %r15d                                         #164.3
        movslq    %r12d, %r12                                   #166.5
        movsd     12008(%r10), %xmm0                            #169.29
        addq      $8, %r10                                      #164.3
        mulsd     %xmm3, %xmm0                                  #169.42
        addsd     (%r11,%r12,8), %xmm2                          #169.42
        addsd     %xmm0, %xmm2                                  #169.42
        movsd     %xmm2, (%r11,%r12,8)                          #169.7
        cmpl      %edi, %r15d                                   #164.3
        jb        ..B1.308      # Prob 99%                      #164.3
                                # LOE rdx rbx rsi r10 r11 r13 eax ecx edi r8d r9d r14d r15d xmm1 xmm3 xmm4
..B1.310:                       # Preds ..B1.308 ..B1.301 ..B1.306
                                # Execution count [5.36e+02]: Infreq
        incl      %r8d                                          #167.5
        addl      $3002, %eax                                   #167.5
        addq      $24016, %rdx                                  #167.5
        addq      $16, %rsi                                     #167.5
        cmpl      $750, %r8d                                    #167.5
        jb        ..B1.290      # Prob 99%                      #167.5
                                # LOE rdx rbx rsi r13 eax ecx r8d r9d xmm4
..B1.311:                       # Preds ..B1.310
                                # Execution count [7.21e-01]: Infreq
        movq      208(%rsp), %r14                               #[spill]
        xorl      %edx, %edx                                    #174.3
        pxor      %xmm0, %xmm0                                  #173.3
        xorl      %eax, %eax                                    #174.3
        movsd     %xmm0, 48(%rsp)                               #173.3[spill]
        movsd     %xmm0, 8(%rsp)                                #179.3[spill]
        movaps    %xmm0, %xmm5                                  #174.3
        movsd     48(%rsp), %xmm6                               #174.3[spill]
        movq      216(%rsp), %rcx                               #174.3[spill]
        .align    16,0x90
                                # LOE rax rcx rbx r13 r14 edx xmm4 xmm5 xmm6
..B1.312:                       # Preds ..B1.312 ..B1.311
                                # Execution count [5.41e+02]: Infreq
        movsd     (%rax,%rcx), %xmm0                            #176.46
        incl      %edx                                          #174.3
        andps     .L_2il0floatpacket.11(%rip), %xmm0            #176.37
        movsd     8(%rax,%rcx), %xmm2                           #176.46
        maxsd     %xmm0, %xmm6                                  #176.5
        andps     .L_2il0floatpacket.11(%rip), %xmm2            #176.37
        comisd    %xmm2, %xmm6                                  #176.5
        movsd     (%rax,%r13), %xmm1                            #182.38
        andps     .L_2il0floatpacket.11(%rip), %xmm1            #182.29
        movsd     8(%rax,%r13), %xmm3                           #182.38
        maxsd     %xmm1, %xmm5                                  #182.5
        andps     .L_2il0floatpacket.11(%rip), %xmm3            #182.29
        ja        ..L172        # Prob 50%                      #176.5
        movaps    %xmm2, %xmm6                                  #176.5
..L172:                                                         #
        comisd    %xmm3, %xmm5                                  #182.5
        ja        ..L173        # Prob 50%                      #182.5
        movaps    %xmm3, %xmm5                                  #182.5
..L173:                                                         #
        addq      $16, %rax                                     #174.3
        cmpl      $750, %edx                                    #174.3
        jb        ..B1.312      # Prob 99%                      #174.3
                                # LOE rax rcx rbx r13 r14 edx xmm4 xmm5 xmm6
..B1.313:                       # Preds ..B1.312
                                # Execution count [6.49e-01]: Infreq
        movsd     %xmm4, (%rsp)                                 #185.9[spill]
        movsd     %xmm5, 8(%rsp)                                #[spill]
        movsd     %xmm6, 48(%rsp)                               #[spill]
        movaps    %xmm4, %xmm1                                  #185.9
        movsd     .L_2il0floatpacket.1(%rip), %xmm2             #185.9
                                # LOE rbx r13 r14 xmm1 xmm2 xmm4
..B1.314:                       # Preds ..B1.314 ..B1.313
                                # Execution count [3.60e+00]: Infreq
        mulsd     %xmm2, %xmm1                                  #185.9
        movaps    %xmm4, %xmm0                                  #185.9
        addsd     %xmm1, %xmm0                                  #185.9
        comisd    %xmm4, %xmm0                                  #185.9
        ja        ..B1.314      # Prob 82%                      #185.9
                                # LOE rbx r13 r14 xmm1 xmm2 xmm4
..B1.315:                       # Preds ..B1.314
                                # Execution count [7.21e-01]: Infreq
        movsd     %xmm1, (%rsp)                                 #[spill]
        movaps    %xmm1, %xmm0                                  #185.9
        pxor      %xmm2, %xmm2                                  #190.14
        movsd     40(%rsp), %xmm1                               #190.14[spill]
        addsd     %xmm0, %xmm0                                  #185.9
        comisd    %xmm2, %xmm1                                  #190.14
        movsd     %xmm0, (%rsp)                                 #185.9[spill]
        jbe       ..B1.318      # Prob 50%                      #190.14
                                # LOE rbx r13 r14
..B1.316:                       # Preds ..B1.315
                                # Execution count [3.60e-01]: Infreq
        movsd     .L_2il0floatpacket.4(%rip), %xmm0             #192.33
        mulsd     40(%rsp), %xmm0                               #192.33[spill]
        movsd     .L_2il0floatpacket.6(%rip), %xmm1             #192.33
        divsd     %xmm0, %xmm1                                  #192.33
        movsd     %xmm1, 24(%rsp)                               #192.33[spill]
                                # LOE rbx r13 r14
..B1.318:                       # Preds ..B1.315 ..B1.316
                                # Execution count [7.21e-01]: Infreq
        movl      $10, %edi                                     #201.3
        call      putchar                                       #201.3
                                # LOE rbx r13 r14
..B1.319:                       # Preds ..B1.318
                                # Execution count [7.21e-01]: Infreq
        movl      $il0_peep_printf_format_5, %edi               #202.3
        call      puts                                          #202.3
                                # LOE rbx r13 r14
..B1.320:                       # Preds ..B1.319
                                # Execution count [7.21e-01]: Infreq
        movl      $10, %edi                                     #203.3
        call      putchar                                       #203.3
                                # LOE rbx r13 r14
..B1.321:                       # Preds ..B1.320
                                # Execution count [7.21e-01]: Infreq
        movsd     48(%rsp), %xmm1                               #204.3[spill]
        movl      $.L_2__STRING.12, %edi                        #204.3
        movaps    %xmm1, %xmm0                                  #204.3
        movl      $5, %eax                                      #204.3
        divsd     .L_2il0floatpacket.7(%rip), %xmm0             #204.3
        divsd     64(%rsp), %xmm0                               #204.3[spill]
        divsd     8(%rsp), %xmm0                                #204.3[spill]
        movsd     (%rsp), %xmm2                                 #204.3[spill]
        divsd     %xmm2, %xmm0                                  #204.3
        movsd     (%r13), %xmm3                                 #204.3
        movsd     11992(%r13), %xmm4                            #204.3
..___tag_value_main.186:
#       printf(const char *__restrict__, ...)
        call      printf                                        #204.3
..___tag_value_main.187:
                                # LOE rbx r13 r14
..B1.322:                       # Preds ..B1.321
                                # Execution count [7.21e-01]: Infreq
        movl      $10, %edi                                     #205.3
        call      putchar                                       #205.3
                                # LOE rbx r13 r14
..B1.323:                       # Preds ..B1.322
                                # Execution count [7.21e-01]: Infreq
        movl      $il0_peep_printf_format_6, %edi               #206.3
        call      puts                                          #206.3
                                # LOE rbx r13 r14
..B1.324:                       # Preds ..B1.323
                                # Execution count [7.21e-01]: Infreq
        movl      $10, %edi                                     #207.3
        call      putchar                                       #207.3
                                # LOE rbx r13 r14
..B1.325:                       # Preds ..B1.324
                                # Execution count [7.21e-01]: Infreq
        movsd     40(%rsp), %xmm2                               #208.3[spill]
        movl      $.L_2__STRING.14, %edi                        #208.3
        movsd     24(%rsp), %xmm3                               #208.3[spill]
        movaps    %xmm2, %xmm5                                  #208.3
        movsd     .L_2il0floatpacket.8(%rip), %xmm4             #208.3
        movl      $6, %eax                                      #208.3
        divsd     %xmm3, %xmm4                                  #208.3
        divsd     .L_2il0floatpacket.9(%rip), %xmm5             #208.3
        movsd     32(%rsp), %xmm0                               #208.3[spill]
        movsd     16(%rsp), %xmm1                               #208.3[spill]
..___tag_value_main.191:
#       printf(const char *__restrict__, ...)
        call      printf                                        #208.3
..___tag_value_main.192:
                                # LOE rbx r13 r14
..B1.326:                       # Preds ..B1.325
                                # Execution count [7.21e-01]: Infreq
        movq      %rbx, %rdi                                    #211.3
#       free(void *)
        call      free                                          #211.3
                                # LOE r13 r14
..B1.327:                       # Preds ..B1.326
                                # Execution count [7.21e-01]: Infreq
        movq      %r13, %rdi                                    #212.3
#       free(void *)
        call      free                                          #212.3
                                # LOE r14
..B1.328:                       # Preds ..B1.327
                                # Execution count [7.21e-01]: Infreq
        movq      88(%rsp), %rdi                                #213.3[spill]
#       free(void *)
        call      free                                          #213.3
                                # LOE r14
..B1.329:                       # Preds ..B1.328
                                # Execution count [7.21e-01]: Infreq
        movq      216(%rsp), %rdi                               #214.3[spill]
#       free(void *)
        call      free                                          #214.3
                                # LOE r14
..B1.330:                       # Preds ..B1.329
                                # Execution count [7.21e-01]: Infreq
        movq      232(%rsp), %rdi                               #215.3[spill]
#       free(void *)
        call      free                                          #215.3
                                # LOE r14
..B1.331:                       # Preds ..B1.330
                                # Execution count [7.21e-01]: Infreq
        movq      %r14, %rdi                                    #216.3
#       free(void *)
        call      free                                          #216.3
                                # LOE
..B1.332:                       # Preds ..B1.331
                                # Execution count [7.21e-01]: Infreq
        movl      $10, %edi                                     #220.3
        call      putchar                                       #220.3
                                # LOE
..B1.333:                       # Preds ..B1.332
                                # Execution count [7.21e-01]: Infreq
        movl      $il0_peep_printf_format_7, %edi               #221.3
        call      puts                                          #221.3
                                # LOE
..B1.334:                       # Preds ..B1.333
                                # Execution count [7.21e-01]: Infreq
        movl      $il0_peep_printf_format_8, %edi               #222.3
        call      puts                                          #222.3
                                # LOE
..B1.335:                       # Preds ..B1.334
                                # Execution count [7.21e-01]: Infreq
        movl      $10, %edi                                     #224.3
        call      putchar                                       #224.3
                                # LOE
..B1.336:                       # Preds ..B1.335
                                # Execution count [7.21e-01]: Infreq
        xorl      %edi, %edi                                    #225.3
#       time(time_t *)
        call      time                                          #225.3
                                # LOE rax
..B1.337:                       # Preds ..B1.336
                                # Execution count [7.21e-01]: Infreq
        movq      %rax, (%rsp)                                  #225.3
        lea       (%rsp), %rdi                                  #225.3
#       localtime(const time_t *)
        call      localtime                                     #225.3
                                # LOE rax
..B1.390:                       # Preds ..B1.337
                                # Execution count [7.21e-01]: Infreq
        movl      $time_buffer.959.0.14, %edi                   #225.3
        movl      $40, %esi                                     #225.3
        movl      $.L_2__STRING.16, %edx                        #225.3
        movq      %rax, %rcx                                    #225.3
#       strftime(char *__restrict__, size_t, const char *__restrict__, const struct tm *__restrict__)
        call      strftime                                      #225.3
                                # LOE
..B1.338:                       # Preds ..B1.390
                                # Execution count [7.21e-01]: Infreq
        movl      $time_buffer.959.0.14, %edi                   #225.3
        call      puts                                          #225.3
                                # LOE
..B1.339:                       # Preds ..B1.338
                                # Execution count [7.21e-01]: Infreq
        xorl      %eax, %eax                                    #227.10
        addq      $344, %rsp                                    #227.10
	.cfi_restore 3
        popq      %rbx                                          #227.10
	.cfi_restore 15
        popq      %r15                                          #227.10
	.cfi_restore 14
        popq      %r14                                          #227.10
	.cfi_restore 13
        popq      %r13                                          #227.10
	.cfi_restore 12
        popq      %r12                                          #227.10
        movq      %rbp, %rsp                                    #227.10
        popq      %rbp                                          #227.10
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #227.10
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.340:                       # Preds ..B1.137 ..B1.138
                                # Execution count [2.80e-01]: Infreq
        movl      $10, %edi                                     #124.5
        call      putchar                                       #124.5
                                # LOE
..B1.341:                       # Preds ..B1.340
                                # Execution count [2.80e-01]: Infreq
        movl      $il0_peep_printf_format_9, %edi               #125.5
        call      puts                                          #125.5
                                # LOE
..B1.342:                       # Preds ..B1.341
                                # Execution count [2.80e-01]: Infreq
        movl      $il0_peep_printf_format_10, %edi              #126.5
        call      puts                                          #126.5
                                # LOE
..B1.343:                       # Preds ..B1.342
                                # Execution count [2.80e-01]: Infreq
        movl      $il0_peep_printf_format_11, %edi              #127.5
        call      puts                                          #127.5
                                # LOE
..B1.344:                       # Preds ..B1.343
                                # Execution count [2.80e-01]: Infreq
        movl      $1, %eax                                      #128.12
        addq      $344, %rsp                                    #128.12
	.cfi_restore 3
        popq      %rbx                                          #128.12
	.cfi_restore 15
        popq      %r15                                          #128.12
	.cfi_restore 14
        popq      %r14                                          #128.12
	.cfi_restore 13
        popq      %r13                                          #128.12
	.cfi_restore 12
        popq      %r12                                          #128.12
        movq      %rbp, %rsp                                    #128.12
        popq      %rbp                                          #128.12
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #128.12
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.345:                       # Preds ..B1.243
                                # Execution count [7.20e-02]: Infreq
        xorl      %eax, %eax                                    #150.3
        jmp       ..B1.248      # Prob 100%                     #150.3
                                # LOE rax rbx r13 r14 xmm4
..B1.346:                       # Preds ..B1.255
                                # Execution count [1.07e+02]: Infreq
        xorl      %r13d, %r13d                                  #155.3
        movl      $1500, %edi                                   #155.3
        xorl      %r15d, %r15d                                  #155.3
        jmp       ..B1.270      # Prob 100%                     #155.3
                                # LOE rax rdx rbx r14 ecx esi edi r8d r9d r13d r15d xmm1 xmm3 xmm4
..B1.347:                       # Preds ..B1.291
                                # Execution count [1.07e+02]: Infreq
        xorl      %r14d, %r14d                                  #164.3
        movl      $1500, %edi                                   #164.3
        xorl      %r15d, %r15d                                  #164.3
        jmp       ..B1.306      # Prob 100%                     #164.3
                                # LOE rdx rbx rsi r13 eax ecx edi r8d r9d r14d r15d xmm1 xmm3 xmm4
..B1.348:                       # Preds ..B1.302
                                # Execution count [1.07e+02]: Infreq
        xorl      %r15d, %r15d                                  #164.3
        jmp       ..B1.306      # Prob 100%                     #164.3
                                # LOE rdx rbx rsi r13 eax ecx edi r8d r9d r14d r15d xmm1 xmm3 xmm4
..B1.349:                       # Preds ..B1.276
                                # Execution count [7.14e-02]: Infreq
        xorl      %eax, %eax                                    #164.3
        jmp       ..B1.285      # Prob 100%                     #164.3
                                # LOE rax rbx r13 r14 ecx r10d xmm4
..B1.350:                       # Preds ..B1.266
                                # Execution count [1.07e+02]: Infreq
        xorl      %r15d, %r15d                                  #155.3
        jmp       ..B1.270      # Prob 100%                     #155.3
                                # LOE rax rdx rbx r14 ecx esi edi r8d r9d r13d r15d xmm1 xmm3 xmm4
..B1.351:                       # Preds ..B1.213 ..B1.215 ..B1.217
                                # Execution count [7.02e-02]: Infreq
        xorl      %r15d, %r15d                                  #137.3
        jmp       ..B1.229      # Prob 100%                     #137.3
                                # LOE rax rdx rsi rdi r12 r13 ecx ebx r11d r15d xmm0 xmm1
..B1.354:                       # Preds ..B1.167 ..B1.169 ..B1.171
                                # Execution count [6.61e-02]: Infreq
        xorl      %r14d, %r14d                                  #137.3
        jmp       ..B1.183      # Prob 100%                     #137.3
                                # LOE rcx rbx rdi r12 r13 r15 eax edx r9d r14d xmm0 xmm1
..B1.357:                       # Preds ..B1.93 ..B1.95 ..B1.97
                                # Execution count [5.08e-02]: Infreq
        xorl      %edx, %edx                                    #120.10
        jmp       ..B1.105      # Prob 100%                     #120.10
                                # LOE rcx rbx rsi r8 r10 r11 r12 edx r9d xmm0 xmm1 xmm3
..B1.360:                       # Preds ..B1.84
                                # Execution count [4.78e-02]: Infreq
        xorl      %eax, %eax                                    #120.10
        jmp       ..B1.88       # Prob 100%                     #120.10
                                # LOE rax rcx rbx rsi r8 r11 r12 r9d r10d xmm0 xmm1 xmm3
..B1.361:                       # Preds ..B1.79
                                # Execution count [8.00e-01]: Infreq
        movl      96(%rsp), %edx                                #120.10[spill]
        lea       2(%rsi), %rax                                 #120.10
        movl      %edx, 16(%rsp)                                #120.10[spill]
        jmp       ..B1.130      # Prob 100%                     #120.10
                                # LOE rax r12 xmm0 xmm1
..B1.362:                       # Preds ..B1.60
                                # Execution count [1.56e+02]: Infreq
        xorl      %edx, %edx                                    #110.3
        jmp       ..B1.64       # Prob 100%                     #110.3
        .align    16,0x90
                                # LOE r8 r10 r12 r13 r14 edx ecx ebx esi r9d r11d xmm1 xmm3
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.0:
	.section .rodata, "a"
	.align 16
	.align 8
.2.29_2.switchtab.136:
	.quad	..1.29_0.TAG.0
	.quad	..1.29_0.TAG.1
	.quad	..1.29_0.TAG.2
	.quad	..1.29_0.TAG.3
	.quad	..1.29_0.TAG.4
	.quad	..1.29_0.TAG.5
	.quad	..1.29_0.TAG.6
	.align 8
.2.29_2.switchtab.137:
	.quad	..1.29_1.TAG.0
	.quad	..1.29_1.TAG.1
	.quad	..1.29_1.TAG.2
	.quad	..1.29_1.TAG.3
	.quad	..1.29_1.TAG.4
	.quad	..1.29_1.TAG.5
	.quad	..1.29_1.TAG.6
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
il0_peep_printf_format_0:
	.long	1347307852
	.long	1598767937
	.long	1129203010
	.word	72
	.space 2, 0x00 	# pad
	.align 4
il0_peep_printf_format_1:
	.long	541270048
	.long	1936876918
	.long	7237481
	.align 4
il0_peep_printf_format_2:
	.long	1750343712
	.long	1229725797
	.long	1128353870
	.long	1700929611
	.long	1835557742
	.long	778793569
	.byte	0
	.space 3, 0x00 	# pad
	.align 4
il0_peep_printf_format_3:
	.long	1632378912
	.long	1635084142
	.long	540697959
	.word	67
	.space 2, 0x00 	# pad
	.align 4
il0_peep_printf_format_4:
	.long	1631854624
	.long	2037670260
	.long	540697968
	.long	1651863364
	.long	1881171308
	.long	1768121714
	.long	1852795251
	.long	1634038304
	.word	108
	.space 2, 0x00 	# pad
	.align 4
il0_peep_printf_format_7:
	.long	1347307852
	.long	1598767937
	.long	1129203010
	.word	72
	.space 2, 0x00 	# pad
	.align 4
il0_peep_printf_format_8:
	.long	1867391008
	.long	1818324338
	.long	1684956448
	.long	543584032
	.long	1667594341
	.long	1869182069
	.word	11886
	.byte	0
	.space 1, 0x00 	# pad
	.align 4
il0_peep_printf_format_9:
	.long	1347307852
	.long	1598767937
	.long	1129203010
	.long	539828296
	.long	1635017030
	.long	1919230060
	.long	561147762
	.byte	0
	.space 3, 0x00 	# pad
	.align 4
il0_peep_printf_format_10:
	.long	1750343712
	.long	1634541669
	.long	2020176500
	.long	1763721504
	.long	1885413491
	.long	1701994864
	.long	2037150830
	.long	1852404512
	.long	1634497895
	.word	11890
	.byte	0
	.space 1, 0x00 	# pad
	.align 4
il0_peep_printf_format_11:
	.long	1648435232
	.long	1836216174
	.long	1696623713
	.long	1864393838
	.long	2019893350
	.long	1953850213
	.long	778989417
	.byte	0
	.section .rodata.str1.32, "aMS",@progbits,1
	.align 32
	.align 32
il0_peep_printf_format_5:
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
	.long	6114907
	.space 24, 0x00 	# pad
	.align 32
il0_peep_printf_format_6:
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
	.long	7301492
	.data
# -- End  main
	.text
.L_2__routine_start_cpu_time_1:
# -- Begin  cpu_time
	.text
# mark_begin;
       .align    16,0x90
	.globl cpu_time
# --- cpu_time(void)
cpu_time:
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_cpu_time.228:
..L229:
                                                        #263.1
        pushq     %rsi                                          #263.1
	.cfi_def_cfa_offset 16
#       clock(void)
        call      clock                                         #266.22
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
                                # Execution count [1.00e+00]
        pxor      %xmm0, %xmm0                                  #266.22
        cvtsi2sdq %rax, %xmm0                                   #266.22
        divsd     .L_2il0floatpacket.4(%rip), %xmm0             #267.11
        popq      %rcx                                          #269.10
	.cfi_def_cfa_offset 8
        ret                                                     #269.10
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	cpu_time,@function
	.size	cpu_time,.-cpu_time
..LNcpu_time.1:
	.data
# -- End  cpu_time
	.text
.L_2__routine_start_daxpy_2:
# -- Begin  daxpy
	.text
# mark_begin;
       .align    16,0x90
	.globl daxpy
# --- daxpy(int, double, double *, int, double *, int)
daxpy:
# parameter 1: %edi
# parameter 2: %xmm0
# parameter 3: %rsi
# parameter 4: %edx
# parameter 5: %rcx
# parameter 6: %r8d
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_daxpy.233:
..L234:
                                                        #321.1
        pushq     %r12                                          #321.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #321.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #321.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #321.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rbx                                          #321.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        pushq     %rbp                                          #321.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
        movq      %rcx, %rbx                                    #321.1
        movl      %edx, %ecx                                    #321.1
        testl     %edi, %edi                                    #327.13
        jle       ..B3.47       # Prob 6%                       #327.13
                                # LOE rbx rsi ecx edi r8d xmm0
..B3.2:                         # Preds ..B3.1
                                # Execution count [9.31e-01]
        pxor      %xmm1, %xmm1                                  #332.3
        ucomisd   %xmm1, %xmm0                                  #332.14
        jp        ..B3.3        # Prob 0%                       #332.14
        je        ..B3.47       # Prob 6%                       #332.14
                                # LOE rbx rsi ecx edi r8d xmm0
..B3.3:                         # Preds ..B3.2
                                # Execution count [8.67e-01]
        lea       -1(%rcx), %edx                                #340.16
        lea       -1(%r8), %eax                                 #340.16
        orl       %eax, %edx                                    #340.16
        je        ..B3.33       # Prob 50%                      #340.16
                                # LOE rbx rsi ecx edi r8d xmm0
..B3.4:                         # Preds ..B3.3
                                # Execution count [4.33e-01]
        testl     %ecx, %ecx                                    #342.15
        jl        ..B3.49       # Prob 16%                      #342.15
                                # LOE rbx rsi ecx edi r8d xmm0
..B3.5:                         # Preds ..B3.4
                                # Execution count [3.64e-01]
        xorl      %edx, %edx                                    #344.7
                                # LOE rdx rbx rsi ecx edi r8d xmm0
..B3.6:                         # Preds ..B3.5 ..B3.49
                                # Execution count [4.33e-01]
        testl     %r8d, %r8d                                    #351.15
        jl        ..B3.48       # Prob 16%                      #351.15
                                # LOE rdx rbx rsi ecx edi r8d xmm0
..B3.7:                         # Preds ..B3.6
                                # Execution count [3.64e-01]
        xorl      %eax, %eax                                    #353.7
                                # LOE rax rdx rbx rsi ecx edi r8d xmm0
..B3.8:                         # Preds ..B3.7 ..B3.48
                                # Execution count [4.33e-01]
        cmpl      $6, %edi                                      #360.5
        jle       ..B3.27       # Prob 50%                      #360.5
                                # LOE rax rdx rbx rsi ecx edi r8d xmm0
..B3.9:                         # Preds ..B3.8
                                # Execution count [0.00e+00]
        lea       (%rsi,%rdx,8), %rbp                           #362.30
        movq      %rbp, -16(%rsp)                               #362.30[spill]
        lea       (,%rcx,8), %ebp                               #273.6
        lea       (%rbx,%rax,8), %r9                            #362.16
        movq      %r9, -24(%rsp)                                #362.16[spill]
        cmpl      $8, %ebp                                      #360.5
        jl        ..B3.15       # Prob 50%                      #360.5
                                # LOE rax rdx rbx rsi r9 ecx ebp edi r8d xmm0
..B3.10:                        # Preds ..B3.9
                                # Execution count [0.00e+00]
        lea       (,%r8,8), %r11d                               #273.6
        cmpl      $8, %r11d                                     #360.5
        jl        ..B3.27       # Prob 50%                      #360.5
                                # LOE rax rdx rbx rsi r9 ecx ebp edi r8d r11d xmm0
..B3.11:                        # Preds ..B3.10
                                # Execution count [0.00e+00]
        cmpl      %r11d, %ebp                                   #360.5
        jg        ..B3.57       # Prob 50%                      #360.5
                                # LOE rax rdx rbx rsi r9 ecx ebp edi r8d r11d xmm0
..B3.12:                        # Preds ..B3.11
                                # Execution count [0.00e+00]
        movslq    %edi, %r12                                    #273.6
        movslq    %ebp, %r10                                    #273.6
        decq      %r12                                          #273.6
        imulq     %r12, %r10                                    #273.6
        addq      $8, %r10                                      #273.6
        subq      -16(%rsp), %r9                                #362.30[spill]
        cmpq      %r10, %r9                                     #360.5
        jge       ..B3.21       # Prob 50%                      #360.5
                                # LOE rax rdx rbx rsi r12 ecx ebp edi r8d r11d xmm0
..B3.13:                        # Preds ..B3.12
                                # Execution count [0.00e+00]
        cmpl      %ebp, %r11d                                   #360.5
        jle       ..B3.14       # Prob 50%                      #360.5
        jmp       ..B3.27       # Prob 100%                     #360.5
                                # LOE rax rdx rbx rsi r12 ecx edi r8d r11d xmm0
..B3.57:                        # Preds ..B3.11
                                # Execution count [0.00e+00]
        movslq    %edi, %r12                                    #273.6
        decq      %r12                                          #273.6
                                # LOE rax rdx rbx rsi r12 ecx edi r8d r11d xmm0
..B3.14:                        # Preds ..B3.57 ..B3.13
                                # Execution count [0.00e+00]
        movslq    %r11d, %r11                                   #273.6
        imulq     %r11, %r12                                    #273.6
        movq      -16(%rsp), %rbp                               #362.16[spill]
        addq      $8, %r12                                      #273.6
        subq      -24(%rsp), %rbp                               #362.16[spill]
        cmpq      %r12, %rbp                                    #360.5
        jge       ..B3.21       # Prob 50%                      #360.5
        jmp       ..B3.27       # Prob 100%                     #360.5
                                # LOE rax rdx rbx rsi ecx edi r8d xmm0
..B3.15:                        # Preds ..B3.9
                                # Execution count [0.00e+00]
        cmpl      $-8, %ebp                                     #360.5
        jg        ..B3.27       # Prob 50%                      #360.5
                                # LOE rax rdx rbx rsi r9 ecx ebp edi r8d xmm0
..B3.16:                        # Preds ..B3.15
                                # Execution count [0.00e+00]
        lea       (,%r8,8), %r11d                               #273.6
        cmpl      $-8, %r11d                                    #360.5
        jg        ..B3.27       # Prob 50%                      #360.5
                                # LOE rax rdx rbx rsi r9 ecx ebp edi r8d r11d xmm0
..B3.17:                        # Preds ..B3.16
                                # Execution count [0.00e+00]
        cmpl      %r11d, %ebp                                   #360.5
        jg        ..B3.56       # Prob 50%                      #360.5
                                # LOE rax rdx rbx rsi r9 ecx ebp edi r8d r11d xmm0
..B3.18:                        # Preds ..B3.17
                                # Execution count [0.00e+00]
        movq      %r9, %r10                                     #362.30
        movl      %r11d, %r9d                                   #273.6
        movslq    %edi, %r12                                    #273.6
        negl      %r9d                                          #273.6
        movslq    %r9d, %r9                                     #273.6
        decq      %r12                                          #273.6
        imulq     %r12, %r9                                     #273.6
        addq      $8, %r9                                       #273.6
        subq      -16(%rsp), %r10                               #362.30[spill]
        cmpq      %r9, %r10                                     #360.5
        jg        ..B3.21       # Prob 50%                      #360.5
                                # LOE rax rdx rbx rsi r12 ecx ebp edi r8d r11d xmm0
..B3.19:                        # Preds ..B3.18
                                # Execution count [0.00e+00]
        cmpl      %ebp, %r11d                                   #360.5
        jle       ..B3.20       # Prob 50%                      #360.5
        jmp       ..B3.27       # Prob 100%                     #360.5
                                # LOE rax rdx rbx rsi r12 ecx ebp edi r8d xmm0
..B3.56:                        # Preds ..B3.17
                                # Execution count [0.00e+00]
        movslq    %edi, %r12                                    #273.6
        decq      %r12                                          #273.6
                                # LOE rax rdx rbx rsi r12 ecx ebp edi r8d xmm0
..B3.20:                        # Preds ..B3.56 ..B3.19
                                # Execution count [0.00e+00]
        negl      %ebp                                          #273.6
        movslq    %ebp, %rbp                                    #273.6
        imulq     %rbp, %r12                                    #273.6
        movq      -16(%rsp), %r9                                #362.16[spill]
        addq      $8, %r12                                      #273.6
        subq      -24(%rsp), %r9                                #362.16[spill]
        cmpq      %r12, %r9                                     #360.5
        jle       ..B3.27       # Prob 50%                      #360.5
                                # LOE rax rdx rbx rsi ecx edi r8d xmm0
..B3.21:                        # Preds ..B3.14 ..B3.18 ..B3.20 ..B3.12
                                # Execution count [2.17e-01]
        movl      %edi, %r10d                                   #360.5
        movl      $1, %r11d                                     #360.5
        xorl      %r9d, %r9d                                    #360.5
        shrl      $1, %r10d                                     #360.5
        je        ..B3.25       # Prob 9%                       #360.5
                                # LOE rax rdx rbx rsi ecx edi r8d r9d r10d r11d xmm0
..B3.22:                        # Preds ..B3.21
                                # Execution count [1.95e-01]
        movl      %ecx, -40(%rsp)                               #362.7[spill]
        lea       (%rcx,%rcx), %r14d                            #273.6
        movslq    %r14d, %r13                                   #362.7
        lea       (%r8,%r8), %r11d                              #362.7
        negl      %r14d                                         #362.7
        negl      %r11d                                         #362.7
        movq      %rbx, -32(%rsp)                               #362.7[spill]
        xorl      %ebp, %ebp                                    #362.7
        movq      -16(%rsp), %rbx                               #362.7[spill]
        lea       (%r14,%rcx,2), %r14d                          #362.7
        movslq    %r14d, %r14                                   #362.7
        lea       (%r11,%r8,2), %r12d                           #362.7
        movslq    %ecx, %r11                                    #362.7
        movq      -24(%rsp), %rcx                               #362.7[spill]
        .align    16,0x90
                                # LOE rax rdx rcx rbx rsi r11 r13 r14 ebp edi r8d r9d r10d r12d xmm0
..B3.23:                        # Preds ..B3.23 ..B3.22
                                # Execution count [5.42e-01]
        movsd     (%rbx,%r14,8), %xmm1                          #362.30
        lea       (%r12,%rbp), %r15d                            #362.7
        mulsd     %xmm0, %xmm1                                  #362.30
        incl      %r9d                                          #360.5
        movslq    %r15d, %r15                                   #362.7
        addq      %r13, %r14                                    #360.5
        movsd     (%rbx,%r11,8), %xmm2                          #362.30
        addq      %r13, %r11                                    #360.5
        mulsd     %xmm0, %xmm2                                  #362.30
        addsd     (%rcx,%r15,8), %xmm1                          #362.30
        movsd     %xmm1, (%rcx,%r15,8)                          #362.7
        movl      %ebp, %r15d                                   #362.7
        subl      %r8d, %r15d                                   #362.7
        lea       (%rbp,%r8,2), %ebp                            #360.5
        lea       (%r15,%r8,2), %r15d                           #362.7
        movslq    %r15d, %r15                                   #362.7
        addsd     (%rcx,%r15,8), %xmm2                          #362.30
        movsd     %xmm2, (%rcx,%r15,8)                          #362.7
        cmpl      %r10d, %r9d                                   #360.5
        jb        ..B3.23       # Prob 63%                      #360.5
                                # LOE rax rdx rcx rbx rsi r11 r13 r14 ebp edi r8d r9d r10d r12d xmm0
..B3.24:                        # Preds ..B3.23
                                # Execution count [1.95e-01]
        movl      -40(%rsp), %ecx                               #[spill]
        lea       1(%r9,%r9), %r11d                             #362.7
        movq      -32(%rsp), %rbx                               #[spill]
                                # LOE rax rdx rbx rsi ecx edi r8d r11d xmm0
..B3.25:                        # Preds ..B3.24 ..B3.21
                                # Execution count [2.17e-01]
        lea       -1(%r11), %ebp                                #360.5
        cmpl      %edi, %ebp                                    #360.5
        jae       ..B3.47       # Prob 9%                       #360.5
                                # LOE rax rdx rbx rsi ecx r8d r11d xmm0
..B3.26:                        # Preds ..B3.25
                                # Execution count [1.95e-01]
        movslq    %r11d, %r11                                   #362.7
        movslq    %ecx, %rcx                                    #362.7
        decq      %r11                                          #360.5
        imulq     %r11, %rcx                                    #362.7
        movslq    %r8d, %r8                                     #362.7
        addq      %rcx, %rdx                                    #362.7
        imulq     %r11, %r8                                     #362.7
        movsd     (%rsi,%rdx,8), %xmm1                          #362.30
        addq      %r8, %rax                                     #362.7
        mulsd     %xmm1, %xmm0                                  #362.30
        addsd     (%rbx,%rax,8), %xmm0                          #362.30
        movsd     %xmm0, (%rbx,%rax,8)                          #362.7
	.cfi_restore 6
        popq      %rbp                                          #362.7
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        popq      %rbx                                          #362.7
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #362.7
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #362.7
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #362.7
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #362.7
	.cfi_def_cfa_offset 8
        ret                                                     #362.7
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -48
	.cfi_offset 6, -56
	.cfi_offset 12, -16
	.cfi_offset 13, -24
	.cfi_offset 14, -32
	.cfi_offset 15, -40
                                # LOE
..B3.27:                        # Preds ..B3.13 ..B3.10 ..B3.14 ..B3.15 ..B3.16
                                #       ..B3.8 ..B3.19 ..B3.20
                                # Execution count [2.17e-01]
        movl      %edi, %r10d                                   #360.5
        movl      $1, %r11d                                     #360.5
        xorl      %r9d, %r9d                                    #360.5
        shrl      $1, %r10d                                     #360.5
        je        ..B3.31       # Prob 9%                       #360.5
                                # LOE rax rdx rbx rsi ecx edi r8d r9d r10d r11d xmm0
..B3.28:                        # Preds ..B3.27
                                # Execution count [1.95e-01]
        movl      %ecx, -40(%rsp)                               #362.7[spill]
        lea       (%rcx,%rcx), %r15d                            #273.6
        movslq    %r15d, %r13                                   #362.7
        lea       (%r8,%r8), %r12d                              #362.7
        negl      %r15d                                         #362.7
        negl      %r12d                                         #362.7
        movq      %rbx, -32(%rsp)                               #362.7[spill]
        lea       (%rsi,%rdx,8), %r11                           #362.30
        movq      %r11, -24(%rsp)                               #362.30[spill]
        xorl      %ebp, %ebp                                    #362.7
        lea       (%rbx,%rax,8), %r11                           #362.16
        lea       (%r15,%rcx,2), %r15d                          #362.7
        movslq    %r15d, %r15                                   #362.7
        lea       (%r12,%r8,2), %r14d                           #362.7
        movslq    %ecx, %r12                                    #362.7
        movq      -24(%rsp), %rcx                               #362.7[spill]
        .align    16,0x90
                                # LOE rax rdx rcx rsi r11 r12 r13 r15 ebp edi r8d r9d r10d r14d xmm0
..B3.29:                        # Preds ..B3.29 ..B3.28
                                # Execution count [5.42e-01]
        movsd     (%rcx,%r15,8), %xmm1                          #362.30
        lea       (%r14,%rbp), %ebx                             #362.7
        mulsd     %xmm0, %xmm1                                  #362.30
        incl      %r9d                                          #360.5
        movslq    %ebx, %rbx                                    #362.7
        addq      %r13, %r15                                    #360.5
        addsd     (%r11,%rbx,8), %xmm1                          #362.30
        movsd     %xmm1, (%r11,%rbx,8)                          #362.7
        movl      %ebp, %ebx                                    #362.7
        subl      %r8d, %ebx                                    #362.7
        lea       (%rbp,%r8,2), %ebp                            #360.5
        movsd     (%rcx,%r12,8), %xmm2                          #362.30
        addq      %r13, %r12                                    #360.5
        mulsd     %xmm0, %xmm2                                  #362.30
        lea       (%rbx,%r8,2), %ebx                            #362.7
        movslq    %ebx, %rbx                                    #362.7
        addsd     (%r11,%rbx,8), %xmm2                          #362.30
        movsd     %xmm2, (%r11,%rbx,8)                          #362.7
        cmpl      %r10d, %r9d                                   #360.5
        jb        ..B3.29       # Prob 63%                      #360.5
                                # LOE rax rdx rcx rsi r11 r12 r13 r15 ebp edi r8d r9d r10d r14d xmm0
..B3.30:                        # Preds ..B3.29
                                # Execution count [1.95e-01]
        movl      -40(%rsp), %ecx                               #[spill]
        lea       1(%r9,%r9), %r11d                             #362.7
        movq      -32(%rsp), %rbx                               #[spill]
                                # LOE rax rdx rbx rsi ecx edi r8d r11d xmm0
..B3.31:                        # Preds ..B3.30 ..B3.27
                                # Execution count [2.17e-01]
        lea       -1(%r11), %ebp                                #360.5
        cmpl      %edi, %ebp                                    #360.5
        jae       ..B3.47       # Prob 9%                       #360.5
                                # LOE rax rdx rbx rsi ecx r8d r11d xmm0
..B3.32:                        # Preds ..B3.31
                                # Execution count [1.95e-01]
        movslq    %r11d, %r11                                   #362.7
        movslq    %ecx, %rcx                                    #362.7
        decq      %r11                                          #360.5
        imulq     %r11, %rcx                                    #362.7
        movslq    %r8d, %r8                                     #362.7
        addq      %rcx, %rdx                                    #362.7
        imulq     %r11, %r8                                     #362.7
        movsd     (%rsi,%rdx,8), %xmm1                          #362.30
        addq      %r8, %rax                                     #362.7
        mulsd     %xmm1, %xmm0                                  #362.30
        addsd     (%rbx,%rax,8), %xmm0                          #362.30
        movsd     %xmm0, (%rbx,%rax,8)                          #362.7
	.cfi_restore 6
        popq      %rbp                                          #362.7
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        popq      %rbx                                          #362.7
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #362.7
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #362.7
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #362.7
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #362.7
	.cfi_def_cfa_offset 8
        ret                                                     #362.7
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -48
	.cfi_offset 6, -56
	.cfi_offset 12, -16
	.cfi_offset 13, -24
	.cfi_offset 14, -32
	.cfi_offset 15, -40
                                # LOE
..B3.33:                        # Preds ..B3.3
                                # Execution count [4.33e-01]
        movl      %edi, %eax                                    #372.13
        andl      $-2147483645, %eax                            #372.13
        jge       ..B3.54       # Prob 50%                      #372.13
                                # LOE rbx rsi eax edi xmm0
..B3.55:                        # Preds ..B3.33
                                # Execution count [4.33e-01]
        subl      $1, %eax                                      #372.13
        orl       $-4, %eax                                     #372.13
        incl      %eax                                          #372.13
                                # LOE rbx rsi eax edi xmm0
..B3.54:                        # Preds ..B3.33 ..B3.55
                                # Execution count [4.33e-01]
        testl     %eax, %eax                                    #374.22
        jle       ..B3.40       # Prob 50%                      #374.22
                                # LOE rbx rsi eax edi xmm0
..B3.34:                        # Preds ..B3.54
                                # Execution count [4.33e-01]
        movl      %eax, %edx                                    #374.5
        xorl      %ebp, %ebp                                    #374.5
        movl      $1, %r8d                                      #374.5
        xorl      %ecx, %ecx                                    #374.5
        shrl      $1, %edx                                      #374.5
        je        ..B3.38       # Prob 15%                      #374.5
                                # LOE rdx rcx rbx rbp rsi eax edi r8d xmm0
..B3.36:                        # Preds ..B3.34 ..B3.36
                                # Execution count [1.02e+00]
        movsd     (%rcx,%rsi), %xmm1                            #376.28
        incq      %rbp                                          #374.5
        mulsd     %xmm0, %xmm1                                  #376.28
        addsd     (%rcx,%rbx), %xmm1                            #376.28
        movsd     %xmm1, (%rcx,%rbx)                            #376.7
        movsd     8(%rcx,%rsi), %xmm2                           #376.28
        mulsd     %xmm0, %xmm2                                  #376.28
        addsd     8(%rcx,%rbx), %xmm2                           #376.28
        movsd     %xmm2, 8(%rcx,%rbx)                           #376.7
        addq      $16, %rcx                                     #374.5
        cmpq      %rdx, %rbp                                    #374.5
        jb        ..B3.36       # Prob 63%                      #374.5
                                # LOE rdx rcx rbx rbp rsi eax edi xmm0
..B3.37:                        # Preds ..B3.36
                                # Execution count [3.67e-01]
        lea       1(%rbp,%rbp), %r8d                            #376.7
                                # LOE rbx rsi eax edi r8d xmm0
..B3.38:                        # Preds ..B3.37 ..B3.34
                                # Execution count [4.33e-01]
        lea       -1(%r8), %edx                                 #374.5
        cmpl      %eax, %edx                                    #374.5
        jae       ..B3.40       # Prob 15%                      #374.5
                                # LOE rbx rsi eax edi r8d xmm0
..B3.39:                        # Preds ..B3.38
                                # Execution count [3.67e-01]
        movslq    %r8d, %r8                                     #374.5
        movsd     -8(%rsi,%r8,8), %xmm1                         #376.28
        mulsd     %xmm0, %xmm1                                  #376.28
        addsd     -8(%rbx,%r8,8), %xmm1                         #376.28
        movsd     %xmm1, -8(%rbx,%r8,8)                         #376.7
                                # LOE rbx rsi eax edi xmm0
..B3.40:                        # Preds ..B3.54 ..B3.38 ..B3.39
                                # Execution count [4.33e-01]
        cmpl      %edi, %eax                                    #379.22
        jge       ..B3.47       # Prob 50%                      #379.22
                                # LOE rbx rsi eax edi xmm0
..B3.41:                        # Preds ..B3.40
                                # Execution count [4.33e-01]
        xorl      %r9d, %r9d                                    #379.5
        lea       1(%rax), %edx                                 #379.11
        subl      %edx, %edi                                    #321.1
        movl      $1, %r10d                                     #379.5
        lea       4(%rdi), %ecx                                 #321.1
        sarl      $1, %ecx                                      #321.1
        shrl      $30, %ecx                                     #321.1
        lea       4(%rdi,%rcx), %r8d                            #321.1
        xorl      %edi, %edi                                    #379.5
        andl      $-4, %r8d                                     #321.1
        movl      %r8d, %ebp                                    #379.5
        shrl      $1, %ebp                                      #379.5
        je        ..B3.45       # Prob 9%                       #379.5
                                # LOE rbx rbp rsi rdi r9 eax r8d r10d xmm0
..B3.42:                        # Preds ..B3.41
                                # Execution count [3.90e-01]
        movslq    %eax, %rax                                    #381.7
        lea       (%rsi,%rax,8), %rcx                           #381.32
        lea       (%rbx,%rax,8), %rdx                           #381.17
                                # LOE rdx rcx rbx rbp rsi rdi r9 eax r8d xmm0
..B3.43:                        # Preds ..B3.43 ..B3.42
                                # Execution count [1.08e+00]
        movsd     (%rdi,%rcx), %xmm1                            #381.32
        incq      %r9                                           #379.5
        mulsd     %xmm0, %xmm1                                  #381.32
        addsd     (%rdi,%rdx), %xmm1                            #381.32
        movsd     %xmm1, (%rdi,%rdx)                            #381.7
        movsd     8(%rdi,%rcx), %xmm2                           #381.32
        mulsd     %xmm0, %xmm2                                  #381.32
        addsd     8(%rdi,%rdx), %xmm2                           #381.32
        movsd     %xmm2, 8(%rdi,%rdx)                           #381.7
        addq      $16, %rdi                                     #379.5
        cmpq      %rbp, %r9                                     #379.5
        jb        ..B3.43       # Prob 63%                      #379.5
                                # LOE rdx rcx rbx rbp rsi rdi r9 eax r8d xmm0
..B3.44:                        # Preds ..B3.43
                                # Execution count [3.90e-01]
        lea       1(%r9,%r9), %r10d                             #381.7
                                # LOE rbx rsi eax r8d r10d xmm0
..B3.45:                        # Preds ..B3.44 ..B3.41
                                # Execution count [4.33e-01]
        lea       -1(%r10), %edx                                #379.5
        cmpl      %r8d, %edx                                    #379.5
        jae       ..B3.47       # Prob 9%                       #379.5
                                # LOE rbx rsi eax r10d xmm0
..B3.46:                        # Preds ..B3.45
                                # Execution count [3.90e-01]
        movslq    %eax, %rax                                    #381.7
        movslq    %r10d, %r10                                   #381.7
        addq      %r10, %rax                                    #379.5
        movsd     -8(%rsi,%rax,8), %xmm1                        #381.32
        mulsd     %xmm1, %xmm0                                  #381.32
        addsd     -8(%rbx,%rax,8), %xmm0                        #381.32
        movsd     %xmm0, -8(%rbx,%rax,8)                        #381.7
                                # LOE
..B3.47:                        # Preds ..B3.1 ..B3.2 ..B3.31 ..B3.25 ..B3.40
                                #       ..B3.45 ..B3.46
                                # Execution count [8.67e-01]
	.cfi_restore 6
        popq      %rbp                                          #387.3
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        popq      %rbx                                          #387.3
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #387.3
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #387.3
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #387.3
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #387.3
	.cfi_def_cfa_offset 8
        ret                                                     #387.3
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -48
	.cfi_offset 6, -56
	.cfi_offset 12, -16
	.cfi_offset 13, -24
	.cfi_offset 14, -32
	.cfi_offset 15, -40
                                # LOE
..B3.48:                        # Preds ..B3.6
                                # Execution count [6.93e-02]: Infreq
        movslq    %edi, %rax                                    #357.7
        negq      %rax                                          #357.20
        movslq    %r8d, %r8                                     #357.7
        incq      %rax                                          #357.20
        imulq     %r8, %rax                                     #357.26
        jmp       ..B3.8        # Prob 100%                     #357.26
                                # LOE rax rdx rbx rsi ecx edi r8d xmm0
..B3.49:                        # Preds ..B3.4
                                # Execution count [6.93e-02]: Infreq
        movslq    %edi, %rdx                                    #348.7
        negq      %rdx                                          #348.20
        movslq    %ecx, %rcx                                    #348.7
        incq      %rdx                                          #348.20
        imulq     %rcx, %rdx                                    #348.26
        jmp       ..B3.6        # Prob 100%                     #348.26
        .align    16,0x90
                                # LOE rdx rbx rsi ecx edi r8d xmm0
	.cfi_endproc
# mark_end;
	.type	daxpy,@function
	.size	daxpy,.-daxpy
..LNdaxpy.2:
	.data
# -- End  daxpy
	.text
.L_2__routine_start_ddot_3:
# -- Begin  ddot
	.text
# mark_begin;
       .align    16,0x90
	.globl ddot
# --- ddot(int, double *, int, double *, int)
ddot:
# parameter 1: %edi
# parameter 2: %rsi
# parameter 3: %edx
# parameter 4: %rcx
# parameter 5: %r8d
..B4.1:                         # Preds ..B4.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_ddot.325:
..L326:
                                                        #439.1
        pushq     %r12                                          #439.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #439.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #439.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #439.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rbx                                          #439.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        pushq     %rbp                                          #439.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
        pxor      %xmm0, %xmm0                                  #446.3
        testl     %edi, %edi                                    #448.13
        jle       ..B4.44       # Prob 6%                       #448.13
                                # LOE rcx rsi edx edi r8d xmm0
..B4.2:                         # Preds ..B4.1
                                # Execution count [9.31e-01]
        lea       -1(%rdx), %ebx                                #456.16
        lea       -1(%r8), %eax                                 #456.16
        orl       %eax, %ebx                                    #456.16
        je        ..B4.11       # Prob 50%                      #456.16
                                # LOE rcx rsi edx edi r8d xmm0
..B4.3:                         # Preds ..B4.2
                                # Execution count [4.66e-01]
        movl      %edi, %eax                                    #464.20
        movl      %edx, %r13d                                   #464.26
        negl      %eax                                          #464.20
        movl      %edx, %r14d                                   #464.7
        incl      %eax                                          #464.20
        imull     %eax, %r13d                                   #464.26
        imull     %r8d, %eax                                    #473.26
        sarl      $31, %r14d                                    #464.7
        andl      %r13d, %r14d                                  #464.7
        movl      %r8d, %r13d                                   #473.7
        sarl      $31, %r13d                                    #473.7
        movslq    %edi, %r15                                    #476.5
        andl      %eax, %r13d                                   #473.7
        cmpq      $8, %r15                                      #476.5
        jl        ..B4.42       # Prob 10%                      #476.5
                                # LOE rcx rsi r15 edx edi r8d r13d r14d xmm0
..B4.4:                         # Preds ..B4.3
                                # Execution count [4.19e-01]
        movl      %r14d, -32(%rsp)                              #478.7[spill]
        andl      $-8, %edi                                     #476.5
        movl      %r13d, -40(%rsp)                              #478.7[spill]
        pxor      %xmm0, %xmm0                                  #446.3
        movl      %r13d, -16(%rsp)                              #478.7[spill]
        xorl      %r11d, %r11d                                  #476.5
        movl      %r14d, -8(%rsp)                               #478.7[spill]
        lea       (%rdx,%rdx,2), %eax                           #478.7
        movslq    %edx, %r10                                    #478.7
        lea       (%r8,%r8,2), %r12d                            #478.7
        movslq    %r14d, %r9                                    #478.7
        movaps    %xmm0, %xmm1                                  #446.3
        movslq    %r8d, %rbp                                    #478.7
        movslq    %r13d, %rbx                                   #478.7
        movq      %r15, -24(%rsp)                               #478.7[spill]
        movl      -40(%rsp), %r13d                              #478.7[spill]
        movl      -32(%rsp), %r14d                              #478.7[spill]
                                # LOE rcx rbx rbp rsi r9 r10 eax edx edi r8d r11d r12d r13d r14d xmm0 xmm1
..B4.5:                         # Preds ..B4.5 ..B4.4
                                # Execution count [2.33e+00]
        addl      $8, %r11d                                     #476.5
        lea       (%rsi,%r9,8), %r15                            #478.23
        movsd     (%r15), %xmm3                                 #478.23
        lea       (%r9,%r10,8), %r9                             #476.5
        movhpd    (%r15,%r10,8), %xmm3                          #478.23
        lea       (%rcx,%rbx,8), %r15                           #478.32
        movsd     (%r15), %xmm2                                 #478.32
        lea       (%rbx,%rbp,8), %rbx                           #476.5
        movhpd    (%r15,%rbp,8), %xmm2                          #478.32
        lea       (%r14,%rdx,2), %r15d                          #478.7
        movslq    %r15d, %r15                                   #478.7
        mulpd     %xmm2, %xmm3                                  #478.32
        addpd     %xmm3, %xmm0                                  #478.32
        lea       (%rsi,%r15,8), %r15                           #478.23
        movsd     (%r15), %xmm5                                 #478.23
        movhpd    (%r15,%r10,8), %xmm5                          #478.23
        lea       (%r13,%r8,2), %r15d                           #478.7
        movslq    %r15d, %r15                                   #478.7
        lea       (%rcx,%r15,8), %r15                           #478.32
        movsd     (%r15), %xmm4                                 #478.32
        movhpd    (%r15,%rbp,8), %xmm4                          #478.32
        lea       (%r14,%rdx,4), %r15d                          #478.7
        movslq    %r15d, %r15                                   #478.7
        mulpd     %xmm4, %xmm5                                  #478.32
        addpd     %xmm5, %xmm1                                  #478.32
        lea       (%rsi,%r15,8), %r15                           #478.23
        movsd     (%r15), %xmm7                                 #478.23
        movhpd    (%r15,%r10,8), %xmm7                          #478.23
        lea       (%r13,%r8,4), %r15d                           #478.7
        movslq    %r15d, %r15                                   #478.7
        lea       (%rcx,%r15,8), %r15                           #478.32
        movsd     (%r15), %xmm6                                 #478.32
        movhpd    (%r15,%rbp,8), %xmm6                          #478.32
        lea       (%r14,%rax,2), %r15d                          #478.7
        movslq    %r15d, %r15                                   #478.7
        lea       (%r14,%rdx,8), %r14d                          #476.5
        mulpd     %xmm6, %xmm7                                  #478.32
        addpd     %xmm7, %xmm0                                  #478.32
        lea       (%rsi,%r15,8), %r15                           #478.23
        movsd     (%r15), %xmm9                                 #478.23
        movhpd    (%r15,%r10,8), %xmm9                          #478.23
        lea       (%r13,%r12,2), %r15d                          #478.7
        movslq    %r15d, %r15                                   #478.7
        lea       (%r13,%r8,8), %r13d                           #476.5
        lea       (%rcx,%r15,8), %r15                           #478.32
        movsd     (%r15), %xmm8                                 #478.32
        movhpd    (%r15,%rbp,8), %xmm8                          #478.32
        mulpd     %xmm8, %xmm9                                  #478.32
        addpd     %xmm9, %xmm1                                  #478.32
        cmpl      %edi, %r11d                                   #476.5
        jb        ..B4.5        # Prob 82%                      #476.5
                                # LOE rcx rbx rbp rsi r9 r10 eax edx edi r8d r11d r12d r13d r14d xmm0 xmm1
..B4.6:                         # Preds ..B4.5
                                # Execution count [4.19e-01]
        addpd     %xmm1, %xmm0                                  #446.3
        movaps    %xmm0, %xmm1                                  #446.3
        unpckhpd  %xmm0, %xmm1                                  #446.3
        movq      -24(%rsp), %r15                               #[spill]
        addsd     %xmm1, %xmm0                                  #446.3
        movl      -16(%rsp), %r13d                              #[spill]
        movl      -8(%rsp), %r14d                               #[spill]
                                # LOE rcx rsi r15 edx edi r8d r13d r14d xmm0
..B4.7:                         # Preds ..B4.6 ..B4.42
                                # Execution count [4.66e-01]
        movslq    %edi, %rdi                                    #476.5
        cmpq      %r15, %rdi                                    #476.5
        jae       ..B4.41       # Prob 10%                      #476.5
                                # LOE rcx rsi rdi r15 edx r8d r13d r14d xmm0
..B4.8:                         # Preds ..B4.7
                                # Execution count [4.19e-01]
        movslq    %r14d, %r14                                   #478.7
        movq      %rdi, %r9                                     #476.5
        movslq    %r13d, %r13                                   #478.7
        movq      %rdi, %rbx                                    #476.5
        movslq    %edx, %rdx                                    #478.7
        movslq    %r8d, %r8                                     #478.7
        imulq     %rdx, %r9                                     #476.5
        imulq     %r8, %rbx                                     #476.5
        lea       (%rsi,%r14,8), %rbp                           #478.23
        lea       (%rcx,%r13,8), %rax                           #478.32
                                # LOE rax rdx rbx rbp rdi r8 r9 r15 xmm0
..B4.9:                         # Preds ..B4.9 ..B4.8
                                # Execution count [2.33e+00]
        movsd     (%rbp,%r9,8), %xmm1                           #478.23
        incq      %rdi                                          #476.5
        mulsd     (%rax,%rbx,8), %xmm1                          #478.32
        addq      %rdx, %r9                                     #476.5
        addq      %r8, %rbx                                     #476.5
        addsd     %xmm1, %xmm0                                  #478.32
        cmpq      %r15, %rdi                                    #476.5
        jb        ..B4.9        # Prob 82%                      #476.5
        jmp       ..B4.41       # Prob 100%                     #476.5
                                # LOE rax rdx rbx rbp rdi r8 r9 r15 xmm0
..B4.11:                        # Preds ..B4.2
                                # Execution count [4.66e-01]
        movl      $1717986919, %eax                             #488.13
        movl      %edi, %ebx                                    #488.13
        imull     %edi                                          #488.13
        sarl      $31, %ebx                                     #488.13
        sarl      $1, %edx                                      #488.13
        subl      %ebx, %edx                                    #488.13
        lea       (%rdx,%rdx,4), %ebx                           #488.13
        negl      %ebx                                          #488.13
        addl      %edi, %ebx                                    #488.13
        testl     %ebx, %ebx                                    #490.22
        jle       ..B4.32       # Prob 50%                      #490.22
                                # LOE rcx rsi ebx edi xmm0
..B4.12:                        # Preds ..B4.11
                                # Execution count [4.66e-01]
        movl      %ebx, %eax                                    #490.5
        xorl      %ebp, %ebp                                    #490.5
        movl      $1, %r8d                                      #490.5
        xorl      %edx, %edx                                    #490.5
        shrl      $3, %eax                                      #490.5
        je        ..B4.16       # Prob 15%                      #490.5
                                # LOE rax rdx rcx rbp rsi ebx edi r8d xmm0
..B4.13:                        # Preds ..B4.12
                                # Execution count [1.37e-03]
        pxor      %xmm7, %xmm7                                  #478.7
        movaps    %xmm7, %xmm6                                  #478.7
        movaps    %xmm6, %xmm5                                  #478.7
        movaps    %xmm5, %xmm4                                  #478.7
        movaps    %xmm4, %xmm3                                  #478.7
        movaps    %xmm3, %xmm2                                  #478.7
        movaps    %xmm2, %xmm1                                  #478.7
                                # LOE rax rdx rcx rbp rsi ebx edi xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B4.14:                        # Preds ..B4.14 ..B4.13
                                # Execution count [2.74e-01]
        movsd     (%rdx,%rsi), %xmm8                            #492.23
        incq      %rbp                                          #490.5
        movsd     8(%rdx,%rsi), %xmm9                           #492.23
        movsd     16(%rdx,%rsi), %xmm10                         #492.23
        movsd     24(%rdx,%rsi), %xmm11                         #492.23
        movsd     32(%rdx,%rsi), %xmm12                         #492.23
        movsd     40(%rdx,%rsi), %xmm13                         #492.23
        movsd     48(%rdx,%rsi), %xmm14                         #492.23
        movsd     56(%rdx,%rsi), %xmm15                         #492.23
        mulsd     (%rdx,%rcx), %xmm8                            #492.31
        mulsd     8(%rdx,%rcx), %xmm9                           #492.31
        mulsd     16(%rdx,%rcx), %xmm10                         #492.31
        addsd     %xmm8, %xmm0                                  #492.31
        mulsd     24(%rdx,%rcx), %xmm11                         #492.31
        addsd     %xmm9, %xmm7                                  #492.31
        mulsd     32(%rdx,%rcx), %xmm12                         #492.31
        addsd     %xmm10, %xmm6                                 #492.31
        mulsd     40(%rdx,%rcx), %xmm13                         #492.31
        addsd     %xmm11, %xmm5                                 #492.31
        mulsd     48(%rdx,%rcx), %xmm14                         #492.31
        addsd     %xmm12, %xmm4                                 #492.31
        mulsd     56(%rdx,%rcx), %xmm15                         #492.31
        addsd     %xmm13, %xmm3                                 #492.31
        addsd     %xmm14, %xmm2                                 #492.31
        addsd     %xmm15, %xmm1                                 #492.31
        addq      $64, %rdx                                     #490.5
        cmpq      %rax, %rbp                                    #490.5
        jb        ..B4.14       # Prob 99%                      #490.5
                                # LOE rax rdx rcx rbp rsi ebx edi xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B4.15:                        # Preds ..B4.14
                                # Execution count [3.94e-01]
        addsd     %xmm7, %xmm0                                  #478.7
        addsd     %xmm6, %xmm0                                  #478.7
        addsd     %xmm5, %xmm0                                  #478.7
        addsd     %xmm4, %xmm0                                  #478.7
        addsd     %xmm3, %xmm0                                  #478.7
        addsd     %xmm2, %xmm0                                  #478.7
        addsd     %xmm1, %xmm0                                  #478.7
        lea       1(,%rbp,8), %r8d                              #492.7
                                # LOE rcx rsi ebx edi r8d xmm0
..B4.16:                        # Preds ..B4.15 ..B4.12
                                # Execution count [4.66e-01]
        cmpl      %ebx, %r8d                                    #490.5
        ja        ..B4.32       # Prob 50%                      #490.5
                                # LOE rcx rsi ebx edi r8d xmm0
..B4.17:                        # Preds ..B4.16
                                # Execution count [0.00e+00]
        lea       -1(%r8), %eax                                 #444.3
        negl      %eax                                          #444.3
        addl      %ebx, %eax                                    #444.3
        decl      %eax                                          #444.3
        jmp       *.2.32_2.switchtab.5(,%rax,8)                 #490.5
                                # LOE rcx rsi ebx edi r8d xmm0
..1.32_0.TAG.6:
..B4.19:                        # Preds ..B4.17
                                # Execution count [0.00e+00]
        movslq    %r8d, %r8                                     #492.7
        movsd     40(%rsi,%r8,8), %xmm1                         #492.23
        mulsd     40(%rcx,%r8,8), %xmm1                         #492.31
        addsd     %xmm1, %xmm0                                  #492.31
                                # LOE rcx rsi ebx edi r8d xmm0
..1.32_0.TAG.5:
..B4.21:                        # Preds ..B4.17 ..B4.19
                                # Execution count [0.00e+00]
        movslq    %r8d, %r8                                     #492.7
        movsd     32(%rsi,%r8,8), %xmm1                         #492.23
        mulsd     32(%rcx,%r8,8), %xmm1                         #492.31
        addsd     %xmm1, %xmm0                                  #492.31
                                # LOE rcx rsi ebx edi r8d xmm0
..1.32_0.TAG.4:
..B4.23:                        # Preds ..B4.17 ..B4.21
                                # Execution count [0.00e+00]
        movslq    %r8d, %r8                                     #492.7
        movsd     24(%rsi,%r8,8), %xmm1                         #492.23
        mulsd     24(%rcx,%r8,8), %xmm1                         #492.31
        addsd     %xmm1, %xmm0                                  #492.31
                                # LOE rcx rsi ebx edi r8d xmm0
..1.32_0.TAG.3:
..B4.25:                        # Preds ..B4.17 ..B4.23
                                # Execution count [0.00e+00]
        movslq    %r8d, %r8                                     #492.7
        movsd     16(%rsi,%r8,8), %xmm1                         #492.23
        mulsd     16(%rcx,%r8,8), %xmm1                         #492.31
        addsd     %xmm1, %xmm0                                  #492.31
                                # LOE rcx rsi ebx edi r8d xmm0
..1.32_0.TAG.2:
..B4.27:                        # Preds ..B4.17 ..B4.25
                                # Execution count [0.00e+00]
        movslq    %r8d, %r8                                     #492.7
        movsd     8(%rsi,%r8,8), %xmm1                          #492.23
        mulsd     8(%rcx,%r8,8), %xmm1                          #492.31
        addsd     %xmm1, %xmm0                                  #492.31
                                # LOE rcx rsi ebx edi r8d xmm0
..1.32_0.TAG.1:
..B4.29:                        # Preds ..B4.17 ..B4.27
                                # Execution count [0.00e+00]
        movslq    %r8d, %r8                                     #490.5
        movsd     (%rsi,%r8,8), %xmm1                           #492.23
        mulsd     (%rcx,%r8,8), %xmm1                           #492.31
        addsd     %xmm1, %xmm0                                  #492.31
                                # LOE rcx rsi ebx edi r8d xmm0
..1.32_0.TAG.0:
..B4.31:                        # Preds ..B4.17 ..B4.29
                                # Execution count [3.94e-01]
        movslq    %r8d, %r8                                     #492.7
        movsd     -8(%rsi,%r8,8), %xmm1                         #492.23
        mulsd     -8(%rcx,%r8,8), %xmm1                         #492.31
        addsd     %xmm1, %xmm0                                  #492.31
                                # LOE rcx rsi ebx edi xmm0
..B4.32:                        # Preds ..B4.31 ..B4.16 ..B4.11
                                # Execution count [4.66e-01]
        cmpl      %edi, %ebx                                    #495.22
        jge       ..B4.41       # Prob 50%                      #495.22
                                # LOE rcx rsi ebx edi xmm0
..B4.33:                        # Preds ..B4.32
                                # Execution count [4.19e-01]
        movl      $1717986919, %eax                             #439.1
        lea       1(%rbx), %ebp                                 #495.11
        subl      %ebp, %edi                                    #439.1
        addl      $5, %edi                                      #439.1
        imull     %edi                                          #439.1
        sarl      $31, %edi                                     #439.1
        sarl      $1, %edx                                      #439.1
        subl      %edi, %edx                                    #439.1
        movslq    %edx, %rax                                    #495.5
        cmpq      $2, %rax                                      #495.5
        jl        ..B4.43       # Prob 10%                      #495.5
                                # LOE rax rcx rsi edx ebx xmm0
..B4.34:                        # Preds ..B4.33
                                # Execution count [4.19e-01]
        movslq    %ebx, %rbx                                    #497.33
        andl      $-2, %edx                                     #495.5
        pxor      %xmm1, %xmm1                                  #446.3
        xorl      %r8d, %r8d                                    #495.5
        movslq    %edx, %r9                                     #495.5
        xorl      %edi, %edi                                    #495.5
        movsd     %xmm0, %xmm1                                  #446.3
        lea       (%rcx,%rbx,8), %rbp                           #495.5
        lea       (%rsi,%rbx,8), %rdx                           #497.23
                                # LOE rax rdx rcx rbp rsi rdi r8 r9 ebx xmm1
..B4.35:                        # Preds ..B4.35 ..B4.34
                                # Execution count [2.33e+00]
        movsd     8(%rbp), %xmm2                                #497.33
        lea       (%rdx,%rdi), %r10                             #497.23
        movsd     (%rbp), %xmm0                                 #497.33
        addq      $2, %r8                                       #495.5
        movsd     8(%r10), %xmm3                                #497.23
        addq      $80, %rdi                                     #495.5
        movsd     (%r10), %xmm10                                #497.23
        movhpd    48(%r10), %xmm3                               #497.23
        movhpd    40(%r10), %xmm10                              #497.23
        movhpd    48(%rbp), %xmm2                               #497.33
        movhpd    40(%rbp), %xmm0                               #497.33
        mulpd     %xmm0, %xmm10                                 #497.33
        mulpd     %xmm2, %xmm3                                  #498.33
        movsd     16(%rbp), %xmm4                               #497.33
        movsd     16(%r10), %xmm5                               #497.23
        movhpd    56(%r10), %xmm5                               #497.23
        movhpd    56(%rbp), %xmm4                               #497.33
        mulpd     %xmm4, %xmm5                                  #499.33
        addpd     %xmm3, %xmm10                                 #498.33
        movsd     24(%rbp), %xmm6                               #497.33
        movsd     24(%r10), %xmm7                               #497.23
        movhpd    64(%r10), %xmm7                               #497.23
        movhpd    64(%rbp), %xmm6                               #497.33
        mulpd     %xmm6, %xmm7                                  #500.33
        addpd     %xmm5, %xmm10                                 #499.33
        movsd     32(%rbp), %xmm8                               #497.33
        movsd     32(%r10), %xmm9                               #497.23
        movhpd    72(%r10), %xmm9                               #497.23
        movhpd    72(%rbp), %xmm8                               #497.33
        addq      $80, %rbp                                     #495.5
        mulpd     %xmm8, %xmm9                                  #501.33
        addpd     %xmm7, %xmm10                                 #500.33
        addpd     %xmm9, %xmm10                                 #501.33
        addpd     %xmm10, %xmm1                                 #497.33
        cmpq      %r9, %r8                                      #495.5
        jb        ..B4.35       # Prob 82%                      #495.5
                                # LOE rax rdx rcx rbp rsi rdi r8 r9 ebx xmm1
..B4.36:                        # Preds ..B4.35
                                # Execution count [4.19e-01]
        movaps    %xmm1, %xmm0                                  #446.3
        unpckhpd  %xmm1, %xmm0                                  #446.3
        addsd     %xmm0, %xmm1                                  #446.3
        movaps    %xmm1, %xmm0                                  #446.3
                                # LOE rax rcx rsi r9 ebx xmm0
..B4.37:                        # Preds ..B4.36 ..B4.43
                                # Execution count [4.66e-01]
        lea       (%r9,%r9,4), %rbp                             #495.5
        shlq      $3, %rbp                                      #495.5
        cmpq      %rax, %r9                                     #495.5
        jae       ..B4.41       # Prob 10%                      #495.5
                                # LOE rax rcx rbp rsi r9 ebx xmm0
..B4.38:                        # Preds ..B4.37
                                # Execution count [4.19e-01]
        movslq    %ebx, %rbx                                    #497.7
        lea       (%rcx,%rbx,8), %rcx                           #497.33
        lea       (%rsi,%rbx,8), %rdx                           #497.23
        .align    16,0x90
                                # LOE rax rdx rcx rbp r9 xmm0
..B4.39:                        # Preds ..B4.39 ..B4.38
                                # Execution count [2.33e+00]
        movsd     (%rbp,%rdx), %xmm5                            #497.23
        incq      %r9                                           #495.5
        movsd     8(%rbp,%rdx), %xmm1                           #498.23
        mulsd     (%rbp,%rcx), %xmm5                            #497.33
        mulsd     8(%rbp,%rcx), %xmm1                           #498.33
        movsd     16(%rbp,%rdx), %xmm2                          #499.23
        addsd     %xmm1, %xmm5                                  #498.33
        mulsd     16(%rbp,%rcx), %xmm2                          #499.33
        movsd     24(%rbp,%rdx), %xmm3                          #500.23
        addsd     %xmm2, %xmm5                                  #499.33
        mulsd     24(%rbp,%rcx), %xmm3                          #500.33
        movsd     32(%rbp,%rdx), %xmm4                          #501.23
        addsd     %xmm3, %xmm5                                  #500.33
        mulsd     32(%rbp,%rcx), %xmm4                          #501.33
        addq      $40, %rbp                                     #495.5
        addsd     %xmm4, %xmm5                                  #501.33
        addsd     %xmm5, %xmm0                                  #497.33
        cmpq      %rax, %r9                                     #495.5
        jb        ..B4.39       # Prob 82%                      #495.5
                                # LOE rax rdx rcx rbp r9 xmm0
..B4.41:                        # Preds ..B4.39 ..B4.9 ..B4.7 ..B4.37 ..B4.32
                                #      
                                # Execution count [9.31e-01]
	.cfi_restore 6
        popq      %rbp                                          #504.10
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        popq      %rbx                                          #504.10
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #504.10
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #504.10
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #504.10
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #504.10
	.cfi_def_cfa_offset 8
        ret                                                     #504.10
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -48
	.cfi_offset 6, -56
	.cfi_offset 12, -16
	.cfi_offset 13, -24
	.cfi_offset 14, -32
	.cfi_offset 15, -40
                                # LOE
..B4.42:                        # Preds ..B4.3
                                # Execution count [4.19e-02]: Infreq
        xorl      %edi, %edi                                    #476.5
        jmp       ..B4.7        # Prob 100%                     #476.5
                                # LOE rcx rsi r15 edx edi r8d r13d r14d xmm0
..B4.43:                        # Preds ..B4.33
                                # Execution count [4.19e-02]: Infreq
        xorl      %r9d, %r9d                                    #495.5
        jmp       ..B4.37       # Prob 100%                     #495.5
                                # LOE rax rcx rsi r9 ebx xmm0
..B4.44:                        # Preds ..B4.1
                                # Execution count [6.90e-02]: Infreq
        pxor      %xmm0, %xmm0                                  #450.12
	.cfi_restore 6
        popq      %rbp                                          #450.12
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        popq      %rbx                                          #450.12
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #450.12
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #450.12
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #450.12
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #450.12
	.cfi_def_cfa_offset 8
        ret                                                     #450.12
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	ddot,@function
	.size	ddot,.-ddot
..LNddot.3:
	.section .rodata, "a"
	.align 8
.2.32_2.switchtab.5:
	.quad	..1.32_0.TAG.0
	.quad	..1.32_0.TAG.1
	.quad	..1.32_0.TAG.2
	.quad	..1.32_0.TAG.3
	.quad	..1.32_0.TAG.4
	.quad	..1.32_0.TAG.5
	.quad	..1.32_0.TAG.6
	.data
# -- End  ddot
	.text
.L_2__routine_start_dgefa_4:
# -- Begin  dgefa
	.text
# mark_begin;
       .align    16,0x90
	.globl dgefa
# --- dgefa(double *, int, int, int *)
dgefa:
# parameter 1: %rdi
# parameter 2: %esi
# parameter 3: %edx
# parameter 4: %rcx
..B5.1:                         # Preds ..B5.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_dgefa.381:
..L382:
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
        subq      $440, %rsp                                    #553.1
	.cfi_def_cfa_offset 496
        xorl      %eax, %eax                                    #562.3
        movq      %rcx, %rbp                                    #553.1
        xorl      %ecx, %ecx                                    #564.3
        movl      %esi, %r15d                                   #553.1
        movq      %rdi, %r14                                    #553.1
        movl      %edx, %r10d                                   #569.9
        movl      $1, %r9d                                      #564.9
        pxor      %xmm0, %xmm0                                  #574.30
        lea       -1(%rdx), %r13d                               #553.1
        xorl      %r8d, %r8d                                    #569.9
        movl      $3, %edi                                      #569.9
        xorl      %esi, %esi                                    #569.9
        cmpl      $1, %edx                                      #564.23
        jle       ..B5.80       # Prob 9%                       #564.23
                                # LOE rbp rsi rdi r9 r14 eax edx ecx r8d r10d r13d r15d xmm0
..B5.2:                         # Preds ..B5.1
                                # Execution count [9.00e-01]
        movslq    %r15d, %r15                                   #569.25
        movslq    %edx, %rbx                                    #593.5
        movl      %eax, 112(%rsp)                               #569.9[spill]
        movq      %rbx, 120(%rsp)                               #569.9[spill]
        movl      %r13d, 264(%rsp)                              #569.9[spill]
        lea       (,%r15,8), %r11                               #569.25
        movq      %r11, %r12                                    #569.25
        negq      %r12                                          #569.25
        addq      %r14, %r12                                    #569.25
        movq      %r12, 144(%rsp)                               #569.25[spill]
        lea       (%r14,%r15,8), %r12                           #602.28
        movq      %r12, 312(%rsp)                               #602.28[spill]
        lea       8(,%r15,8), %r12                              #585.26
        movq      %r12, 256(%rsp)                               #585.26[spill]
        movq      %r14, %r12                                    #585.26
        subq      %r11, %r12                                    #585.26
        movq      %r11, 320(%rsp)                               #569.25[spill]
        xorl      %r11d, %r11d                                  #569.9
        movq      %r12, 152(%rsp)                               #585.26[spill]
        xorl      %r12d, %r12d                                  #569.9
        movq      %r14, 272(%rsp)                               #569.9[spill]
        movl      %r15d, 408(%rsp)                              #569.9[spill]
        movl      %edx, 216(%rsp)                               #569.9[spill]
        movq      %rbp, 280(%rsp)                               #569.9[spill]
                                # LOE rsi rdi r9 r12 ecx r8d r10d r11d xmm0
..B5.3:                         # Preds ..B5.67 ..B5.2
                                # Execution count [5.00e+00]
        lea       -1(%r10), %r13d                               #564.26
        lea       1(%rcx), %ebx                                 #564.26
        testl     %r10d, %r10d                                  #569.9
        jle       ..B5.13       # Prob 28%                      #569.9
                                # LOE rsi rdi r9 r12 ecx ebx r8d r10d r11d r13d xmm0
..B5.4:                         # Preds ..B5.3
                                # Execution count [3.35e+00]
        movl      $1, %edx                                      #569.9
        testl     %r13d, %r13d                                  #569.9
        je        ..B5.14       # Prob 6%                       #569.9
                                # LOE rdx rsi rdi r9 r12 ecx ebx r8d r10d r11d r13d xmm0
..B5.5:                         # Preds ..B5.4
                                # Execution count [3.12e+00]
        movl      408(%rsp), %eax                               #569.39[spill]
        movq      144(%rsp), %r14                               #569.9[spill]
        lea       (%rax,%r8), %ebp                              #569.39
        movslq    %ebp, %rbp                                    #569.25
        addq      %rsi, %rbp                                    #569.25
        movsd     (%r14,%rbp,8), %xmm1                          #569.9
        andps     .L_2il0floatpacket.11(%rip), %xmm1            #569.9
        testl     %r13d, %r13d                                  #569.9
        jle       ..B5.14       # Prob 50%                      #569.9
                                # LOE rdx rsi rdi r9 r12 ecx ebx r8d r10d r11d r13d xmm0 xmm1
..B5.6:                         # Preds ..B5.5
                                # Execution count [3.12e+00]
        xorl      %ebp, %ebp                                    #569.9
        lea       -1(%r10), %r14d                               #569.9
        movl      $1, %eax                                      #569.9
        xorl      %r15d, %r15d                                  #569.9
        shrl      $1, %r14d                                     #569.9
        je        ..B5.10       # Prob 10%                      #569.9
                                # LOE rdx rsi rdi r9 r12 eax ecx ebx ebp r8d r10d r11d r13d r14d r15d xmm0 xmm1
..B5.7:                         # Preds ..B5.6
                                # Execution count [6.24e-03]
        movq      256(%rsp), %rax                               #569.9[spill]
        imulq     %r9, %rax                                     #569.9
        addq      152(%rsp), %rax                               #569.9[spill]
        movq      %r9, 128(%rsp)                                #569.9[spill]
        movl      %r10d, 136(%rsp)                              #569.9[spill]
        .align    16,0x90
                                # LOE rax rdx rsi rdi r12 ecx ebx ebp r8d r11d r13d r14d r15d xmm0 xmm1
..B5.8:                         # Preds ..B5.8 ..B5.7
                                # Execution count [1.25e+00]
        movslq    %ebp, %r9                                     #569.9
        incl      %ebp                                          #569.9
        shlq      $4, %r9                                       #569.9
        movsd     (%rax,%r9), %xmm2                             #569.9
        andps     .L_2il0floatpacket.11(%rip), %xmm2            #569.9
        movaps    %xmm2, %xmm4                                  #569.9
        comisd    %xmm1, %xmm4                                  #569.9
        movsd     8(%rax,%r9), %xmm3                            #569.9
        lea       2(%r15), %r9d                                 #569.9
        ja        ..L414        # Prob 50%                      #569.9
        movaps    %xmm1, %xmm4                                  #569.9
..L414:                                                         #
        comisd    %xmm1, %xmm2                                  #569.9
        andps     .L_2il0floatpacket.11(%rip), %xmm3            #569.9
        movslq    %r9d, %r10                                    #569.9
        movaps    %xmm3, %xmm1                                  #569.9
        ja        ..L415        # Prob 50%                      #569.9
        movq      %rdx, %r10                                    #569.9
..L415:                                                         #
        addl      $3, %r15d                                     #569.9
        maxsd     %xmm4, %xmm1                                  #569.9
        comisd    %xmm4, %xmm3                                  #569.9
        movslq    %r15d, %rdx                                   #569.9
        movl      %r9d, %r15d                                   #569.9
        cmovbe    %r10, %rdx                                    #569.9
        cmpl      %r14d, %ebp                                   #569.9
        jb        ..B5.8        # Prob 99%                      #569.9
                                # LOE rax rdx rsi rdi r12 ecx ebx ebp r8d r11d r13d r14d r15d xmm0 xmm1
..B5.9:                         # Preds ..B5.8
                                # Execution count [2.81e+00]
        movq      128(%rsp), %r9                                #[spill]
        lea       1(%rbp,%rbp), %eax                            #569.9
        movl      136(%rsp), %r10d                              #[spill]
                                # LOE rdx rsi rdi r9 r12 eax ecx ebx r8d r10d r11d r13d xmm0 xmm1
..B5.10:                        # Preds ..B5.9 ..B5.6
                                # Execution count [3.12e+00]
        lea       -1(%rax), %ebp                                #569.9
        lea       -1(%r10), %r14d                               #569.9
        cmpl      %r14d, %ebp                                   #569.9
        jae       ..B5.14       # Prob 10%                      #569.9
                                # LOE rdx rsi rdi r9 r12 eax ecx ebx r8d r10d r11d r13d xmm0 xmm1
..B5.11:                        # Preds ..B5.10
                                # Execution count [2.81e+00]
        movq      152(%rsp), %r14                               #569.9[spill]
        lea       1(%rax), %ebp                                 #569.9
        movslq    %eax, %rax                                    #569.9
        movslq    %ebp, %rbp                                    #569.9
        lea       (%r14,%rax,8), %r15                           #569.9
        movq      256(%rsp), %rax                               #569.9[spill]
        imulq     %r9, %rax                                     #569.9
        movsd     -8(%r15,%rax), %xmm2                          #569.9
        andps     .L_2il0floatpacket.11(%rip), %xmm2            #569.9
        comisd    %xmm1, %xmm2                                  #569.9
        cmova     %rbp, %rdx                                    #569.9
        jmp       ..B5.14       # Prob 100%                     #569.9
                                # LOE rdx rsi rdi r9 r12 ecx ebx r8d r10d r11d r13d xmm0
..B5.13:                        # Preds ..B5.3
                                # Execution count [1.65e+00]
        xorl      %edx, %edx                                    #569.9
                                # LOE rdx rsi rdi r9 r12 ecx ebx r8d r10d r11d r13d xmm0
..B5.14:                        # Preds ..B5.4 ..B5.5 ..B5.10 ..B5.11 ..B5.13
                                #      
                                # Execution count [5.00e+00]
        movq      280(%rsp), %rax                               #570.5[spill]
        lea       (%rdx,%rsi), %rbp                             #569.54
        movq      272(%rsp), %rdx                               #574.10[spill]
        lea       1(%rsi), %r14                                 #564.26
        movl      %ebp, (%rax,%rsi,4)                           #570.5
        movslq    %r8d, %rax                                    #574.10
        addq      %rbp, %rax                                    #574.14
        movsd     -8(%rdx,%rax,8), %xmm1                        #574.10
        ucomisd   %xmm0, %xmm1                                  #574.30
        jp        ..B5.15       # Prob 0%                       #574.30
        je        ..B5.75       # Prob 16%                      #574.30
                                # LOE rax rdx rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm1
..B5.15:                        # Preds ..B5.14
                                # Execution count [4.20e+00]
        cmpq      %r14, %rbp                                    #582.15
        je        ..B5.17       # Prob 50%                      #582.15
                                # LOE rax rdx rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm1
..B5.16:                        # Preds ..B5.15
                                # Execution count [2.10e+00]
        movq      %rdx, %r15                                    #585.26
        movq      (%r12,%r15), %rdx                             #585.26
        movq      %rdx, -8(%r15,%rax,8)                         #585.7
        movsd     %xmm1, (%r12,%r15)                            #586.7
        jmp       ..B5.18       # Prob 100%                     #586.7
                                # LOE rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm1
..B5.17:                        # Preds ..B5.15
                                # Execution count [2.10e+00]
        movq      %rdx, %rax                                    #591.16
        movsd     (%r12,%rax), %xmm1                            #591.16
                                # LOE rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm1
..B5.18:                        # Preds ..B5.16 ..B5.17
                                # Execution count [4.20e+00]
        movsd     .L_2il0floatpacket.3(%rip), %xmm2             #591.16
        divsd     %xmm1, %xmm2                                  #591.16
        testl     %r13d, %r13d                                  #593.5
        jle       ..B5.45       # Prob 16%                      #593.5
                                # LOE rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.19:                        # Preds ..B5.18
                                # Execution count [5.64e-01]
        movl      $1717986919, %eax                             #593.5
        movl      %r13d, %r15d                                  #593.5
        imull     %r13d                                         #593.5
        sarl      $31, %r15d                                    #593.5
        sarl      $1, %edx                                      #593.5
        subl      %r15d, %edx                                   #593.5
        lea       (%rdx,%rdx,4), %edx                           #593.5
        negl      %edx                                          #593.5
        addl      %r13d, %edx                                   #593.5
        movl      %edx, 40(%rsp)                                #593.5[spill]
        movslq    %edx, %rdx                                    #593.5
        testq     %rdx, %rdx                                    #593.5
        jle       ..B5.28       # Prob 50%                      #593.5
                                # LOE rdx rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.20:                        # Preds ..B5.19
                                # Execution count [4.78e-01]
        cmpq      $4, %rdx                                      #593.5
        jl        ..B5.74       # Prob 10%                      #593.5
                                # LOE rdx rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.21:                        # Preds ..B5.20
                                # Execution count [4.78e-01]
        movl      40(%rsp), %eax                                #593.5[spill]
        movaps    %xmm2, %xmm1                                  #591.5
        andl      $-4, %eax                                     #593.5
        movslq    %eax, %rax                                    #593.5
        movq      %rax, 24(%rsp)                                #593.5[spill]
        movq      320(%rsp), %rax                               #593.31[spill]
        imulq     %r9, %rax                                     #593.31
        movq      152(%rsp), %r15                               #593.5[spill]
        movq      %rdx, 104(%rsp)                               #[spill]
        lea       (%rax,%r9,8), %rdx                            #593.5
        addq      %r15, %rax                                    #593.5
        addq      %r15, %rdx                                    #593.5
        movq      $0, (%rsp)                                    #593.5[spill]
        movq      %rdx, 8(%rsp)                                 #593.5[spill]
        movq      %r9, 128(%rsp)                                #593.5[spill]
        movl      %r10d, 136(%rsp)                              #593.5[spill]
        lea       (%rax,%r9,8), %r15                            #593.5
        unpcklpd  %xmm1, %xmm1                                  #591.5
        movq      24(%rsp), %rax                                #593.5[spill]
        movq      104(%rsp), %rdx                               #593.5[spill]
        movq      8(%rsp), %r9                                  #593.5[spill]
        movq      (%rsp), %r10                                  #593.5[spill]
                                # LOE rax rdx rbp rsi rdi r9 r10 r12 r14 r15 ecx ebx r8d r11d r13d xmm0 xmm1 xmm2
..B5.22:                        # Preds ..B5.22 ..B5.21
                                # Execution count [2.65e+00]
        movups    (%r15,%r10,8), %xmm3                          #593.5
        mulpd     %xmm1, %xmm3                                  #593.5
        movups    %xmm3, (%r15,%r10,8)                          #593.5
        movups    16(%r9,%r10,8), %xmm4                         #593.5
        mulpd     %xmm1, %xmm4                                  #593.5
        movups    %xmm4, 16(%r9,%r10,8)                         #593.5
        addq      $4, %r10                                      #593.5
        cmpq      %rax, %r10                                    #593.5
        jb        ..B5.22       # Prob 82%                      #593.5
                                # LOE rax rdx rbp rsi rdi r9 r10 r12 r14 r15 ecx ebx r8d r11d r13d xmm0 xmm1 xmm2
..B5.23:                        # Preds ..B5.22
                                # Execution count [4.78e-01]
        movq      128(%rsp), %r9                                #[spill]
        movl      136(%rsp), %r10d                              #[spill]
                                # LOE rax rdx rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.24:                        # Preds ..B5.23 ..B5.74
                                # Execution count [5.64e-01]
        cmpq      %rdx, %rax                                    #593.5
        jae       ..B5.28       # Prob 15%                      #593.5
                                # LOE rax rdx rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.25:                        # Preds ..B5.24
                                # Execution count [4.78e-01]
        movq      %rdx, 104(%rsp)                               #[spill]
        movq      256(%rsp), %rdx                               #593.5[spill]
        imulq     %r9, %rdx                                     #593.5
        movq      152(%rsp), %r15                               #593.5[spill]
        lea       (%r15,%rax,8), %r15                           #593.5
        addq      %r15, %rdx                                    #593.5
        movq      %rdx, 16(%rsp)                                #593.5[spill]
        movq      104(%rsp), %rdx                               #593.5[spill]
        movq      16(%rsp), %r15                                #593.5[spill]
                                # LOE rax rdx rbp rsi rdi r9 r12 r14 r15 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.26:                        # Preds ..B5.26 ..B5.25
                                # Execution count [2.65e+00]
        movsd     (%r15), %xmm1                                 #593.5
        incq      %rax                                          #593.5
        mulsd     %xmm2, %xmm1                                  #593.5
        movsd     %xmm1, (%r15)                                 #593.5
        addq      $8, %r15                                      #593.5
        cmpq      %rdx, %rax                                    #593.5
        jb        ..B5.26       # Prob 82%                      #593.5
                                # LOE rax rdx rbp rsi rdi r9 r12 r14 r15 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.28:                        # Preds ..B5.26 ..B5.19 ..B5.24
                                # Execution count [5.64e-01]
        movq      120(%rsp), %rax                               #593.13[spill]
        subq      %r14, %rax                                    #593.13
        cmpq      %rax, %rdx                                    #593.5
        jge       ..B5.45       # Prob 50%                      #593.5
                                # LOE rdx rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.29:                        # Preds ..B5.28
                                # Execution count [5.08e-01]
        movl      40(%rsp), %eax                                #593.5[spill]
        negl      %eax                                          #593.5
        movq      %rdx, 104(%rsp)                               #[spill]
        lea       3(%rax,%r10), %r15d                           #569.9
        movl      $1717986919, %eax                             #593.5
        imull     %r15d                                         #593.5
        sarl      $31, %r15d                                    #593.5
        sarl      $1, %edx                                      #593.5
        subl      %r15d, %edx                                   #593.5
        lea       (%rdx,%rdx,4), %r15d                          #593.5
        movl      %r15d, 56(%rsp)                               #593.5[spill]
        movslq    %r15d, %r15                                   #593.5
        movq      %r15, 48(%rsp)                                #593.5[spill]
        movq      104(%rsp), %rdx                               #593.5[spill]
        cmpq      $8, %r15                                      #593.5
        jl        ..B5.71       # Prob 10%                      #593.5
                                # LOE rdx rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.30:                        # Preds ..B5.29
                                # Execution count [5.08e-01]
        movq      320(%rsp), %r15                               #593.31[spill]
        imulq     %r9, %r15                                     #593.31
        movq      152(%rsp), %rax                               #593.5[spill]
        movq      %r15, 88(%rsp)                                #593.31[spill]
        addq      %r15, %rax                                    #593.5
        lea       (%rax,%r9,8), %r15                            #593.5
        lea       (%r15,%rdx,8), %rax                           #593.5
        movq      %rax, 32(%rsp)                                #593.5[spill]
        andq      $15, %rax                                     #593.5
        movl      %eax, 96(%rsp)                                #593.5[spill]
        testl     %eax, %eax                                    #593.5
        je        ..B5.33       # Prob 50%                      #593.5
                                # LOE rdx rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.31:                        # Preds ..B5.30
                                # Execution count [5.08e-01]
        testb     $7, 96(%rsp)                                  #593.5[spill]
        jne       ..B5.71       # Prob 10%                      #593.5
                                # LOE rdx rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.32:                        # Preds ..B5.31
                                # Execution count [2.54e-01]
        movl      $1, 96(%rsp)                                  #593.5[spill]
                                # LOE rdx rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.33:                        # Preds ..B5.32 ..B5.30
                                # Execution count [5.08e-01]
        movl      96(%rsp), %eax                                #593.5[spill]
        lea       8(%rax), %r15d                                #593.5
        cmpq      48(%rsp), %r15                                #593.5[spill]
        jg        ..B5.71       # Prob 10%                      #593.5
                                # LOE rdx rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.34:                        # Preds ..B5.33
                                # Execution count [5.64e-01]
        movq      88(%rsp), %rax                                #593.5[spill]
        movq      %rdx, 104(%rsp)                               #[spill]
        lea       (%rax,%r9,8), %r15                            #593.5
        addq      152(%rsp), %r15                               #593.5[spill]
        lea       (%r15,%rdx,8), %rdx                           #593.5
        movl      56(%rsp), %r15d                               #593.5[spill]
        movl      %r15d, %eax                                   #593.5
        movq      %rdx, 64(%rsp)                                #593.5[spill]
        movl      96(%rsp), %edx                                #593.5[spill]
        subl      %edx, %eax                                    #593.5
        andl      $7, %eax                                      #593.5
        subl      %eax, %r15d                                   #593.5
        xorl      %eax, %eax                                    #593.5
        movl      %r15d, 56(%rsp)                               #593.5[spill]
        testl     %edx, %edx                                    #593.5
        movq      %rdx, 80(%rsp)                                #593.5[spill]
        movq      104(%rsp), %rdx                               #593.5[spill]
        jbe       ..B5.38       # Prob 9%                       #593.5
                                # LOE rax rdx rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.35:                        # Preds ..B5.34
                                # Execution count [5.08e-01]
        movq      64(%rsp), %r15                                #593.5[spill]
        movl      %r10d, 136(%rsp)                              #593.5[spill]
        movq      %r15, %r10                                    #593.5
        movq      80(%rsp), %r15                                #593.5[spill]
                                # LOE rax rdx rbp rsi rdi r9 r10 r12 r14 r15 ecx ebx r8d r11d r13d xmm0 xmm2
..B5.36:                        # Preds ..B5.36 ..B5.35
                                # Execution count [2.82e+00]
        movsd     (%r10), %xmm1                                 #593.5
        incq      %rax                                          #593.5
        mulsd     %xmm2, %xmm1                                  #593.5
        movsd     %xmm1, (%r10)                                 #593.5
        addq      $8, %r10                                      #593.5
        cmpq      %r15, %rax                                    #593.5
        jb        ..B5.36       # Prob 81%                      #593.5
                                # LOE rax rdx rbp rsi rdi r9 r10 r12 r14 r15 ecx ebx r8d r11d r13d xmm0 xmm2
..B5.37:                        # Preds ..B5.36
                                # Execution count [5.08e-01]
        movq      %r15, 80(%rsp)                                #[spill]
        movl      136(%rsp), %r10d                              #[spill]
                                # LOE rdx rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.38:                        # Preds ..B5.34 ..B5.37
                                # Execution count [5.08e-01]
        movaps    %xmm2, %xmm1                                  #591.5
        movq      %r9, 128(%rsp)                                #593.5[spill]
        movl      %r10d, 136(%rsp)                              #593.5[spill]
        unpcklpd  %xmm1, %xmm1                                  #591.5
        movslq    56(%rsp), %rax                                #593.5[spill]
        movq      80(%rsp), %r9                                 #593.5[spill]
        movq      64(%rsp), %r10                                #593.5[spill]
        movq      32(%rsp), %r15                                #593.5[spill]
        .align    16,0x90
                                # LOE rax rdx rbp rsi rdi r9 r10 r12 r14 r15 ecx ebx r8d r11d r13d xmm0 xmm1 xmm2
..B5.39:                        # Preds ..B5.39 ..B5.38
                                # Execution count [2.82e+00]
        movups    (%r10,%r9,8), %xmm3                           #593.5
        mulpd     %xmm1, %xmm3                                  #593.5
        movups    %xmm3, (%r10,%r9,8)                           #593.5
        movups    16(%r15,%r9,8), %xmm4                         #593.5
        movups    32(%r15,%r9,8), %xmm5                         #593.5
        movups    48(%r15,%r9,8), %xmm6                         #593.5
        mulpd     %xmm1, %xmm4                                  #593.5
        mulpd     %xmm1, %xmm5                                  #593.5
        mulpd     %xmm1, %xmm6                                  #593.5
        movups    %xmm4, 16(%r15,%r9,8)                         #593.5
        movups    %xmm5, 32(%r15,%r9,8)                         #593.5
        movups    %xmm6, 48(%r15,%r9,8)                         #593.5
        addq      $8, %r9                                       #593.5
        cmpq      %rax, %r9                                     #593.5
        jb        ..B5.39       # Prob 81%                      #593.5
                                # LOE rax rdx rbp rsi rdi r9 r10 r12 r14 r15 ecx ebx r8d r11d r13d xmm0 xmm1 xmm2
..B5.40:                        # Preds ..B5.39
                                # Execution count [5.08e-01]
        movq      128(%rsp), %r9                                #[spill]
        movl      136(%rsp), %r10d                              #[spill]
                                # LOE rdx rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.41:                        # Preds ..B5.40 ..B5.71
                                # Execution count [5.64e-01]
        movl      56(%rsp), %eax                                #593.5[spill]
        movq      $0, 72(%rsp)                                  #593.5[spill]
        lea       1(%rax), %r15d                                #593.5
        movslq    %r15d, %r15                                   #593.5
        cmpq      48(%rsp), %r15                                #593.5[spill]
        ja        ..B5.45       # Prob 9%                       #593.5
                                # LOE rdx rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.42:                        # Preds ..B5.41
                                # Execution count [5.08e-01]
        movq      320(%rsp), %r15                               #593.31[spill]
        addq      %r9, %rdx                                     #593.5
        imulq     %r9, %r15                                     #593.31
        movslq    56(%rsp), %rax                                #593.5[spill]
        addq      %rax, %rdx                                    #593.5
        addq      152(%rsp), %r15                               #593.5[spill]
        subq      %rax, 48(%rsp)                                #593.5[spill]
        lea       (%r15,%rdx,8), %rax                           #593.5
        movq      48(%rsp), %rdx                                #593.5[spill]
        movq      72(%rsp), %r15                                #593.5[spill]
                                # LOE rax rdx rbp rsi rdi r9 r12 r14 r15 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.43:                        # Preds ..B5.43 ..B5.42
                                # Execution count [2.82e+00]
        movsd     (%rax), %xmm1                                 #593.5
        incq      %r15                                          #593.5
        mulsd     %xmm2, %xmm1                                  #593.5
        movsd     %xmm1, (%rax)                                 #593.5
        addq      $8, %rax                                      #593.5
        cmpq      %rdx, %r15                                    #593.5
        jb        ..B5.43       # Prob 81%                      #593.5
                                # LOE rax rdx rbp rsi rdi r9 r12 r14 r15 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.45:                        # Preds ..B5.43 ..B5.41 ..B5.18 ..B5.28
                                # Execution count [4.20e+00]
        addl      $2, %ecx                                      #597.17
        xorl      %eax, %eax                                    #597.5
        movl      %eax, 248(%rsp)                               #597.5[spill]
        movl      %eax, 240(%rsp)                               #599.7[spill]
        movq      %rdi, 232(%rsp)                               #569.9[spill]
        cmpl      216(%rsp), %ecx                               #597.25[spill]
        movslq    %ecx, %rcx                                    #597.11
        movq      %rcx, 288(%rsp)                               #597.11[spill]
        movq      %rcx, 224(%rsp)                               #597.11[spill]
        jg        ..B5.81       # Prob 10%                      #597.25
                                # LOE rbp rsi rdi r9 r12 r14 ebx r8d r10d r11d r13d xmm0
..B5.46:                        # Preds ..B5.45
                                # Execution count [3.78e+00]
        movl      %r13d, %edx                                   #605.7
        andl      $-2147483645, %edx                            #605.7
        jge       ..B5.78       # Prob 50%                      #605.7
                                # LOE rbp rsi rdi r9 r12 r14 edx ebx r8d r10d r11d r13d xmm0
..B5.79:                        # Preds ..B5.46
                                # Execution count [3.78e+00]
        subl      $1, %edx                                      #605.7
        orl       $-4, %edx                                     #605.7
        incl      %edx                                          #605.7
                                # LOE rbp rsi rdi r9 r12 r14 edx ebx r8d r10d r11d r13d xmm0
..B5.78:                        # Preds ..B5.46 ..B5.79
                                # Execution count [3.78e+00]
        movl      408(%rsp), %eax                               #599.23[spill]
        lea       -1(%r10), %r15d                               #553.1
        movl      %r15d, 424(%rsp)                              #553.1[spill]
        movq      320(%rsp), %r15                               #593.31[spill]
        imulq     %r9, %r15                                     #593.31
        movq      152(%rsp), %rcx                               #605.7[spill]
        addl      %r8d, %eax                                    #599.23
        movl      %eax, 160(%rsp)                               #599.23[spill]
        movl      %ebx, 176(%rsp)                               #605.7[spill]
        movq      %rsi, 192(%rsp)                               #605.7[spill]
        lea       (%rcx,%r9,8), %rax                            #605.7
        movq      %rax, 344(%rsp)                               #605.7[spill]
        lea       (%r15,%r9,8), %rax                            #605.7
        addq      %rcx, %r15                                    #605.7
        addq      %rcx, %rax                                    #605.7
        movl      %r13d, %ecx                                   #605.7
        movq      %rdi, 200(%rsp)                               #605.7[spill]
        movl      %r8d, 208(%rsp)                               #605.7[spill]
        movq      %r14, 416(%rsp)                               #605.7[spill]
        lea       (%r15,%r9,8), %r9                             #605.7
        movq      272(%rsp), %r15                               #599.11[spill]
        movq      %r9, 296(%rsp)                                #605.7[spill]
        movq      %r12, 184(%rsp)                               #605.7[spill]
        movl      %r11d, 400(%rsp)                              #605.7[spill]
        lea       (%r15,%rbp,8), %r15                           #599.11
        movq      %r15, 168(%rsp)                               #599.11[spill]
        lea       1(%rdx), %r15d                                #605.7
        subl      %r15d, %ecx                                   #605.7
        addl      $4, %ecx                                      #605.7
        sarl      $1, %ecx                                      #605.7
        shrl      $30, %ecx                                     #605.7
        movl      160(%rsp), %r8d                               #605.7[spill]
        movq      232(%rsp), %rdi                               #605.7[spill]
        movl      248(%rsp), %esi                               #605.7[spill]
        movq      312(%rsp), %rbx                               #605.7[spill]
        lea       3(%rcx,%r10), %r10d                           #605.7
        subl      %r15d, %r10d                                  #605.7
        movslq    %edx, %r15                                    #605.7
        andl      $-4, %r10d                                    #605.7
        movl      %r10d, 392(%rsp)                              #605.7[spill]
        shrl      $1, %r10d                                     #605.7
        movq      %r10, 368(%rsp)                               #605.7[spill]
        movl      %r10d, 384(%rsp)                              #605.7[spill]
        lea       (%rax,%r15,8), %rcx                           #605.7
        movq      %rcx, 352(%rsp)                               #605.7[spill]
        lea       (%r9,%r15,8), %rcx                            #605.7
        movq      %rcx, 360(%rsp)                               #605.7[spill]
        movl      %edx, %ecx                                    #605.7
        shrl      $1, %ecx                                      #605.7
        movq      %rcx, 304(%rsp)                               #605.7[spill]
        movl      %ecx, 376(%rsp)                               #605.7[spill]
        movq      %r15, 328(%rsp)                               #605.7[spill]
        movq      168(%rsp), %r9                                #605.7[spill]
        movl      240(%rsp), %r10d                              #605.7[spill]
        movq      224(%rsp), %rcx                               #605.7[spill]
                                # LOE rax rcx rbx rbp rdi r9 edx esi r8d r10d r13d xmm0
..B5.47:                        # Preds ..B5.65 ..B5.78
                                # Execution count [2.10e+01]
        lea       (%r8,%r10), %r11d                             #599.23
        movslq    %r11d, %r11                                   #599.11
        movsd     -8(%r9,%r11,8), %xmm1                         #599.11
        cmpq      416(%rsp), %rbp                               #600.17[spill]
        je        ..B5.49       # Prob 50%                      #600.17
                                # LOE rax rcx rbx rbp rdi r9 r11 edx esi r8d r10d r13d xmm0 xmm1
..B5.48:                        # Preds ..B5.47
                                # Execution count [1.05e+01]
        movl      400(%rsp), %r12d                              #602.40[spill]
        lea       (%r12,%r10), %r14d                            #602.40
        movslq    %r14d, %r14                                   #602.40
        movq      (%rbx,%r14,8), %r15                           #602.28
        movq      %r15, -8(%r9,%r11,8)                          #602.9
        movsd     %xmm1, (%rbx,%r14,8)                          #603.9
                                # LOE rax rcx rbx rbp rdi r9 edx esi r8d r10d r13d xmm0 xmm1
..B5.49:                        # Preds ..B5.47 ..B5.48
                                # Execution count [2.10e+01]
        testl     %r13d, %r13d                                  #605.7
        jle       ..B5.65       # Prob 6%                       #605.7
                                # LOE rax rcx rbx rbp rdi r9 edx esi r8d r10d r13d xmm0 xmm1
..B5.50:                        # Preds ..B5.49
                                # Execution count [1.96e+01]
        ucomisd   %xmm0, %xmm1                                  #605.7
        jp        ..B5.51       # Prob 0%                       #605.7
        je        ..B5.65       # Prob 6%                       #605.7
                                # LOE rax rcx rbx rbp rdi r9 edx esi r8d r10d r13d xmm0 xmm1
..B5.51:                        # Preds ..B5.50
                                # Execution count [9.10e+00]
        testl     %edx, %edx                                    #605.7
        jle       ..B5.58       # Prob 50%                      #605.7
                                # LOE rax rcx rbx rbp rdi r9 edx esi r8d r10d r13d xmm0 xmm1
..B5.52:                        # Preds ..B5.51
                                # Execution count [9.10e+00]
        xorl      %r14d, %r14d                                  #605.7
        movl      $1, %r12d                                     #605.7
        xorl      %r11d, %r11d                                  #605.7
        cmpl      $0, 376(%rsp)                                 #605.7[spill]
        je        ..B5.56       # Prob 15%                      #605.7
                                # LOE rax rcx rbx rbp rdi r9 r11 r14 edx esi r8d r10d r12d r13d xmm0 xmm1
..B5.53:                        # Preds ..B5.52
                                # Execution count [7.70e+00]
        movq      320(%rsp), %r12                               #605.51[spill]
        imulq     %rcx, %r12                                    #605.51
        addq      344(%rsp), %r12                               #605.7[spill]
        movq      304(%rsp), %rbx                               #605.7[spill]
        movq      296(%rsp), %r15                               #605.7[spill]
                                # LOE rax rcx rbx rbp rdi r9 r11 r12 r14 r15 edx esi r8d r10d r13d xmm0 xmm1
..B5.54:                        # Preds ..B5.54 ..B5.53
                                # Execution count [2.14e+01]
        movsd     (%r11,%r15), %xmm2                            #605.7
        incq      %r14                                          #605.7
        mulsd     %xmm1, %xmm2                                  #605.7
        addsd     (%r11,%r12), %xmm2                            #605.7
        movsd     %xmm2, (%r11,%r12)                            #605.7
        movsd     8(%r11,%rax), %xmm3                           #605.7
        mulsd     %xmm1, %xmm3                                  #605.7
        addsd     8(%r11,%r12), %xmm3                           #605.7
        movsd     %xmm3, 8(%r11,%r12)                           #605.7
        addq      $16, %r11                                     #605.7
        cmpq      %rbx, %r14                                    #605.7
        jb        ..B5.54       # Prob 64%                      #605.7
                                # LOE rax rcx rbx rbp rdi r9 r11 r12 r14 r15 edx esi r8d r10d r13d xmm0 xmm1
..B5.55:                        # Preds ..B5.54
                                # Execution count [7.70e+00]
        movq      312(%rsp), %rbx                               #[spill]
        lea       1(%r14,%r14), %r12d                           #605.7
                                # LOE rax rcx rbx rbp rdi r9 edx esi r8d r10d r12d r13d xmm0 xmm1
..B5.56:                        # Preds ..B5.55 ..B5.52
                                # Execution count [9.10e+00]
        lea       -1(%r12), %r11d                               #605.7
        cmpl      %edx, %r11d                                   #605.7
        jae       ..B5.58       # Prob 15%                      #605.7
                                # LOE rax rcx rbx rbp rdi r9 edx esi r8d r10d r12d r13d xmm0 xmm1
..B5.57:                        # Preds ..B5.56
                                # Execution count [7.70e+00]
        movq      320(%rsp), %r11                               #605.51[spill]
        imulq     %rcx, %r11                                    #605.51
        movslq    %r12d, %r12                                   #605.7
        addq      344(%rsp), %r11                               #605.7[spill]
        movsd     -8(%rax,%r12,8), %xmm2                        #605.7
        mulsd     %xmm1, %xmm2                                  #605.7
        addsd     -8(%r11,%r12,8), %xmm2                        #605.7
        movsd     %xmm2, -8(%r11,%r12,8)                        #605.7
                                # LOE rax rcx rbx rbp rdi r9 edx esi r8d r10d r13d xmm0 xmm1
..B5.58:                        # Preds ..B5.56 ..B5.51 ..B5.57
                                # Execution count [9.10e+00]
        cmpl      %r13d, %edx                                   #605.7
        jge       ..B5.65       # Prob 50%                      #605.7
                                # LOE rax rcx rbx rbp rdi r9 edx esi r8d r10d r13d xmm0 xmm1
..B5.59:                        # Preds ..B5.58
                                # Execution count [9.10e+00]
        xorl      %r14d, %r14d                                  #605.7
        movl      $1, %r15d                                     #605.7
        xorl      %r12d, %r12d                                  #605.7
        cmpl      $0, 384(%rsp)                                 #605.7[spill]
        je        ..B5.63       # Prob 10%                      #605.7
                                # LOE rax rcx rbx rbp rdi r9 r12 r14 edx esi r8d r10d r13d r15d xmm0 xmm1
..B5.60:                        # Preds ..B5.59
                                # Execution count [8.19e+00]
        movq      320(%rsp), %r11                               #605.51[spill]
        imulq     %rcx, %r11                                    #605.51
        addq      344(%rsp), %r11                               #605.7[spill]
        movq      328(%rsp), %r15                               #605.7[spill]
        movl      %r13d, 336(%rsp)                              #605.7[spill]
        movq      360(%rsp), %rbx                               #605.7[spill]
        movq      352(%rsp), %r13                               #605.7[spill]
        lea       (%r11,%r15,8), %r11                           #605.7
        movq      368(%rsp), %r15                               #605.7[spill]
                                # LOE rax rcx rbx rbp rdi r9 r11 r12 r13 r14 r15 edx esi r8d r10d xmm0 xmm1
..B5.61:                        # Preds ..B5.61 ..B5.60
                                # Execution count [2.28e+01]
        movsd     (%r12,%r13), %xmm2                            #605.7
        incq      %r14                                          #605.7
        mulsd     %xmm1, %xmm2                                  #605.7
        addsd     (%r12,%r11), %xmm2                            #605.7
        movsd     %xmm2, (%r12,%r11)                            #605.7
        movsd     8(%r12,%rbx), %xmm3                           #605.7
        mulsd     %xmm1, %xmm3                                  #605.7
        addsd     8(%r12,%r11), %xmm3                           #605.7
        movsd     %xmm3, 8(%r12,%r11)                           #605.7
        addq      $16, %r12                                     #605.7
        cmpq      %r15, %r14                                    #605.7
        jb        ..B5.61       # Prob 64%                      #605.7
                                # LOE rax rcx rbx rbp rdi r9 r11 r12 r13 r14 r15 edx esi r8d r10d xmm0 xmm1
..B5.62:                        # Preds ..B5.61
                                # Execution count [8.19e+00]
        movl      336(%rsp), %r13d                              #[spill]
        lea       1(%r14,%r14), %r15d                           #605.7
        movq      312(%rsp), %rbx                               #[spill]
                                # LOE rax rcx rbx rbp rdi r9 edx esi r8d r10d r13d r15d xmm0 xmm1
..B5.63:                        # Preds ..B5.62 ..B5.59
                                # Execution count [9.10e+00]
        lea       -1(%r15), %r11d                               #605.7
        cmpl      392(%rsp), %r11d                              #605.7[spill]
        jae       ..B5.65       # Prob 10%                      #605.7
                                # LOE rax rcx rbx rbp rdi r9 edx esi r8d r10d r13d r15d xmm0 xmm1
..B5.64:                        # Preds ..B5.63
                                # Execution count [8.19e+00]
        imulq     320(%rsp), %rcx                               #605.51[spill]
        movslq    %r15d, %r15                                   #605.7
        addq      328(%rsp), %r15                               #605.7[spill]
        addq      344(%rsp), %rcx                               #605.7[spill]
        mulsd     -8(%rax,%r15,8), %xmm1                        #605.7
        addsd     -8(%rcx,%r15,8), %xmm1                        #605.7
        movsd     %xmm1, -8(%rcx,%r15,8)                        #605.7
                                # LOE rax rbx rbp rdi r9 edx esi r8d r10d r13d xmm0
..B5.65:                        # Preds ..B5.63 ..B5.58 ..B5.49 ..B5.50 ..B5.64
                                #      
                                # Execution count [2.10e+01]
        incl      %esi                                          #597.5
        movq      %rdi, %rcx                                    #597.28
        addl      408(%rsp), %r10d                              #597.5[spill]
        incq      %rdi                                          #597.5
        cmpl      424(%rsp), %esi                               #597.5[spill]
        jb        ..B5.47       # Prob 82%                      #597.5
                                # LOE rax rcx rbx rbp rdi r9 edx esi r8d r10d r13d xmm0
..B5.66:                        # Preds ..B5.65
                                # Execution count [3.78e+00]
        movl      176(%rsp), %ebx                               #[spill]
        movl      %ebx, %ecx                                    #564.3
        movq      184(%rsp), %r12                               #[spill]
        movl      400(%rsp), %r11d                              #[spill]
        movq      192(%rsp), %rsi                               #[spill]
        movq      200(%rsp), %rdi                               #[spill]
        movl      208(%rsp), %r8d                               #[spill]
                                # LOE rsi rdi r12 ecx ebx r8d r11d r13d xmm0
..B5.67:                        # Preds ..B5.66 ..B5.75 ..B5.81
                                # Execution count [5.00e+00]
        movl      408(%rsp), %eax                               #564.26[spill]
        incq      %rdi                                          #564.26
        addq      256(%rsp), %r12                               #564.26[spill]
        addl      %eax, %r8d                                    #564.26
        incq      %rsi                                          #564.26
        movl      %r13d, %r10d                                  #564.3
        movq      288(%rsp), %r9                                #564.26[spill]
        lea       1(%r11,%rax), %r11d                           #564.26
        cmpl      264(%rsp), %ebx                               #564.3[spill]
        jb        ..B5.3        # Prob 82%                      #564.3
                                # LOE rsi rdi r9 r12 eax ecx r8d r10d r11d xmm0
..B5.68:                        # Preds ..B5.67
                                # Execution count [9.00e-01]
        movl      %eax, %r15d                                   #
        movl      112(%rsp), %eax                               #[spill]
        movq      120(%rsp), %rbx                               #[spill]
        movl      264(%rsp), %r13d                              #[spill]
        movq      272(%rsp), %r14                               #[spill]
        movl      216(%rsp), %edx                               #[spill]
        movq      280(%rsp), %rbp                               #[spill]
                                # LOE rbx rbp r14 eax edx r13d r15d xmm0
..B5.69:                        # Preds ..B5.80 ..B5.68
                                # Execution count [1.00e+00]
        imull     %r13d, %r15d                                  #612.20
        movslq    %r15d, %r15                                   #612.8
        movl      %edx, -4(%rbp,%rbx,4)                         #610.3
        addq      %r15, %rbx                                    #612.12
        movsd     -8(%r14,%rbx,8), %xmm1                        #612.8
        ucomisd   %xmm0, %xmm1                                  #617.10
        jne       ..L569        # Prob 50%                      #617.10
        jp        ..L569        # Prob 0%                       #617.10
        movl      %edx, %eax                                    #617.10
..L569:                                                         #
        addq      $440, %rsp                                    #617.10
	.cfi_def_cfa_offset 56
	.cfi_restore 6
        popq      %rbp                                          #617.10
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        popq      %rbx                                          #617.10
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #617.10
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #617.10
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #617.10
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #617.10
	.cfi_def_cfa_offset 8
        ret                                                     #617.10
	.cfi_def_cfa_offset 496
	.cfi_offset 3, -48
	.cfi_offset 6, -56
	.cfi_offset 12, -16
	.cfi_offset 13, -24
	.cfi_offset 14, -32
	.cfi_offset 15, -40
                                # LOE
..B5.71:                        # Preds ..B5.29 ..B5.31 ..B5.33
                                # Execution count [5.08e-02]: Infreq
        movl      $0, 56(%rsp)                                  #593.5[spill]
        jmp       ..B5.41       # Prob 100%                     #593.5
                                # LOE rdx rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.74:                        # Preds ..B5.20
                                # Execution count [4.78e-02]: Infreq
        xorl      %eax, %eax                                    #593.5
        jmp       ..B5.24       # Prob 100%                     #593.5
                                # LOE rax rdx rbp rsi rdi r9 r12 r14 ecx ebx r8d r10d r11d r13d xmm0 xmm2
..B5.75:                        # Preds ..B5.14
                                # Execution count [8.00e-01]: Infreq
        addl      $2, %ecx                                      #564.26
        movslq    %ecx, %rcx                                    #564.26
        movq      %rcx, 288(%rsp)                               #564.26[spill]
        movl      %ebx, %ecx                                    #576.7
        movl      %ebx, 112(%rsp)                               #576.7[spill]
        jmp       ..B5.67       # Prob 100%                     #576.7
                                # LOE rsi rdi r12 ecx ebx r8d r11d r13d xmm0
..B5.80:                        # Preds ..B5.1
                                # Execution count [1.00e-01]: Infreq
        movslq    %edx, %rbx                                    #593.5
        jmp       ..B5.69       # Prob 100%                     #593.5
                                # LOE rbx rbp r14 eax edx r13d r15d xmm0
..B5.81:                        # Preds ..B5.45
                                # Execution count [4.20e-01]: Infreq
        movl      %ebx, %ecx                                    #564.3
        jmp       ..B5.67       # Prob 100%                     #564.3
        .align    16,0x90
                                # LOE rsi rdi r12 ecx ebx r8d r11d r13d xmm0
	.cfi_endproc
# mark_end;
	.type	dgefa,@function
	.size	dgefa,.-dgefa
..LNdgefa.4:
	.data
# -- End  dgefa
	.text
.L_2__routine_start_dgesl_5:
# -- Begin  dgesl
	.text
# mark_begin;
       .align    16,0x90
	.globl dgesl
# --- dgesl(double *, int, int, int *, double *, int)
dgesl:
# parameter 1: %rdi
# parameter 2: %esi
# parameter 3: %edx
# parameter 4: %rcx
# parameter 5: %r8
# parameter 6: %r9d
..B6.1:                         # Preds ..B6.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_dgesl.594:
..L595:
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
        movl      %r9d, %eax                                    #677.1
        movq      %rcx, %rbp                                    #677.1
        movl      %edx, %ebx                                    #677.1
        movslq    %esi, %rdx                                    #677.1
        movl      $1, %r9d                                      #686.11
        testl     %eax, %eax                                    #684.15
        jne       ..B6.44       # Prob 50%                      #684.15
                                # LOE rdx rbp rdi r8 r9 r12 r13 ebx esi
..B6.2:                         # Preds ..B6.1
                                # Execution count [5.00e-01]
        movl      %ebx, %ecx                                    #688.7
        xorl      %r10d, %r10d                                  #686.5
        xorl      %r11d, %r11d                                  #688.7
        movl      %ecx, %eax                                    #688.7
        cmpl      $1, %ebx                                      #686.25
        jle       ..B6.80       # Prob 15%                      #686.25
                                # LOE rdx rbp rdi r8 r9 r11 r12 r13 eax ecx ebx esi r10d
..B6.3:                         # Preds ..B6.2
                                # Execution count [4.23e-01]
        shlq      $3, %rdx                                      #697.7
        lea       -1(%rbx), %r14d                               #677.1
        movq      %rdx, -64(%rsp)                               #677.1[spill]
        subq      %rdx, %rdi                                    #697.7
        movl      %eax, -80(%rsp)                               #677.1[spill]
        pxor      %xmm0, %xmm0                                  #697.7
        movl      %r14d, -72(%rsp)                              #677.1[spill]
        movl      %esi, -88(%rsp)                               #677.1[spill]
        movl      %ebx, -32(%rsp)                               #677.1[spill]
                                # LOE rbp rdi r8 r9 r11 ecx r10d xmm0
..B6.4:                         # Preds ..B6.22 ..B6.3
                                # Execution count [2.35e+00]
        movslq    (%rbp,%r11,4), %rdx                           #689.11
        incl      %r10d                                         #688.7
        decl      %ecx                                          #688.7
        movsd     -8(%r8,%rdx,8), %xmm1                         #689.11
        cmpl      (%rbp,%r11,4), %r10d                          #691.17
        je        ..B6.6        # Prob 50%                      #691.17
                                # LOE rdx rbp rdi r8 r9 r11 ecx r10d xmm0 xmm1
..B6.5:                         # Preds ..B6.4
                                # Execution count [1.18e+00]
        movq      (%r8,%r11,8), %rax                            #693.18
        movq      %rax, -8(%r8,%rdx,8)                          #693.9
        movsd     %xmm1, (%r8,%r11,8)                           #694.9
                                # LOE rbp rdi r8 r9 r11 ecx r10d xmm0 xmm1
..B6.6:                         # Preds ..B6.4 ..B6.5
                                # Execution count [2.35e+00]
        testl     %ecx, %ecx                                    #697.7
        jle       ..B6.22       # Prob 6%                       #697.7
                                # LOE rbp rdi r8 r9 r11 ecx r10d xmm0 xmm1
..B6.7:                         # Preds ..B6.6
                                # Execution count [2.19e+00]
        ucomisd   %xmm0, %xmm1                                  #697.7
        jp        ..B6.8        # Prob 0%                       #697.7
        je        ..B6.22       # Prob 6%                       #697.7
                                # LOE rbp rdi r8 r9 r11 ecx r10d xmm0 xmm1
..B6.8:                         # Preds ..B6.7
                                # Execution count [1.02e+00]
        movl      %ecx, %esi                                    #697.7
        andl      $-2147483645, %esi                            #697.7
        jge       ..B6.127      # Prob 50%                      #697.7
                                # LOE rbp rdi r8 r9 r11 ecx esi r10d xmm0 xmm1
..B6.128:                       # Preds ..B6.8
                                # Execution count [1.02e+00]
        subl      $1, %esi                                      #697.7
        orl       $-4, %esi                                     #697.7
        incl      %esi                                          #697.7
                                # LOE rbp rdi r8 r9 r11 ecx esi r10d xmm0 xmm1
..B6.127:                       # Preds ..B6.8 ..B6.128
                                # Execution count [1.02e+00]
        testl     %esi, %esi                                    #697.7
        jle       ..B6.15       # Prob 50%                      #697.7
                                # LOE rbp rdi r8 r9 r11 ecx esi r10d xmm0 xmm1
..B6.9:                         # Preds ..B6.127
                                # Execution count [1.02e+00]
        movl      %esi, %ebx                                    #697.7
        xorl      %eax, %eax                                    #697.7
        movl      $1, %r12d                                     #697.7
        xorl      %edx, %edx                                    #697.7
        shrl      $1, %ebx                                      #697.7
        je        ..B6.13       # Prob 15%                      #697.7
                                # LOE rax rdx rbx rbp rdi r8 r9 r11 ecx esi r10d r12d xmm0 xmm1
..B6.10:                        # Preds ..B6.9
                                # Execution count [8.63e-01]
        movslq    %r9d, %r12                                    #697.23
        lea       (%rdi,%r9,8), %r13                            #697.7
        imulq     -64(%rsp), %r12                               #697.33[spill]
        addq      %r12, %r13                                    #697.7
        lea       (%r12,%r9,8), %r12                            #697.7
        lea       (%r8,%r9,8), %r14                             #697.7
        addq      %rdi, %r12                                    #697.7
                                # LOE rax rdx rbx rbp rdi r8 r9 r11 r12 r13 r14 ecx esi r10d xmm0 xmm1
..B6.11:                        # Preds ..B6.11 ..B6.10
                                # Execution count [2.40e+00]
        movsd     (%rdx,%r13), %xmm2                            #697.7
        incq      %rax                                          #697.7
        mulsd     %xmm1, %xmm2                                  #697.7
        addsd     (%rdx,%r14), %xmm2                            #697.7
        movsd     %xmm2, (%rdx,%r14)                            #697.7
        movsd     8(%rdx,%r12), %xmm3                           #697.7
        mulsd     %xmm1, %xmm3                                  #697.7
        addsd     8(%rdx,%r14), %xmm3                           #697.7
        movsd     %xmm3, 8(%rdx,%r14)                           #697.7
        addq      $16, %rdx                                     #697.7
        cmpq      %rbx, %rax                                    #697.7
        jb        ..B6.11       # Prob 64%                      #697.7
                                # LOE rax rdx rbx rbp rdi r8 r9 r11 r12 r13 r14 ecx esi r10d xmm0 xmm1
..B6.12:                        # Preds ..B6.11
                                # Execution count [8.63e-01]
        lea       1(%rax,%rax), %r12d                           #697.7
                                # LOE rbp rdi r8 r9 r11 ecx esi r10d r12d xmm0 xmm1
..B6.13:                        # Preds ..B6.12 ..B6.9
                                # Execution count [1.02e+00]
        lea       -1(%r12), %eax                                #697.7
        cmpl      %esi, %eax                                    #697.7
        jae       ..B6.15       # Prob 15%                      #697.7
                                # LOE rbp rdi r8 r9 r11 ecx esi r10d r12d xmm0 xmm1
..B6.14:                        # Preds ..B6.13
                                # Execution count [8.63e-01]
        movslq    %r9d, %rax                                    #697.23
        lea       (%r8,%r9,8), %rbx                             #697.7
        imulq     -64(%rsp), %rax                               #697.33[spill]
        movslq    %r12d, %r12                                   #697.7
        lea       (%rax,%r9,8), %rdx                            #697.7
        addq      %rdi, %rdx                                    #697.7
        movsd     -8(%rdx,%r12,8), %xmm2                        #697.7
        mulsd     %xmm1, %xmm2                                  #697.7
        addsd     -8(%rbx,%r12,8), %xmm2                        #697.7
        movsd     %xmm2, -8(%rbx,%r12,8)                        #697.7
                                # LOE rbp rdi r8 r9 r11 ecx esi r10d xmm0 xmm1
..B6.15:                        # Preds ..B6.127 ..B6.13 ..B6.14
                                # Execution count [1.02e+00]
        cmpl      %ecx, %esi                                    #697.7
        jge       ..B6.22       # Prob 50%                      #697.7
                                # LOE rbp rdi r8 r9 r11 ecx esi r10d xmm0 xmm1
..B6.16:                        # Preds ..B6.15
                                # Execution count [1.02e+00]
        movl      %ecx, %ebx                                    #697.7
        lea       1(%rsi), %edx                                 #697.7
        subl      %edx, %ebx                                    #697.7
        xorl      %eax, %eax                                    #697.7
        addl      $4, %ebx                                      #697.7
        movl      $1, %r12d                                     #697.7
        sarl      $1, %ebx                                      #697.7
        shrl      $30, %ebx                                     #697.7
        lea       4(%rcx,%rbx), %ebx                            #697.7
        subl      %edx, %ebx                                    #697.7
        xorl      %edx, %edx                                    #697.7
        andl      $-4, %ebx                                     #697.7
        movl      %ebx, %r13d                                   #697.7
        shrl      $1, %r13d                                     #697.7
        je        ..B6.20       # Prob 10%                      #697.7
                                # LOE rax rdx rbp rdi r8 r9 r11 r13 ecx ebx esi r10d r12d xmm0 xmm1
..B6.17:                        # Preds ..B6.16
                                # Execution count [9.17e-01]
        movslq    %r9d, %r12                                    #697.23
        lea       (%r8,%r9,8), %r14                             #697.7
        imulq     -64(%rsp), %r12                               #697.33[spill]
        movslq    %esi, %rsi                                    #697.7
        lea       (%r14,%rsi,8), %r15                           #697.7
        lea       (%rdi,%r9,8), %r14                            #697.7
        addq      %r12, %r14                                    #697.7
        lea       (%r12,%r9,8), %r12                            #697.7
        addq      %rdi, %r12                                    #697.7
        lea       (%r14,%rsi,8), %r14                           #697.7
        lea       (%r12,%rsi,8), %r12                           #697.7
                                # LOE rax rdx rbp rdi r8 r9 r11 r12 r13 r14 r15 ecx ebx esi r10d xmm0 xmm1
..B6.18:                        # Preds ..B6.18 ..B6.17
                                # Execution count [2.55e+00]
        movsd     (%rdx,%r12), %xmm2                            #697.7
        incq      %rax                                          #697.7
        mulsd     %xmm1, %xmm2                                  #697.7
        addsd     (%rdx,%r15), %xmm2                            #697.7
        movsd     %xmm2, (%rdx,%r15)                            #697.7
        movsd     8(%rdx,%r14), %xmm3                           #697.7
        mulsd     %xmm1, %xmm3                                  #697.7
        addsd     8(%rdx,%r15), %xmm3                           #697.7
        movsd     %xmm3, 8(%rdx,%r15)                           #697.7
        addq      $16, %rdx                                     #697.7
        cmpq      %r13, %rax                                    #697.7
        jb        ..B6.18       # Prob 64%                      #697.7
                                # LOE rax rdx rbp rdi r8 r9 r11 r12 r13 r14 r15 ecx ebx esi r10d xmm0 xmm1
..B6.19:                        # Preds ..B6.18
                                # Execution count [9.17e-01]
        lea       1(%rax,%rax), %r12d                           #697.7
                                # LOE rbp rdi r8 r9 r11 ecx ebx esi r10d r12d xmm0 xmm1
..B6.20:                        # Preds ..B6.19 ..B6.16
                                # Execution count [1.02e+00]
        lea       -1(%r12), %eax                                #697.7
        cmpl      %ebx, %eax                                    #697.7
        jae       ..B6.22       # Prob 10%                      #697.7
                                # LOE rbp rdi r8 r9 r11 ecx esi r10d r12d xmm0 xmm1
..B6.21:                        # Preds ..B6.20
                                # Execution count [9.17e-01]
        movslq    %r9d, %rax                                    #697.23
        lea       (%r8,%r9,8), %rdx                             #697.7
        imulq     -64(%rsp), %rax                               #697.33[spill]
        movslq    %esi, %rsi                                    #697.7
        lea       (%rax,%r9,8), %r9                             #697.7
        movslq    %r12d, %r12                                   #697.7
        addq      %rdi, %r9                                     #697.7
        addq      %r12, %rsi                                    #697.7
        mulsd     -8(%r9,%rsi,8), %xmm1                         #697.7
        addsd     -8(%rdx,%rsi,8), %xmm1                        #697.7
        movsd     %xmm1, -8(%rdx,%rsi,8)                        #697.7
                                # LOE rbp rdi r8 r11 ecx r10d xmm0
..B6.22:                        # Preds ..B6.6 ..B6.7 ..B6.15 ..B6.20 ..B6.21
                                #      
                                # Execution count [2.35e+00]
        lea       2(%r11), %r9                                  #686.28
        incq      %r11                                          #688.7
        cmpl      -72(%rsp), %r10d                              #686.5[spill]
        jb        ..B6.4        # Prob 82%                      #686.5
                                # LOE rbp rdi r8 r9 r11 ecx r10d xmm0
..B6.23:                        # Preds ..B6.22
                                # Execution count [4.23e-01]
        movl      -32(%rsp), %ebx                               #[spill]
        movq      -64(%rsp), %rdx                               #[spill]
        movl      -80(%rsp), %eax                               #[spill]
        movl      -88(%rsp), %esi                               #[spill]
        movslq    %ebx, %rbp                                    #701.11
                                # LOE rdx rbp rdi r8 r12 r13 eax ebx esi xmm0
..B6.24:                        # Preds ..B6.23 ..B6.81
                                # Execution count [4.50e-01]
        movl      %ebx, %ecx                                    #703.7
        xorl      %r9d, %r9d                                    #688.7
        imull     %esi, %ecx                                    #703.7
        negl      %esi                                          #
        addl      %ebx, %ecx                                    #703.37
        decl      %esi                                          #
        movslq    %ecx, %rcx                                    #688.7
        lea       (%r8,%rbp,8), %r10                            #703.16
        movslq    %esi, %rsi                                    #703.7
        movq      %rdx, -64(%rsp)                               #688.7[spill]
        movq      %rdi, -40(%rsp)                               #688.7[spill]
        movl      %ebx, -32(%rsp)                               #688.7[spill]
        lea       (%rdi,%rcx,8), %r11                           #688.7
        xorl      %ecx, %ecx                                    #688.7
                                # LOE rcx rbp rsi r8 r10 r11 eax r9d xmm0
..B6.25:                        # Preds ..B6.41 ..B6.24
                                # Execution count [2.50e+00]
        movsd     -8(%r10,%rcx,8), %xmm1                        #703.16
        lea       -1(%rax), %edi                                #705.17
        divsd     -8(%r11), %xmm1                               #703.25
        movsd     %xmm1, -8(%r10,%rcx,8)                        #703.7
        xorps     .L_2il0floatpacket.12(%rip), %xmm1            #704.12
        testl     %edi, %edi                                    #705.7
        jle       ..B6.41       # Prob 6%                       #705.7
                                # LOE rcx rbp rsi r8 r10 r11 eax edi r9d xmm0 xmm1
..B6.26:                        # Preds ..B6.25
                                # Execution count [2.33e+00]
        ucomisd   %xmm0, %xmm1                                  #705.7
        jp        ..B6.27       # Prob 0%                       #705.7
        je        ..B6.41       # Prob 6%                       #705.7
                                # LOE rcx rbp rsi r8 r10 r11 eax edi r9d xmm0 xmm1
..B6.27:                        # Preds ..B6.26
                                # Execution count [1.08e+00]
        movl      %edi, %r12d                                   #705.7
        andl      $-2147483645, %r12d                           #705.7
        jge       ..B6.129      # Prob 50%                      #705.7
                                # LOE rcx rbp rsi r8 r10 r11 eax edi r9d r12d xmm0 xmm1
..B6.130:                       # Preds ..B6.27
                                # Execution count [1.08e+00]
        subl      $1, %r12d                                     #705.7
        orl       $-4, %r12d                                    #705.7
        incl      %r12d                                         #705.7
                                # LOE rcx rbp rsi r8 r10 r11 eax edi r9d r12d xmm0 xmm1
..B6.129:                       # Preds ..B6.27 ..B6.130
                                # Execution count [1.08e+00]
        testl     %r12d, %r12d                                  #705.7
        jle       ..B6.34       # Prob 50%                      #705.7
                                # LOE rcx rbp rsi r8 r10 r11 eax edi r9d r12d xmm0 xmm1
..B6.28:                        # Preds ..B6.129
                                # Execution count [1.08e+00]
        movl      %r12d, %r13d                                  #705.7
        xorl      %ebx, %ebx                                    #705.7
        movl      $1, %r14d                                     #705.7
        xorl      %edx, %edx                                    #705.7
        shrl      $1, %r13d                                     #705.7
        je        ..B6.32       # Prob 15%                      #705.7
                                # LOE rdx rcx rbx rbp rsi r8 r10 r11 r13 eax edi r9d r12d r14d xmm0 xmm1
..B6.29:                        # Preds ..B6.28
                                # Execution count [9.17e-01]
        movq      -64(%rsp), %r14                               #705.33[spill]
        imulq     %rbp, %r14                                    #705.33
        addq      -40(%rsp), %r14                               #705.7[spill]
                                # LOE rdx rcx rbx rbp rsi r8 r10 r11 r13 r14 eax edi r9d r12d xmm0 xmm1
..B6.30:                        # Preds ..B6.30 ..B6.29
                                # Execution count [2.55e+00]
        movsd     (%rdx,%r14), %xmm2                            #705.7
        incq      %rbx                                          #705.7
        mulsd     %xmm1, %xmm2                                  #705.7
        addsd     (%rdx,%r8), %xmm2                             #705.7
        movsd     %xmm2, (%rdx,%r8)                             #705.7
        movsd     8(%rdx,%r14), %xmm3                           #705.7
        mulsd     %xmm1, %xmm3                                  #705.7
        addsd     8(%rdx,%r8), %xmm3                            #705.7
        movsd     %xmm3, 8(%rdx,%r8)                            #705.7
        addq      $16, %rdx                                     #705.7
        cmpq      %r13, %rbx                                    #705.7
        jb        ..B6.30       # Prob 63%                      #705.7
                                # LOE rdx rcx rbx rbp rsi r8 r10 r11 r13 r14 eax edi r9d r12d xmm0 xmm1
..B6.31:                        # Preds ..B6.30
                                # Execution count [9.17e-01]
        lea       1(%rbx,%rbx), %r14d                           #705.7
                                # LOE rcx rbp rsi r8 r10 r11 eax edi r9d r12d r14d xmm0 xmm1
..B6.32:                        # Preds ..B6.31 ..B6.28
                                # Execution count [1.08e+00]
        lea       -1(%r14), %edx                                #705.7
        cmpl      %r12d, %edx                                   #705.7
        jae       ..B6.34       # Prob 15%                      #705.7
                                # LOE rcx rbp rsi r8 r10 r11 eax edi r9d r12d r14d xmm0 xmm1
..B6.33:                        # Preds ..B6.32
                                # Execution count [9.17e-01]
        movq      -64(%rsp), %rdx                               #705.33[spill]
        imulq     %rbp, %rdx                                    #705.33
        movslq    %r14d, %r14                                   #705.7
        addq      -40(%rsp), %rdx                               #705.7[spill]
        movsd     -8(%rdx,%r14,8), %xmm2                        #705.7
        mulsd     %xmm1, %xmm2                                  #705.7
        addsd     -8(%r8,%r14,8), %xmm2                         #705.7
        movsd     %xmm2, -8(%r8,%r14,8)                         #705.7
                                # LOE rcx rbp rsi r8 r10 r11 eax edi r9d r12d xmm0 xmm1
..B6.34:                        # Preds ..B6.32 ..B6.129 ..B6.33
                                # Execution count [1.08e+00]
        cmpl      %edi, %r12d                                   #705.7
        jge       ..B6.41       # Prob 50%                      #705.7
                                # LOE rcx rbp rsi r8 r10 r11 eax edi r9d r12d xmm0 xmm1
..B6.35:                        # Preds ..B6.34
                                # Execution count [1.08e+00]
        movl      %edi, %r15d                                   #705.7
        lea       1(%r12), %r14d                                #705.7
        subl      %r14d, %r15d                                  #705.7
        xorl      %ebx, %ebx                                    #705.7
        addl      $4, %r15d                                     #705.7
        movl      $1, %r13d                                     #705.7
        sarl      $1, %r15d                                     #705.7
        shrl      $30, %r15d                                    #705.7
        lea       3(%rax,%r15), %edx                            #705.7
        subl      %r14d, %edx                                   #705.7
        andl      $-4, %edx                                     #705.7
        je        ..B6.39       # Prob 10%                      #705.7
                                # LOE rcx rbx rbp rsi r8 r10 r11 eax edx edi r9d r12d r13d r14d r15d xmm0 xmm1
..B6.36:                        # Preds ..B6.35
                                # Execution count [9.75e-01]
        movslq    %r12d, %r12                                   #705.7
        lea       3(%rax,%r15), %r15d                           #705.7
        subl      %r14d, %r15d                                  #705.7
        movq      -64(%rsp), %r14                               #705.33[spill]
        andl      $-4, %r15d                                    #705.7
        shrl      $1, %r15d                                     #705.7
        imulq     %rbp, %r14                                    #705.33
        addq      -40(%rsp), %r14                               #705.7[spill]
        lea       (%r8,%r12,8), %r13                            #705.7
        movq      %r8, -56(%rsp)                                #705.7[spill]
        movq      %rbx, %r8                                     #705.7
        lea       (%r14,%r12,8), %r14                           #705.7
                                # LOE rcx rbx rbp rsi r8 r10 r11 r13 r14 r15 eax edx edi r9d r12d xmm0 xmm1
..B6.37:                        # Preds ..B6.37 ..B6.36
                                # Execution count [2.71e+00]
        movsd     (%r8,%r14), %xmm2                             #705.7
        incq      %rbx                                          #705.7
        mulsd     %xmm1, %xmm2                                  #705.7
        addsd     (%r8,%r13), %xmm2                             #705.7
        movsd     %xmm2, (%r8,%r13)                             #705.7
        movsd     8(%r8,%r14), %xmm3                            #705.7
        mulsd     %xmm1, %xmm3                                  #705.7
        addsd     8(%r8,%r13), %xmm3                            #705.7
        movsd     %xmm3, 8(%r8,%r13)                            #705.7
        addq      $16, %r8                                      #705.7
        cmpq      %r15, %rbx                                    #705.7
        jb        ..B6.37       # Prob 64%                      #705.7
                                # LOE rcx rbx rbp rsi r8 r10 r11 r13 r14 r15 eax edx edi r9d r12d xmm0 xmm1
..B6.38:                        # Preds ..B6.37
                                # Execution count [9.75e-01]
        movq      -56(%rsp), %r8                                #[spill]
        lea       1(%rbx,%rbx), %r13d                           #705.7
                                # LOE rcx rbp rsi r8 r10 r11 eax edx edi r9d r12d r13d xmm0 xmm1
..B6.39:                        # Preds ..B6.38 ..B6.35
                                # Execution count [1.08e+00]
        lea       -1(%r13), %ebx                                #705.7
        cmpl      %edx, %ebx                                    #705.7
        jae       ..B6.41       # Prob 10%                      #705.7
                                # LOE rcx rbp rsi r8 r10 r11 eax edi r9d r12d r13d xmm0 xmm1
..B6.40:                        # Preds ..B6.39
                                # Execution count [9.75e-01]
        imulq     -64(%rsp), %rbp                               #705.33[spill]
        movslq    %r12d, %r12                                   #705.7
        movslq    %r13d, %r13                                   #705.7
        addq      %r13, %r12                                    #705.7
        addq      -40(%rsp), %rbp                               #705.7[spill]
        mulsd     -8(%rbp,%r12,8), %xmm1                        #705.7
        addsd     -8(%r8,%r12,8), %xmm1                         #705.7
        movsd     %xmm1, -8(%r8,%r12,8)                         #705.7
                                # LOE rcx rsi r8 r10 r11 eax edi r9d xmm0
..B6.41:                        # Preds ..B6.39 ..B6.34 ..B6.25 ..B6.26 ..B6.40
                                #      
                                # Execution count [2.50e+00]
        incl      %r9d                                          #701.5
        decl      %eax                                          #701.5
        decq      %rcx                                          #701.5
        lea       (%r11,%rsi,8), %r11                           #701.5
        movslq    %edi, %rbp                                    #701.26
        cmpl      -32(%rsp), %r9d                               #701.5[spill]
        jb        ..B6.25       # Prob 81%                      #701.5
                                # LOE rcx rbp rsi r8 r10 r11 eax r9d xmm0
..B6.43:                        # Preds ..B6.121 ..B6.41 ..B6.85 ..B6.80
                                # Execution count [1.00e+00]
	.cfi_restore 6
        popq      %rbp                                          #732.3
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        popq      %rbx                                          #732.3
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #732.3
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #732.3
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #732.3
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #732.3
	.cfi_def_cfa_offset 8
        ret                                                     #732.3
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -48
	.cfi_offset 6, -56
	.cfi_offset 12, -16
	.cfi_offset 13, -24
	.cfi_offset 14, -32
	.cfi_offset 15, -40
                                # LOE
..B6.44:                        # Preds ..B6.1
                                # Execution count [5.00e-01]
        movslq    %ebx, %rcx                                    #713.5
        xorl      %r10d, %r10d                                  #713.5
        testl     %ebx, %ebx                                    #713.23
        jle       ..B6.85       # Prob 15%                      #713.23
                                # LOE rdx rcx rbp rdi r8 r10 r12 r13 ebx
..B6.45:                        # Preds ..B6.44
                                # Execution count [2.92e-02]
        movq      %rdi, %rax                                    #716.33
        lea       (,%rdx,8), %r11                               #716.33
        subq      %r11, %rax                                    #716.33
        lea       8(,%rdx,8), %rsi                              #716.33
        movq      %rax, -80(%rsp)                               #713.5[spill]
        xorl      %r9d, %r9d                                    #713.5
        movq      %r11, -72(%rsp)                               #713.5[spill]
        movq      %rdx, -64(%rsp)                               #713.5[spill]
        movl      %ebx, -32(%rsp)                               #713.5[spill]
        movq      %rbp, -88(%rsp)                               #713.5[spill]
                                # LOE rcx rsi rdi r8 r9 r10
..B6.46:                        # Preds ..B6.48 ..B6.45
                                # Execution count [1.62e-01]: Infreq
        movl      %r10d, %r11d                                  #713.26
        pxor      %xmm0, %xmm0                                  #715.11
                                # LOE rcx rsi rdi r8 r9 r10 r11d xmm0
..B6.47:                        # Preds ..B6.70 ..B6.75 ..B6.77 ..B6.46
                                # Execution count [2.35e+00]: Infreq
        movsd     (%r8,%r10,8), %xmm1                           #716.18
        addl      $2, %r11d                                     #713.26
        movslq    %r11d, %rbp                                   #713.26
        subsd     %xmm0, %xmm1                                  #716.27
        divsd     (%r9,%rdi), %xmm1                             #716.33
        movsd     %xmm1, (%r8,%r10,8)                           #716.7
        incq      %r10                                          #713.5
        addq      %rsi, %r9                                     #713.5
        cmpq      %rcx, %r10                                    #713.5
        jae       ..B6.84       # Prob 18%                      #713.5
                                # LOE rcx rbp rsi rdi r8 r9 r10
..B6.48:                        # Preds ..B6.47
                                # Execution count [1.93e+00]: Infreq
        pxor      %xmm0, %xmm0                                  #715.11
        testq     %r10, %r10                                    #715.11
        jle       ..B6.46       # Prob 6%                       #715.11
                                # LOE rcx rbp rsi rdi r8 r9 r10 xmm0
..B6.49:                        # Preds ..B6.48
                                # Execution count [1.09e+00]: Infreq
        movl      %r10d, %r11d                                  #715.11
        movl      $1717986919, %eax                             #715.11
        imull     %r11d                                         #715.11
        movl      %r11d, %ebx                                   #715.11
        sarl      $1, %edx                                      #715.11
        sarl      $31, %ebx                                     #715.11
        subl      %ebx, %edx                                    #715.11
        lea       (%rdx,%rdx,4), %r12d                          #715.11
        negl      %r12d                                         #715.11
        addl      %r11d, %r12d                                  #715.11
        testl     %r12d, %r12d                                  #715.11
        jle       ..B6.70       # Prob 50%                      #715.11
                                # LOE rcx rbp rsi rdi r8 r9 r10 r11d r12d xmm0
..B6.50:                        # Preds ..B6.49
                                # Execution count [1.09e+00]: Infreq
        movl      %r12d, %eax                                   #715.11
        xorl      %r13d, %r13d                                  #715.11
        movl      $1, %edx                                      #715.11
        xorl      %ebx, %ebx                                    #715.11
        shrl      $3, %eax                                      #715.11
        je        ..B6.54       # Prob 15%                      #715.11
                                # LOE rax rcx rbx rbp rsi rdi r8 r9 r10 r13 edx r11d r12d xmm0
..B6.51:                        # Preds ..B6.50
                                # Execution count [3.22e-03]: Infreq
        movq      -72(%rsp), %rdx                               #697.33[spill]
        imulq     %rbp, %rdx                                    #697.33
        pxor      %xmm7, %xmm7                                  #715.11
        movaps    %xmm7, %xmm6                                  #715.11
        movaps    %xmm6, %xmm5                                  #715.11
        movaps    %xmm5, %xmm4                                  #715.11
        movaps    %xmm4, %xmm3                                  #715.11
        movaps    %xmm3, %xmm2                                  #715.11
        addq      -80(%rsp), %rdx                               #715.11[spill]
        movaps    %xmm2, %xmm1                                  #715.11
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r9 r10 r13 r11d r12d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B6.52:                        # Preds ..B6.52 ..B6.51
                                # Execution count [6.44e-01]: Infreq
        movsd     (%rbx,%rdx), %xmm8                            #715.11
        incq      %r13                                          #715.11
        movsd     8(%rbx,%rdx), %xmm9                           #715.11
        movsd     16(%rbx,%rdx), %xmm10                         #715.11
        movsd     24(%rbx,%rdx), %xmm11                         #715.11
        movsd     32(%rbx,%rdx), %xmm12                         #715.11
        movsd     40(%rbx,%rdx), %xmm13                         #715.11
        movsd     48(%rbx,%rdx), %xmm14                         #715.11
        movsd     56(%rbx,%rdx), %xmm15                         #715.11
        mulsd     (%rbx,%r8), %xmm8                             #715.11
        mulsd     8(%rbx,%r8), %xmm9                            #715.11
        mulsd     16(%rbx,%r8), %xmm10                          #715.11
        addsd     %xmm8, %xmm0                                  #715.11
        mulsd     24(%rbx,%r8), %xmm11                          #715.11
        addsd     %xmm9, %xmm7                                  #715.11
        mulsd     32(%rbx,%r8), %xmm12                          #715.11
        addsd     %xmm10, %xmm6                                 #715.11
        mulsd     40(%rbx,%r8), %xmm13                          #715.11
        addsd     %xmm11, %xmm5                                 #715.11
        mulsd     48(%rbx,%r8), %xmm14                          #715.11
        addsd     %xmm12, %xmm4                                 #715.11
        mulsd     56(%rbx,%r8), %xmm15                          #715.11
        addsd     %xmm13, %xmm3                                 #715.11
        addsd     %xmm14, %xmm2                                 #715.11
        addsd     %xmm15, %xmm1                                 #715.11
        addq      $64, %rbx                                     #715.11
        cmpq      %rax, %r13                                    #715.11
        jb        ..B6.52       # Prob 99%                      #715.11
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r9 r10 r13 r11d r12d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B6.53:                        # Preds ..B6.52
                                # Execution count [9.27e-01]: Infreq
        addsd     %xmm7, %xmm0                                  #715.11
        addsd     %xmm6, %xmm0                                  #715.11
        addsd     %xmm5, %xmm0                                  #715.11
        addsd     %xmm4, %xmm0                                  #715.11
        addsd     %xmm3, %xmm0                                  #715.11
        addsd     %xmm2, %xmm0                                  #715.11
        addsd     %xmm1, %xmm0                                  #715.11
        lea       1(,%r13,8), %edx                              #715.11
                                # LOE rcx rbp rsi rdi r8 r9 r10 edx r11d r12d xmm0
..B6.54:                        # Preds ..B6.53 ..B6.50
                                # Execution count [1.09e+00]: Infreq
        cmpl      %r12d, %edx                                   #715.11
        ja        ..B6.70       # Prob 50%                      #715.11
                                # LOE rcx rbp rsi rdi r8 r9 r10 edx r11d r12d xmm0
..B6.55:                        # Preds ..B6.54
                                # Execution count [0.00e+00]: Infreq
        lea       -1(%rdx), %eax                                #715.11
        negl      %eax                                          #715.11
        addl      %r12d, %eax                                   #715.11
        decl      %eax                                          #715.11
        jmp       *.2.34_2.switchtab.50(,%rax,8)                #715.11
                                # LOE rcx rbp rsi rdi r8 r9 r10 edx r11d r12d xmm0
..1.34_0.TAG.6:
..B6.57:                        # Preds ..B6.55
                                # Execution count [0.00e+00]: Infreq
        movq      -72(%rsp), %rax                               #697.33[spill]
        imulq     %rbp, %rax                                    #697.33
        movslq    %edx, %rdx                                    #715.11
        addq      -80(%rsp), %rax                               #715.11[spill]
        movsd     40(%rax,%rdx,8), %xmm1                        #715.11
        mulsd     40(%r8,%rdx,8), %xmm1                         #715.11
        addsd     %xmm1, %xmm0                                  #715.11
        jmp       ..B6.59       # Prob 100%                     #715.11
                                # LOE rax rcx rbp rsi rdi r8 r9 r10 edx r11d r12d xmm0
..1.34_0.TAG.5:
..B6.58:                        # Preds ..B6.55
                                # Execution count [0.00e+00]: Infreq
        movq      -72(%rsp), %rax                               #697.33[spill]
        imulq     %rbp, %rax                                    #697.33
        addq      -80(%rsp), %rax                               #697.33[spill]
                                # LOE rax rcx rbp rsi rdi r8 r9 r10 edx r11d r12d xmm0
..B6.59:                        # Preds ..B6.58 ..B6.57
                                # Execution count [0.00e+00]: Infreq
        movslq    %edx, %rdx                                    #715.11
        movsd     32(%rax,%rdx,8), %xmm1                        #715.11
        mulsd     32(%r8,%rdx,8), %xmm1                         #715.11
        addsd     %xmm1, %xmm0                                  #715.11
        jmp       ..B6.61       # Prob 100%                     #715.11
                                # LOE rax rcx rbp rsi rdi r8 r9 r10 edx r11d r12d xmm0
..1.34_0.TAG.4:
..B6.60:                        # Preds ..B6.55
                                # Execution count [0.00e+00]: Infreq
        movq      -72(%rsp), %rax                               #697.33[spill]
        imulq     %rbp, %rax                                    #697.33
        addq      -80(%rsp), %rax                               #697.33[spill]
                                # LOE rax rcx rbp rsi rdi r8 r9 r10 edx r11d r12d xmm0
..B6.61:                        # Preds ..B6.60 ..B6.59
                                # Execution count [0.00e+00]: Infreq
        movslq    %edx, %rdx                                    #715.11
        movsd     24(%rax,%rdx,8), %xmm1                        #715.11
        mulsd     24(%r8,%rdx,8), %xmm1                         #715.11
        addsd     %xmm1, %xmm0                                  #715.11
        jmp       ..B6.63       # Prob 100%                     #715.11
                                # LOE rax rcx rbp rsi rdi r8 r9 r10 edx r11d r12d xmm0
..1.34_0.TAG.3:
..B6.62:                        # Preds ..B6.55
                                # Execution count [0.00e+00]: Infreq
        movq      -72(%rsp), %rax                               #697.33[spill]
        imulq     %rbp, %rax                                    #697.33
        addq      -80(%rsp), %rax                               #697.33[spill]
                                # LOE rax rcx rbp rsi rdi r8 r9 r10 edx r11d r12d xmm0
..B6.63:                        # Preds ..B6.62 ..B6.61
                                # Execution count [0.00e+00]: Infreq
        movslq    %edx, %rdx                                    #715.11
        movsd     16(%rax,%rdx,8), %xmm1                        #715.11
        mulsd     16(%r8,%rdx,8), %xmm1                         #715.11
        addsd     %xmm1, %xmm0                                  #715.11
        jmp       ..B6.65       # Prob 100%                     #715.11
                                # LOE rax rcx rbp rsi rdi r8 r9 r10 edx r11d r12d xmm0
..1.34_0.TAG.2:
..B6.64:                        # Preds ..B6.55
                                # Execution count [0.00e+00]: Infreq
        movq      -72(%rsp), %rax                               #697.33[spill]
        imulq     %rbp, %rax                                    #697.33
        addq      -80(%rsp), %rax                               #697.33[spill]
                                # LOE rax rcx rbp rsi rdi r8 r9 r10 edx r11d r12d xmm0
..B6.65:                        # Preds ..B6.64 ..B6.63
                                # Execution count [0.00e+00]: Infreq
        movslq    %edx, %rdx                                    #715.11
        movsd     8(%rax,%rdx,8), %xmm1                         #715.11
        mulsd     8(%r8,%rdx,8), %xmm1                          #715.11
        addsd     %xmm1, %xmm0                                  #715.11
        jmp       ..B6.67       # Prob 100%                     #715.11
                                # LOE rax rcx rbp rsi rdi r8 r9 r10 edx r11d r12d xmm0
..1.34_0.TAG.1:
..B6.66:                        # Preds ..B6.55
                                # Execution count [0.00e+00]: Infreq
        movq      -72(%rsp), %rax                               #697.33[spill]
        imulq     %rbp, %rax                                    #697.33
        addq      -80(%rsp), %rax                               #697.33[spill]
                                # LOE rax rcx rbp rsi rdi r8 r9 r10 edx r11d r12d xmm0
..B6.67:                        # Preds ..B6.66 ..B6.65
                                # Execution count [0.00e+00]: Infreq
        movslq    %edx, %rdx                                    #715.11
        movsd     (%rax,%rdx,8), %xmm1                          #715.11
        mulsd     (%r8,%rdx,8), %xmm1                           #715.11
        addsd     %xmm1, %xmm0                                  #715.11
        jmp       ..B6.69       # Prob 100%                     #715.11
                                # LOE rax rcx rbp rsi rdi r8 r9 r10 edx r11d r12d xmm0
..1.34_0.TAG.0:
..B6.68:                        # Preds ..B6.55
                                # Execution count [0.00e+00]: Infreq
        movq      -72(%rsp), %rax                               #697.33[spill]
        imulq     %rbp, %rax                                    #697.33
        addq      -80(%rsp), %rax                               #697.33[spill]
                                # LOE rax rcx rbp rsi rdi r8 r9 r10 edx r11d r12d xmm0
..B6.69:                        # Preds ..B6.68 ..B6.67
                                # Execution count [9.27e-01]: Infreq
        movslq    %edx, %rdx                                    #715.11
        movsd     -8(%rax,%rdx,8), %xmm1                        #715.11
        mulsd     -8(%r8,%rdx,8), %xmm1                         #715.11
        addsd     %xmm1, %xmm0                                  #715.11
                                # LOE rcx rbp rsi rdi r8 r9 r10 r11d r12d xmm0
..B6.70:                        # Preds ..B6.69 ..B6.54 ..B6.49
                                # Execution count [1.09e+00]: Infreq
        movslq    %r12d, %rbx                                   #715.11
        cmpq      %r10, %rbx                                    #715.11
        jge       ..B6.47       # Prob 50%                      #715.11
                                # LOE rcx rbx rbp rsi rdi r8 r9 r10 r11d r12d xmm0
..B6.71:                        # Preds ..B6.70
                                # Execution count [9.85e-01]: Infreq
        incl      %r12d                                         #715.11
        movl      $1717986919, %eax                             #715.11
        negl      %r12d                                         #715.11
        addl      %r11d, %r12d                                  #715.11
        addl      $5, %r12d                                     #715.11
        imull     %r12d                                         #715.11
        sarl      $31, %r12d                                    #715.11
        sarl      $1, %edx                                      #715.11
        subl      %r12d, %edx                                   #715.11
        movslq    %edx, %r15                                    #715.11
        cmpq      $2, %r15                                      #715.11
        jl        ..B6.82       # Prob 10%                      #715.11
                                # LOE rcx rbx rbp rsi rdi r8 r9 r10 r15 edx r11d xmm0
..B6.72:                        # Preds ..B6.71
                                # Execution count [9.85e-01]: Infreq
        movq      -72(%rsp), %rax                               #697.33[spill]
        andl      $-2, %edx                                     #715.11
        imulq     %rbp, %rax                                    #697.33
        movq      -64(%rsp), %r12                               #715.11[spill]
        pxor      %xmm1, %xmm1                                  #715.11
        movslq    %edx, %r14                                    #715.11
        movsd     %xmm0, %xmm1                                  #715.11
        movq      %r8, -56(%rsp)                                #715.11[spill]
        lea       (,%r12,8), %r13                               #715.11
        xorl      %r12d, %r12d                                  #715.11
        negq      %r13                                          #715.11
        addq      %rdi, %r13                                    #715.11
        addq      %rax, %r13                                    #715.11
        xorl      %eax, %eax                                    #715.11
        lea       (%r13,%rbx,8), %rdx                           #715.11
        lea       (%r8,%rbx,8), %r13                            #715.11
                                # LOE rax rdx rcx rbx rbp rsi rdi r9 r10 r12 r13 r14 r15 r11d xmm1
..B6.73:                        # Preds ..B6.73 ..B6.72
                                # Execution count [5.47e+00]: Infreq
        addq      $2, %r12                                      #715.11
        lea       (%rdx,%rax), %r8                              #715.11
        movsd     32(%r8), %xmm9                                #715.11
        movsd     24(%r8), %xmm7                                #715.11
        movsd     16(%r8), %xmm5                                #715.11
        movsd     8(%r8), %xmm3                                 #715.11
        movsd     (%r8), %xmm10                                 #715.11
        movhpd    64(%r8), %xmm7                                #715.11
        movhpd    72(%r8), %xmm9                                #715.11
        movhpd    56(%r8), %xmm5                                #715.11
        movhpd    48(%r8), %xmm3                                #715.11
        movhpd    40(%r8), %xmm10                               #715.11
        lea       (%r13,%rax), %r8                              #715.11
        movsd     8(%r8), %xmm2                                 #715.11
        addq      $80, %rax                                     #715.11
        movsd     (%r8), %xmm0                                  #715.11
        movhpd    48(%r8), %xmm2                                #715.11
        movhpd    40(%r8), %xmm0                                #715.11
        mulpd     %xmm0, %xmm10                                 #715.11
        mulpd     %xmm2, %xmm3                                  #715.11
        movsd     16(%r8), %xmm4                                #715.11
        movhpd    56(%r8), %xmm4                                #715.11
        mulpd     %xmm4, %xmm5                                  #715.11
        addpd     %xmm3, %xmm10                                 #715.11
        movsd     24(%r8), %xmm6                                #715.11
        movhpd    64(%r8), %xmm6                                #715.11
        mulpd     %xmm6, %xmm7                                  #715.11
        addpd     %xmm5, %xmm10                                 #715.11
        movsd     32(%r8), %xmm8                                #715.11
        movhpd    72(%r8), %xmm8                                #715.11
        mulpd     %xmm8, %xmm9                                  #715.11
        addpd     %xmm7, %xmm10                                 #715.11
        addpd     %xmm9, %xmm10                                 #715.11
        addpd     %xmm10, %xmm1                                 #715.11
        cmpq      %r14, %r12                                    #715.11
        jb        ..B6.73       # Prob 82%                      #715.11
                                # LOE rax rdx rcx rbx rbp rsi rdi r9 r10 r12 r13 r14 r15 r11d xmm1
..B6.74:                        # Preds ..B6.73
                                # Execution count [9.85e-01]: Infreq
        movaps    %xmm1, %xmm0                                  #715.11
        unpckhpd  %xmm1, %xmm0                                  #715.11
        movq      -56(%rsp), %r8                                #[spill]
        addsd     %xmm0, %xmm1                                  #715.11
        movaps    %xmm1, %xmm0                                  #715.11
                                # LOE rcx rbx rbp rsi rdi r8 r9 r10 r14 r15 r11d xmm0
..B6.75:                        # Preds ..B6.74 ..B6.82
                                # Execution count [1.09e+00]: Infreq
        lea       (%r14,%r14,4), %r12                           #715.11
        shlq      $3, %r12                                      #715.11
        cmpq      %r15, %r14                                    #715.11
        jae       ..B6.47       # Prob 10%                      #715.11
                                # LOE rcx rbx rbp rsi rdi r8 r9 r10 r12 r14 r15 r11d xmm0
..B6.76:                        # Preds ..B6.75
                                # Execution count [9.85e-01]: Infreq
        imulq     -72(%rsp), %rbp                               #697.33[spill]
        addq      -80(%rsp), %rbp                               #715.11[spill]
        lea       (%r8,%rbx,8), %rdx                            #715.11
        lea       (%rbp,%rbx,8), %rax                           #715.11
        .align    16,0x90
                                # LOE rax rdx rcx rsi rdi r8 r9 r10 r12 r14 r15 r11d xmm0
..B6.77:                        # Preds ..B6.77 ..B6.76
                                # Execution count [5.47e+00]: Infreq
        movsd     (%r12,%rax), %xmm5                            #715.11
        incq      %r14                                          #715.11
        movsd     8(%r12,%rax), %xmm1                           #715.11
        mulsd     (%r12,%rdx), %xmm5                            #715.11
        mulsd     8(%r12,%rdx), %xmm1                           #715.11
        movsd     16(%r12,%rax), %xmm2                          #715.11
        addsd     %xmm1, %xmm5                                  #715.11
        mulsd     16(%r12,%rdx), %xmm2                          #715.11
        movsd     24(%r12,%rax), %xmm3                          #715.11
        addsd     %xmm2, %xmm5                                  #715.11
        mulsd     24(%r12,%rdx), %xmm3                          #715.11
        movsd     32(%r12,%rax), %xmm4                          #715.11
        addsd     %xmm3, %xmm5                                  #715.11
        mulsd     32(%r12,%rdx), %xmm4                          #715.11
        addq      $40, %r12                                     #715.11
        addsd     %xmm4, %xmm5                                  #715.11
        addsd     %xmm5, %xmm0                                  #715.11
        cmpq      %r15, %r14                                    #715.11
        jb        ..B6.77       # Prob 82%                      #715.11
        jmp       ..B6.47       # Prob 100%                     #715.11
                                # LOE rax rdx rcx rsi rdi r8 r9 r10 r12 r14 r15 r11d xmm0
..B6.80:                        # Preds ..B6.2
                                # Execution count [7.67e-02]: Infreq
        movslq    %ebx, %rbp                                    #701.11
        jl        ..B6.43       # Prob 9%                       #701.23
                                # LOE rdx rbp rdi r8 r12 r13 eax ebx esi
..B6.81:                        # Preds ..B6.80
                                # Execution count [6.91e-02]: Infreq
        shlq      $3, %rdx                                      #703.25
        subq      %rdx, %rdi                                    #703.25
        pxor      %xmm0, %xmm0                                  #703.25
        jmp       ..B6.24       # Prob 100%                     #703.25
                                # LOE rdx rbp rdi r8 r12 r13 eax ebx esi xmm0
..B6.82:                        # Preds ..B6.71
                                # Execution count [9.85e-02]: Infreq
        xorl      %r14d, %r14d                                  #715.11
        jmp       ..B6.75       # Prob 100%                     #715.11
                                # LOE rcx rbx rbp rsi rdi r8 r9 r10 r14 r15 r11d xmm0
..B6.84:                        # Preds ..B6.47
                                # Execution count [4.23e-01]: Infreq
        movq      -64(%rsp), %rdx                               #[spill]
        movl      -32(%rsp), %ebx                               #[spill]
        movq      -88(%rsp), %rbp                               #[spill]
                                # LOE rdx rcx rbp rdi r8 r12 r13 ebx
..B6.85:                        # Preds ..B6.44 ..B6.84
                                # Execution count [5.00e-01]: Infreq
        xorl      %r9d, %r9d                                    #719.5
        lea       -1(%rbx), %eax                                #719.11
        xorl      %esi, %esi                                    #721.25
        lea       -1(%rcx), %r10                                #719.17
        movl      %ebx, %r11d                                   #721.25
        testl     %eax, %eax                                    #719.25
        jle       ..B6.43       # Prob 9%                       #719.25
                                # LOE rdx rcx rbp rsi rdi r8 r10 r12 r13 eax ebx r9d r11d
..B6.86:                        # Preds ..B6.85
                                # Execution count [4.50e-01]: Infreq
        movq      %rdi, %r15                                    #721.25
        lea       (,%rdx,8), %r14                               #721.25
        subq      %r14, %r15                                    #721.25
        lea       (%rbp,%rcx,4), %rbp                           #722.11
        movq      %rbp, -24(%rsp)                               #722.11[spill]
        lea       (%r8,%rcx,8), %rbp                            #721.16
        movq      %r14, -72(%rsp)                               #721.25[spill]
        movq      %r15, -80(%rsp)                               #721.25[spill]
        movl      %eax, -16(%rsp)                               #721.25[spill]
        movq      %rcx, -8(%rsp)                                #721.25[spill]
        movq      %rdx, -64(%rsp)                               #721.25[spill]
        movq      %rdi, -40(%rsp)                               #721.25[spill]
        movl      %ebx, -32(%rsp)                               #721.25[spill]
                                # LOE rbp rsi r8 r10 r9d r11d
..B6.87:                        # Preds ..B6.121 ..B6.86
                                # Execution count [2.50e+00]: Infreq
        movl      -32(%rsp), %ecx                               #721.32[spill]
        lea       -1(%r11), %edi                                #721.25
        subl      %edi, %ecx                                    #721.32
        pxor      %xmm0, %xmm0                                  #721.25
        testl     %ecx, %ecx                                    #721.25
        jle       ..B6.123      # Prob 6%                       #721.25
                                # LOE rbp rsi r8 r10 ecx edi r9d r11d xmm0
..B6.88:                        # Preds ..B6.87
                                # Execution count [1.16e+00]: Infreq
        movl      $1717986919, %eax                             #721.25
        movl      %ecx, %ebx                                    #721.25
        imull     %ecx                                          #721.25
        sarl      $31, %ebx                                     #721.25
        sarl      $1, %edx                                      #721.25
        subl      %ebx, %edx                                    #721.25
        lea       (%rdx,%rdx,4), %ebx                           #721.25
        negl      %ebx                                          #721.25
        addl      %ecx, %ebx                                    #721.25
        testl     %ebx, %ebx                                    #721.25
        jle       ..B6.109      # Prob 50%                      #721.25
                                # LOE rbp rsi r8 r10 ecx ebx edi r9d r11d xmm0
..B6.89:                        # Preds ..B6.88
                                # Execution count [1.16e+00]: Infreq
        movl      %ebx, %r13d                                   #721.25
        xorl      %eax, %eax                                    #721.25
        movl      $1, %r12d                                     #721.25
        xorl      %edx, %edx                                    #721.25
        shrl      $3, %r13d                                     #721.25
        je        ..B6.93       # Prob 15%                      #721.25
                                # LOE rax rdx rbp rsi r8 r10 r13 ecx ebx edi r9d r11d r12d xmm0
..B6.90:                        # Preds ..B6.89
                                # Execution count [3.42e-03]: Infreq
        movslq    %r10d, %r12                                   #721.37
        lea       (%r8,%r10,8), %r15                            #721.25
        imulq     -72(%rsp), %r12                               #721.47[spill]
        pxor      %xmm7, %xmm7                                  #721.25
        movaps    %xmm7, %xmm6                                  #721.25
        movq      -80(%rsp), %r14                               #721.25[spill]
        movaps    %xmm6, %xmm5                                  #721.25
        movaps    %xmm5, %xmm4                                  #721.25
        movaps    %xmm4, %xmm3                                  #721.25
        movq      %r13, -88(%rsp)                               #721.25[spill]
        lea       (%r14,%r10,8), %r13                           #721.25
        movaps    %xmm3, %xmm2                                  #721.25
        addq      %r12, %r13                                    #721.25
        movaps    %xmm2, %xmm1                                  #721.25
        lea       (%r12,%r10,8), %r12                           #721.25
        addq      %r14, %r12                                    #721.25
        movq      -88(%rsp), %r14                               #721.25[spill]
                                # LOE rax rdx rbp rsi r8 r10 r12 r13 r14 r15 ecx ebx edi r9d r11d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B6.91:                        # Preds ..B6.91 ..B6.90
                                # Execution count [6.84e-01]: Infreq
        movsd     (%rdx,%r13), %xmm8                            #721.25
        incq      %rax                                          #721.25
        movsd     8(%rdx,%r12), %xmm9                           #721.25
        movsd     16(%rdx,%r12), %xmm10                         #721.25
        movsd     24(%rdx,%r12), %xmm11                         #721.25
        movsd     32(%rdx,%r12), %xmm12                         #721.25
        movsd     40(%rdx,%r12), %xmm13                         #721.25
        movsd     48(%rdx,%r12), %xmm14                         #721.25
        movsd     56(%rdx,%r12), %xmm15                         #721.25
        mulsd     (%rdx,%r15), %xmm8                            #721.25
        mulsd     8(%rdx,%r15), %xmm9                           #721.25
        mulsd     16(%rdx,%r15), %xmm10                         #721.25
        addsd     %xmm8, %xmm0                                  #721.25
        mulsd     24(%rdx,%r15), %xmm11                         #721.25
        addsd     %xmm9, %xmm7                                  #721.25
        mulsd     32(%rdx,%r15), %xmm12                         #721.25
        addsd     %xmm10, %xmm6                                 #721.25
        mulsd     40(%rdx,%r15), %xmm13                         #721.25
        addsd     %xmm11, %xmm5                                 #721.25
        mulsd     48(%rdx,%r15), %xmm14                         #721.25
        addsd     %xmm12, %xmm4                                 #721.25
        mulsd     56(%rdx,%r15), %xmm15                         #721.25
        addsd     %xmm13, %xmm3                                 #721.25
        addsd     %xmm14, %xmm2                                 #721.25
        addsd     %xmm15, %xmm1                                 #721.25
        addq      $64, %rdx                                     #721.25
        cmpq      %r14, %rax                                    #721.25
        jb        ..B6.91       # Prob 99%                      #721.25
                                # LOE rax rdx rbp rsi r8 r10 r12 r13 r14 r15 ecx ebx edi r9d r11d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B6.92:                        # Preds ..B6.91
                                # Execution count [9.85e-01]: Infreq
        addsd     %xmm7, %xmm0                                  #721.25
        addsd     %xmm6, %xmm0                                  #721.25
        addsd     %xmm5, %xmm0                                  #721.25
        addsd     %xmm4, %xmm0                                  #721.25
        addsd     %xmm3, %xmm0                                  #721.25
        addsd     %xmm2, %xmm0                                  #721.25
        addsd     %xmm1, %xmm0                                  #721.25
        lea       1(,%rax,8), %r12d                             #721.25
                                # LOE rbp rsi r8 r10 ecx ebx edi r9d r11d r12d xmm0
..B6.93:                        # Preds ..B6.92 ..B6.89
                                # Execution count [1.16e+00]: Infreq
        cmpl      %ebx, %r12d                                   #721.25
        ja        ..B6.109      # Prob 50%                      #721.25
                                # LOE rbp rsi r8 r10 ecx ebx edi r9d r11d r12d xmm0
..B6.94:                        # Preds ..B6.93
                                # Execution count [0.00e+00]: Infreq
        lea       -1(%r12), %eax                                #721.25
        negl      %eax                                          #721.25
        addl      %ebx, %eax                                    #721.25
        decl      %eax                                          #721.25
        jmp       *.2.34_2.switchtab.51(,%rax,8)                #721.25
                                # LOE rbp rsi r8 r10 ecx ebx edi r9d r11d r12d xmm0
..1.34_1.TAG.6:
..B6.96:                        # Preds ..B6.94
                                # Execution count [0.00e+00]: Infreq
        movslq    %r10d, %rax                                   #721.37
        lea       (%r8,%r10,8), %r13                            #721.25
        imulq     -72(%rsp), %rax                               #721.47[spill]
        movslq    %r12d, %r12                                   #721.25
        lea       (%rax,%r10,8), %rdx                           #721.25
        addq      -80(%rsp), %rdx                               #721.25[spill]
        movsd     40(%rdx,%r12,8), %xmm1                        #721.25
        mulsd     40(%r13,%r12,8), %xmm1                        #721.25
        addsd     %xmm1, %xmm0                                  #721.25
                                # LOE rbp rsi r8 r10 ecx ebx edi r9d r11d r12d xmm0
..1.34_1.TAG.5:
..B6.98:                        # Preds ..B6.94 ..B6.96
                                # Execution count [0.00e+00]: Infreq
        movslq    %r10d, %rax                                   #721.37
        lea       (%r8,%r10,8), %r13                            #721.25
        imulq     -72(%rsp), %rax                               #721.47[spill]
        movslq    %r12d, %r12                                   #721.25
        lea       (%rax,%r10,8), %rdx                           #721.25
        addq      -80(%rsp), %rdx                               #721.25[spill]
        movsd     32(%rdx,%r12,8), %xmm1                        #721.25
        mulsd     32(%r13,%r12,8), %xmm1                        #721.25
        addsd     %xmm1, %xmm0                                  #721.25
                                # LOE rbp rsi r8 r10 ecx ebx edi r9d r11d r12d xmm0
..1.34_1.TAG.4:
..B6.100:                       # Preds ..B6.94 ..B6.98
                                # Execution count [0.00e+00]: Infreq
        movslq    %r10d, %rax                                   #721.37
        lea       (%r8,%r10,8), %r13                            #721.25
        imulq     -72(%rsp), %rax                               #721.47[spill]
        movslq    %r12d, %r12                                   #721.25
        lea       (%rax,%r10,8), %rdx                           #721.25
        addq      -80(%rsp), %rdx                               #721.25[spill]
        movsd     24(%rdx,%r12,8), %xmm1                        #721.25
        mulsd     24(%r13,%r12,8), %xmm1                        #721.25
        addsd     %xmm1, %xmm0                                  #721.25
                                # LOE rbp rsi r8 r10 ecx ebx edi r9d r11d r12d xmm0
..1.34_1.TAG.3:
..B6.102:                       # Preds ..B6.94 ..B6.100
                                # Execution count [0.00e+00]: Infreq
        movslq    %r10d, %rax                                   #721.37
        lea       (%r8,%r10,8), %r13                            #721.25
        imulq     -72(%rsp), %rax                               #721.47[spill]
        movslq    %r12d, %r12                                   #721.25
        lea       (%rax,%r10,8), %rdx                           #721.25
        addq      -80(%rsp), %rdx                               #721.25[spill]
        movsd     16(%rdx,%r12,8), %xmm1                        #721.25
        mulsd     16(%r13,%r12,8), %xmm1                        #721.25
        addsd     %xmm1, %xmm0                                  #721.25
                                # LOE rbp rsi r8 r10 ecx ebx edi r9d r11d r12d xmm0
..1.34_1.TAG.2:
..B6.104:                       # Preds ..B6.94 ..B6.102
                                # Execution count [0.00e+00]: Infreq
        movslq    %r10d, %rax                                   #721.37
        lea       (%r8,%r10,8), %r13                            #721.25
        imulq     -72(%rsp), %rax                               #721.47[spill]
        movslq    %r12d, %r12                                   #721.25
        lea       (%rax,%r10,8), %rdx                           #721.25
        addq      -80(%rsp), %rdx                               #721.25[spill]
        movsd     8(%rdx,%r12,8), %xmm1                         #721.25
        mulsd     8(%r13,%r12,8), %xmm1                         #721.25
        addsd     %xmm1, %xmm0                                  #721.25
                                # LOE rbp rsi r8 r10 ecx ebx edi r9d r11d r12d xmm0
..1.34_1.TAG.1:
..B6.106:                       # Preds ..B6.94 ..B6.104
                                # Execution count [0.00e+00]: Infreq
        movslq    %r10d, %rdx                                   #721.37
        lea       (%r8,%r10,8), %r14                            #721.25
        imulq     -72(%rsp), %rdx                               #721.47[spill]
        movq      -80(%rsp), %rax                               #721.25[spill]
        movslq    %r12d, %r12                                   #721.25
        lea       (%rax,%r10,8), %r13                           #721.25
        addq      %rdx, %r13                                    #721.25
        movsd     (%r13,%r12,8), %xmm1                          #721.25
        mulsd     (%r14,%r12,8), %xmm1                          #721.25
        addsd     %xmm1, %xmm0                                  #721.25
                                # LOE rbp rsi r8 r10 ecx ebx edi r9d r11d r12d xmm0
..1.34_1.TAG.0:
..B6.108:                       # Preds ..B6.94 ..B6.106
                                # Execution count [9.85e-01]: Infreq
        movslq    %r10d, %rax                                   #721.37
        lea       (%r8,%r10,8), %r13                            #721.25
        imulq     -72(%rsp), %rax                               #721.47[spill]
        movslq    %r12d, %r12                                   #721.25
        lea       (%rax,%r10,8), %rdx                           #721.25
        addq      -80(%rsp), %rdx                               #721.25[spill]
        movsd     -8(%rdx,%r12,8), %xmm1                        #721.25
        mulsd     -8(%r13,%r12,8), %xmm1                        #721.25
        addsd     %xmm1, %xmm0                                  #721.25
                                # LOE rbp rsi r8 r10 ecx ebx edi r9d r11d xmm0
..B6.109:                       # Preds ..B6.108 ..B6.93 ..B6.88
                                # Execution count [1.16e+00]: Infreq
        cmpl      %ecx, %ebx                                    #721.25
        jge       ..B6.119      # Prob 50%                      #721.25
                                # LOE rbp rsi r8 r10 ecx ebx edi r9d r11d xmm0
..B6.110:                       # Preds ..B6.109
                                # Execution count [1.05e+00]: Infreq
        movl      $1717986919, %eax                             #721.25
        lea       1(%rbx), %r12d                                #721.25
        subl      %r12d, %ecx                                   #721.25
        addl      $5, %ecx                                      #721.25
        imull     %ecx                                          #721.25
        sarl      $31, %ecx                                     #721.25
        sarl      $1, %edx                                      #721.25
        subl      %ecx, %edx                                    #721.25
        movslq    %edx, %rax                                    #721.25
        cmpq      $2, %rax                                      #721.25
        jl        ..B6.124      # Prob 10%                      #721.25
                                # LOE rax rbp rsi r8 r10 edx ebx edi r9d r11d xmm0
..B6.111:                       # Preds ..B6.110
                                # Execution count [1.05e+00]: Infreq
        movslq    %r10d, %r12                                   #721.37
        andl      $-2, %edx                                     #721.25
        imulq     -72(%rsp), %r12                               #721.47[spill]
        movq      -64(%rsp), %r14                               #721.25[spill]
        xorl      %r15d, %r15d                                  #721.25
        movslq    %ebx, %r13                                    #721.25
        pxor      %xmm1, %xmm1                                  #721.25
        movslq    %edx, %rdx                                    #721.25
        movsd     %xmm0, %xmm1                                  #721.25
        movl      %r9d, -48(%rsp)                               #721.25[spill]
        shlq      $3, %r14                                      #721.25
        negq      %r14                                          #721.25
        addq      -40(%rsp), %r14                               #721.25[spill]
        lea       (%r10,%r13), %rcx                             #721.25
        movq      %r8, -56(%rsp)                                #721.25[spill]
        addq      %r12, %r14                                    #721.25
        xorl      %r12d, %r12d                                  #721.25
        lea       (%r8,%rcx,8), %rcx                            #721.25
                                # LOE rax rdx rcx rbp rsi r10 r12 r13 r14 r15 ebx edi r11d xmm1
..B6.112:                       # Preds ..B6.112 ..B6.111
                                # Execution count [5.82e+00]: Infreq
        movsd     8(%rcx), %xmm2                                #721.25
        lea       (%r10,%r13), %r9                              #721.25
        movsd     (%rcx), %xmm0                                 #721.25
        lea       (%r14,%r12), %r8                              #721.25
        movsd     8(%r8,%r9,8), %xmm3                           #721.25
        addq      $2, %r15                                      #721.25
        movsd     (%r8,%r9,8), %xmm10                           #721.25
        addq      $80, %r12                                     #721.25
        movhpd    48(%r8,%r9,8), %xmm3                          #721.25
        movhpd    40(%r8,%r9,8), %xmm10                         #721.25
        movhpd    48(%rcx), %xmm2                               #721.25
        movhpd    40(%rcx), %xmm0                               #721.25
        mulpd     %xmm0, %xmm10                                 #721.25
        mulpd     %xmm2, %xmm3                                  #721.25
        movsd     16(%rcx), %xmm4                               #721.25
        movsd     16(%r8,%r9,8), %xmm5                          #721.25
        movhpd    56(%r8,%r9,8), %xmm5                          #721.25
        movhpd    56(%rcx), %xmm4                               #721.25
        mulpd     %xmm4, %xmm5                                  #721.25
        addpd     %xmm3, %xmm10                                 #721.25
        movsd     24(%rcx), %xmm6                               #721.25
        movsd     24(%r8,%r9,8), %xmm7                          #721.25
        movhpd    64(%r8,%r9,8), %xmm7                          #721.25
        movhpd    64(%rcx), %xmm6                               #721.25
        mulpd     %xmm6, %xmm7                                  #721.25
        addpd     %xmm5, %xmm10                                 #721.25
        movsd     32(%rcx), %xmm8                               #721.25
        movsd     32(%r8,%r9,8), %xmm9                          #721.25
        movhpd    72(%r8,%r9,8), %xmm9                          #721.25
        movhpd    72(%rcx), %xmm8                               #721.25
        addq      $80, %rcx                                     #721.25
        mulpd     %xmm8, %xmm9                                  #721.25
        addpd     %xmm7, %xmm10                                 #721.25
        addpd     %xmm9, %xmm10                                 #721.25
        addpd     %xmm10, %xmm1                                 #721.25
        cmpq      %rdx, %r15                                    #721.25
        jb        ..B6.112      # Prob 81%                      #721.25
                                # LOE rax rdx rcx rbp rsi r10 r12 r13 r14 r15 ebx edi r11d xmm1
..B6.113:                       # Preds ..B6.112
                                # Execution count [1.05e+00]: Infreq
        movaps    %xmm1, %xmm0                                  #721.25
        unpckhpd  %xmm1, %xmm0                                  #721.25
        movl      -48(%rsp), %r9d                               #[spill]
        addsd     %xmm0, %xmm1                                  #721.25
        movq      -56(%rsp), %r8                                #[spill]
        movaps    %xmm1, %xmm0                                  #721.25
                                # LOE rax rdx rbp rsi r8 r10 ebx edi r9d r11d xmm0
..B6.114:                       # Preds ..B6.113 ..B6.124
                                # Execution count [1.16e+00]: Infreq
        lea       (%rdx,%rdx,4), %r14                           #721.25
        shlq      $3, %r14                                      #721.25
        cmpq      %rax, %rdx                                    #721.25
        jae       ..B6.119      # Prob 9%                       #721.25
                                # LOE rax rdx rbp rsi r8 r10 r14 ebx edi r9d r11d xmm0
..B6.115:                       # Preds ..B6.114
                                # Execution count [1.05e+00]: Infreq
        movslq    %r10d, %r15                                   #721.37
        imulq     -72(%rsp), %r15                               #721.47[spill]
        movq      -80(%rsp), %r12                               #721.25[spill]
        lea       (%r15,%r10,8), %rcx                           #721.25
        movslq    %ebx, %rbx                                    #721.25
        addq      %r12, %rcx                                    #721.25
        lea       (%r12,%r10,8), %r13                           #721.25
        addq      %r15, %r13                                    #721.25
        lea       (%r8,%r10,8), %r10                            #721.25
        lea       (%r10,%rbx,8), %r10                           #721.25
        lea       (%rcx,%rbx,8), %rcx                           #721.25
        lea       (%r13,%rbx,8), %r13                           #721.25
        .align    16,0x90
                                # LOE rax rdx rcx rbp rsi r8 r10 r13 r14 edi r9d r11d xmm0
..B6.116:                       # Preds ..B6.116 ..B6.115
                                # Execution count [5.82e+00]: Infreq
        movsd     (%r14,%rcx), %xmm5                            #721.25
        incq      %rdx                                          #721.25
        movsd     8(%r14,%r13), %xmm1                           #721.25
        mulsd     (%r14,%r10), %xmm5                            #721.25
        mulsd     8(%r14,%r10), %xmm1                           #721.25
        movsd     16(%r14,%r13), %xmm2                          #721.25
        addsd     %xmm1, %xmm5                                  #721.25
        mulsd     16(%r14,%r10), %xmm2                          #721.25
        movsd     24(%r14,%r13), %xmm3                          #721.25
        addsd     %xmm2, %xmm5                                  #721.25
        mulsd     24(%r14,%r10), %xmm3                          #721.25
        movsd     32(%r14,%r13), %xmm4                          #721.25
        addsd     %xmm3, %xmm5                                  #721.25
        mulsd     32(%r14,%r10), %xmm4                          #721.25
        addq      $40, %r14                                     #721.25
        addsd     %xmm4, %xmm5                                  #721.25
        addsd     %xmm5, %xmm0                                  #721.25
        cmpq      %rax, %rdx                                    #721.25
        jb        ..B6.116      # Prob 81%                      #721.25
                                # LOE rax rdx rcx rbp rsi r8 r10 r13 r14 edi r9d r11d xmm0
..B6.119:                       # Preds ..B6.109 ..B6.114 ..B6.116 ..B6.123
                                # Execution count [2.50e+00]: Infreq
        movq      -24(%rsp), %rax                               #722.11[spill]
        addsd     -16(%rbp,%rsi,8), %xmm0                       #721.25
        movl      -8(%rax,%rsi,4), %eax                         #722.11
        movsd     %xmm0, -16(%rbp,%rsi,8)                       #721.7
        cmpl      %edi, %eax                                    #724.17
        je        ..B6.121      # Prob 50%                      #724.17
                                # LOE rbp rsi r8 eax r9d r11d xmm0
..B6.120:                       # Preds ..B6.119
                                # Execution count [1.25e+00]: Infreq
        movslq    %eax, %rax                                    #726.13
        movq      -8(%r8,%rax,8), %rdx                          #726.13
        movsd     %xmm0, -8(%r8,%rax,8)                         #727.9
        movq      %rdx, -16(%rbp,%rsi,8)                        #728.9
                                # LOE rbp rsi r8 r9d r11d
..B6.121:                       # Preds ..B6.119 ..B6.120
                                # Execution count [2.50e+00]: Infreq
        movq      -8(%rsp), %rax                                #719.11[spill]
        incl      %r9d                                          #719.5
        decl      %r11d                                         #719.5
        lea       -2(%rsi,%rax), %r10                           #719.11
        decq      %rsi                                          #719.5
        cmpl      -16(%rsp), %r9d                               #719.5[spill]
        jb        ..B6.87       # Prob 81%                      #719.5
        jmp       ..B6.43       # Prob 100%                     #719.5
                                # LOE rbp rsi r8 r10 r9d r11d
..B6.123:                       # Preds ..B6.87
                                # Execution count [1.72e-01]: Infreq
        pxor      %xmm0, %xmm0                                  #721.25
        jmp       ..B6.119      # Prob 100%                     #721.25
                                # LOE rbp rsi r8 edi r9d r11d xmm0
..B6.124:                       # Preds ..B6.110
                                # Execution count [1.05e-01]: Infreq
        xorl      %edx, %edx                                    #721.25
        jmp       ..B6.114      # Prob 100%                     #721.25
        .align    16,0x90
                                # LOE rax rdx rbp rsi r8 r10 ebx edi r9d r11d xmm0
	.cfi_endproc
# mark_end;
	.type	dgesl,@function
	.size	dgesl,.-dgesl
..LNdgesl.5:
	.section .rodata, "a"
	.align 8
.2.34_2.switchtab.50:
	.quad	..1.34_0.TAG.0
	.quad	..1.34_0.TAG.1
	.quad	..1.34_0.TAG.2
	.quad	..1.34_0.TAG.3
	.quad	..1.34_0.TAG.4
	.quad	..1.34_0.TAG.5
	.quad	..1.34_0.TAG.6
	.align 8
.2.34_2.switchtab.51:
	.quad	..1.34_1.TAG.0
	.quad	..1.34_1.TAG.1
	.quad	..1.34_1.TAG.2
	.quad	..1.34_1.TAG.3
	.quad	..1.34_1.TAG.4
	.quad	..1.34_1.TAG.5
	.quad	..1.34_1.TAG.6
	.data
# -- End  dgesl
	.text
.L_2__routine_start_dscal_6:
# -- Begin  dscal
	.text
# mark_begin;
       .align    16,0x90
	.globl dscal
# --- dscal(int, double, double *, int)
dscal:
# parameter 1: %edi
# parameter 2: %xmm0
# parameter 3: %rsi
# parameter 4: %edx
..B7.1:                         # Preds ..B7.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_dscal.725:
..L726:
                                                        #775.1
        movaps    %xmm0, %xmm1                                  #775.1
        testl     %edi, %edi                                    #780.13
        jle       ..B7.11       # Prob 16%                      #780.13
                                # LOE rbx rbp rsi r12 r13 r14 r15 edx edi xmm1
..B7.2:                         # Preds ..B7.1
                                # Execution count [8.40e-01]
        cmpl      $1, %edx                                      #783.21
        je        ..B7.13       # Prob 16%                      #783.21
                                # LOE rbx rbp rsi r12 r13 r14 r15 edx edi xmm1
..B7.3:                         # Preds ..B7.2
                                # Execution count [7.06e-01]
        testl     %edx, %edx                                    #803.15
        jl        ..B7.12       # Prob 16%                      #803.15
                                # LOE rbx rbp rsi r12 r13 r14 r15 edx edi xmm1
..B7.4:                         # Preds ..B7.3
                                # Execution count [5.93e-01]
        xorl      %r9d, %r9d                                    #805.7
                                # LOE rbx rbp rsi r9 r12 r13 r14 r15 edx edi xmm1
..B7.5:                         # Preds ..B7.4 ..B7.12
                                # Execution count [7.06e-01]
        movl      %edi, %r8d                                    #812.5
        movl      $1, %ecx                                      #812.5
        xorl      %eax, %eax                                    #812.5
        shrl      $1, %r8d                                      #812.5
        je        ..B7.9        # Prob 10%                      #812.5
                                # LOE rbx rbp rsi r9 r12 r13 r14 r15 eax edx ecx edi r8d xmm1
..B7.6:                         # Preds ..B7.5
                                # Execution count [6.35e-01]
        movq      %rbp, -8(%rsp)                                #814.7[spill]
        lea       (%rdx,%rdx), %r10d                            #814.7
        negl      %r10d                                         #814.7
        lea       (%rsi,%r9,8), %rcx                            #814.20
        lea       (%r10,%rdx,2), %r11d                          #814.7
        xorl      %r10d, %r10d                                  #814.7
	.cfi_offset 6, -16
                                # LOE rcx rbx rsi r9 r12 r13 r14 r15 eax edx edi r8d r10d r11d xmm1
..B7.7:                         # Preds ..B7.7 ..B7.6
                                # Execution count [1.76e+00]
        incl      %eax                                          #812.5
        lea       (%r11,%r10), %ebp                             #814.7
        movslq    %ebp, %rbp                                    #814.7
        movsd     (%rcx,%rbp,8), %xmm0                          #814.20
        mulsd     %xmm1, %xmm0                                  #814.20
        movsd     %xmm0, (%rcx,%rbp,8)                          #814.7
        movl      %r10d, %ebp                                   #814.7
        subl      %edx, %ebp                                    #814.7
        lea       (%r10,%rdx,2), %r10d                          #812.5
        lea       (%rbp,%rdx,2), %ebp                           #814.7
        movslq    %ebp, %rbp                                    #814.7
        movsd     (%rcx,%rbp,8), %xmm2                          #814.20
        mulsd     %xmm1, %xmm2                                  #814.20
        movsd     %xmm2, (%rcx,%rbp,8)                          #814.7
        cmpl      %r8d, %eax                                    #812.5
        jb        ..B7.7        # Prob 64%                      #812.5
                                # LOE rcx rbx rsi r9 r12 r13 r14 r15 eax edx edi r8d r10d r11d xmm1
..B7.8:                         # Preds ..B7.7
                                # Execution count [6.35e-01]
        movq      -8(%rsp), %rbp                                #[spill]
	.cfi_restore 6
        lea       1(%rax,%rax), %ecx                            #814.7
                                # LOE rbx rbp rsi r9 r12 r13 r14 r15 edx ecx edi xmm1
..B7.9:                         # Preds ..B7.8 ..B7.5
                                # Execution count [7.06e-01]
        lea       -1(%rcx), %eax                                #812.5
        cmpl      %edi, %eax                                    #812.5
        jae       ..B7.11       # Prob 10%                      #812.5
                                # LOE rbx rbp rsi r9 r12 r13 r14 r15 edx ecx xmm1
..B7.10:                        # Preds ..B7.9
                                # Execution count [6.35e-01]
        movslq    %ecx, %rcx                                    #814.7
        movslq    %edx, %rdx                                    #814.7
        decq      %rcx                                          #812.5
        imulq     %rcx, %rdx                                    #814.7
        addq      %rdx, %r9                                     #814.7
        movsd     (%rsi,%r9,8), %xmm0                           #814.20
        mulsd     %xmm0, %xmm1                                  #814.20
        movsd     %xmm1, (%rsi,%r9,8)                           #814.7
                                # LOE rbx rbp r12 r13 r14 r15
..B7.11:                        # Preds ..B7.37 ..B7.1 ..B7.9 ..B7.22 ..B7.35
                                #       ..B7.10
                                # Execution count [1.00e+00]
        ret                                                     #818.3
                                # LOE
..B7.12:                        # Preds ..B7.3
                                # Execution count [1.13e-01]: Infreq
        movslq    %edi, %r9                                     #809.7
        negq      %r9                                           #809.20
        movslq    %edx, %rdx                                    #809.7
        incq      %r9                                           #809.20
        imulq     %rdx, %r9                                     #809.26
        jmp       ..B7.5        # Prob 100%                     #809.26
                                # LOE rbx rbp rsi r9 r12 r13 r14 r15 edx edi xmm1
..B7.13:                        # Preds ..B7.2
                                # Execution count [1.34e-01]: Infreq
        movl      $1717986919, %eax                             #785.13
        movl      %edi, %ecx                                    #785.13
        imull     %edi                                          #785.13
        sarl      $31, %ecx                                     #785.13
        sarl      $1, %edx                                      #785.13
        subl      %ecx, %edx                                    #785.13
        lea       (%rdx,%rdx,4), %ecx                           #785.13
        negl      %ecx                                          #785.13
        addl      %edi, %ecx                                    #785.13
        movslq    %ecx, %r8                                     #785.5
        testq     %r8, %r8                                      #787.22
        jle       ..B7.22       # Prob 50%                      #787.22
                                # LOE rbx rbp rsi r8 r12 r13 r14 r15 ecx edi xmm1
..B7.14:                        # Preds ..B7.13
                                # Execution count [1.14e-01]: Infreq
        cmpq      $4, %r8                                       #787.5
        jl        ..B7.41       # Prob 10%                      #787.5
                                # LOE rbx rbp rsi r8 r12 r13 r14 r15 ecx edi xmm1
..B7.15:                        # Preds ..B7.14
                                # Execution count [1.14e-01]: Infreq
        movl      %ecx, %edx                                    #787.5
        movaps    %xmm1, %xmm0                                  #736.6
        andl      $-4, %edx                                     #787.5
        xorl      %eax, %eax                                    #787.5
        movslq    %edx, %rdx                                    #787.5
        unpcklpd  %xmm0, %xmm0                                  #736.6
                                # LOE rax rdx rbx rbp rsi r8 r12 r13 r14 r15 ecx edi xmm0 xmm1
..B7.16:                        # Preds ..B7.16 ..B7.15
                                # Execution count [6.32e-01]: Infreq
        movups    (%rsi,%rax,8), %xmm2                          #789.19
        movups    16(%rsi,%rax,8), %xmm3                        #789.19
        mulpd     %xmm0, %xmm2                                  #789.19
        mulpd     %xmm0, %xmm3                                  #789.19
        movups    %xmm2, (%rsi,%rax,8)                          #789.7
        movups    %xmm3, 16(%rsi,%rax,8)                        #789.7
        addq      $4, %rax                                      #787.5
        cmpq      %rdx, %rax                                    #787.5
        jb        ..B7.16       # Prob 82%                      #787.5
                                # LOE rax rdx rbx rbp rsi r8 r12 r13 r14 r15 ecx edi xmm0 xmm1
..B7.18:                        # Preds ..B7.16 ..B7.41
                                # Execution count [1.34e-01]: Infreq
        cmpq      %r8, %rdx                                     #787.5
        jae       ..B7.22       # Prob 15%                      #787.5
                                # LOE rdx rbx rbp rsi r8 r12 r13 r14 r15 ecx edi xmm1
..B7.20:                        # Preds ..B7.18 ..B7.20
                                # Execution count [6.32e-01]: Infreq
        movsd     (%rsi,%rdx,8), %xmm0                          #789.19
        mulsd     %xmm1, %xmm0                                  #789.19
        movsd     %xmm0, (%rsi,%rdx,8)                          #789.7
        incq      %rdx                                          #787.5
        cmpq      %r8, %rdx                                     #787.5
        jb        ..B7.20       # Prob 82%                      #787.5
                                # LOE rdx rbx rbp rsi r8 r12 r13 r14 r15 ecx edi xmm1
..B7.22:                        # Preds ..B7.20 ..B7.13 ..B7.18
                                # Execution count [1.34e-01]: Infreq
        movslq    %edi, %rdi                                    #792.5
        cmpq      %rdi, %r8                                     #792.22
        jge       ..B7.11       # Prob 50%                      #792.22
                                # LOE rbx rbp rsi r8 r12 r13 r14 r15 ecx edi xmm1
..B7.23:                        # Preds ..B7.22
                                # Execution count [1.21e-01]: Infreq
        incl      %ecx                                          #792.11
        movl      $1717986919, %eax                             #775.1
        subl      %ecx, %edi                                    #775.1
        addl      $5, %edi                                      #775.1
        imull     %edi                                          #775.1
        sarl      $31, %edi                                     #775.1
        sarl      $1, %edx                                      #775.1
        subl      %edi, %edx                                    #775.1
        lea       (%rdx,%rdx,4), %edi                           #775.1
        movslq    %edi, %rcx                                    #792.5
        cmpq      $8, %rcx                                      #792.5
        jl        ..B7.39       # Prob 10%                      #792.5
                                # LOE rcx rbx rbp rsi r8 r12 r13 r14 r15 edi xmm1
..B7.24:                        # Preds ..B7.23
                                # Execution count [1.21e-01]: Infreq
        lea       (%rsi,%r8,8), %rdx                            #794.21
        movq      %rdx, %rax                                    #792.5
        andq      $15, %rax                                     #792.5
        movl      %eax, %eax                                    #792.5
        testl     %eax, %eax                                    #792.5
        je        ..B7.27       # Prob 50%                      #792.5
                                # LOE rax rdx rcx rbx rbp rsi r8 r12 r13 r14 r15 edi xmm1
..B7.25:                        # Preds ..B7.24
                                # Execution count [1.21e-01]: Infreq
        testb     $7, %al                                       #792.5
        jne       ..B7.39       # Prob 10%                      #792.5
                                # LOE rdx rcx rbx rbp rsi r8 r12 r13 r14 r15 edi xmm1
..B7.26:                        # Preds ..B7.25
                                # Execution count [6.05e-02]: Infreq
        movl      $1, %eax                                      #792.5
                                # LOE rax rdx rcx rbx rbp rsi r8 r12 r13 r14 r15 edi xmm1
..B7.27:                        # Preds ..B7.26 ..B7.24
                                # Execution count [1.21e-01]: Infreq
        lea       8(%rax), %r9d                                 #792.5
        cmpq      %r9, %rcx                                     #792.5
        jl        ..B7.39       # Prob 10%                      #792.5
                                # LOE rax rdx rcx rbx rbp rsi r8 r12 r13 r14 r15 edi xmm1
..B7.28:                        # Preds ..B7.27
                                # Execution count [1.34e-01]: Infreq
        movl      %edi, %r9d                                    #792.5
        xorl      %r10d, %r10d                                  #792.5
        subl      %eax, %r9d                                    #792.5
        andl      $7, %r9d                                      #792.5
        subl      %r9d, %edi                                    #792.5
        movq      %rdx, %r9                                     #792.5
        testl     %eax, %eax                                    #792.5
        jbe       ..B7.32       # Prob 10%                      #792.5
                                # LOE rax rdx rcx rbx rbp rsi r8 r9 r10 r12 r13 r14 r15 edi xmm1
..B7.30:                        # Preds ..B7.28 ..B7.30
                                # Execution count [6.72e-01]: Infreq
        movsd     (%r9), %xmm0                                  #794.21
        incq      %r10                                          #792.5
        mulsd     %xmm1, %xmm0                                  #794.21
        movsd     %xmm0, (%r9)                                  #794.7
        addq      $8, %r9                                       #792.5
        cmpq      %rax, %r10                                    #792.5
        jb        ..B7.30       # Prob 82%                      #792.5
                                # LOE rax rdx rcx rbx rbp rsi r8 r9 r10 r12 r13 r14 r15 edi xmm1
..B7.32:                        # Preds ..B7.30 ..B7.28
                                # Execution count [1.21e-01]: Infreq
        movaps    %xmm1, %xmm0                                  #736.6
        unpcklpd  %xmm0, %xmm0                                  #736.6
        movslq    %edi, %r9                                     #792.5
                                # LOE rax rdx rcx rbx rbp rsi r8 r9 r12 r13 r14 r15 edi xmm0 xmm1
..B7.33:                        # Preds ..B7.33 ..B7.32
                                # Execution count [6.72e-01]: Infreq
        movups    (%rdx,%rax,8), %xmm2                          #794.21
        movups    16(%rdx,%rax,8), %xmm3                        #794.21
        movups    32(%rdx,%rax,8), %xmm4                        #794.21
        movups    48(%rdx,%rax,8), %xmm5                        #794.21
        mulpd     %xmm0, %xmm2                                  #794.21
        mulpd     %xmm0, %xmm3                                  #794.21
        mulpd     %xmm0, %xmm4                                  #794.21
        mulpd     %xmm0, %xmm5                                  #794.21
        movups    %xmm2, (%rdx,%rax,8)                          #794.7
        movups    %xmm3, 16(%rdx,%rax,8)                        #794.7
        movups    %xmm4, 32(%rdx,%rax,8)                        #794.7
        movups    %xmm5, 48(%rdx,%rax,8)                        #794.7
        addq      $8, %rax                                      #792.5
        cmpq      %r9, %rax                                     #792.5
        jb        ..B7.33       # Prob 82%                      #792.5
                                # LOE rax rdx rcx rbx rbp rsi r8 r9 r12 r13 r14 r15 edi xmm0 xmm1
..B7.35:                        # Preds ..B7.33 ..B7.39
                                # Execution count [1.34e-01]: Infreq
        xorl      %edx, %edx                                    #792.5
        lea       1(%rdi), %eax                                 #792.5
        movslq    %eax, %rax                                    #792.5
        cmpq      %rcx, %rax                                    #792.5
        ja        ..B7.11       # Prob 10%                      #792.5
                                # LOE rdx rcx rbx rbp rsi r8 r12 r13 r14 r15 edi xmm1
..B7.36:                        # Preds ..B7.35
                                # Execution count [1.21e-01]: Infreq
        movslq    %edi, %rdi                                    #794.7
        addq      %rdi, %r8                                     #794.21
        subq      %rdi, %rcx                                    #792.5
        lea       (%rsi,%r8,8), %rax                            #794.21
                                # LOE rax rdx rcx rbx rbp r12 r13 r14 r15 xmm1
..B7.37:                        # Preds ..B7.37 ..B7.36
                                # Execution count [6.72e-01]: Infreq
        movsd     (%rax), %xmm0                                 #794.21
        incq      %rdx                                          #792.5
        mulsd     %xmm1, %xmm0                                  #794.21
        movsd     %xmm0, (%rax)                                 #794.7
        addq      $8, %rax                                      #792.5
        cmpq      %rcx, %rdx                                    #792.5
        jb        ..B7.37       # Prob 82%                      #792.5
        jmp       ..B7.11       # Prob 100%                     #792.5
                                # LOE rax rdx rcx rbx rbp r12 r13 r14 r15 xmm1
..B7.39:                        # Preds ..B7.27 ..B7.23 ..B7.25
                                # Execution count [1.21e-02]: Infreq
        xorl      %edi, %edi                                    #792.5
        jmp       ..B7.35       # Prob 100%                     #792.5
                                # LOE rcx rbx rbp rsi r8 r12 r13 r14 r15 edi xmm1
..B7.41:                        # Preds ..B7.14
                                # Execution count [1.14e-02]: Infreq
        xorl      %edx, %edx                                    #787.5
        jmp       ..B7.18       # Prob 100%                     #787.5
        .align    16,0x90
                                # LOE rdx rbx rbp rsi r8 r12 r13 r14 r15 ecx edi xmm1
	.cfi_endproc
# mark_end;
	.type	dscal,@function
	.size	dscal,.-dscal
..LNdscal.6:
	.data
# -- End  dscal
	.text
.L_2__routine_start_idamax_7:
# -- Begin  idamax
	.text
# mark_begin;
       .align    16,0x90
	.globl idamax
# --- idamax(int, double *, int)
idamax:
# parameter 1: %edi
# parameter 2: %rsi
# parameter 3: %edx
..B8.1:                         # Preds ..B8.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_idamax.731:
..L732:
                                                        #866.1
        movl      %edi, %r9d                                    #866.1
        testl     %r9d, %r9d                                    #874.12
        jle       ..B8.13       # Prob 28%                      #874.12
                                # LOE rbx rbp rsi r12 r13 r14 r15 edx r9d
..B8.2:                         # Preds ..B8.1
                                # Execution count [7.20e-01]
        testl     %edx, %edx                                    #874.25
        jle       ..B8.13       # Prob 6%                       #874.25
                                # LOE rbx rbp rsi r12 r13 r14 r15 edx r9d
..B8.3:                         # Preds ..B8.2
                                # Execution count [6.70e-01]
        movl      $1, %eax                                      #879.3
        cmpl      $1, %r9d                                      #881.13
        je        ..B8.12       # Prob 6%                       #881.13
                                # LOE rbx rbp rsi r12 r13 r14 r15 eax edx r9d
..B8.4:                         # Preds ..B8.3
                                # Execution count [6.24e-01]
        movsd     (%rsi), %xmm0                                 #888.21
        andps     .L_2il0floatpacket.11(%rip), %xmm0            #888.12
        cmpl      $1, %edx                                      #886.16
        je        ..B8.14       # Prob 16%                      #886.16
                                # LOE rbx rbp rsi r12 r13 r14 r15 eax edx r9d xmm0
..B8.5:                         # Preds ..B8.4
                                # Execution count [5.24e-01]
        cmpl      $1, %r9d                                      #905.22
        jle       ..B8.12       # Prob 50%                      #905.22
                                # LOE rbx rbp rsi r12 r13 r14 r15 eax edx r9d xmm0
..B8.6:                         # Preds ..B8.5
                                # Execution count [5.24e-01]
        movl      $1, %ecx                                      #905.5
        lea       -1(%r9), %r8d                                 #905.5
        xorl      %edi, %edi                                    #905.5
        shrl      $1, %r8d                                      #905.5
        je        ..B8.10       # Prob 10%                      #905.5
                                # LOE rbx rbp rsi r12 r13 r14 r15 eax edx ecx edi r8d r9d xmm0
..B8.7:                         # Preds ..B8.6
                                # Execution count [4.72e-01]
        xorl      %ecx, %ecx                                    #907.7
        .align    16,0x90
                                # LOE rbx rbp rsi r12 r13 r14 r15 eax edx ecx edi r8d r9d xmm0
..B8.8:                         # Preds ..B8.8 ..B8.7
                                # Execution count [1.31e+00]
        movl      %ecx, %r10d                                   #912.7
        lea       (%rcx,%rdx,2), %ecx                           #912.7
        subl      %edx, %r10d                                   #912.7
        movslq    %ecx, %rcx                                    #912.7
        lea       (%r10,%rdx,2), %r11d                          #912.7
        movslq    %r11d, %r11                                   #912.7
        lea       2(%rdi,%rdi), %r10d                           #907.7
        movsd     (%rsi,%rcx,8), %xmm2                          #907.28
        andps     .L_2il0floatpacket.11(%rip), %xmm2            #907.19
        movsd     (%rsi,%r11,8), %xmm1                          #907.28
        andps     .L_2il0floatpacket.11(%rip), %xmm1            #907.19
        comisd    %xmm0, %xmm1                                  #909.9
        movaps    %xmm1, %xmm3                                  #910.9
        ja        ..L733        # Prob 50%                      #909.9
        movl      %eax, %r10d                                   #909.9
..L733:                                                         #
        maxsd     %xmm0, %xmm3                                  #910.9
        movaps    %xmm2, %xmm0                                  #910.9
        comisd    %xmm3, %xmm0                                  #910.9
        lea       3(%rdi,%rdi), %eax                            #907.7
        ja        ..L734        # Prob 50%                      #910.9
        movaps    %xmm3, %xmm0                                  #910.9
..L734:                                                         #
        comisd    %xmm3, %xmm2                                  #909.9
        cmovbe    %r10d, %eax                                   #909.9
        incl      %edi                                          #905.5
        cmpl      %r8d, %edi                                    #905.5
        jb        ..B8.8        # Prob 64%                      #905.5
                                # LOE rbx rbp rsi r12 r13 r14 r15 eax edx ecx edi r8d r9d xmm0
..B8.9:                         # Preds ..B8.8
                                # Execution count [4.72e-01]
        lea       1(%rdi,%rdi), %ecx                            #907.7
                                # LOE rbx rbp rsi r12 r13 r14 r15 eax edx ecx r9d xmm0
..B8.10:                        # Preds ..B8.9 ..B8.6
                                # Execution count [5.24e-01]
        decl      %r9d                                          #866.1
        lea       -1(%rcx), %edi                                #909.21
        cmpl      %r9d, %edi                                    #905.5
        jae       ..B8.12       # Prob 10%                      #905.5
                                # LOE rbx rbp rsi r12 r13 r14 r15 eax edx ecx xmm0
..B8.11:                        # Preds ..B8.10
                                # Execution count [4.72e-01]
        movslq    %edx, %rdx                                    #912.7
        lea       1(%rcx), %edi                                 #909.21
        movslq    %ecx, %rcx                                    #912.7
        decq      %rcx                                          #909.21
        imulq     %rdx, %rcx                                    #912.7
        addq      %rcx, %rdx                                    #912.7
        movsd     (%rsi,%rdx,8), %xmm1                          #907.28
        andps     .L_2il0floatpacket.11(%rip), %xmm1            #907.19
        comisd    %xmm0, %xmm1                                  #909.9
        cmova     %edi, %eax                                    #909.9
                                # LOE rbx rbp r12 r13 r14 r15 eax
..B8.12:                        # Preds ..B8.3 ..B8.11 ..B8.19 ..B8.14 ..B8.10
                                #       ..B8.5
                                # Execution count [6.24e-01]
        ret                                                     #916.10
                                # LOE
..B8.13:                        # Preds ..B8.1 ..B8.2
                                # Execution count [3.30e-01]
        xorl      %eax, %eax                                    #876.12
        ret                                                     #876.12
                                # LOE
..B8.14:                        # Preds ..B8.4
                                # Execution count [9.99e-02]: Infreq
        cmpl      $1, %r9d                                      #890.22
        jle       ..B8.12       # Prob 50%                      #890.22
                                # LOE rbx rbp rsi r12 r13 r14 r15 eax r9d xmm0
..B8.15:                        # Preds ..B8.14
                                # Execution count [9.99e-02]: Infreq
        xorl      %edi, %edi                                    #890.5
        lea       -1(%r9), %ecx                                 #890.5
        movl      $1, %r8d                                      #890.5
        xorl      %edx, %edx                                    #890.5
        shrl      $1, %ecx                                      #890.5
        je        ..B8.19       # Prob 10%                      #890.5
        .align    16,0x90
                                # LOE rdx rcx rbx rbp rsi rdi r12 r13 r14 r15 eax r8d r9d xmm0
..B8.17:                        # Preds ..B8.15 ..B8.17
                                # Execution count [2.50e-01]: Infreq
        movsd     8(%rdx,%rsi), %xmm1                           #892.28
        lea       2(%rdi,%rdi), %r8d                            #894.21
        andps     .L_2il0floatpacket.11(%rip), %xmm1            #892.19
        comisd    %xmm0, %xmm1                                  #894.9
        movaps    %xmm1, %xmm3                                  #895.9
        movsd     16(%rdx,%rsi), %xmm2                          #892.28
        maxsd     %xmm0, %xmm3                                  #895.9
        ja        ..L735        # Prob 50%                      #894.9
        movl      %eax, %r8d                                    #894.9
..L735:                                                         #
        andps     .L_2il0floatpacket.11(%rip), %xmm2            #892.19
        lea       3(%rdi,%rdi), %eax                            #894.21
        movaps    %xmm2, %xmm0                                  #895.9
        incq      %rdi                                          #890.5
        comisd    %xmm3, %xmm0                                  #895.9
        ja        ..L736        # Prob 50%                      #895.9
        movaps    %xmm3, %xmm0                                  #895.9
..L736:                                                         #
        comisd    %xmm3, %xmm2                                  #894.9
        cmovbe    %r8d, %eax                                    #894.9
        addq      $16, %rdx                                     #890.5
        cmpq      %rcx, %rdi                                    #890.5
        jb        ..B8.17       # Prob 64%                      #890.5
                                # LOE rdx rcx rbx rbp rsi rdi r12 r13 r14 r15 eax r9d xmm0
..B8.18:                        # Preds ..B8.17
                                # Execution count [8.99e-02]: Infreq
        lea       1(%rdi,%rdi), %r8d                            #892.7
                                # LOE rbx rbp rsi r12 r13 r14 r15 eax r8d r9d xmm0
..B8.19:                        # Preds ..B8.18 ..B8.15
                                # Execution count [9.99e-02]: Infreq
        decl      %r9d                                          #866.1
        lea       -1(%r8), %edx                                 #894.21
        cmpl      %r9d, %edx                                    #890.5
        jae       ..B8.12       # Prob 10%                      #890.5
                                # LOE rbx rbp rsi r12 r13 r14 r15 eax r8d xmm0
..B8.20:                        # Preds ..B8.19
                                # Execution count [8.99e-02]: Infreq
        lea       1(%r8), %edx                                  #894.21
        movslq    %r8d, %r8                                     #890.25
        movsd     (%rsi,%r8,8), %xmm1                           #892.28
        andps     .L_2il0floatpacket.11(%rip), %xmm1            #892.19
        comisd    %xmm0, %xmm1                                  #894.9
        cmova     %edx, %eax                                    #894.9
        ret                                                     #894.9
        .align    16,0x90
                                # LOE rbx rbp r12 r13 r14 r15 eax
	.cfi_endproc
# mark_end;
	.type	idamax,@function
	.size	idamax,.-idamax
..LNidamax.7:
	.data
# -- End  idamax
	.text
.L_2__routine_start_r8_abs_8:
# -- Begin  r8_abs
	.text
# mark_begin;
       .align    16,0x90
	.globl r8_abs
# --- r8_abs(double)
r8_abs:
# parameter 1: %xmm0
..B9.1:                         # Preds ..B9.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_r8_abs.738:
..L739:
                                                        #942.1
        andps     .L_2il0floatpacket.11(%rip), %xmm0            #945.3
        ret                                                     #953.10
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	r8_abs,@function
	.size	r8_abs,.-r8_abs
..LNr8_abs.8:
	.data
# -- End  r8_abs
	.text
.L_2__routine_start_r8_epsilon_9:
# -- Begin  r8_epsilon
	.text
# mark_begin;
       .align    16,0x90
	.globl r8_epsilon
# --- r8_epsilon(void)
r8_epsilon:
..B10.1:                        # Preds ..B10.0
                                # Execution count [9.00e-01]
	.cfi_startproc
..___tag_value_r8_epsilon.741:
..L742:
                                                        #989.1
        movsd     .L_2il0floatpacket.10(%rip), %xmm2            #992.3
        movsd     .L_2il0floatpacket.1(%rip), %xmm1             #996.13
        movaps    %xmm2, %xmm0                                  #992.3
                                # LOE rbx rbp r12 r13 r14 r15 xmm0 xmm1 xmm2
..B10.2:                        # Preds ..B10.2 ..B10.1
                                # Execution count [5.00e+00]
        mulsd     %xmm1, %xmm0                                  #996.13
        movaps    %xmm2, %xmm3                                  #994.36
        addsd     %xmm0, %xmm3                                  #994.36
        comisd    %xmm2, %xmm3                                  #994.36
        ja        ..B10.2       # Prob 82%                      #994.36
                                # LOE rbx rbp r12 r13 r14 r15 xmm0 xmm1 xmm2
..B10.3:                        # Preds ..B10.2
                                # Execution count [1.00e+00]
        addsd     %xmm0, %xmm0                                  #998.13
        ret                                                     #1000.10
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	r8_epsilon,@function
	.size	r8_epsilon,.-r8_epsilon
..LNr8_epsilon.9:
	.data
# -- End  r8_epsilon
	.text
.L_2__routine_start_r8_max_10:
# -- Begin  r8_max
	.text
# mark_begin;
       .align    16,0x90
	.globl r8_max
# --- r8_max(double, double)
r8_max:
# parameter 1: %xmm0
# parameter 2: %xmm1
..B11.1:                        # Preds ..B11.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_r8_max.744:
..L745:
                                                        #1026.1
        maxsd     %xmm1, %xmm0                                  #1037.10
        ret                                                     #1037.10
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	r8_max,@function
	.size	r8_max,.-r8_max
..LNr8_max.10:
	.data
# -- End  r8_max
	.text
.L_2__routine_start_r8_random_11:
# -- Begin  r8_random
	.text
# mark_begin;
       .align    16,0x90
	.globl r8_random
# --- r8_random(int *)
r8_random:
# parameter 1: %rdi
..B12.1:                        # Preds ..B12.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_r8_random.747:
..L748:
                                                        #1070.1
        pushq     %rbx                                          #1070.1
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
        movq      %rdi, %r11                                    #1070.1
        movl      12(%r11), %r10d                               #1086.9
        imull     $2549, %r10d, %r8d                            #1086.20
        imull     $2508, %r10d, %ebx                            #1089.42
        movl      %r8d, %r9d                                    #1087.15
        sarl      $11, %r9d                                     #1087.15
        shrl      $20, %r9d                                     #1087.15
        addl      %r8d, %r9d                                    #1087.15
        sarl      $12, %r9d                                     #1087.15
        movl      %r9d, %esi                                    #1088.22
        shll      $12, %esi                                     #1088.22
        movl      8(%r11), %edi                                 #1089.15
        subl      %esi, %r8d                                    #1088.3
        imull     $2549, %edi, %esi                             #1089.26
        imull     $2508, %edi, %ecx                             #1092.42
        addl      %esi, %r9d                                    #1089.26
        addl      %ebx, %r9d                                    #1089.42
        movl      %r9d, %esi                                    #1090.15
        sarl      $11, %esi                                     #1090.15
        shrl      $20, %esi                                     #1090.15
        addl      %r9d, %esi                                    #1090.15
        sarl      $12, %esi                                     #1090.15
        movl      %esi, %eax                                    #1091.22
        shll      $12, %eax                                     #1091.22
        subl      %eax, %r9d                                    #1091.3
        movl      4(%r11), %eax                                 #1092.15
        imull     $2549, %eax, %edx                             #1092.26
        imull     $2549, (%r11), %ebx                           #1095.26
        addl      %edx, %esi                                    #1092.26
        imull     $2508, %eax, %edx                             #1095.42
        imull     $322, %edi, %eax                              #1095.58
        imull     $322, %r10d, %edi                             #1092.58
        imull     $494, %r10d, %r10d                            #1095.74
        addl      %edi, %ecx                                    #1092.42
        addl      %r10d, %eax                                   #1095.58
        addl      %ecx, %esi                                    #1092.58
        movl      %esi, %ecx                                    #1093.15
        sarl      $11, %ecx                                     #1093.15
        shrl      $20, %ecx                                     #1093.15
        addl      %esi, %ecx                                    #1093.15
        sarl      $12, %ecx                                     #1093.15
        addl      %ecx, %ebx                                    #1095.26
        addl      %edx, %ebx                                    #1095.42
        shll      $12, %ecx                                     #1094.22
        addl      %eax, %ebx                                    #1095.74
        subl      %ecx, %esi                                    #1094.3
        andl      $-2147479553, %ebx                            #1096.17
        jge       ..B12.4       # Prob 50%                      #1096.17
                                # LOE rbp r11 r12 r13 r14 r15 ebx esi r8d r9d
..B12.5:                        # Preds ..B12.1
                                # Execution count [1.00e+00]
        subl      $1, %ebx                                      #1096.17
        orl       $-4096, %ebx                                  #1096.17
        incl      %ebx                                          #1096.17
                                # LOE rbp r11 r12 r13 r14 r15 ebx esi r8d r9d
..B12.4:                        # Preds ..B12.1 ..B12.5
                                # Execution count [1.00e+00]
        pxor      %xmm4, %xmm4                                  #1111.24
        pxor      %xmm1, %xmm1                                  #1110.24
        cvtsi2sd  %r8d, %xmm4                                   #1111.24
        cvtsi2sd  %r9d, %xmm1                                   #1110.24
        movsd     .L_2il0floatpacket.0(%rip), %xmm0             #1081.12
        pxor      %xmm2, %xmm2                                  #1109.24
        mulsd     %xmm0, %xmm4                                  #1111.24
        pxor      %xmm3, %xmm3                                  #1108.24
        cvtsi2sd  %esi, %xmm2                                   #1109.24
        cvtsi2sd  %ebx, %xmm3                                   #1108.24
        addsd     %xmm1, %xmm4                                  #1111.24
        mulsd     %xmm0, %xmm4                                  #1111.24
        movl      %ebx, (%r11)                                  #1100.3
        addsd     %xmm2, %xmm4                                  #1111.24
        mulsd     %xmm0, %xmm4                                  #1111.24
        movl      %esi, 4(%r11)                                 #1101.3
        addsd     %xmm3, %xmm4                                  #1111.24
        mulsd     %xmm4, %xmm0                                  #1111.24
        movl      %r9d, 8(%r11)                                 #1102.3
        movl      %r8d, 12(%r11)                                #1103.3
	.cfi_restore 3
        popq      %rbx                                          #1113.10
	.cfi_def_cfa_offset 8
        ret                                                     #1113.10
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	r8_random,@function
	.size	r8_random,.-r8_random
..LNr8_random.11:
	.data
# -- End  r8_random
	.text
.L_2__routine_start_r8mat_gen_12:
# -- Begin  r8mat_gen
	.text
# mark_begin;
       .align    16,0x90
	.globl r8mat_gen
# --- r8mat_gen(int, int)
r8mat_gen:
# parameter 1: %edi
# parameter 2: %esi
..B13.1:                        # Preds ..B13.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_r8mat_gen.754:
..L755:
                                                        #1137.1
        pushq     %rbx                                          #1137.1
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
        pushq     %rbp                                          #1137.1
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
        subq      $56, %rsp                                     #1137.1
	.cfi_def_cfa_offset 80
        movups    init.956.0.0.13(%rip), %xmm0                  #1140.15
        movslq    %edi, %rbp                                    #1137.1
        movslq    %esi, %rbx                                    #1137.1
        movups    %xmm0, (%rsp)                                 #1140.15
                                # LOE rbx rbp r12 r13 r14 r15 esi edi
..B13.2:                        # Preds ..B13.1
                                # Execution count [1.00e+00]
        imull     %esi, %edi                                    #1143.20
        movslq    %edi, %rdi                                    #1143.20
        shlq      $3, %rdi                                      #1143.20
#       malloc(size_t)
        call      malloc                                        #1143.20
                                # LOE rax rbx rbp r12 r13 r14 r15
..B13.3:                        # Preds ..B13.2
                                # Execution count [1.31e+00]
        xorl      %edx, %edx                                    #1145.3
        testq     %rbx, %rbx                                    #1145.21
        jle       ..B13.9       # Prob 9%                       #1145.21
                                # LOE rax rdx rbx rbp r12 r13 r14 r15
..B13.4:                        # Preds ..B13.3
                                # Execution count [8.10e-01]
        movl      12(%rsp), %r8d                                #1149.38
        movq      %rax, %rsi                                    #1145.3
        movl      8(%rsp), %r9d                                 #1149.38
        movl      4(%rsp), %ecx                                 #1149.38
        movl      (%rsp), %r11d                                 #1149.38
        movsd     .L_2il0floatpacket.0(%rip), %xmm1             #1149.26
        movsd     .L_2il0floatpacket.1(%rip), %xmm0             #1149.47
        movq      %r12, 16(%rsp)                                #1145.3[spill]
	.cfi_offset 12, -64
        movq      %rdx, %r12                                    #1145.3
        movq      %r13, 24(%rsp)                                #1145.3[spill]
        movq      %r14, 32(%rsp)                                #1145.3[spill]
        movq      %r15, 40(%rsp)                                #1145.3[spill]
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
                                # LOE rax rbx rbp rsi r12 ecx r8d r9d r11d xmm0 xmm1
..B13.5:                        # Preds ..B13.7 ..B13.4
                                # Execution count [4.50e+00]
        xorl      %r13d, %r13d                                  #1147.5
                                # LOE rax rbx rbp rsi r12 r13 ecx r8d r9d r11d xmm0 xmm1
..B13.6:                        # Preds ..B13.12 ..B13.5
                                # Execution count [2.50e+01]
        imull     $2549, %r8d, %r10d                            #1149.26
        imull     $2549, %r11d, %r14d                           #1149.26
        imull     $2508, %r8d, %r15d                            #1149.26
        movl      %r10d, %edi                                   #1149.26
        sarl      $11, %edi                                     #1149.26
        shrl      $20, %edi                                     #1149.26
        addl      %r10d, %edi                                   #1149.26
        sarl      $12, %edi                                     #1149.26
        movl      %edi, %r11d                                   #1149.26
        addl      %r15d, %edi                                   #1149.26
        shll      $12, %r11d                                    #1149.26
        subl      %r11d, %r10d                                  #1149.26
        imull     $2549, %r9d, %r11d                            #1149.26
        addl      %r11d, %edi                                   #1149.26
        movl      %edi, %edx                                    #1149.26
        sarl      $11, %edx                                     #1149.26
        shrl      $20, %edx                                     #1149.26
        imull     $322, %r8d, %r11d                             #1149.26
        addl      %edi, %edx                                    #1149.26
        sarl      $12, %edx                                     #1149.26
        movl      %edx, %r15d                                   #1149.26
        addl      %r11d, %edx                                   #1149.26
        shll      $12, %r15d                                    #1149.26
        imull     $494, %r8d, %r11d                             #1149.26
        subl      %r15d, %edi                                   #1149.26
        imull     $2508, %r9d, %r8d                             #1149.26
        imull     $2549, %ecx, %r15d                            #1149.26
        imull     $322, %r9d, %r9d                              #1149.26
        imull     $2508, %ecx, %ecx                             #1149.26
        addl      %r15d, %r8d                                   #1149.26
        addl      %r14d, %ecx                                   #1149.26
        addl      %r8d, %edx                                    #1149.26
        movl      %edx, %r8d                                    #1149.26
        sarl      $11, %r8d                                     #1149.26
        shrl      $20, %r8d                                     #1149.26
        addl      %edx, %r8d                                    #1149.26
        sarl      $12, %r8d                                     #1149.26
        addl      %r8d, %r11d                                   #1149.26
        addl      %r9d, %r11d                                   #1149.26
        shll      $12, %r8d                                     #1149.26
        addl      %ecx, %r11d                                   #1149.26
        subl      %r8d, %edx                                    #1149.26
        andl      $-2147479553, %r11d                           #1149.26
        jge       ..B13.12      # Prob 50%                      #1149.26
                                # LOE rax rbx rbp rsi r12 r13 edx edi r10d r11d xmm0 xmm1
..B13.13:                       # Preds ..B13.6
                                # Execution count [2.50e+01]
        subl      $1, %r11d                                     #1149.26
        orl       $-4096, %r11d                                 #1149.26
        incl      %r11d                                         #1149.26
                                # LOE rax rbx rbp rsi r12 r13 edx edi r10d r11d xmm0 xmm1
..B13.12:                       # Preds ..B13.6 ..B13.13
                                # Execution count [2.50e+01]
        pxor      %xmm5, %xmm5                                  #1149.26
        pxor      %xmm2, %xmm2                                  #1149.26
        cvtsi2sd  %r10d, %xmm5                                  #1149.26
        cvtsi2sd  %edi, %xmm2                                   #1149.26
        mulsd     %xmm1, %xmm5                                  #1149.26
        pxor      %xmm3, %xmm3                                  #1149.26
        pxor      %xmm4, %xmm4                                  #1149.26
        cvtsi2sd  %edx, %xmm3                                   #1149.26
        cvtsi2sd  %r11d, %xmm4                                  #1149.26
        addsd     %xmm2, %xmm5                                  #1149.26
        mulsd     %xmm1, %xmm5                                  #1149.26
        movl      %edx, %ecx                                    #1149.26
        movl      %edi, %r9d                                    #1149.26
        movl      %r10d, %r8d                                   #1149.26
        addsd     %xmm3, %xmm5                                  #1149.26
        mulsd     %xmm1, %xmm5                                  #1149.26
        addsd     %xmm4, %xmm5                                  #1149.26
        mulsd     %xmm1, %xmm5                                  #1149.26
        subsd     %xmm0, %xmm5                                  #1149.47
        movsd     %xmm5, (%rsi,%r13,8)                          #1149.7
        incq      %r13                                          #1147.5
        cmpq      %rbx, %r13                                    #1147.5
        jb        ..B13.6       # Prob 82%                      #1147.5
                                # LOE rax rbx rbp rsi r12 r13 edx ecx edi r8d r9d r10d r11d xmm0 xmm1
..B13.7:                        # Preds ..B13.12
                                # Execution count [4.50e+00]
        .byte     15                                            #1145.3
        .byte     31                                            #1145.3
        .byte     64                                            #1145.3
        .byte     0                                             #1145.3
        incq      %r12                                          #1145.3
        lea       (%rsi,%rbp,8), %rsi                           #1145.3
        cmpq      %rbx, %r12                                    #1145.3
        jb        ..B13.5       # Prob 82%                      #1145.3
                                # LOE rax rbx rbp rsi r12 edx ecx edi r8d r9d r10d r11d xmm0 xmm1
..B13.8:                        # Preds ..B13.7
                                # Execution count [8.10e-01]
        movq      16(%rsp), %r12                                #[spill]
	.cfi_restore 12
        movq      24(%rsp), %r13                                #[spill]
	.cfi_restore 13
        movq      32(%rsp), %r14                                #[spill]
	.cfi_restore 14
        movq      40(%rsp), %r15                                #[spill]
	.cfi_restore 15
        movl      %r10d, 12(%rsp)                               #1149.38
        movl      %edi, 8(%rsp)                                 #1149.38
        movl      %edx, 4(%rsp)                                 #1149.38
        movl      %r11d, (%rsp)                                 #1149.38
                                # LOE rax r12 r13 r14 r15
..B13.9:                        # Preds ..B13.3 ..B13.8
                                # Execution count [1.00e+00]
        addq      $56, %rsp                                     #1153.10
	.cfi_def_cfa_offset 24
	.cfi_restore 6
        popq      %rbp                                          #1153.10
	.cfi_def_cfa_offset 16
	.cfi_restore 3
        popq      %rbx                                          #1153.10
	.cfi_def_cfa_offset 8
        ret                                                     #1153.10
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	r8mat_gen,@function
	.size	r8mat_gen,.-r8mat_gen
..LNr8mat_gen.12:
	.data
# -- End  r8mat_gen
	.text
.L_2__routine_start_timestamp_13:
# -- Begin  timestamp
	.text
# mark_begin;
       .align    16,0x90
	.globl timestamp
# --- timestamp(void)
timestamp:
..B14.1:                        # Preds ..B14.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_timestamp.782:
..L783:
                                                        #1185.1
        pushq     %rsi                                          #1185.1
	.cfi_def_cfa_offset 16
        xorl      %edi, %edi                                    #1193.9
#       time(time_t *)
        call      time                                          #1193.9
                                # LOE rax rbx rbp r12 r13 r14 r15
..B14.2:                        # Preds ..B14.1
                                # Execution count [1.00e+00]
        movq      %rax, (%rsp)                                  #1193.3
        lea       (%rsp), %rdi                                  #1194.8
#       localtime(const time_t *)
        call      localtime                                     #1194.8
                                # LOE rax rbx rbp r12 r13 r14 r15
..B14.8:                        # Preds ..B14.2
                                # Execution count [1.00e+00]
        movl      $time_buffer.959.0.14, %edi                   #1196.9
        movl      $40, %esi                                     #1196.9
        movl      $.L_2__STRING.16, %edx                        #1196.9
        movq      %rax, %rcx                                    #1196.9
#       strftime(char *__restrict__, size_t, const char *__restrict__, const struct tm *__restrict__)
        call      strftime                                      #1196.9
                                # LOE rbx rbp r12 r13 r14 r15
..B14.3:                        # Preds ..B14.8
                                # Execution count [1.00e+00]
        movl      $time_buffer.959.0.14, %edi                   #1198.3
        call      puts                                          #1198.3
                                # LOE rbx rbp r12 r13 r14 r15
..B14.4:                        # Preds ..B14.3
                                # Execution count [1.00e+00]
        popq      %rcx                                          #1200.3
	.cfi_def_cfa_offset 8
        ret                                                     #1200.3
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	timestamp,@function
	.size	timestamp,.-timestamp
..LNtimestamp.13:
	.data
# -- End  timestamp
	.bss
	.align 4
	.align 1
time_buffer.959.0.14:
	.type	time_buffer.959.0.14,@object
	.size	time_buffer.959.0.14,40
	.space 40	# pad
	.section .rodata, "a"
	.space 8, 0x00 	# pad
	.align 16
.L_2il0floatpacket.2:
	.long	0x00000000,0x3ff00000,0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,16
	.align 16
.L_2il0floatpacket.5:
	.long	0x00000000,0x80000000,0x00000000,0x80000000
	.type	.L_2il0floatpacket.5,@object
	.size	.L_2il0floatpacket.5,16
	.align 16
.L_2il0floatpacket.11:
	.long	0xffffffff,0x7fffffff,0x00000000,0x00000000
	.type	.L_2il0floatpacket.11,@object
	.size	.L_2il0floatpacket.11,16
	.align 16
.L_2il0floatpacket.12:
	.long	0x00000000,0x80000000,0x00000000,0x00000000
	.type	.L_2il0floatpacket.12,@object
	.size	.L_2il0floatpacket.12,16
	.align 16
init.956.0.0.13:
	.long	1
	.long	2
	.long	3
	.long	1325
	.type	init.956.0.0.13,@object
	.size	init.956.0.0.13,16
	.align 8
.L_2il0floatpacket.0:
	.long	0x00000000,0x3f300000
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,8
	.align 8
.L_2il0floatpacket.1:
	.long	0x00000000,0x3fe00000
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,8
	.align 8
.L_2il0floatpacket.3:
	.long	0x00000000,0xbff00000
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,8
	.align 8
.L_2il0floatpacket.4:
	.long	0x00000000,0x412e8480
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,8
	.align 8
.L_2il0floatpacket.6:
	.long	0x05555555,0xc1c224dd
	.type	.L_2il0floatpacket.6,@object
	.size	.L_2il0floatpacket.6,8
	.align 8
.L_2il0floatpacket.7:
	.long	0x00000000,0x40977000
	.type	.L_2il0floatpacket.7,@object
	.size	.L_2il0floatpacket.7,8
	.align 8
.L_2il0floatpacket.8:
	.long	0x00000000,0x40000000
	.type	.L_2il0floatpacket.8,@object
	.size	.L_2il0floatpacket.8,8
	.align 8
.L_2il0floatpacket.9:
	.long	0x3126e979,0x3facac08
	.type	.L_2il0floatpacket.9,@object
	.size	.L_2il0floatpacket.9,8
	.align 8
.L_2il0floatpacket.10:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.10,@object
	.size	.L_2il0floatpacket.10,8
	.section .rodata.str1.4, "aMS",@progbits,1
	.space 3, 0x00 	# pad
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
	.data
	.section .note.GNU-stack, ""
# End
