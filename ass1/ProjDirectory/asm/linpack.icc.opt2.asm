# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.4.235 Build 20190416";
# mark_description "-O2 -S -fverbose-asm -o ../asm/linpack.icc.opt2.asm";
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
..B1.319:                       # Preds ..B1.1
                                # Execution count [1.00e+00]
        stmxcsr   (%rsp)                                        #44.1
        xorl      %edi, %edi                                    #74.3
        orl       $32832, (%rsp)                                #44.1
        ldmxcsr   (%rsp)                                        #44.1
#       time(time_t *)
        call      time                                          #74.3
                                # LOE rax
..B1.2:                         # Preds ..B1.319
                                # Execution count [1.00e+00]
        movq      %rax, 48(%rsp)                                #74.3
        lea       48(%rsp), %rdi                                #74.3
#       localtime(const time_t *)
        call      localtime                                     #74.3
                                # LOE rax
..B1.320:                       # Preds ..B1.2
                                # Execution count [1.00e+00]
        movl      $time_buffer.959.0.14, %edi                   #74.3
        movl      $40, %esi                                     #74.3
        movl      $.L_2__STRING.16, %edx                        #74.3
        movq      %rax, %rcx                                    #74.3
#       strftime(char *__restrict__, size_t, const char *__restrict__, const struct tm *__restrict__)
        call      strftime                                      #74.3
                                # LOE
..B1.3:                         # Preds ..B1.320
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
..B1.321:                       # Preds ..B1.14
                                # Execution count [1.00e+00]
        movq      %rax, %r15                                    #89.7
                                # LOE r15
..B1.15:                        # Preds ..B1.321
                                # Execution count [4.00e-01]
        movq      %r15, %rsi                                    #89.7
        xorl      %r14d, %r14d                                  #89.7
        movl      12(%rsp), %r13d                               #89.7
        movq      %rsi, %rbx                                    #89.7
        movl      8(%rsp), %r10d                                #89.7
        movl      4(%rsp), %r9d                                 #89.7
        movl      (%rsp), %r12d                                 #89.7
        movsd     .L_2il0floatpacket.1(%rip), %xmm0             #89.7
        movsd     .L_2il0floatpacket.0(%rip), %xmm1             #89.7
                                # LOE rbx rsi r15 r9d r10d r12d r13d r14d xmm0 xmm1
..B1.16:                        # Preds ..B1.18 ..B1.15
                                # Execution count [4.50e+00]
        xorl      %ecx, %ecx                                    #89.7
                                # LOE rcx rbx rsi r15 r9d r10d r12d r13d r14d xmm0 xmm1
..B1.17:                        # Preds ..B1.308 ..B1.16
                                # Execution count [2.50e+01]
        imull     $2549, %r13d, %r8d                            #89.7
        imull     $2508, %r10d, %edi                            #89.7
        imull     $2549, %r12d, %r12d                           #89.7
        movl      %r8d, %r11d                                   #89.7
        sarl      $11, %r11d                                    #89.7
        shrl      $20, %r11d                                    #89.7
        addl      %r8d, %r11d                                   #89.7
        sarl      $12, %r11d                                    #89.7
        movl      %r11d, %edx                                   #89.7
        shll      $12, %edx                                     #89.7
        subl      %edx, %r8d                                    #89.7
        imull     $2508, %r13d, %edx                            #89.7
        addl      %edx, %r11d                                   #89.7
        imull     $2549, %r10d, %edx                            #89.7
        imull     $322, %r10d, %r10d                            #89.7
        addl      %edx, %r11d                                   #89.7
        movl      %r11d, %edx                                   #89.7
        sarl      $11, %edx                                     #89.7
        shrl      $20, %edx                                     #89.7
        addl      %r11d, %edx                                   #89.7
        sarl      $12, %edx                                     #89.7
        movl      %edx, %eax                                    #89.7
        shll      $12, %eax                                     #89.7
        subl      %eax, %r11d                                   #89.7
        imull     $322, %r13d, %eax                             #89.7
        imull     $494, %r13d, %r13d                            #89.7
        addl      %eax, %edx                                    #89.7
        imull     $2549, %r9d, %eax                             #89.7
        imull     $2508, %r9d, %r9d                             #89.7
        addl      %eax, %edi                                    #89.7
        addl      %r12d, %r9d                                   #89.7
        addl      %edi, %edx                                    #89.7
        movl      %edx, %eax                                    #89.7
        sarl      $11, %eax                                     #89.7
        shrl      $20, %eax                                     #89.7
        addl      %edx, %eax                                    #89.7
        sarl      $12, %eax                                     #89.7
        movl      %eax, %edi                                    #89.7
        addl      %r13d, %eax                                   #89.7
        addl      %r10d, %eax                                   #89.7
        addl      %r9d, %eax                                    #89.7
        shll      $12, %edi                                     #89.7
        movl      %eax, %r12d                                   #89.7
        subl      %edi, %edx                                    #89.7
        andl      $-2147479553, %r12d                           #89.7
        jge       ..B1.308      # Prob 50%                      #89.7
                                # LOE rcx rbx rsi r15 edx r8d r11d r12d r14d xmm0 xmm1
..B1.309:                       # Preds ..B1.17
                                # Execution count [2.50e+01]
        subl      $1, %r12d                                     #89.7
        orl       $-4096, %r12d                                 #89.7
        incl      %r12d                                         #89.7
                                # LOE rcx rbx rsi r15 edx r8d r11d r12d r14d xmm0 xmm1
..B1.308:                       # Preds ..B1.17 ..B1.309
                                # Execution count [2.50e+01]
        pxor      %xmm5, %xmm5                                  #89.7
        pxor      %xmm2, %xmm2                                  #89.7
        cvtsi2sd  %r8d, %xmm5                                   #89.7
        cvtsi2sd  %r11d, %xmm2                                  #89.7
        mulsd     %xmm1, %xmm5                                  #89.7
        pxor      %xmm3, %xmm3                                  #89.7
        pxor      %xmm4, %xmm4                                  #89.7
        cvtsi2sd  %edx, %xmm3                                   #89.7
        cvtsi2sd  %r12d, %xmm4                                  #89.7
        addsd     %xmm2, %xmm5                                  #89.7
        mulsd     %xmm1, %xmm5                                  #89.7
        movl      %edx, %r9d                                    #89.7
        movl      %r11d, %r10d                                  #89.7
        movl      %r8d, %r13d                                   #89.7
        addsd     %xmm3, %xmm5                                  #89.7
        mulsd     %xmm1, %xmm5                                  #89.7
        addsd     %xmm4, %xmm5                                  #89.7
        mulsd     %xmm1, %xmm5                                  #89.7
        subsd     %xmm0, %xmm5                                  #89.7
        movsd     %xmm5, (%rsi,%rcx,8)                          #89.7
        incq      %rcx                                          #89.7
        cmpq      $1500, %rcx                                   #89.7
        jb        ..B1.17       # Prob 82%                      #89.7
                                # LOE rcx rbx rsi r15 edx r8d r9d r10d r11d r12d r13d r14d xmm0 xmm1
..B1.18:                        # Preds ..B1.308
                                # Execution count [4.50e+00]
        incl      %r14d                                         #89.7
        addq      $12008, %rsi                                  #89.7
        cmpl      $1500, %r14d                                  #89.7
        jb        ..B1.16       # Prob 91%                      #89.7
                                # LOE rbx rsi r15 edx r8d r9d r10d r11d r12d r13d r14d xmm0 xmm1
..B1.19:                        # Preds ..B1.18
                                # Execution count [1.00e+00]
        movl      $12000, %edi                                  #90.20
        movl      %r8d, 12(%rsp)                                #89.7
        movl      %r11d, 8(%rsp)                                #89.7
        movl      %edx, 4(%rsp)                                 #89.7
        movl      %r12d, (%rsp)                                 #89.7
#       malloc(size_t)
        call      malloc                                        #90.20
                                # LOE rax rbx r15
..B1.322:                       # Preds ..B1.19
                                # Execution count [1.00e+00]
        movq      %rax, 224(%rsp)                               #90.20[spill]
                                # LOE rbx r15
..B1.20:                        # Preds ..B1.322
                                # Execution count [1.00e+00]
        movl      $6000, %edi                                   #91.20
#       malloc(size_t)
        call      malloc                                        #91.20
                                # LOE rax rbx r15
..B1.323:                       # Preds ..B1.20
                                # Execution count [1.00e+00]
        movq      %rax, 128(%rsp)                               #91.20[spill]
                                # LOE rbx r15
..B1.21:                        # Preds ..B1.323
                                # Execution count [1.00e+00]
        movl      $12000, %edi                                  #92.24
#       malloc(size_t)
        call      malloc                                        #92.24
                                # LOE rax rbx r15
..B1.324:                       # Preds ..B1.21
                                # Execution count [1.00e+00]
        movq      %rax, 56(%rsp)                                #92.24[spill]
                                # LOE rbx r15
..B1.22:                        # Preds ..B1.324
                                # Execution count [1.00e+00]
        movl      $12000, %edi                                  #93.22
#       malloc(size_t)
        call      malloc                                        #93.22
                                # LOE rax rbx r15
..B1.325:                       # Preds ..B1.22
                                # Execution count [1.00e+00]
        movq      %rax, %r13                                    #93.22
                                # LOE rbx r13 r15
..B1.23:                        # Preds ..B1.325
                                # Execution count [1.00e+00]
        movl      $12000, %edi                                  #94.20
#       malloc(size_t)
        call      malloc                                        #94.20
                                # LOE rax rbx r13 r15
..B1.326:                       # Preds ..B1.23
                                # Execution count [1.00e+00]
        movq      %rax, %r14                                    #94.20
                                # LOE rbx r13 r14 r15
..B1.24:                        # Preds ..B1.326
                                # Execution count [8.84e-01]
        xorl      %eax, %eax                                    #97.3
        pxor      %xmm0, %xmm0                                  #96.3
        movsd     %xmm0, 64(%rsp)                               #96.3[spill]
                                # LOE rbx r13 r14 r15 eax xmm0
..B1.25:                        # Preds ..B1.35 ..B1.24
                                # Execution count [1.50e+03]
        movq      %rbx, %rsi                                    #99.5
        andq      $15, %rsi                                     #99.5
        testb     %sil, %sil                                    #99.5
        je        ..B1.28       # Prob 50%                      #99.5
                                # LOE rbx r13 r14 r15 eax sil xmm0
..B1.26:                        # Preds ..B1.25
                                # Execution count [1.50e+03]
        testb     $7, %sil                                      #99.5
        jne       ..B1.293      # Prob 10%                      #99.5
                                # LOE rbx r13 r14 r15 eax xmm0
..B1.27:                        # Preds ..B1.26
                                # Execution count [1.50e+03]
        movb      $1, %sil                                      #99.5
        maxsd     (%rbx), %xmm0                                 #101.7
                                # LOE rbx r13 r14 r15 eax sil xmm0
..B1.28:                        # Preds ..B1.27 ..B1.25
                                # Execution count [1.50e+03]
        movzbl    %sil, %ecx                                    #99.5
        negb      %sil                                          #99.5
        addb      $4, %sil                                      #99.5
        andb      $7, %sil                                      #99.5
        movzbl    %sil, %esi                                    #99.5
        negq      %rsi                                          #99.5
        lea       (%rbx,%rcx,8), %rdx                           #99.5
        unpcklpd  %xmm0, %xmm0                                  #53.3
        addq      $1500, %rsi                                   #99.5
                                # LOE rdx rcx rbx rsi r13 r14 r15 eax xmm0
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
                                # LOE rdx rcx rbx rsi r13 r14 r15 eax xmm0
..B1.30:                        # Preds ..B1.29
                                # Execution count [1.50e+03]
        movaps    %xmm0, %xmm1                                  #53.3
        unpckhpd  %xmm0, %xmm1                                  #53.3
        maxsd     %xmm1, %xmm0                                  #53.3
                                # LOE rbx rsi r13 r14 r15 eax xmm0
..B1.31:                        # Preds ..B1.30 ..B1.293
                                # Execution count [1.50e+03]
        cmpq      $1500, %rsi                                   #99.5
        jae       ..B1.35       # Prob 0%                       #99.5
                                # LOE rbx rsi r13 r14 r15 eax xmm0
..B1.33:                        # Preds ..B1.31 ..B1.33
                                # Execution count [2.25e+06]
        maxsd     (%rbx,%rsi,8), %xmm0                          #101.7
        incq      %rsi                                          #99.5
        cmpq      $1500, %rsi                                   #99.5
        jb        ..B1.33       # Prob 99%                      #99.5
                                # LOE rbx rsi r13 r14 r15 eax xmm0
..B1.35:                        # Preds ..B1.33 ..B1.31
                                # Execution count [1.50e+03]
        incl      %eax                                          #97.3
        addq      $12008, %rbx                                  #97.3
        cmpl      $1500, %eax                                   #97.3
        jb        ..B1.25       # Prob 99%                      #97.3
                                # LOE rbx r13 r14 r15 eax xmm0
..B1.36:                        # Preds ..B1.35
                                # Execution count [1.00e+00]
        movq      %r14, %rbx                                    #105.3
        andq      $15, %rbx                                     #105.3
        movsd     %xmm0, 64(%rsp)                               #[spill]
        movb      %bl, %cl                                      #105.3
        testb     %bl, %bl                                      #105.3
        je        ..B1.39       # Prob 50%                      #105.3
                                # LOE r13 r14 r15 cl bl
..B1.37:                        # Preds ..B1.36
                                # Execution count [1.00e+00]
        testb     $7, %bl                                       #105.3
        jne       ..B1.294      # Prob 10%                      #105.3
                                # LOE r13 r14 r15 bl
..B1.38:                        # Preds ..B1.37
                                # Execution count [1.00e+00]
        movq      $0x3ff0000000000000, %rax                     #107.5
        movb      $1, %cl                                       #105.3
        movq      %rax, (%r14)                                  #107.5
                                # LOE r13 r14 r15 cl bl
..B1.39:                        # Preds ..B1.38 ..B1.36
                                # Execution count [1.00e+00]
        movzbl    %cl, %edx                                     #105.3
        negb      %cl                                           #105.3
        addb      $4, %cl                                       #105.3
        andb      $7, %cl                                       #105.3
        movzbl    %cl, %eax                                     #105.3
        negq      %rax                                          #105.3
        movups    .L_2il0floatpacket.2(%rip), %xmm0             #107.12
        addq      $1500, %rax                                   #105.3
                                # LOE rax rdx r13 r14 r15 bl xmm0
..B1.40:                        # Preds ..B1.40 ..B1.39
                                # Execution count [1.50e+03]
        movups    %xmm0, (%r14,%rdx,8)                          #107.5
        movups    %xmm0, 16(%r14,%rdx,8)                        #107.5
        movups    %xmm0, 32(%r14,%rdx,8)                        #107.5
        movups    %xmm0, 48(%r14,%rdx,8)                        #107.5
        addq      $8, %rdx                                      #105.3
        cmpq      %rax, %rdx                                    #105.3
        jb        ..B1.40       # Prob 99%                      #105.3
                                # LOE rax rdx r13 r14 r15 bl xmm0
..B1.42:                        # Preds ..B1.40 ..B1.294
                                # Execution count [1.00e+00]
        cmpq      $1500, %rax                                   #105.3
        jae       ..B1.46       # Prob 0%                       #105.3
                                # LOE rax r13 r14 r15 bl
..B1.43:                        # Preds ..B1.42
                                # Execution count [1.00e+00]
        movq      $0x3ff0000000000000, %rdx                     #107.12
                                # LOE rax rdx r13 r14 r15 bl
..B1.44:                        # Preds ..B1.44 ..B1.43
                                # Execution count [1.50e+03]
        movq      %rdx, (%r14,%rax,8)                           #107.5
        incq      %rax                                          #105.3
        cmpq      $1500, %rax                                   #105.3
        jb        ..B1.44       # Prob 99%                      #105.3
                                # LOE rax rdx r13 r14 r15 bl
..B1.46:                        # Preds ..B1.44 ..B1.42
                                # Execution count [5.20e-03]
        xorl      %esi, %esi                                    #110.3
        movl      $12000, %edx                                  #110.3
        movq      224(%rsp), %rdi                               #110.3[spill]
        call      _intel_fast_memset                            #110.3
                                # LOE r13 r14 r15 bl
..B1.47:                        # Preds ..B1.46
                                # Execution count [1.04e+00]
        movq      224(%rsp), %rsi                               #110.3[spill]
        xorl      %r9d, %r9d                                    #113.5
        andq      $15, %rsi                                     #110.3
        xorl      %r11d, %r11d                                  #113.5
        movl      %esi, %r10d                                   #110.3
        xorl      %r8d, %r8d                                    #113.5
        movq      224(%rsp), %rdx                               #113.5[spill]
        andl      $7, %r10d                                     #110.3
        movb      %bl, 24(%rsp)                                 #113.5[spill]
        xorl      %ecx, %ecx                                    #113.5
        movq      %r13, 40(%rsp)                                #113.5[spill]
                                # LOE rdx rcx r11 r14 r15 esi r8d r9d r10d
..B1.48:                        # Preds ..B1.63 ..B1.47
                                # Execution count [1.56e+03]
        movsd     (%r14,%r11,8), %xmm1                          #115.34
        movl      %esi, %ebx                                    #110.3
        testl     %esi, %esi                                    #110.3
        je        ..B1.52       # Prob 50%                      #110.3
                                # LOE rdx rcx rbx r11 r14 r15 esi r8d r9d r10d xmm1
..B1.49:                        # Preds ..B1.48
                                # Execution count [1.56e+03]
        testl     %r10d, %r10d                                  #110.3
        jne       ..B1.295      # Prob 10%                      #110.3
                                # LOE rdx rcx r11 r14 r15 esi r8d r9d r10d xmm1
..B1.50:                        # Preds ..B1.49
                                # Execution count [1.56e+03]
        movsd     (%rcx,%r15), %xmm0                            #115.21
        movl      $1, %ebx                                      #110.3
        mulsd     %xmm1, %xmm0                                  #115.34
        addsd     (%rdx), %xmm0                                 #115.34
        movsd     %xmm0, (%rdx)                                 #115.7
                                # LOE rdx rcx rbx r11 r14 r15 esi r8d r9d r10d xmm1
..B1.52:                        # Preds ..B1.48 ..B1.50
                                # Execution count [2.25e+06]
        movl      %ebx, %eax                                    #110.3
        lea       (%r8,%rbx), %edi                              #115.27
        negl      %eax                                          #110.3
        lea       (%r15,%rcx), %r13                             #115.21
        movslq    %edi, %rdi                                    #115.27
        addl      $4, %eax                                      #110.3
        andl      $7, %eax                                      #110.3
        negl      %eax                                          #110.3
        addl      $1500, %eax                                   #110.3
        movl      %eax, %r12d                                   #110.3
        lea       (%r15,%rdi,8), %rdi                           #115.21
        testq     $15, %rdi                                     #110.3
        je        ..B1.56       # Prob 60%                      #110.3
                                # LOE rdx rcx rbx r11 r12 r13 r14 r15 eax esi r8d r9d r10d xmm1
..B1.53:                        # Preds ..B1.52
                                # Execution count [1.56e+03]
        movaps    %xmm1, %xmm0                                  #115.34
        movl      %ebx, %ebx                                    #110.3
        unpcklpd  %xmm0, %xmm0                                  #115.34
        .align    16,0x90
                                # LOE rdx rcx rbx r11 r12 r13 r14 r15 eax esi r8d r9d r10d xmm0 xmm1
..B1.54:                        # Preds ..B1.54 ..B1.53
                                # Execution count [2.34e+06]
        movups    (%r13,%rbx,8), %xmm2                          #115.21
        movups    16(%r13,%rbx,8), %xmm3                        #115.21
        movups    32(%r13,%rbx,8), %xmm4                        #115.21
        movups    48(%r13,%rbx,8), %xmm5                        #115.21
        mulpd     %xmm0, %xmm2                                  #115.34
        mulpd     %xmm0, %xmm3                                  #115.34
        mulpd     %xmm0, %xmm4                                  #115.34
        mulpd     %xmm0, %xmm5                                  #115.34
        addpd     (%rdx,%rbx,8), %xmm2                          #115.34
        addpd     16(%rdx,%rbx,8), %xmm3                        #115.34
        addpd     32(%rdx,%rbx,8), %xmm4                        #115.34
        addpd     48(%rdx,%rbx,8), %xmm5                        #115.34
        movups    %xmm2, (%rdx,%rbx,8)                          #115.7
        movups    %xmm3, 16(%rdx,%rbx,8)                        #115.7
        movups    %xmm4, 32(%rdx,%rbx,8)                        #115.7
        movups    %xmm5, 48(%rdx,%rbx,8)                        #115.7
        addq      $8, %rbx                                      #110.3
        cmpq      %r12, %rbx                                    #110.3
        jb        ..B1.54       # Prob 99%                      #110.3
        jmp       ..B1.59       # Prob 100%                     #110.3
                                # LOE rdx rcx rbx r11 r12 r13 r14 r15 eax esi r8d r9d r10d xmm0 xmm1
..B1.56:                        # Preds ..B1.52
                                # Execution count [1.56e+03]
        movaps    %xmm1, %xmm0                                  #115.34
        unpcklpd  %xmm0, %xmm0                                  #115.34
        .align    16,0x90
                                # LOE rdx rcx rbx r11 r12 r13 r14 r15 eax esi r8d r9d r10d xmm0 xmm1
..B1.57:                        # Preds ..B1.57 ..B1.56
                                # Execution count [2.34e+06]
        movups    (%r13,%rbx,8), %xmm2                          #115.21
        movups    16(%r13,%rbx,8), %xmm3                        #115.21
        movups    32(%r13,%rbx,8), %xmm4                        #115.21
        movups    48(%r13,%rbx,8), %xmm5                        #115.21
        mulpd     %xmm0, %xmm2                                  #115.34
        mulpd     %xmm0, %xmm3                                  #115.34
        mulpd     %xmm0, %xmm4                                  #115.34
        mulpd     %xmm0, %xmm5                                  #115.34
        addpd     (%rdx,%rbx,8), %xmm2                          #115.34
        addpd     16(%rdx,%rbx,8), %xmm3                        #115.34
        addpd     32(%rdx,%rbx,8), %xmm4                        #115.34
        addpd     48(%rdx,%rbx,8), %xmm5                        #115.34
        movups    %xmm2, (%rdx,%rbx,8)                          #115.7
        movups    %xmm3, 16(%rdx,%rbx,8)                        #115.7
        movups    %xmm4, 32(%rdx,%rbx,8)                        #115.7
        movups    %xmm5, 48(%rdx,%rbx,8)                        #115.7
        addq      $8, %rbx                                      #110.3
        cmpq      %r12, %rbx                                    #110.3
        jb        ..B1.57       # Prob 99%                      #110.3
                                # LOE rdx rcx rbx r11 r12 r13 r14 r15 eax esi r8d r9d r10d xmm0 xmm1
..B1.59:                        # Preds ..B1.57 ..B1.54 ..B1.295
                                # Execution count [1.56e+03]
        xorl      %edi, %edi                                    #110.3
        lea       1(%rax), %ebx                                 #110.3
        xorl      %r12d, %r12d                                  #110.3
        cmpl      $1500, %ebx                                   #110.3
        ja        ..B1.63       # Prob 0%                       #110.3
                                # LOE rdx rcx r11 r12 r14 r15 eax esi edi r8d r9d r10d xmm1
..B1.60:                        # Preds ..B1.59
                                # Execution count [1.56e+03]
        movq      %r15, 232(%rsp)                               #110.3[spill]
        lea       (%rax,%r8), %ebx                              #115.27
        movslq    %ebx, %rbx                                    #115.27
        lea       (%r15,%rbx,8), %r13                           #115.21
        movl      %eax, %ebx                                    #110.3
        negl      %ebx                                          #110.3
        addl      $1500, %ebx                                   #110.3
                                # LOE rdx rcx r11 r12 r13 r14 eax ebx esi edi r8d r9d r10d xmm1
..B1.61:                        # Preds ..B1.61 ..B1.60
                                # Execution count [2.34e+06]
        movsd     (%r13,%r12,8), %xmm0                          #115.21
        lea       (%rax,%rdi), %r15d                            #112.5
        mulsd     %xmm1, %xmm0                                  #115.34
        incl      %edi                                          #110.3
        movslq    %r15d, %r15                                   #112.5
        incq      %r12                                          #110.3
        addsd     (%rdx,%r15,8), %xmm0                          #115.34
        movsd     %xmm0, (%rdx,%r15,8)                          #115.7
        cmpl      %ebx, %edi                                    #110.3
        jb        ..B1.61       # Prob 99%                      #110.3
                                # LOE rdx rcx r11 r12 r13 r14 eax ebx esi edi r8d r9d r10d xmm1
..B1.62:                        # Preds ..B1.61
                                # Execution count [1.56e+03]
        movq      232(%rsp), %r15                               #[spill]
                                # LOE rdx rcx r11 r14 r15 esi r8d r9d r10d
..B1.63:                        # Preds ..B1.62 ..B1.59
                                # Execution count [1.56e+03]
        incl      %r9d                                          #113.5
        addl      $1501, %r8d                                   #113.5
        addq      $12008, %rcx                                  #113.5
        incq      %r11                                          #113.5
        cmpl      $1500, %r9d                                   #113.5
        jb        ..B1.48       # Prob 99%                      #113.5
                                # LOE rdx rcx r11 r14 r15 esi r8d r9d r10d
..B1.64:                        # Preds ..B1.63
                                # Execution count [1.00e+00]
        movb      24(%rsp), %bl                                 #[spill]
        movq      40(%rsp), %r13                                #[spill]
#       clock(void)
        call      clock                                         #118.8
                                # LOE rax r13 r14 r15 bl
..B1.327:                       # Preds ..B1.64
                                # Execution count [1.00e+00]
        movq      %rax, %r12                                    #118.8
                                # LOE r12 r13 r14 r15 bl
..B1.65:                        # Preds ..B1.327
                                # Execution count [1.24e+00]
        movsd     .L_2il0floatpacket.3(%rip), %xmm0             #196.15
        xorl      %esi, %esi                                    #120.10
        movsd     %xmm0, 72(%rsp)                               #196.15[spill]
        movl      $1501, %eax                                   #120.10
        movl      $8, %edx                                      #120.10
        movl      $12008, %ecx                                  #120.10
        movb      %bl, 24(%rsp)                                 #120.10[spill]
        movl      $1, %r10d                                     #120.10
        movq      %rax, 136(%rsp)                               #120.10[spill]
        movl      $-1, %r11d                                    #120.10
        movq      %rdx, 112(%rsp)                               #120.10[spill]
        movl      $1, %r9d                                      #120.10
        movq      %rcx, 104(%rsp)                               #120.10[spill]
        pxor      %xmm1, %xmm1                                  #120.10
        movl      %esi, 32(%rsp)                                #120.10[spill]
        movq      %r12, 16(%rsp)                                #120.10[spill]
        movq      %r14, 216(%rsp)                               #120.10[spill]
        movq      %r13, 40(%rsp)                                #120.10[spill]
                                # LOE r9 r15 r10d r11d xmm0 xmm1
..B1.66:                        # Preds ..B1.125 ..B1.65
                                # Execution count [5.00e+00]
        lea       1501(%r11), %ebx                              #120.26
        testl     %ebx, %ebx                                    #120.10
        jle       ..B1.76       # Prob 28%                      #120.10
                                # LOE r9 r15 ebx r10d r11d xmm0 xmm1
..B1.67:                        # Preds ..B1.66
                                # Execution count [3.35e+00]
        movl      $1, %r8d                                      #120.10
        cmpl      $1, %ebx                                      #120.10
        je        ..B1.77       # Prob 6%                       #120.10
                                # LOE r9 r15 ebx r8d r10d r11d xmm0 xmm1
..B1.68:                        # Preds ..B1.67
                                # Execution count [3.12e+00]
        movq      104(%rsp), %rdx                               #120.10[spill]
        movq      112(%rsp), %rax                               #120.10[spill]
        lea       (%rax,%rdx), %rcx                             #120.10
        movsd     -12016(%r15,%rcx), %xmm2                      #120.10
        andps     .L_2il0floatpacket.11(%rip), %xmm2            #120.10
        jle       ..B1.77       # Prob 50%                      #120.10
                                # LOE r9 r15 r8d r10d r11d xmm0 xmm1 xmm2
..B1.69:                        # Preds ..B1.68
                                # Execution count [3.12e+00]
        movl      $1, %esi                                      #120.10
        lea       1500(%r11), %ecx                              #120.10
        movl      %ecx, %edx                                    #120.10
        xorl      %ebx, %ebx                                    #120.10
        shrl      $1, %edx                                      #120.10
        je        ..B1.73       # Prob 10%                      #120.10
                                # LOE r9 r15 edx ecx ebx esi r8d r10d r11d xmm0 xmm1 xmm2
..B1.70:                        # Preds ..B1.69
                                # Execution count [6.24e-03]
        movslq    %r10d, %r10                                   #120.10
        imulq     $12016, %r10, %rax                            #120.10
        addq      %r15, %rax                                    #120.10
        .align    16,0x90
                                # LOE rax r9 r15 edx ecx ebx r8d r10d r11d xmm0 xmm1 xmm2
..B1.71:                        # Preds ..B1.71 ..B1.70
                                # Execution count [1.25e+00]
        movslq    %ebx, %rsi                                    #120.10
        lea       2(%rbx,%rbx), %r12d                           #120.10
        shlq      $4, %rsi                                      #120.10
        movsd     -12008(%rax,%rsi), %xmm3                      #120.10
        andps     .L_2il0floatpacket.11(%rip), %xmm3            #120.10
        comisd    %xmm2, %xmm3                                  #120.10
        movaps    %xmm3, %xmm5                                  #120.10
        movsd     -12000(%rax,%rsi), %xmm4                      #120.10
        maxsd     %xmm2, %xmm5                                  #120.10
        ja        ..L40         # Prob 50%                      #120.10
        movl      %r8d, %r12d                                   #120.10
..L40:                                                          #
        andps     .L_2il0floatpacket.11(%rip), %xmm4            #120.10
        lea       3(%rbx,%rbx), %r8d                            #120.10
        movaps    %xmm4, %xmm2                                  #120.10
        incl      %ebx                                          #120.10
        comisd    %xmm5, %xmm2                                  #120.10
        ja        ..L41         # Prob 50%                      #120.10
        movaps    %xmm5, %xmm2                                  #120.10
..L41:                                                          #
        comisd    %xmm5, %xmm4                                  #120.10
        cmovbe    %r12d, %r8d                                   #120.10
        cmpl      %edx, %ebx                                    #120.10
        jb        ..B1.71       # Prob 99%                      #120.10
                                # LOE rax r9 r15 edx ecx ebx r8d r10d r11d xmm0 xmm1 xmm2
..B1.72:                        # Preds ..B1.71
                                # Execution count [2.81e+00]
        lea       1(%rbx,%rbx), %esi                            #120.10
                                # LOE r9 r15 ecx esi r8d r10d r11d xmm0 xmm1 xmm2
..B1.73:                        # Preds ..B1.72 ..B1.69
                                # Execution count [3.12e+00]
        lea       -1(%rsi), %eax                                #120.10
        cmpl      %ecx, %eax                                    #120.10
        jae       ..B1.77       # Prob 10%                      #120.10
                                # LOE r9 r15 esi r8d r10d r11d xmm0 xmm1 xmm2
..B1.74:                        # Preds ..B1.73
                                # Execution count [2.81e+00]
        movslq    %r10d, %r10                                   #120.10
        lea       1(%rsi), %ecx                                 #120.10
        imulq     $12016, %r10, %rdx                            #120.10
        movslq    %esi, %rsi                                    #120.10
        lea       (%r15,%rsi,8), %rax                           #120.10
        movsd     -12016(%rax,%rdx), %xmm3                      #120.10
        andps     .L_2il0floatpacket.11(%rip), %xmm3            #120.10
        comisd    %xmm2, %xmm3                                  #120.10
        cmova     %ecx, %r8d                                    #120.10
        jmp       ..B1.77       # Prob 100%                     #120.10
                                # LOE r9 r15 r8d r10d r11d xmm0 xmm1
..B1.76:                        # Preds ..B1.66
                                # Execution count [1.65e+00]
        xorl      %r8d, %r8d                                    #120.10
                                # LOE r9 r15 r8d r10d r11d xmm0 xmm1
..B1.77:                        # Preds ..B1.67 ..B1.68 ..B1.73 ..B1.74 ..B1.76
                                #      
                                # Execution count [5.00e+00]
        movq      128(%rsp), %rax                               #120.10[spill]
        lea       -1(%r10,%r8), %ebx                            #120.10
        movslq    %ebx, %rdx                                    #120.10
        addq      136(%rsp), %rdx                               #120.10[spill]
        movl      %ebx, -4(%rax,%r9,4)                          #120.10
        movsd     -12016(%r15,%rdx,8), %xmm2                    #120.10
        ucomisd   %xmm1, %xmm2                                  #120.10
        jp        ..B1.78       # Prob 0%                       #120.10
        je        ..B1.305      # Prob 16%                      #120.10
                                # LOE rdx r9 r15 ebx r8d r10d r11d xmm0 xmm1 xmm2
..B1.78:                        # Preds ..B1.77
                                # Execution count [4.20e+00]
        movq      136(%rsp), %rax                               #120.10[spill]
        lea       (%r9,%rax), %rcx                              #120.10
        cmpl      %r10d, %ebx                                   #120.10
        je        ..B1.80       # Prob 50%                      #120.10
                                # LOE rdx rcx r9 r15 ebx r8d r10d r11d xmm0 xmm1 xmm2
..B1.79:                        # Preds ..B1.78
                                # Execution count [2.10e+00]
        movq      -12016(%r15,%rcx,8), %rax                     #120.10
        movq      %rax, -12016(%r15,%rdx,8)                     #120.10
        movsd     %xmm2, -12016(%r15,%rcx,8)                    #120.10
        jmp       ..B1.81       # Prob 100%                     #120.10
                                # LOE r9 r15 ebx r8d r10d r11d xmm0 xmm1 xmm2
..B1.80:                        # Preds ..B1.78
                                # Execution count [2.10e+00]
        movsd     -12016(%r15,%rcx,8), %xmm2                    #120.10
                                # LOE r9 r15 ebx r8d r10d r11d xmm0 xmm1 xmm2
..B1.81:                        # Preds ..B1.79 ..B1.80
                                # Execution count [4.20e+00]
        movaps    %xmm0, %xmm3                                  #120.10
        lea       1500(%r11), %ecx                              #120.26
        divsd     %xmm2, %xmm3                                  #120.10
        testl     %ecx, %ecx                                    #120.10
        jle       ..B1.304      # Prob 16%                      #120.10
                                # LOE r9 r15 ecx ebx r8d r10d r11d xmm0 xmm1 xmm3
..B1.82:                        # Preds ..B1.81
                                # Execution count [5.65e-01]
        movl      $1717986919, %eax                             #120.10
        movl      %ecx, %esi                                    #120.10
        imull     %ecx                                          #120.10
        sarl      $31, %esi                                     #120.10
        sarl      $1, %edx                                      #120.10
        subl      %esi, %edx                                    #120.10
        lea       (%rdx,%rdx,4), %edx                           #120.10
        negl      %edx                                          #120.10
        addl      %ecx, %edx                                    #120.10
        testl     %edx, %edx                                    #120.10
        jle       ..B1.91       # Prob 50%                      #120.10
                                # LOE r9 r15 edx ecx ebx r8d r10d r11d xmm0 xmm1 xmm3
..B1.83:                        # Preds ..B1.82
                                # Execution count [4.78e-01]
        movslq    %edx, %rax                                    #120.10
        movslq    %r10d, %rsi                                   #120.10
        cmpq      $4, %rax                                      #120.10
        jl        ..B1.297      # Prob 10%                      #120.10
                                # LOE rax rsi r9 r15 edx ecx ebx r8d r10d r11d xmm0 xmm1 xmm3
..B1.84:                        # Preds ..B1.83
                                # Execution count [4.78e-01]
        imulq     $12016, %rsi, %r13                            #120.10
        movl      %edx, %r12d                                   #120.10
        movaps    %xmm3, %xmm2                                  #120.10
        andl      $-4, %r12d                                    #120.10
        xorl      %r14d, %r14d                                  #120.10
        movslq    %r12d, %r12                                   #120.10
        addq      %r15, %r13                                    #120.10
        unpcklpd  %xmm2, %xmm2                                  #120.10
                                # LOE rax rsi r9 r12 r13 r14 r15 edx ecx ebx r8d r10d r11d xmm0 xmm1 xmm2 xmm3
..B1.85:                        # Preds ..B1.85 ..B1.84
                                # Execution count [2.66e+00]
        movups    -12008(%r13,%r14,8), %xmm4                    #120.10
        movups    -11992(%r13,%r14,8), %xmm5                    #120.10
        mulpd     %xmm2, %xmm4                                  #120.10
        mulpd     %xmm2, %xmm5                                  #120.10
        movups    %xmm4, -12008(%r13,%r14,8)                    #120.10
        movups    %xmm5, -11992(%r13,%r14,8)                    #120.10
        addq      $4, %r14                                      #120.10
        cmpq      %r12, %r14                                    #120.10
        jb        ..B1.85       # Prob 82%                      #120.10
                                # LOE rax rsi r9 r12 r13 r14 r15 edx ecx ebx r8d r10d r11d xmm0 xmm1 xmm2 xmm3
..B1.87:                        # Preds ..B1.85 ..B1.297
                                # Execution count [5.65e-01]
        cmpq      %rax, %r12                                    #120.10
        jae       ..B1.92       # Prob 15%                      #120.10
                                # LOE rax rsi r9 r12 r15 edx ecx ebx r8d r10d r11d xmm0 xmm1 xmm3
..B1.88:                        # Preds ..B1.87
                                # Execution count [4.78e-01]
        imulq     $12016, %rsi, %r13                            #120.10
        addq      %r15, %r13                                    #120.10
                                # LOE rax rsi r9 r12 r13 r15 edx ecx ebx r8d r10d r11d xmm0 xmm1 xmm3
..B1.89:                        # Preds ..B1.89 ..B1.88
                                # Execution count [2.66e+00]
        movsd     -12008(%r13,%r12,8), %xmm2                    #120.10
        mulsd     %xmm3, %xmm2                                  #120.10
        movsd     %xmm2, -12008(%r13,%r12,8)                    #120.10
        incq      %r12                                          #120.10
        cmpq      %rax, %r12                                    #120.10
        jb        ..B1.89       # Prob 82%                      #120.10
        jmp       ..B1.92       # Prob 100%                     #120.10
                                # LOE rax rsi r9 r12 r13 r15 edx ecx ebx r8d r10d r11d xmm0 xmm1 xmm3
..B1.91:                        # Preds ..B1.82
                                # Execution count [2.82e-01]
        movslq    %r10d, %rsi                                   #120.10
                                # LOE rsi r9 r15 edx ecx ebx r8d r10d r11d xmm0 xmm1 xmm3
..B1.92:                        # Preds ..B1.89 ..B1.87 ..B1.91
                                # Execution count [5.65e-01]
        movl      $0, 8(%rsp)                                   #120.10[spill]
        movq      $0, (%rsp)                                    #120.10[spill]
        cmpl      %ecx, %edx                                    #120.10
        jge       ..B1.106      # Prob 10%                      #120.10
                                # LOE rsi r9 r15 edx ecx ebx r8d r10d r11d xmm0 xmm1 xmm3
..B1.93:                        # Preds ..B1.92
                                # Execution count [5.08e-01]
        imulq     $12008, %rsi, %r12                            #120.10
        movslq    %edx, %r13                                    #120.10
        addl      %r10d, %edx                                   #120.10
        negl      %edx                                          #120.10
        movl      $-858993459, %eax                             #120.10
        addl      $1504, %edx                                   #120.10
        addq      %r15, %r12                                    #120.10
        mull      %edx                                          #120.10
        addq      %rsi, %r13                                    #120.10
        movaps    %xmm3, %xmm2                                  #120.10
        movq      %r15, 232(%rsp)                               #120.10[spill]
        unpcklpd  %xmm2, %xmm2                                  #120.10
        shrl      $2, %edx                                      #120.10
        movq      (%rsp), %r14                                  #120.10[spill]
        lea       (%r12,%r13,8), %r12                           #120.10
        movl      8(%rsp), %r15d                                #120.10[spill]
                                # LOE rsi r9 r12 r14 edx ecx ebx r8d r10d r11d r15d xmm0 xmm1 xmm2 xmm3
..B1.94:                        # Preds ..B1.104 ..B1.93
                                # Execution count [2.82e+00]
        lea       (%r12,%r14,8), %r13                           #120.10
        lea       -12008(%r13), %rdi                            #120.10
        andq      $15, %rdi                                     #120.10
        je        ..B1.97       # Prob 50%                      #120.10
                                # LOE rsi rdi r9 r12 r13 r14 edx ecx ebx r8d r10d r11d r15d xmm0 xmm1 xmm2 xmm3
..B1.95:                        # Preds ..B1.94
                                # Execution count [2.82e+00]
        testq     $7, %rdi                                      #120.10
        jne       ..B1.298      # Prob 10%                      #120.10
                                # LOE rsi r9 r12 r13 r14 edx ecx ebx r8d r10d r11d r15d xmm0 xmm1 xmm2 xmm3
..B1.96:                        # Preds ..B1.95
                                # Execution count [2.82e+00]
        movsd     -12008(%r12,%r14,8), %xmm4                    #120.10
        movl      $1, %edi                                      #120.10
        mulsd     %xmm3, %xmm4                                  #120.10
        movsd     %xmm4, -12008(%r12,%r14,8)                    #120.10
                                # LOE rsi rdi r9 r12 r13 r14 edx ecx ebx r8d r10d r11d r15d xmm0 xmm1 xmm2 xmm3
..B1.97:                        # Preds ..B1.96 ..B1.94
                                # Execution count [2.82e+00]
        movq      %rdi, %rax                                    #120.10
        negq      %rax                                          #120.10
        addq      $5, %rax                                      #120.10
        andq      $3, %rax                                      #120.10
        negq      %rax                                          #120.10
        addq      $5, %rax                                      #120.10
                                # LOE rax rsi rdi r9 r12 r13 r14 edx ecx ebx r8d r10d r11d r15d xmm0 xmm1 xmm2 xmm3
..B1.98:                        # Preds ..B1.98 ..B1.97
                                # Execution count [1.41e+01]
        movups    -12008(%r13,%rdi,8), %xmm4                    #120.10
        movups    -11992(%r13,%rdi,8), %xmm5                    #120.10
        mulpd     %xmm2, %xmm4                                  #120.10
        mulpd     %xmm2, %xmm5                                  #120.10
        movups    %xmm4, -12008(%r13,%rdi,8)                    #120.10
        movups    %xmm5, -11992(%r13,%rdi,8)                    #120.10
        addq      $4, %rdi                                      #120.10
        cmpq      %rax, %rdi                                    #120.10
        jb        ..B1.98       # Prob 80%                      #120.10
                                # LOE rax rsi rdi r9 r12 r13 r14 edx ecx ebx r8d r10d r11d r15d xmm0 xmm1 xmm2 xmm3
..B1.100:                       # Preds ..B1.98 ..B1.298
                                # Execution count [2.82e+00]
        cmpq      $5, %rax                                      #120.10
        jae       ..B1.104      # Prob 0%                       #120.10
                                # LOE rax rsi r9 r12 r13 r14 edx ecx ebx r8d r10d r11d r15d xmm0 xmm1 xmm2 xmm3
..B1.102:                       # Preds ..B1.100 ..B1.102
                                # Execution count [1.41e+01]
        movsd     -12008(%r13,%rax,8), %xmm4                    #120.10
        mulsd     %xmm3, %xmm4                                  #120.10
        movsd     %xmm4, -12008(%r13,%rax,8)                    #120.10
        incq      %rax                                          #120.10
        cmpq      $5, %rax                                      #120.10
        jb        ..B1.102      # Prob 80%                      #120.10
                                # LOE rax rsi r9 r12 r13 r14 edx ecx ebx r8d r10d r11d r15d xmm0 xmm1 xmm2 xmm3
..B1.104:                       # Preds ..B1.102 ..B1.100
                                # Execution count [2.82e+00]
        incl      %r15d                                         #120.10
        addq      $5, %r14                                      #120.10
        cmpl      %edx, %r15d                                   #120.10
        jb        ..B1.94       # Prob 81%                      #120.10
                                # LOE rsi r9 r12 r14 edx ecx ebx r8d r10d r11d r15d xmm0 xmm1 xmm2 xmm3
..B1.105:                       # Preds ..B1.104
                                # Execution count [5.08e-01]
        movq      232(%rsp), %r15                               #[spill]
                                # LOE rsi r9 r15 ecx ebx r8d r10d r11d xmm0 xmm1
..B1.106:                       # Preds ..B1.105 ..B1.92 ..B1.304
                                # Execution count [4.20e+00]
        xorl      %edx, %edx                                    #120.10
        lea       1(%r10), %r13d                                #120.10
        addq      $12008, 104(%rsp)                             #120.10[spill]
        lea       1(%rsi), %rax                                 #120.10
        addq      $1501, 136(%rsp)                              #120.10[spill]
        decl      %r11d                                         #120.10
        addq      $8, 112(%rsp)                                 #120.10[spill]
        incq      %r9                                           #120.10
        movl      %r13d, 120(%rsp)                              #120.10[spill]
        movl      %eax, %edi                                    #120.10
        xorl      %r12d, %r12d                                  #120.10
        cmpl      $1500, %r13d                                  #120.10
        jg        ..B1.126      # Prob 10%                      #120.10
                                # LOE rax rsi r9 r15 edx ecx ebx edi r8d r10d r11d r12d xmm0 xmm1
..B1.107:                       # Preds ..B1.106
                                # Execution count [3.78e+00]
        movl      %ecx, %r13d                                   #120.10
        andl      $-2147483645, %r13d                           #120.10
        jge       ..B1.310      # Prob 50%                      #120.10
                                # LOE rax rsi r9 r15 edx ecx ebx edi r8d r10d r11d r12d r13d xmm0 xmm1
..B1.311:                       # Preds ..B1.107
                                # Execution count [3.78e+00]
        subl      $1, %r13d                                     #120.10
        orl       $-4, %r13d                                    #120.10
        incl      %r13d                                         #120.10
                                # LOE rax rsi r9 r15 edx ecx ebx edi r8d r10d r11d r12d r13d xmm0 xmm1
..B1.310:                       # Preds ..B1.107 ..B1.311
                                # Execution count [3.78e+00]
        imulq     $12008, %rsi, %r14                            #120.10
        addq      %r15, %r14                                    #120.10
        movslq    %r13d, %r13                                   #120.10
        movslq    %r8d, %r8                                     #120.10
        movl      %r11d, 96(%rsp)                               #120.26[spill]
        movq      %r13, 176(%rsp)                               #120.10[spill]
        lea       (%r14,%rsi,8), %r14                           #120.10
        movq      %r14, 152(%rsp)                               #120.10[spill]
        lea       (%r14,%r13,8), %r14                           #120.10
        movq      %r14, 168(%rsp)                               #120.10[spill]
        lea       (%r10,%r13), %r14d                            #120.10
        negl      %r14d                                         #120.10
        lea       (%r15,%rsi,8), %rsi                           #120.10
        movq      %rsi, 80(%rsp)                                #120.10[spill]
        lea       (%r15,%r8,8), %rsi                            #120.10
        imull     $1501, %edi, %r8d                             #120.10
        addl      $1503, %r14d                                  #120.10
        shrl      $2, %r14d                                     #120.10
        negl      %edi                                          #120.26
        movl      %r14d, 184(%rsp)                              #120.10[spill]
        movl      %r13d, %r14d                                  #120.10
        shrl      $1, %r14d                                     #120.10
        addl      $1501, %edi                                   #120.26
        movl      %r14d, 192(%rsp)                              #120.10[spill]
        addl      %r10d, %r8d                                   #120.10
        movq      %r14, 144(%rsp)                               #120.10[spill]
        movslq    %eax, %r14                                    #120.10
        movl      %edi, 200(%rsp)                               #120.26[spill]
        movq      %r9, 88(%rsp)                                 #120.26[spill]
        movl      %r10d, 208(%rsp)                              #120.26[spill]
        movq      80(%rsp), %r11                                #120.26[spill]
                                # LOE rax rsi r11 r14 r15 edx ecx ebx r8d r12d r13d xmm0 xmm1
..B1.108:                       # Preds ..B1.123 ..B1.310
                                # Execution count [2.10e+01]
        lea       (%r8,%r12), %r9d                              #120.10
        movslq    %r9d, %r9                                     #120.10
        movsd     -12024(%rsi,%r9,8), %xmm2                     #120.10
        cmpl      208(%rsp), %ebx                               #120.10[spill]
        je        ..B1.110      # Prob 50%                      #120.10
                                # LOE rax rsi r9 r11 r14 r15 edx ecx ebx r8d r12d r13d xmm0 xmm1 xmm2
..B1.109:                       # Preds ..B1.108
                                # Execution count [1.05e+01]
        movq      -12016(%r15,%r9,8), %r10                      #120.10
        movq      %r10, -12024(%rsi,%r9,8)                      #120.10
        movsd     %xmm2, -12016(%r15,%r9,8)                     #120.10
                                # LOE rax rsi r11 r14 r15 edx ecx ebx r8d r12d r13d xmm0 xmm1 xmm2
..B1.110:                       # Preds ..B1.108 ..B1.109
                                # Execution count [2.10e+01]
        testl     %ecx, %ecx                                    #120.10
        jle       ..B1.123      # Prob 6%                       #120.10
                                # LOE rax rsi r11 r14 r15 edx ecx ebx r8d r12d r13d xmm0 xmm1 xmm2
..B1.111:                       # Preds ..B1.110
                                # Execution count [1.96e+01]
        ucomisd   %xmm1, %xmm2                                  #120.10
        jp        ..B1.112      # Prob 0%                       #120.10
        je        ..B1.123      # Prob 6%                       #120.10
                                # LOE rax rsi r11 r14 r15 edx ecx ebx r8d r12d r13d xmm0 xmm1 xmm2
..B1.112:                       # Preds ..B1.111
                                # Execution count [9.11e+00]
        testl     %r13d, %r13d                                  #120.10
        jle       ..B1.119      # Prob 50%                      #120.10
                                # LOE rax rsi r11 r14 r15 edx ecx ebx r8d r12d r13d xmm0 xmm1 xmm2
..B1.113:                       # Preds ..B1.112
                                # Execution count [9.11e+00]
        xorl      %r9d, %r9d                                    #120.10
        movl      $1, %edi                                      #120.10
        xorl      %r10d, %r10d                                  #120.10
        cmpl      $0, 192(%rsp)                                 #120.10[spill]
        je        ..B1.117      # Prob 15%                      #120.10
                                # LOE rax rsi r9 r10 r11 r14 r15 edx ecx ebx edi r8d r12d r13d xmm0 xmm1 xmm2
..B1.114:                       # Preds ..B1.113
                                # Execution count [7.71e+00]
        imulq     $12008, %rax, %rdi                            #120.10
        movl      %ebx, 160(%rsp)                               #120.10[spill]
        addq      %r11, %rdi                                    #120.10
        movq      %r15, 232(%rsp)                               #120.10[spill]
        movq      144(%rsp), %rbx                               #120.10[spill]
        movq      152(%rsp), %r15                               #120.10[spill]
        .align    16,0x90
                                # LOE rax rbx rsi rdi r9 r10 r11 r14 r15 edx ecx r8d r12d r13d xmm0 xmm1 xmm2
..B1.115:                       # Preds ..B1.115 ..B1.114
                                # Execution count [2.14e+01]
        movsd     -12008(%r10,%r15), %xmm3                      #120.10
        incq      %r9                                           #120.10
        mulsd     %xmm2, %xmm3                                  #120.10
        addsd     -12008(%r10,%rdi), %xmm3                      #120.10
        movsd     %xmm3, -12008(%r10,%rdi)                      #120.10
        movsd     -12000(%r10,%r15), %xmm4                      #120.10
        mulsd     %xmm2, %xmm4                                  #120.10
        addsd     -12000(%r10,%rdi), %xmm4                      #120.10
        movsd     %xmm4, -12000(%r10,%rdi)                      #120.10
        addq      $16, %r10                                     #120.10
        cmpq      %rbx, %r9                                     #120.10
        jb        ..B1.115      # Prob 64%                      #120.10
                                # LOE rax rbx rsi rdi r9 r10 r11 r14 r15 edx ecx r8d r12d r13d xmm0 xmm1 xmm2
..B1.116:                       # Preds ..B1.115
                                # Execution count [7.71e+00]
        movl      160(%rsp), %ebx                               #[spill]
        lea       1(%r9,%r9), %edi                              #120.10
        movq      232(%rsp), %r15                               #[spill]
                                # LOE rax rsi r11 r14 r15 edx ecx ebx edi r8d r12d r13d xmm0 xmm1 xmm2
..B1.117:                       # Preds ..B1.116 ..B1.113
                                # Execution count [9.11e+00]
        lea       -1(%rdi), %r9d                                #120.10
        cmpl      %r13d, %r9d                                   #120.10
        jae       ..B1.119      # Prob 15%                      #120.10
                                # LOE rax rsi r11 r14 r15 edx ecx ebx edi r8d r12d r13d xmm0 xmm1 xmm2
..B1.118:                       # Preds ..B1.117
                                # Execution count [7.71e+00]
        imulq     $12008, %rax, %r10                            #120.10
        movslq    %edi, %rdi                                    #120.10
        addq      %r11, %r10                                    #120.10
        movq      152(%rsp), %r9                                #120.10[spill]
        movsd     -12016(%r9,%rdi,8), %xmm3                     #120.10
        mulsd     %xmm2, %xmm3                                  #120.10
        addsd     -12016(%r10,%rdi,8), %xmm3                    #120.10
        movsd     %xmm3, -12016(%r10,%rdi,8)                    #120.10
                                # LOE rax rsi r11 r14 r15 edx ecx ebx r8d r12d r13d xmm0 xmm1 xmm2
..B1.119:                       # Preds ..B1.112 ..B1.117 ..B1.118
                                # Execution count [9.11e+00]
        xorl      %r9d, %r9d                                    #120.10
        cmpl      %ecx, %r13d                                   #120.10
        jge       ..B1.123      # Prob 9%                       #120.10
                                # LOE rax rsi r11 r14 r15 edx ecx ebx r8d r9d r12d r13d xmm0 xmm1 xmm2
..B1.120:                       # Preds ..B1.119
                                # Execution count [8.20e+00]
        imulq     $12008, %rax, %rax                            #120.10
        addq      %r11, %rax                                    #120.10
        movq      176(%rsp), %r10                               #120.10[spill]
        movl      184(%rsp), %edi                               #120.10[spill]
        movq      %r15, 232(%rsp)                               #120.10[spill]
        lea       (%rax,%r10,8), %r10                           #120.10
        movq      168(%rsp), %rax                               #120.10[spill]
                                # LOE rax rsi r10 r11 r14 edx ecx ebx edi r8d r9d r12d r13d xmm0 xmm1 xmm2
..B1.121:                       # Preds ..B1.121 ..B1.120
                                # Execution count [4.55e+01]
        lea       (,%r9,4), %r15d                               #120.10
        incl      %r9d                                          #120.10
        movslq    %r15d, %r15                                   #120.10
        movsd     -12008(%rax,%r15,8), %xmm3                    #120.10
        mulsd     %xmm2, %xmm3                                  #120.10
        addsd     -12008(%r10,%r15,8), %xmm3                    #120.10
        movsd     %xmm3, -12008(%r10,%r15,8)                    #120.10
        movsd     -12000(%rax,%r15,8), %xmm4                    #120.10
        mulsd     %xmm2, %xmm4                                  #120.10
        addsd     -12000(%r10,%r15,8), %xmm4                    #120.10
        movsd     %xmm4, -12000(%r10,%r15,8)                    #120.10
        movsd     -11992(%rax,%r15,8), %xmm5                    #120.10
        mulsd     %xmm2, %xmm5                                  #120.10
        addsd     -11992(%r10,%r15,8), %xmm5                    #120.10
        movsd     %xmm5, -11992(%r10,%r15,8)                    #120.10
        movsd     -11984(%rax,%r15,8), %xmm6                    #120.10
        mulsd     %xmm2, %xmm6                                  #120.10
        addsd     -11984(%r10,%r15,8), %xmm6                    #120.10
        movsd     %xmm6, -11984(%r10,%r15,8)                    #120.10
        cmpl      %edi, %r9d                                    #120.10
        jb        ..B1.121      # Prob 81%                      #120.10
                                # LOE rax rsi r10 r11 r14 edx ecx ebx edi r8d r9d r12d r13d xmm0 xmm1 xmm2
..B1.122:                       # Preds ..B1.121
                                # Execution count [8.20e+00]
        movq      232(%rsp), %r15                               #[spill]
                                # LOE rsi r11 r14 r15 edx ecx ebx r8d r12d r13d xmm0 xmm1
..B1.123:                       # Preds ..B1.110 ..B1.111 ..B1.119 ..B1.122
                                # Execution count [2.10e+01]
        incl      %edx                                          #120.10
        lea       1(%r14), %rax                                 #120.10
        addl      $1501, %r12d                                  #120.10
        movq      %rax, %r14                                    #120.10
        cmpl      200(%rsp), %edx                               #120.10[spill]
        jb        ..B1.108      # Prob 82%                      #120.10
                                # LOE rax rsi r11 r14 r15 edx ecx ebx r8d r12d r13d xmm0 xmm1
..B1.124:                       # Preds ..B1.123
                                # Execution count [3.78e+00]
        movq      88(%rsp), %r9                                 #[spill]
        movl      96(%rsp), %r11d                               #[spill]
                                # LOE r9 r15 r11d xmm0 xmm1
..B1.125:                       # Preds ..B1.124 ..B1.305
                                # Execution count [4.58e+00]
        movl      120(%rsp), %r10d                              #120.10[spill]
        cmpl      $1499, %r10d                                  #120.10
        jle       ..B1.66       # Prob 82%                      #120.10
                                # LOE r9 r15 r10d r11d xmm0 xmm1
..B1.126:                       # Preds ..B1.106 ..B1.125
                                # Execution count [8.25e-01]
        movb      24(%rsp), %bl                                 #[spill]
        movl      32(%rsp), %esi                                #[spill]
        movq      16(%rsp), %r12                                #[spill]
        movq      216(%rsp), %r14                               #[spill]
        movq      40(%rsp), %r13                                #[spill]
                                # LOE r12 r13 r14 r15 esi bl
..B1.127:                       # Preds ..B1.126
                                # Execution count [1.00e+00]
        movq      128(%rsp), %rax                               #120.10[spill]
        movsd     18011984(%r15), %xmm0                         #120.10
        pxor      %xmm1, %xmm1                                  #120.10
        ucomisd   %xmm1, %xmm0                                  #120.10
        movl      $1500, 5996(%rax)                             #120.10
        jp        ..B1.128      # Prob 0%                       #120.10
        je        ..B1.288      # Prob 16%                      #120.10
                                # LOE r12 r13 r14 r15 esi bl
..B1.128:                       # Preds ..B1.127
                                # Execution count [8.40e-01]
        testl     %esi, %esi                                    #122.16
        jne       ..B1.288      # Prob 28%                      #122.16
                                # LOE r12 r13 r14 r15 bl
..B1.129:                       # Preds ..B1.128
                                # Execution count [7.20e-01]
#       clock(void)
        call      clock                                         #131.8
                                # LOE rax r12 r13 r14 r15 bl
..B1.130:                       # Preds ..B1.129
                                # Execution count [7.20e-01]
        pxor      %xmm2, %xmm2                                  #131.8
        pxor      %xmm1, %xmm1                                  #118.8
        cvtsi2sdq %rax, %xmm2                                   #131.8
        cvtsi2sdq %r12, %xmm1                                   #118.8
        movsd     .L_2il0floatpacket.4(%rip), %xmm0             #131.8
        divsd     %xmm0, %xmm2                                  #131.8
        divsd     %xmm0, %xmm1                                  #118.8
        subsd     %xmm1, %xmm2                                  #132.18
        movsd     %xmm2, 16(%rsp)                               #132.18[spill]
#       clock(void)
        call      clock                                         #134.8
                                # LOE rax r13 r14 r15 bl
..B1.329:                       # Preds ..B1.130
                                # Execution count [7.20e-01]
        movq      %rax, %r12                                    #134.8
                                # LOE r12 r13 r14 r15 bl
..B1.131:                       # Preds ..B1.329
                                # Execution count [3.05e-01]
        xorl      %eax, %eax                                    #137.3
        movl      $1, %edx                                      #137.3
        movb      %bl, 24(%rsp)                                 #137.3[spill]
        xorl      %ecx, %ecx                                    #137.3
        movq      %r12, 8(%rsp)                                 #137.3[spill]
        xorl      %esi, %esi                                    #137.3
        movq      %r14, 216(%rsp)                               #137.3[spill]
        pxor      %xmm1, %xmm1                                  #137.3
        movq      %r13, 40(%rsp)                                #137.3[spill]
        movq      %r15, 232(%rsp)                               #137.3[spill]
        movq      128(%rsp), %r10                               #137.3[spill]
        movq      224(%rsp), %r8                                #137.3[spill]
                                # LOE rdx rsi r8 r10 eax ecx xmm1
..B1.132:                       # Preds ..B1.160 ..B1.131
                                # Execution count [1.69e+00]
        movslq    (%r10,%rsi,4), %rdi                           #137.3
        lea       1(%rax), %r11d                                #137.3
        decl      %ecx                                          #137.3
        movsd     -8(%r8,%rdi,8), %xmm0                         #137.3
        cmpl      (%r10,%rsi,4), %r11d                          #137.3
        je        ..B1.134      # Prob 50%                      #137.3
                                # LOE rdx rsi rdi r8 r10 eax ecx r11d xmm0 xmm1
..B1.133:                       # Preds ..B1.132
                                # Execution count [8.47e-01]
        movq      (%r8,%rsi,8), %rbx                            #137.3
        movq      %rbx, -8(%r8,%rdi,8)                          #137.3
        movsd     %xmm0, (%r8,%rsi,8)                           #137.3
                                # LOE rdx rsi r8 r10 eax ecx r11d xmm0 xmm1
..B1.134:                       # Preds ..B1.132 ..B1.133
                                # Execution count [1.58e+00]
        ucomisd   %xmm1, %xmm0                                  #137.3
        jp        ..B1.135      # Prob 0%                       #137.3
        je        ..B1.160      # Prob 6%                       #137.3
                                # LOE rdx rsi r8 r10 eax ecx r11d xmm0 xmm1
..B1.135:                       # Preds ..B1.134
                                # Execution count [7.34e-01]
        lea       1500(%rcx), %edi                              #137.19
        movl      %edi, %r9d                                    #137.3
        andl      $-2147483645, %r9d                            #137.3
        jge       ..B1.312      # Prob 50%                      #137.3
                                # LOE rdx rsi r8 r10 eax ecx edi r9d r11d xmm0 xmm1
..B1.313:                       # Preds ..B1.135
                                # Execution count [7.34e-01]
        subl      $1, %r9d                                      #137.3
        orl       $-4, %r9d                                     #137.3
        incl      %r9d                                          #137.3
                                # LOE rdx rsi r8 r10 eax ecx edi r9d r11d xmm0 xmm1
..B1.312:                       # Preds ..B1.135 ..B1.313
                                # Execution count [7.34e-01]
        testl     %r9d, %r9d                                    #137.3
        jle       ..B1.156      # Prob 50%                      #137.3
                                # LOE rdx rsi r8 r10 eax ecx edi r9d r11d xmm0 xmm1
..B1.136:                       # Preds ..B1.312
                                # Execution count [7.34e-01]
        movl      %r9d, %r12d                                   #137.3
        xorl      %r13d, %r13d                                  #137.3
        movl      $1, %ebx                                      #137.3
        xorl      %r14d, %r14d                                  #137.3
        shrl      $3, %r12d                                     #137.3
        je        ..B1.140      # Prob 15%                      #137.3
                                # LOE rdx rsi r8 r10 r12 r13 r14 eax ecx ebx edi r9d r11d xmm0 xmm1
..B1.137:                       # Preds ..B1.136
                                # Execution count [2.16e-03]
        movq      232(%rsp), %r15                               #137.3[spill]
        lea       (%r8,%rdx,8), %rbx                            #137.3
        movq      %rbx, (%rsp)                                  #137.3[spill]
        imulq     $12008, %rdx, %rbx                            #137.3
        lea       (%r15,%rdx,8), %r15                           #137.3
        addq      %rbx, %r15                                    #137.3
        movq      %r15, %rbx                                    #137.3
        movq      (%rsp), %r15                                  #137.3[spill]
                                # LOE rdx rbx rsi r8 r10 r12 r13 r14 r15 eax ecx edi r9d r11d xmm0 xmm1
..B1.138:                       # Preds ..B1.138 ..B1.137
                                # Execution count [4.32e-01]
        movsd     -12008(%r14,%rbx), %xmm2                      #137.3
        incq      %r13                                          #137.3
        movsd     -12000(%r14,%rbx), %xmm3                      #137.3
        movsd     -11992(%r14,%rbx), %xmm4                      #137.3
        movsd     -11984(%r14,%rbx), %xmm5                      #137.3
        movsd     -11976(%r14,%rbx), %xmm6                      #137.3
        movsd     -11968(%r14,%rbx), %xmm7                      #137.3
        movsd     -11960(%r14,%rbx), %xmm8                      #137.3
        movsd     -11952(%r14,%rbx), %xmm9                      #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        mulsd     %xmm0, %xmm3                                  #137.3
        mulsd     %xmm0, %xmm4                                  #137.3
        addsd     (%r14,%r15), %xmm2                            #137.3
        mulsd     %xmm0, %xmm5                                  #137.3
        addsd     8(%r14,%r15), %xmm3                           #137.3
        mulsd     %xmm0, %xmm6                                  #137.3
        addsd     16(%r14,%r15), %xmm4                          #137.3
        mulsd     %xmm0, %xmm7                                  #137.3
        addsd     24(%r14,%r15), %xmm5                          #137.3
        mulsd     %xmm0, %xmm8                                  #137.3
        addsd     32(%r14,%r15), %xmm6                          #137.3
        mulsd     %xmm0, %xmm9                                  #137.3
        addsd     40(%r14,%r15), %xmm7                          #137.3
        addsd     48(%r14,%r15), %xmm8                          #137.3
        addsd     56(%r14,%r15), %xmm9                          #137.3
        movsd     %xmm2, (%r14,%r15)                            #137.3
        movsd     %xmm3, 8(%r14,%r15)                           #137.3
        movsd     %xmm4, 16(%r14,%r15)                          #137.3
        movsd     %xmm5, 24(%r14,%r15)                          #137.3
        movsd     %xmm6, 32(%r14,%r15)                          #137.3
        movsd     %xmm7, 40(%r14,%r15)                          #137.3
        movsd     %xmm8, 48(%r14,%r15)                          #137.3
        movsd     %xmm9, 56(%r14,%r15)                          #137.3
        addq      $64, %r14                                     #137.3
        cmpq      %r12, %r13                                    #137.3
        jb        ..B1.138      # Prob 99%                      #137.3
                                # LOE rdx rbx rsi r8 r10 r12 r13 r14 r15 eax ecx edi r9d r11d xmm0 xmm1
..B1.139:                       # Preds ..B1.138
                                # Execution count [6.21e-01]
        lea       1(,%r13,8), %ebx                              #137.3
                                # LOE rdx rsi r8 r10 eax ecx ebx edi r9d r11d xmm0 xmm1
..B1.140:                       # Preds ..B1.139 ..B1.136
                                # Execution count [7.34e-01]
        cmpl      %r9d, %ebx                                    #137.3
        ja        ..B1.156      # Prob 50%                      #137.3
                                # LOE rdx rsi r8 r10 eax ecx ebx edi r9d r11d xmm0 xmm1
..B1.141:                       # Preds ..B1.140
                                # Execution count [0.00e+00]
        lea       -1(%rbx), %r12d                               #137.3
        negl      %r12d                                         #137.3
        addl      %r9d, %r12d                                   #137.3
        decl      %r12d                                         #137.3
        jmp       *.2.29_2.switchtab.144(,%r12,8)               #137.3
                                # LOE rdx rsi r8 r10 eax ecx ebx edi r9d r11d xmm0 xmm1
..1.29_0.TAG.6:
..B1.143:                       # Preds ..B1.141
                                # Execution count [0.00e+00]
        imulq     $12008, %rdx, %r14                            #137.3
        movq      232(%rsp), %r13                               #137.3[spill]
        lea       (%r8,%rdx,8), %r12                            #137.3
        movslq    %ebx, %rbx                                    #137.3
        lea       (%r13,%rdx,8), %r15                           #137.3
        addq      %r14, %r15                                    #137.3
        movsd     -11968(%r15,%rbx,8), %xmm2                    #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     40(%r12,%rbx,8), %xmm2                        #137.3
        movsd     %xmm2, 40(%r12,%rbx,8)                        #137.3
                                # LOE rdx rsi r8 r10 eax ecx ebx edi r9d r11d xmm0 xmm1
..1.29_0.TAG.5:
..B1.145:                       # Preds ..B1.141 ..B1.143
                                # Execution count [0.00e+00]
        imulq     $12008, %rdx, %r14                            #137.3
        movq      232(%rsp), %r13                               #137.3[spill]
        lea       (%r8,%rdx,8), %r12                            #137.3
        movslq    %ebx, %rbx                                    #137.3
        lea       (%r13,%rdx,8), %r15                           #137.3
        addq      %r14, %r15                                    #137.3
        movsd     -11976(%r15,%rbx,8), %xmm2                    #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     32(%r12,%rbx,8), %xmm2                        #137.3
        movsd     %xmm2, 32(%r12,%rbx,8)                        #137.3
                                # LOE rdx rsi r8 r10 eax ecx ebx edi r9d r11d xmm0 xmm1
..1.29_0.TAG.4:
..B1.147:                       # Preds ..B1.141 ..B1.145
                                # Execution count [0.00e+00]
        imulq     $12008, %rdx, %r14                            #137.3
        movq      232(%rsp), %r13                               #137.3[spill]
        lea       (%r8,%rdx,8), %r12                            #137.3
        movslq    %ebx, %rbx                                    #137.3
        lea       (%r13,%rdx,8), %r15                           #137.3
        addq      %r14, %r15                                    #137.3
        movsd     -11984(%r15,%rbx,8), %xmm2                    #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     24(%r12,%rbx,8), %xmm2                        #137.3
        movsd     %xmm2, 24(%r12,%rbx,8)                        #137.3
                                # LOE rdx rsi r8 r10 eax ecx ebx edi r9d r11d xmm0 xmm1
..1.29_0.TAG.3:
..B1.149:                       # Preds ..B1.141 ..B1.147
                                # Execution count [0.00e+00]
        imulq     $12008, %rdx, %r14                            #137.3
        movq      232(%rsp), %r13                               #137.3[spill]
        lea       (%r8,%rdx,8), %r12                            #137.3
        movslq    %ebx, %rbx                                    #137.3
        lea       (%r13,%rdx,8), %r15                           #137.3
        addq      %r14, %r15                                    #137.3
        movsd     -11992(%r15,%rbx,8), %xmm2                    #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     16(%r12,%rbx,8), %xmm2                        #137.3
        movsd     %xmm2, 16(%r12,%rbx,8)                        #137.3
                                # LOE rdx rsi r8 r10 eax ecx ebx edi r9d r11d xmm0 xmm1
..1.29_0.TAG.2:
..B1.151:                       # Preds ..B1.141 ..B1.149
                                # Execution count [0.00e+00]
        imulq     $12008, %rdx, %r14                            #137.3
        movq      232(%rsp), %r13                               #137.3[spill]
        lea       (%r8,%rdx,8), %r12                            #137.3
        movslq    %ebx, %rbx                                    #137.3
        lea       (%r13,%rdx,8), %r15                           #137.3
        addq      %r14, %r15                                    #137.3
        movsd     -12000(%r15,%rbx,8), %xmm2                    #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     8(%r12,%rbx,8), %xmm2                         #137.3
        movsd     %xmm2, 8(%r12,%rbx,8)                         #137.3
                                # LOE rdx rsi r8 r10 eax ecx ebx edi r9d r11d xmm0 xmm1
..1.29_0.TAG.1:
..B1.153:                       # Preds ..B1.141 ..B1.151
                                # Execution count [0.00e+00]
        imulq     $12008, %rdx, %r14                            #137.3
        movq      232(%rsp), %r13                               #137.3[spill]
        lea       (%r8,%rdx,8), %r12                            #137.3
        movslq    %ebx, %rbx                                    #137.3
        lea       (%r13,%rdx,8), %r15                           #137.3
        addq      %r14, %r15                                    #137.3
        movsd     -12008(%r15,%rbx,8), %xmm2                    #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     (%r12,%rbx,8), %xmm2                          #137.3
        movsd     %xmm2, (%r12,%rbx,8)                          #137.3
                                # LOE rdx rsi r8 r10 eax ecx ebx edi r9d r11d xmm0 xmm1
..1.29_0.TAG.0:
..B1.155:                       # Preds ..B1.141 ..B1.153
                                # Execution count [6.21e-01]
        imulq     $12008, %rdx, %r13                            #137.3
        movq      232(%rsp), %r12                               #137.3[spill]
        lea       (%r8,%rdx,8), %r15                            #137.3
        movslq    %ebx, %rbx                                    #137.3
        lea       (%r12,%rdx,8), %r14                           #137.3
        addq      %r13, %r14                                    #137.3
        movsd     -12016(%r14,%rbx,8), %xmm2                    #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     -8(%r15,%rbx,8), %xmm2                        #137.3
        movsd     %xmm2, -8(%r15,%rbx,8)                        #137.3
                                # LOE rdx rsi r8 r10 eax ecx edi r9d r11d xmm0 xmm1
..B1.156:                       # Preds ..B1.312 ..B1.140 ..B1.155
                                # Execution count [7.34e-01]
        xorl      %r12d, %r12d                                  #137.3
        cmpl      %edi, %r9d                                    #137.3
        jge       ..B1.160      # Prob 10%                      #137.3
                                # LOE rdx rsi r8 r10 eax ecx r9d r11d r12d xmm0 xmm1
..B1.157:                       # Preds ..B1.156
                                # Execution count [6.61e-01]
        movq      232(%rsp), %rdi                               #137.3[spill]
        lea       (%r8,%rdx,8), %rbx                            #137.3
        movslq    %r9d, %r9                                     #137.3
        addl      %r9d, %eax                                    #137.3
        negl      %eax                                          #137.3
        lea       (%rdi,%rdx,8), %r13                           #137.3
        imulq     $12008, %rdx, %rdx                            #137.3
        addq      %rdx, %r13                                    #137.3
        addl      $1502, %eax                                   #137.3
        unpcklpd  %xmm0, %xmm0                                  #137.3
        lea       (%rbx,%r9,8), %rbx                            #137.3
        shrl      $2, %eax                                      #137.3
        lea       (%r13,%r9,8), %rdx                            #137.3
        .align    16,0x90
                                # LOE rdx rbx rsi r8 r10 eax ecx r11d r12d xmm0 xmm1
..B1.158:                       # Preds ..B1.158 ..B1.157
                                # Execution count [3.67e+00]
        lea       (,%r12,4), %edi                               #137.3
        incl      %r12d                                         #137.3
        movslq    %edi, %rdi                                    #137.3
        movups    -12008(%rdx,%rdi,8), %xmm2                    #137.3
        movups    -11992(%rdx,%rdi,8), %xmm4                    #137.3
        mulpd     %xmm0, %xmm2                                  #137.3
        mulpd     %xmm0, %xmm4                                  #137.3
        movups    (%rbx,%rdi,8), %xmm3                          #137.3
        movups    16(%rbx,%rdi,8), %xmm5                        #137.3
        addpd     %xmm2, %xmm3                                  #137.3
        addpd     %xmm4, %xmm5                                  #137.3
        movups    %xmm3, (%rbx,%rdi,8)                          #137.3
        movups    %xmm5, 16(%rbx,%rdi,8)                        #137.3
        cmpl      %eax, %r12d                                   #137.3
        jb        ..B1.158      # Prob 82%                      #137.3
                                # LOE rdx rbx rsi r8 r10 eax ecx r11d r12d xmm0 xmm1
..B1.160:                       # Preds ..B1.158 ..B1.134 ..B1.156
                                # Execution count [1.69e+00]
        movl      %r11d, %eax                                   #137.3
        lea       2(%rsi), %rdx                                 #137.3
        incq      %rsi                                          #137.3
        cmpl      $1499, %r11d                                  #137.3
        jb        ..B1.132      # Prob 82%                      #137.3
                                # LOE rdx rsi r8 r10 eax ecx xmm1
..B1.161:                       # Preds ..B1.160
                                # Execution count [3.24e-01]
        xorl      %edx, %edx                                    #137.3
        xorl      %esi, %esi                                    #137.3
        movl      $1500, %eax                                   #137.3
        movb      24(%rsp), %bl                                 #[spill]
        xorl      %ecx, %ecx                                    #137.3
        xorl      %r8d, %r8d                                    #137.3
        movq      216(%rsp), %r14                               #[spill]
        pxor      %xmm1, %xmm1                                  #137.3
        movq      232(%rsp), %r15                               #[spill]
        movq      224(%rsp), %r13                               #137.3[spill]
                                # LOE rax rsi r8 r13 r15 edx ecx bl xmm1
..B1.162:                       # Preds ..B1.189 ..B1.161
                                # Execution count [1.80e+00]
        movsd     11992(%r13,%r8,8), %xmm0                      #137.3
        lea       1499(%rcx), %r12d                             #137.3
        divsd     18011984(%rsi,%r15), %xmm0                    #137.3
        movsd     %xmm0, 11992(%r13,%r8,8)                      #137.3
        xorps     .L_2il0floatpacket.12(%rip), %xmm0            #137.3
        testl     %r12d, %r12d                                  #137.3
        jle       ..B1.189      # Prob 6%                       #137.3
                                # LOE rax rsi r8 r13 r15 edx ecx r12d bl xmm0 xmm1
..B1.163:                       # Preds ..B1.162
                                # Execution count [1.68e+00]
        ucomisd   %xmm1, %xmm0                                  #137.3
        jp        ..B1.164      # Prob 0%                       #137.3
        je        ..B1.189      # Prob 6%                       #137.3
                                # LOE rax rsi r8 r13 r15 edx ecx r12d bl xmm0 xmm1
..B1.164:                       # Preds ..B1.163
                                # Execution count [7.80e-01]
        movl      %r12d, %r14d                                  #137.3
        andl      $-2147483645, %r14d                           #137.3
        jge       ..B1.314      # Prob 50%                      #137.3
                                # LOE rax rsi r8 r13 r15 edx ecx r12d r14d bl xmm0 xmm1
..B1.315:                       # Preds ..B1.164
                                # Execution count [7.80e-01]
        subl      $1, %r14d                                     #137.3
        orl       $-4, %r14d                                    #137.3
        incl      %r14d                                         #137.3
                                # LOE rax rsi r8 r13 r15 edx ecx r12d r14d bl xmm0 xmm1
..B1.314:                       # Preds ..B1.164 ..B1.315
                                # Execution count [7.80e-01]
        testl     %r14d, %r14d                                  #137.3
        jle       ..B1.185      # Prob 50%                      #137.3
                                # LOE rax rsi r8 r13 r15 edx ecx r12d r14d bl xmm0 xmm1
..B1.165:                       # Preds ..B1.314
                                # Execution count [7.80e-01]
        movl      %r14d, %r11d                                  #137.3
        xorl      %r9d, %r9d                                    #137.3
        movl      $1, %edi                                      #137.3
        xorl      %r10d, %r10d                                  #137.3
        shrl      $3, %r11d                                     #137.3
        je        ..B1.169      # Prob 15%                      #137.3
                                # LOE rax rsi r8 r9 r10 r11 r13 r15 edx ecx edi r12d r14d bl xmm0 xmm1
..B1.166:                       # Preds ..B1.165
                                # Execution count [2.29e-03]
        imulq     $12008, %rax, %rdi                            #137.3
        addq      %r15, %rdi                                    #137.3
                                # LOE rax rsi rdi r8 r9 r10 r11 r13 r15 edx ecx r12d r14d bl xmm0 xmm1
..B1.167:                       # Preds ..B1.167 ..B1.166
                                # Execution count [4.59e-01]
        movsd     -12008(%r10,%rdi), %xmm2                      #137.3
        incq      %r9                                           #137.3
        movsd     -12000(%r10,%rdi), %xmm3                      #137.3
        movsd     -11992(%r10,%rdi), %xmm4                      #137.3
        movsd     -11984(%r10,%rdi), %xmm5                      #137.3
        movsd     -11976(%r10,%rdi), %xmm6                      #137.3
        movsd     -11968(%r10,%rdi), %xmm7                      #137.3
        movsd     -11960(%r10,%rdi), %xmm8                      #137.3
        movsd     -11952(%r10,%rdi), %xmm9                      #137.3
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
        cmpq      %r11, %r9                                     #137.3
        jb        ..B1.167      # Prob 99%                      #137.3
                                # LOE rax rsi rdi r8 r9 r10 r11 r13 r15 edx ecx r12d r14d bl xmm0 xmm1
..B1.168:                       # Preds ..B1.167
                                # Execution count [6.61e-01]
        lea       1(,%r9,8), %edi                               #137.3
                                # LOE rax rsi r8 r13 r15 edx ecx edi r12d r14d bl xmm0 xmm1
..B1.169:                       # Preds ..B1.168 ..B1.165
                                # Execution count [7.80e-01]
        cmpl      %r14d, %edi                                   #137.3
        ja        ..B1.185      # Prob 50%                      #137.3
                                # LOE rax rsi r8 r13 r15 edx ecx edi r12d r14d bl xmm0 xmm1
..B1.170:                       # Preds ..B1.169
                                # Execution count [0.00e+00]
        lea       -1(%rdi), %r9d                                #137.3
        negl      %r9d                                          #137.3
        addl      %r14d, %r9d                                   #137.3
        decl      %r9d                                          #137.3
        jmp       *.2.29_2.switchtab.145(,%r9,8)                #137.3
                                # LOE rax rsi r8 r13 r15 edx ecx edi r12d r14d bl xmm0 xmm1
..1.29_1.TAG.6:
..B1.172:                       # Preds ..B1.170
                                # Execution count [0.00e+00]
        imulq     $12008, %rax, %r9                             #137.3
        movslq    %edi, %rdi                                    #137.3
        addq      %r15, %r9                                     #137.3
        movsd     -11968(%r9,%rdi,8), %xmm2                     #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     40(%r13,%rdi,8), %xmm2                        #137.3
        movsd     %xmm2, 40(%r13,%rdi,8)                        #137.3
                                # LOE rax rsi r8 r13 r15 edx ecx edi r12d r14d bl xmm0 xmm1
..1.29_1.TAG.5:
..B1.174:                       # Preds ..B1.170 ..B1.172
                                # Execution count [0.00e+00]
        imulq     $12008, %rax, %r9                             #137.3
        movslq    %edi, %rdi                                    #137.3
        addq      %r15, %r9                                     #137.3
        movsd     -11976(%r9,%rdi,8), %xmm2                     #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     32(%r13,%rdi,8), %xmm2                        #137.3
        movsd     %xmm2, 32(%r13,%rdi,8)                        #137.3
                                # LOE rax rsi r8 r13 r15 edx ecx edi r12d r14d bl xmm0 xmm1
..1.29_1.TAG.4:
..B1.176:                       # Preds ..B1.170 ..B1.174
                                # Execution count [0.00e+00]
        imulq     $12008, %rax, %r9                             #137.3
        movslq    %edi, %rdi                                    #137.3
        addq      %r15, %r9                                     #137.3
        movsd     -11984(%r9,%rdi,8), %xmm2                     #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     24(%r13,%rdi,8), %xmm2                        #137.3
        movsd     %xmm2, 24(%r13,%rdi,8)                        #137.3
                                # LOE rax rsi r8 r13 r15 edx ecx edi r12d r14d bl xmm0 xmm1
..1.29_1.TAG.3:
..B1.178:                       # Preds ..B1.170 ..B1.176
                                # Execution count [0.00e+00]
        imulq     $12008, %rax, %r9                             #137.3
        movslq    %edi, %rdi                                    #137.3
        addq      %r15, %r9                                     #137.3
        movsd     -11992(%r9,%rdi,8), %xmm2                     #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     16(%r13,%rdi,8), %xmm2                        #137.3
        movsd     %xmm2, 16(%r13,%rdi,8)                        #137.3
                                # LOE rax rsi r8 r13 r15 edx ecx edi r12d r14d bl xmm0 xmm1
..1.29_1.TAG.2:
..B1.180:                       # Preds ..B1.170 ..B1.178
                                # Execution count [0.00e+00]
        imulq     $12008, %rax, %r9                             #137.3
        movslq    %edi, %rdi                                    #137.3
        addq      %r15, %r9                                     #137.3
        movsd     -12000(%r9,%rdi,8), %xmm2                     #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     8(%r13,%rdi,8), %xmm2                         #137.3
        movsd     %xmm2, 8(%r13,%rdi,8)                         #137.3
                                # LOE rax rsi r8 r13 r15 edx ecx edi r12d r14d bl xmm0 xmm1
..1.29_1.TAG.1:
..B1.182:                       # Preds ..B1.170 ..B1.180
                                # Execution count [0.00e+00]
        imulq     $12008, %rax, %r9                             #137.3
        movslq    %edi, %rdi                                    #137.3
        addq      %r15, %r9                                     #137.3
        movsd     -12008(%r9,%rdi,8), %xmm2                     #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     (%r13,%rdi,8), %xmm2                          #137.3
        movsd     %xmm2, (%r13,%rdi,8)                          #137.3
                                # LOE rax rsi r8 r13 r15 edx ecx edi r12d r14d bl xmm0 xmm1
..1.29_1.TAG.0:
..B1.184:                       # Preds ..B1.170 ..B1.182
                                # Execution count [6.61e-01]
        imulq     $12008, %rax, %r9                             #137.3
        movslq    %edi, %rdi                                    #137.3
        addq      %r15, %r9                                     #137.3
        movsd     -12016(%r9,%rdi,8), %xmm2                     #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        addsd     -8(%r13,%rdi,8), %xmm2                        #137.3
        movsd     %xmm2, -8(%r13,%rdi,8)                        #137.3
                                # LOE rax rsi r8 r13 r15 edx ecx r12d r14d bl xmm0 xmm1
..B1.185:                       # Preds ..B1.314 ..B1.169 ..B1.184
                                # Execution count [7.80e-01]
        xorl      %r10d, %r10d                                  #137.3
        xorl      %r11d, %r11d                                  #137.3
        cmpl      %r12d, %r14d                                  #137.3
        jge       ..B1.189      # Prob 9%                       #137.3
                                # LOE rax rsi r8 r10 r11 r13 r15 edx ecx r14d bl xmm0 xmm1
..B1.186:                       # Preds ..B1.185
                                # Execution count [7.02e-01]
        imulq     $12008, %rax, %rax                            #137.3
        movslq    %r14d, %r14                                   #137.3
        addq      %r15, %rax                                    #137.3
        lea       (%r13,%r14,8), %r9                            #137.3
        lea       (%rax,%r14,8), %rax                           #137.3
        addl      %edx, %r14d                                   #137.3
        negl      %r14d                                         #137.3
        addl      $1502, %r14d                                  #137.3
        shrl      $2, %r14d                                     #137.3
        .align    16,0x90
                                # LOE rax rsi r8 r9 r10 r11 r13 r14 r15 edx ecx bl xmm0 xmm1
..B1.187:                       # Preds ..B1.187 ..B1.186
                                # Execution count [3.90e+00]
        movsd     -12008(%r11,%rax), %xmm2                      #137.3
        incq      %r10                                          #137.3
        movsd     -12000(%r11,%rax), %xmm3                      #137.3
        movsd     -11992(%r11,%rax), %xmm4                      #137.3
        movsd     -11984(%r11,%rax), %xmm5                      #137.3
        mulsd     %xmm0, %xmm2                                  #137.3
        mulsd     %xmm0, %xmm3                                  #137.3
        mulsd     %xmm0, %xmm4                                  #137.3
        addsd     (%r11,%r9), %xmm2                             #137.3
        mulsd     %xmm0, %xmm5                                  #137.3
        addsd     8(%r11,%r9), %xmm3                            #137.3
        addsd     16(%r11,%r9), %xmm4                           #137.3
        addsd     24(%r11,%r9), %xmm5                           #137.3
        movsd     %xmm2, (%r11,%r9)                             #137.3
        movsd     %xmm3, 8(%r11,%r9)                            #137.3
        movsd     %xmm4, 16(%r11,%r9)                           #137.3
        movsd     %xmm5, 24(%r11,%r9)                           #137.3
        addq      $32, %r11                                     #137.3
        cmpq      %r14, %r10                                    #137.3
        jb        ..B1.187      # Prob 82%                      #137.3
                                # LOE rax rsi r8 r9 r10 r11 r13 r14 r15 edx ecx bl xmm0 xmm1
..B1.189:                       # Preds ..B1.187 ..B1.162 ..B1.163 ..B1.185
                                # Execution count [1.80e+00]
        incl      %edx                                          #137.3
        lea       1499(%r8), %rax                               #137.3
        decl      %ecx                                          #137.3
        addq      $-12016, %rsi                                 #137.3
        decq      %r8                                           #137.3
        cmpl      $1500, %edx                                   #137.3
        jb        ..B1.162      # Prob 82%                      #137.3
                                # LOE rax rsi r8 r13 r15 edx ecx bl xmm1
..B1.190:                       # Preds ..B1.189
                                # Execution count [7.20e-01]
        movq      8(%rsp), %r12                                 #[spill]
        movq      216(%rsp), %r14                               #[spill]
        movq      40(%rsp), %r13                                #[spill]
#       clock(void)
        call      clock                                         #139.8
                                # LOE rax r12 r13 r14 r15 bl
..B1.191:                       # Preds ..B1.190
                                # Execution count [7.20e-01]
        pxor      %xmm3, %xmm3                                  #139.8
        pxor      %xmm1, %xmm1                                  #134.8
        cvtsi2sdq %rax, %xmm3                                   #139.8
        cvtsi2sdq %r12, %xmm1                                   #134.8
        movsd     .L_2il0floatpacket.4(%rip), %xmm0             #139.8
        movq      %r15, %rdi                                    #144.3
        divsd     %xmm0, %xmm3                                  #139.8
        divsd     %xmm0, %xmm1                                  #134.8
        movsd     16(%rsp), %xmm2                               #142.21[spill]
        subsd     %xmm1, %xmm3                                  #140.18
        movsd     %xmm3, 24(%rsp)                               #140.18[spill]
        addsd     %xmm3, %xmm2                                  #142.21
        movsd     %xmm2, 32(%rsp)                               #142.21[spill]
#       free(void *)
        call      free                                          #144.3
                                # LOE r13 r14 bl
..B1.192:                       # Preds ..B1.191
                                # Execution count [7.20e-01]
        movups    init.956.0.0.13(%rip), %xmm0                  #148.7
        movups    %xmm0, (%rsp)                                 #148.7
                                # LOE r13 r14 bl
..B1.193:                       # Preds ..B1.192
                                # Execution count [7.20e-01]
        movl      $18012000, %edi                               #148.7
#       malloc(size_t)
        call      malloc                                        #148.7
                                # LOE rax r13 r14 bl
..B1.331:                       # Preds ..B1.193
                                # Execution count [7.20e-01]
        movq      %rax, %r12                                    #148.7
                                # LOE r12 r13 r14 bl
..B1.194:                       # Preds ..B1.331
                                # Execution count [2.88e-01]
        movl      12(%rsp), %edx                                #148.7
        xorl      %ecx, %ecx                                    #148.7
        movl      8(%rsp), %r10d                                #148.7
        movq      %r12, %r9                                     #148.7
        movl      4(%rsp), %r11d                                #148.7
        movl      (%rsp), %esi                                  #148.7
        movq      %r14, 216(%rsp)                               #148.7[spill]
        movq      %r13, 40(%rsp)                                #148.7[spill]
        movsd     .L_2il0floatpacket.1(%rip), %xmm0             #148.7
        movsd     .L_2il0floatpacket.0(%rip), %xmm1             #148.7
                                # LOE r9 r12 edx ecx esi r10d r11d bl xmm0 xmm1
..B1.195:                       # Preds ..B1.197 ..B1.194
                                # Execution count [3.24e+00]
        xorl      %r14d, %r14d                                  #148.7
                                # LOE r9 r12 r14 edx ecx esi r10d r11d bl xmm0 xmm1
..B1.196:                       # Preds ..B1.316 ..B1.195
                                # Execution count [1.80e+01]
        imull     $2549, %edx, %r8d                             #148.7
        imull     $2508, %r10d, %edi                            #148.7
        imull     $2549, %esi, %esi                             #148.7
        movl      %r8d, %eax                                    #148.7
        sarl      $11, %eax                                     #148.7
        shrl      $20, %eax                                     #148.7
        addl      %r8d, %eax                                    #148.7
        sarl      $12, %eax                                     #148.7
        movl      %eax, %r15d                                   #148.7
        shll      $12, %r15d                                    #148.7
        subl      %r15d, %r8d                                   #148.7
        imull     $2508, %edx, %r15d                            #148.7
        addl      %r15d, %eax                                   #148.7
        imull     $2549, %r10d, %r15d                           #148.7
        imull     $322, %r10d, %r10d                            #148.7
        addl      %r15d, %eax                                   #148.7
        movl      %eax, %r15d                                   #148.7
        sarl      $11, %r15d                                    #148.7
        shrl      $20, %r15d                                    #148.7
        addl      %eax, %r15d                                   #148.7
        sarl      $12, %r15d                                    #148.7
        movl      %r15d, %r13d                                  #148.7
        shll      $12, %r13d                                    #148.7
        subl      %r13d, %eax                                   #148.7
        imull     $322, %edx, %r13d                             #148.7
        imull     $494, %edx, %edx                              #148.7
        addl      %r13d, %r15d                                  #148.7
        imull     $2549, %r11d, %r13d                           #148.7
        imull     $2508, %r11d, %r11d                           #148.7
        addl      %r13d, %edi                                   #148.7
        addl      %esi, %r11d                                   #148.7
        addl      %edi, %r15d                                   #148.7
        movl      %r15d, %r13d                                  #148.7
        sarl      $11, %r13d                                    #148.7
        shrl      $20, %r13d                                    #148.7
        addl      %r15d, %r13d                                  #148.7
        sarl      $12, %r13d                                    #148.7
        movl      %r13d, %edi                                   #148.7
        addl      %edx, %r13d                                   #148.7
        addl      %r10d, %r13d                                  #148.7
        addl      %r11d, %r13d                                  #148.7
        shll      $12, %edi                                     #148.7
        movl      %r13d, %esi                                   #148.7
        subl      %edi, %r15d                                   #148.7
        andl      $-2147479553, %esi                            #148.7
        jge       ..B1.316      # Prob 50%                      #148.7
                                # LOE r9 r12 r14 eax ecx esi r8d r15d bl xmm0 xmm1
..B1.317:                       # Preds ..B1.196
                                # Execution count [1.80e+01]
        subl      $1, %esi                                      #148.7
        orl       $-4096, %esi                                  #148.7
        incl      %esi                                          #148.7
                                # LOE r9 r12 r14 eax ecx esi r8d r15d bl xmm0 xmm1
..B1.316:                       # Preds ..B1.196 ..B1.317
                                # Execution count [1.80e+01]
        pxor      %xmm5, %xmm5                                  #148.7
        pxor      %xmm2, %xmm2                                  #148.7
        cvtsi2sd  %r8d, %xmm5                                   #148.7
        cvtsi2sd  %eax, %xmm2                                   #148.7
        mulsd     %xmm1, %xmm5                                  #148.7
        pxor      %xmm3, %xmm3                                  #148.7
        pxor      %xmm4, %xmm4                                  #148.7
        cvtsi2sd  %r15d, %xmm3                                  #148.7
        cvtsi2sd  %esi, %xmm4                                   #148.7
        addsd     %xmm2, %xmm5                                  #148.7
        mulsd     %xmm1, %xmm5                                  #148.7
        movl      %r15d, %r11d                                  #148.7
        movl      %eax, %r10d                                   #148.7
        movl      %r8d, %edx                                    #148.7
        addsd     %xmm3, %xmm5                                  #148.7
        mulsd     %xmm1, %xmm5                                  #148.7
        addsd     %xmm4, %xmm5                                  #148.7
        mulsd     %xmm1, %xmm5                                  #148.7
        subsd     %xmm0, %xmm5                                  #148.7
        movsd     %xmm5, (%r9,%r14,8)                           #148.7
        incq      %r14                                          #148.7
        cmpq      $1500, %r14                                   #148.7
        jb        ..B1.196      # Prob 82%                      #148.7
                                # LOE r9 r12 r14 eax edx ecx esi r8d r10d r11d r15d bl xmm0 xmm1
..B1.197:                       # Preds ..B1.316
                                # Execution count [3.24e+00]
        incl      %ecx                                          #148.7
        addq      $12008, %r9                                   #148.7
        cmpl      $1500, %ecx                                   #148.7
        jb        ..B1.195      # Prob 91%                      #148.7
                                # LOE r9 r12 eax edx ecx esi r8d r10d r11d r15d bl xmm0 xmm1
..B1.198:                       # Preds ..B1.197
                                # Execution count [7.20e-01]
        movq      216(%rsp), %r14                               #[spill]
        movq      40(%rsp), %r13                                #[spill]
        movl      %r8d, 12(%rsp)                                #148.7
        movl      %eax, 8(%rsp)                                 #148.7
        movl      %r15d, 4(%rsp)                                #148.7
        movl      %esi, (%rsp)                                  #148.7
        movsd     .L_2il0floatpacket.10(%rip), %xmm0            #152.12
        testb     %bl, %bl                                      #150.3
        je        ..B1.201      # Prob 50%                      #150.3
                                # LOE r12 r13 r14 bl xmm0
..B1.199:                       # Preds ..B1.198
                                # Execution count [7.20e-01]
        testb     $7, %bl                                       #150.3
        jne       ..B1.299      # Prob 10%                      #150.3
                                # LOE r12 r13 r14 xmm0
..B1.200:                       # Preds ..B1.199
                                # Execution count [7.20e-01]
        movsd     %xmm0, (%r14)                                 #152.5
        movb      $1, %bl                                       #150.3
                                # LOE r12 r13 r14 bl xmm0
..B1.201:                       # Preds ..B1.198 ..B1.200
                                # Execution count [7.20e-01]
        movzbl    %bl, %edx                                     #150.3
        negb      %bl                                           #150.3
        addb      $4, %bl                                       #150.3
        andb      $7, %bl                                       #150.3
        movzbl    %bl, %eax                                     #150.3
        negq      %rax                                          #150.3
        movups    .L_2il0floatpacket.2(%rip), %xmm1             #152.12
        addq      $1500, %rax                                   #150.3
                                # LOE rax rdx r12 r13 r14 xmm0 xmm1
..B1.202:                       # Preds ..B1.202 ..B1.201
                                # Execution count [1.08e+03]
        movups    %xmm1, (%r14,%rdx,8)                          #152.5
        movups    %xmm1, 16(%r14,%rdx,8)                        #152.5
        movups    %xmm1, 32(%r14,%rdx,8)                        #152.5
        movups    %xmm1, 48(%r14,%rdx,8)                        #152.5
        addq      $8, %rdx                                      #150.3
        cmpq      %rax, %rdx                                    #150.3
        jb        ..B1.202      # Prob 99%                      #150.3
                                # LOE rax rdx r12 r13 r14 xmm0 xmm1
..B1.204:                       # Preds ..B1.202 ..B1.299
                                # Execution count [7.20e-01]
        cmpq      $1500, %rax                                   #150.3
        jae       ..B1.208      # Prob 0%                       #150.3
                                # LOE rax r12 r13 r14 xmm0
..B1.206:                       # Preds ..B1.204 ..B1.206
                                # Execution count [1.08e+03]
        movsd     %xmm0, (%r14,%rax,8)                          #152.5
        incq      %rax                                          #150.3
        cmpq      $1500, %rax                                   #150.3
        jb        ..B1.206      # Prob 99%                      #150.3
                                # LOE rax r12 r13 r14 xmm0
..B1.208:                       # Preds ..B1.206 ..B1.204
                                # Execution count [3.56e-03]
        movq      %r13, %rdi                                    #155.3
        xorl      %esi, %esi                                    #155.3
        movl      $12000, %edx                                  #155.3
        call      _intel_fast_memset                            #155.3
                                # LOE r12 r13 r14
..B1.209:                       # Preds ..B1.208
                                # Execution count [7.12e-01]
        movq      %r13, %rbx                                    #155.3
        xorl      %esi, %esi                                    #158.5
        andq      $15, %rbx                                     #155.3
        xorl      %r9d, %r9d                                    #158.5
        movl      %ebx, %r8d                                    #155.3
        xorl      %edx, %edx                                    #158.5
        movsd     .L_2il0floatpacket.10(%rip), %xmm0            #
        andl      $7, %r8d                                      #155.3
        xorl      %ecx, %ecx                                    #158.5
                                # LOE rcx r9 r12 r13 r14 edx ebx esi r8d xmm0
..B1.210:                       # Preds ..B1.225 ..B1.209
                                # Execution count [1.07e+03]
        movsd     (%r14,%r9,8), %xmm2                           #160.38
        movl      %ebx, %r10d                                   #155.3
        testl     %ebx, %ebx                                    #155.3
        je        ..B1.214      # Prob 50%                      #155.3
                                # LOE rcx r9 r10 r12 r13 r14 edx ebx esi r8d xmm0 xmm2
..B1.211:                       # Preds ..B1.210
                                # Execution count [1.07e+03]
        testl     %r8d, %r8d                                    #155.3
        jne       ..B1.300      # Prob 10%                      #155.3
                                # LOE rcx r9 r12 r13 r14 edx ebx esi r8d xmm0 xmm2
..B1.212:                       # Preds ..B1.211
                                # Execution count [1.07e+03]
        movsd     (%rcx,%r12), %xmm1                            #160.25
        movl      $1, %r10d                                     #155.3
        mulsd     %xmm2, %xmm1                                  #160.38
        addsd     (%r13), %xmm1                                 #160.38
        movsd     %xmm1, (%r13)                                 #160.7
                                # LOE rcx r9 r10 r12 r13 r14 edx ebx esi r8d xmm0 xmm2
..B1.214:                       # Preds ..B1.210 ..B1.212
                                # Execution count [1.62e+06]
        movl      %r10d, %eax                                   #155.3
        lea       (%rdx,%r10), %edi                             #160.31
        negl      %eax                                          #155.3
        lea       (%rcx,%r12), %r15                             #160.25
        movslq    %edi, %rdi                                    #160.31
        addl      $4, %eax                                      #155.3
        andl      $7, %eax                                      #155.3
        negl      %eax                                          #155.3
        addl      $1500, %eax                                   #155.3
        movl      %eax, %r11d                                   #155.3
        lea       (%r12,%rdi,8), %rdi                           #160.25
        testq     $15, %rdi                                     #155.3
        je        ..B1.218      # Prob 60%                      #155.3
                                # LOE rcx r9 r10 r11 r12 r13 r14 r15 eax edx ebx esi r8d xmm0 xmm2
..B1.215:                       # Preds ..B1.214
                                # Execution count [1.07e+03]
        movaps    %xmm2, %xmm1                                  #160.38
        movl      %r10d, %r10d                                  #155.3
        unpcklpd  %xmm1, %xmm1                                  #160.38
        .align    16,0x90
                                # LOE rcx r9 r10 r11 r12 r13 r14 r15 eax edx ebx esi r8d xmm0 xmm1 xmm2
..B1.216:                       # Preds ..B1.216 ..B1.215
                                # Execution count [1.60e+06]
        movups    (%r15,%r10,8), %xmm3                          #160.25
        movups    16(%r15,%r10,8), %xmm4                        #160.25
        movups    32(%r15,%r10,8), %xmm5                        #160.25
        movups    48(%r15,%r10,8), %xmm6                        #160.25
        mulpd     %xmm1, %xmm3                                  #160.38
        mulpd     %xmm1, %xmm4                                  #160.38
        mulpd     %xmm1, %xmm5                                  #160.38
        mulpd     %xmm1, %xmm6                                  #160.38
        addpd     (%r13,%r10,8), %xmm3                          #160.38
        addpd     16(%r13,%r10,8), %xmm4                        #160.38
        addpd     32(%r13,%r10,8), %xmm5                        #160.38
        addpd     48(%r13,%r10,8), %xmm6                        #160.38
        movups    %xmm3, (%r13,%r10,8)                          #160.7
        movups    %xmm4, 16(%r13,%r10,8)                        #160.7
        movups    %xmm5, 32(%r13,%r10,8)                        #160.7
        movups    %xmm6, 48(%r13,%r10,8)                        #160.7
        addq      $8, %r10                                      #155.3
        cmpq      %r11, %r10                                    #155.3
        jb        ..B1.216      # Prob 99%                      #155.3
        jmp       ..B1.221      # Prob 100%                     #155.3
                                # LOE rcx r9 r10 r11 r12 r13 r14 r15 eax edx ebx esi r8d xmm0 xmm1 xmm2
..B1.218:                       # Preds ..B1.214
                                # Execution count [1.07e+03]
        movaps    %xmm2, %xmm1                                  #160.38
        unpcklpd  %xmm1, %xmm1                                  #160.38
        .align    16,0x90
                                # LOE rcx r9 r10 r11 r12 r13 r14 r15 eax edx ebx esi r8d xmm0 xmm1 xmm2
..B1.219:                       # Preds ..B1.219 ..B1.218
                                # Execution count [1.60e+06]
        movups    (%r15,%r10,8), %xmm3                          #160.25
        movups    16(%r15,%r10,8), %xmm4                        #160.25
        movups    32(%r15,%r10,8), %xmm5                        #160.25
        movups    48(%r15,%r10,8), %xmm6                        #160.25
        mulpd     %xmm1, %xmm3                                  #160.38
        mulpd     %xmm1, %xmm4                                  #160.38
        mulpd     %xmm1, %xmm5                                  #160.38
        mulpd     %xmm1, %xmm6                                  #160.38
        addpd     (%r13,%r10,8), %xmm3                          #160.38
        addpd     16(%r13,%r10,8), %xmm4                        #160.38
        addpd     32(%r13,%r10,8), %xmm5                        #160.38
        addpd     48(%r13,%r10,8), %xmm6                        #160.38
        movups    %xmm3, (%r13,%r10,8)                          #160.7
        movups    %xmm4, 16(%r13,%r10,8)                        #160.7
        movups    %xmm5, 32(%r13,%r10,8)                        #160.7
        movups    %xmm6, 48(%r13,%r10,8)                        #160.7
        addq      $8, %r10                                      #155.3
        cmpq      %r11, %r10                                    #155.3
        jb        ..B1.219      # Prob 99%                      #155.3
                                # LOE rcx r9 r10 r11 r12 r13 r14 r15 eax edx ebx esi r8d xmm0 xmm1 xmm2
..B1.221:                       # Preds ..B1.219 ..B1.216 ..B1.300
                                # Execution count [1.07e+03]
        xorl      %edi, %edi                                    #155.3
        lea       1(%rax), %r10d                                #155.3
        xorl      %r15d, %r15d                                  #155.3
        cmpl      $1500, %r10d                                  #155.3
        ja        ..B1.225      # Prob 0%                       #155.3
                                # LOE rcx r9 r12 r13 r14 r15 eax edx ebx esi edi r8d xmm0 xmm2
..B1.222:                       # Preds ..B1.221
                                # Execution count [1.07e+03]
        movq      %r14, 216(%rsp)                               #155.3[spill]
        lea       (%rax,%rdx), %r10d                            #160.31
        movslq    %r10d, %r10                                   #160.31
        lea       (%r12,%r10,8), %r11                           #160.25
        movl      %eax, %r10d                                   #155.3
        negl      %r10d                                         #155.3
        addl      $1500, %r10d                                  #155.3
                                # LOE rcx r9 r11 r12 r13 r15 eax edx ebx esi edi r8d r10d xmm0 xmm2
..B1.223:                       # Preds ..B1.223 ..B1.222
                                # Execution count [1.60e+06]
        movsd     (%r11,%r15,8), %xmm1                          #160.25
        lea       (%rax,%rdi), %r14d                            #157.5
        mulsd     %xmm2, %xmm1                                  #160.38
        incl      %edi                                          #155.3
        movslq    %r14d, %r14                                   #157.5
        incq      %r15                                          #155.3
        addsd     (%r13,%r14,8), %xmm1                          #160.38
        movsd     %xmm1, (%r13,%r14,8)                          #160.7
        cmpl      %r10d, %edi                                   #155.3
        jb        ..B1.223      # Prob 99%                      #155.3
                                # LOE rcx r9 r11 r12 r13 r15 eax edx ebx esi edi r8d r10d xmm0 xmm2
..B1.224:                       # Preds ..B1.223
                                # Execution count [1.07e+03]
        movq      216(%rsp), %r14                               #[spill]
                                # LOE rcx r9 r12 r13 r14 edx ebx esi r8d xmm0
..B1.225:                       # Preds ..B1.221 ..B1.224
                                # Execution count [1.07e+03]
        incl      %esi                                          #158.5
        addl      $1501, %edx                                   #158.5
        addq      $12008, %rcx                                  #158.5
        incq      %r9                                           #158.5
        cmpl      $1500, %esi                                   #158.5
        jb        ..B1.210      # Prob 99%                      #158.5
                                # LOE rcx r9 r12 r13 r14 edx ebx esi r8d xmm0
..B1.226:                       # Preds ..B1.225
                                # Execution count [7.14e-01]
        movq      56(%rsp), %r9                                 #164.3[spill]
        andq      $15, %r9                                      #164.3
        movl      %r9d, %edx                                    #164.3
        movl      %edx, %eax                                    #164.3
        testl     %r9d, %r9d                                    #164.3
        je        ..B1.229      # Prob 50%                      #164.3
                                # LOE r12 r13 r14 eax edx r9d xmm0
..B1.227:                       # Preds ..B1.226
                                # Execution count [7.14e-01]
        testl     $7, %r9d                                      #164.3
        jne       ..B1.302      # Prob 10%                      #164.3
                                # LOE r12 r13 r14 eax r9d xmm0
..B1.228:                       # Preds ..B1.227
                                # Execution count [7.14e-01]
        movq      56(%rsp), %rcx                                #166.5[spill]
        movl      $1, %edx                                      #164.3
        movsd     (%r13), %xmm1                                 #166.17
        xorps     .L_2il0floatpacket.12(%rip), %xmm1            #166.17
        movsd     %xmm1, (%rcx)                                 #166.5
                                # LOE r12 r13 r14 eax edx r9d xmm0
..B1.229:                       # Preds ..B1.228 ..B1.226
                                # Execution count [1.08e+03]
        movl      %edx, %ecx                                    #166.5
        negl      %edx                                          #164.3
        addl      $4, %edx                                      #164.3
        andl      $7, %edx                                      #164.3
        negq      %rdx                                          #164.3
        lea       (%r13,%rcx,8), %rbx                           #166.17
        addq      $1500, %rdx                                   #164.3
        testq     $15, %rbx                                     #164.3
        je        ..B1.233      # Prob 60%                      #164.3
                                # LOE rdx rcx r12 r13 r14 eax r9d xmm0
..B1.230:                       # Preds ..B1.229
                                # Execution count [7.14e-01]
        movq      56(%rsp), %rbx                                #[spill]
        .align    16,0x90
                                # LOE rdx rcx rbx r12 r13 r14 eax r9d xmm0
..B1.231:                       # Preds ..B1.231 ..B1.230
                                # Execution count [1.08e+03]
        movups    (%r13,%rcx,8), %xmm1                          #166.17
        movups    16(%r13,%rcx,8), %xmm2                        #166.17
        movups    32(%r13,%rcx,8), %xmm3                        #166.17
        movups    48(%r13,%rcx,8), %xmm4                        #166.17
        xorps     .L_2il0floatpacket.5(%rip), %xmm1             #166.17
        xorps     .L_2il0floatpacket.5(%rip), %xmm2             #166.17
        xorps     .L_2il0floatpacket.5(%rip), %xmm3             #166.17
        xorps     .L_2il0floatpacket.5(%rip), %xmm4             #166.17
        movups    %xmm1, (%rbx,%rcx,8)                          #166.5
        movups    %xmm2, 16(%rbx,%rcx,8)                        #166.5
        movups    %xmm3, 32(%rbx,%rcx,8)                        #166.5
        movups    %xmm4, 48(%rbx,%rcx,8)                        #166.5
        addq      $8, %rcx                                      #164.3
        cmpq      %rdx, %rcx                                    #164.3
        jb        ..B1.231      # Prob 99%                      #164.3
        jmp       ..B1.236      # Prob 100%                     #164.3
                                # LOE rdx rcx rbx r12 r13 r14 eax r9d xmm0
..B1.233:                       # Preds ..B1.229
                                # Execution count [7.14e-01]
        movq      56(%rsp), %rbx                                #[spill]
        .align    16,0x90
                                # LOE rdx rcx rbx r12 r13 r14 eax r9d xmm0
..B1.234:                       # Preds ..B1.234 ..B1.233
                                # Execution count [1.08e+03]
        movups    (%r13,%rcx,8), %xmm1                          #166.17
        movups    16(%r13,%rcx,8), %xmm2                        #166.17
        movups    32(%r13,%rcx,8), %xmm3                        #166.17
        movups    48(%r13,%rcx,8), %xmm4                        #166.17
        xorps     .L_2il0floatpacket.5(%rip), %xmm1             #166.17
        xorps     .L_2il0floatpacket.5(%rip), %xmm2             #166.17
        xorps     .L_2il0floatpacket.5(%rip), %xmm3             #166.17
        xorps     .L_2il0floatpacket.5(%rip), %xmm4             #166.17
        movups    %xmm1, (%rbx,%rcx,8)                          #166.5
        movups    %xmm2, 16(%rbx,%rcx,8)                        #166.5
        movups    %xmm3, 32(%rbx,%rcx,8)                        #166.5
        movups    %xmm4, 48(%rbx,%rcx,8)                        #166.5
        addq      $8, %rcx                                      #164.3
        cmpq      %rdx, %rcx                                    #164.3
        jb        ..B1.234      # Prob 99%                      #164.3
                                # LOE rdx rcx rbx r12 r13 r14 eax r9d xmm0
..B1.236:                       # Preds ..B1.234 ..B1.231 ..B1.302
                                # Execution count [7.14e-01]
        cmpq      $1500, %rdx                                   #164.3
        jae       ..B1.240      # Prob 0%                       #164.3
                                # LOE rdx r12 r13 r14 eax r9d xmm0
..B1.237:                       # Preds ..B1.236
                                # Execution count [7.14e-01]
        movq      56(%rsp), %rcx                                #[spill]
                                # LOE rdx rcx r12 r13 r14 eax r9d xmm0
..B1.238:                       # Preds ..B1.238 ..B1.237
                                # Execution count [1.08e+03]
        movsd     (%r13,%rdx,8), %xmm1                          #166.17
        xorps     .L_2il0floatpacket.12(%rip), %xmm1            #166.17
        movsd     %xmm1, (%rcx,%rdx,8)                          #166.5
        incq      %rdx                                          #164.3
        cmpq      $1500, %rdx                                   #164.3
        jb        ..B1.238      # Prob 99%                      #164.3
                                # LOE rdx rcx r12 r13 r14 eax r9d xmm0
..B1.240:                       # Preds ..B1.238 ..B1.236
                                # Execution count [7.14e-01]
        xorl      %r10d, %r10d                                  #167.5
        movl      %r9d, %r8d                                    #164.3
        xorl      %ebx, %ebx                                    #167.5
        andl      $7, %r8d                                      #164.3
        movl      %eax, (%rsp)                                  #167.5[spill]
        xorl      %r11d, %r11d                                  #167.5
        movq      %r14, 216(%rsp)                               #167.5[spill]
        xorl      %esi, %esi                                    #167.5
        movq      %r13, 40(%rsp)                                #167.5[spill]
        movq      56(%rsp), %rcx                                #167.5[spill]
        movq      224(%rsp), %rdx                               #167.5[spill]
                                # LOE rdx rcx rbx rsi r12 r8d r9d r10d r11d xmm0
..B1.241:                       # Preds ..B1.256 ..B1.240
                                # Execution count [1.07e+03]
        movsd     (%rdx,%rbx,8), %xmm2                          #169.42
        movl      (%rsp), %r13d                                 #164.3[spill]
        testl     %r9d, %r9d                                    #164.3
        je        ..B1.245      # Prob 50%                      #164.3
                                # LOE rdx rcx rbx rsi r12 r13 r8d r9d r10d r11d xmm0 xmm2
..B1.242:                       # Preds ..B1.241
                                # Execution count [1.07e+03]
        testl     %r8d, %r8d                                    #164.3
        jne       ..B1.301      # Prob 10%                      #164.3
                                # LOE rdx rcx rbx rsi r12 r8d r9d r10d r11d xmm0 xmm2
..B1.243:                       # Preds ..B1.242
                                # Execution count [1.07e+03]
        movsd     (%rsi,%r12), %xmm1                            #169.29
        movl      $1, %r13d                                     #164.3
        mulsd     %xmm2, %xmm1                                  #169.42
        addsd     (%rcx), %xmm1                                 #169.42
        movsd     %xmm1, (%rcx)                                 #169.7
                                # LOE rdx rcx rbx rsi r12 r13 r8d r9d r10d r11d xmm0 xmm2
..B1.245:                       # Preds ..B1.241 ..B1.243
                                # Execution count [1.62e+06]
        movl      %r13d, %eax                                   #164.3
        lea       (%r11,%r13), %edi                             #169.35
        negl      %eax                                          #164.3
        lea       (%rsi,%r12), %r15                             #169.29
        movslq    %edi, %rdi                                    #169.35
        addl      $4, %eax                                      #164.3
        andl      $7, %eax                                      #164.3
        negl      %eax                                          #164.3
        addl      $1500, %eax                                   #164.3
        movl      %eax, %r14d                                   #164.3
        lea       (%r12,%rdi,8), %rdi                           #169.29
        testq     $15, %rdi                                     #164.3
        je        ..B1.249      # Prob 60%                      #164.3
                                # LOE rdx rcx rbx rsi r12 r13 r14 r15 eax r8d r9d r10d r11d xmm0 xmm2
..B1.246:                       # Preds ..B1.245
                                # Execution count [1.07e+03]
        movaps    %xmm2, %xmm1                                  #169.42
        movl      %r13d, %r13d                                  #164.3
        unpcklpd  %xmm1, %xmm1                                  #169.42
        .align    16,0x90
                                # LOE rdx rcx rbx rsi r12 r13 r14 r15 eax r8d r9d r10d r11d xmm0 xmm1 xmm2
..B1.247:                       # Preds ..B1.247 ..B1.246
                                # Execution count [1.61e+06]
        movups    (%r15,%r13,8), %xmm3                          #169.29
        movups    16(%r15,%r13,8), %xmm4                        #169.29
        movups    32(%r15,%r13,8), %xmm5                        #169.29
        movups    48(%r15,%r13,8), %xmm6                        #169.29
        mulpd     %xmm1, %xmm3                                  #169.42
        mulpd     %xmm1, %xmm4                                  #169.42
        mulpd     %xmm1, %xmm5                                  #169.42
        mulpd     %xmm1, %xmm6                                  #169.42
        addpd     (%rcx,%r13,8), %xmm3                          #169.42
        addpd     16(%rcx,%r13,8), %xmm4                        #169.42
        addpd     32(%rcx,%r13,8), %xmm5                        #169.42
        addpd     48(%rcx,%r13,8), %xmm6                        #169.42
        movups    %xmm3, (%rcx,%r13,8)                          #169.7
        movups    %xmm4, 16(%rcx,%r13,8)                        #169.7
        movups    %xmm5, 32(%rcx,%r13,8)                        #169.7
        movups    %xmm6, 48(%rcx,%r13,8)                        #169.7
        addq      $8, %r13                                      #164.3
        cmpq      %r14, %r13                                    #164.3
        jb        ..B1.247      # Prob 99%                      #164.3
        jmp       ..B1.252      # Prob 100%                     #164.3
                                # LOE rdx rcx rbx rsi r12 r13 r14 r15 eax r8d r9d r10d r11d xmm0 xmm1 xmm2
..B1.249:                       # Preds ..B1.245
                                # Execution count [1.07e+03]
        movaps    %xmm2, %xmm1                                  #169.42
        unpcklpd  %xmm1, %xmm1                                  #169.42
        .align    16,0x90
                                # LOE rdx rcx rbx rsi r12 r13 r14 r15 eax r8d r9d r10d r11d xmm0 xmm1 xmm2
..B1.250:                       # Preds ..B1.250 ..B1.249
                                # Execution count [1.61e+06]
        movups    (%r15,%r13,8), %xmm3                          #169.29
        movups    16(%r15,%r13,8), %xmm4                        #169.29
        movups    32(%r15,%r13,8), %xmm5                        #169.29
        movups    48(%r15,%r13,8), %xmm6                        #169.29
        mulpd     %xmm1, %xmm3                                  #169.42
        mulpd     %xmm1, %xmm4                                  #169.42
        mulpd     %xmm1, %xmm5                                  #169.42
        mulpd     %xmm1, %xmm6                                  #169.42
        addpd     (%rcx,%r13,8), %xmm3                          #169.42
        addpd     16(%rcx,%r13,8), %xmm4                        #169.42
        addpd     32(%rcx,%r13,8), %xmm5                        #169.42
        addpd     48(%rcx,%r13,8), %xmm6                        #169.42
        movups    %xmm3, (%rcx,%r13,8)                          #169.7
        movups    %xmm4, 16(%rcx,%r13,8)                        #169.7
        movups    %xmm5, 32(%rcx,%r13,8)                        #169.7
        movups    %xmm6, 48(%rcx,%r13,8)                        #169.7
        addq      $8, %r13                                      #164.3
        cmpq      %r14, %r13                                    #164.3
        jb        ..B1.250      # Prob 99%                      #164.3
                                # LOE rdx rcx rbx rsi r12 r13 r14 r15 eax r8d r9d r10d r11d xmm0 xmm1 xmm2
..B1.252:                       # Preds ..B1.250 ..B1.247 ..B1.301
                                # Execution count [1.07e+03]
        xorl      %edi, %edi                                    #164.3
        lea       1(%rax), %r13d                                #164.3
        xorl      %r15d, %r15d                                  #164.3
        cmpl      $1500, %r13d                                  #164.3
        ja        ..B1.256      # Prob 0%                       #164.3
                                # LOE rdx rcx rbx rsi r12 r15 eax edi r8d r9d r10d r11d xmm0 xmm2
..B1.253:                       # Preds ..B1.252
                                # Execution count [1.07e+03]
        lea       (%rax,%r11), %r13d                            #169.35
        movslq    %r13d, %r13                                   #169.35
        lea       (%r12,%r13,8), %r14                           #169.29
        movl      %eax, %r13d                                   #164.3
        negl      %r13d                                         #164.3
        addl      $1500, %r13d                                  #164.3
                                # LOE rcx rbx rsi r12 r14 r15 eax edi r8d r9d r10d r11d r13d xmm0 xmm2
..B1.254:                       # Preds ..B1.254 ..B1.253
                                # Execution count [1.61e+06]
        movsd     (%r14,%r15,8), %xmm1                          #169.29
        lea       (%rax,%rdi), %edx                             #166.5
        mulsd     %xmm2, %xmm1                                  #169.42
        incl      %edi                                          #164.3
        movslq    %edx, %rdx                                    #166.5
        incq      %r15                                          #164.3
        addsd     (%rcx,%rdx,8), %xmm1                          #169.42
        movsd     %xmm1, (%rcx,%rdx,8)                          #169.7
        cmpl      %r13d, %edi                                   #164.3
        jb        ..B1.254      # Prob 99%                      #164.3
                                # LOE rcx rbx rsi r12 r14 r15 eax edi r8d r9d r10d r11d r13d xmm0 xmm2
..B1.255:                       # Preds ..B1.254
                                # Execution count [1.07e+03]
        movq      224(%rsp), %rdx                               #[spill]
                                # LOE rdx rcx rbx rsi r12 r8d r9d r10d r11d xmm0
..B1.256:                       # Preds ..B1.252 ..B1.255
                                # Execution count [1.07e+03]
        incl      %r10d                                         #167.5
        addl      $1501, %r11d                                  #167.5
        addq      $12008, %rsi                                  #167.5
        incq      %rbx                                          #167.5
        cmpl      $1500, %r10d                                  #167.5
        jb        ..B1.241      # Prob 99%                      #167.5
                                # LOE rdx rcx rbx rsi r12 r8d r9d r10d r11d xmm0
..B1.257:                       # Preds ..B1.256
                                # Execution count [7.21e-01]
        movq      216(%rsp), %r14                               #[spill]
        xorl      %edx, %edx                                    #174.3
        pxor      %xmm1, %xmm1                                  #173.3
        xorl      %eax, %eax                                    #174.3
        movsd     %xmm1, 8(%rsp)                                #173.3[spill]
        movq      40(%rsp), %r13                                #[spill]
        movaps    %xmm1, %xmm3                                  #174.3
        movq      56(%rsp), %rcx                                #174.3[spill]
                                # LOE rax rcx r12 r13 r14 edx xmm0 xmm3
..B1.258:                       # Preds ..B1.258 ..B1.257
                                # Execution count [5.41e+02]
        movsd     (%rax,%rcx), %xmm1                            #176.46
        incl      %edx                                          #174.3
        andps     .L_2il0floatpacket.11(%rip), %xmm1            #176.37
        movsd     8(%rax,%rcx), %xmm2                           #176.46
        addq      $16, %rax                                     #174.3
        andps     .L_2il0floatpacket.11(%rip), %xmm2            #176.37
        maxsd     %xmm1, %xmm3                                  #176.5
        comisd    %xmm2, %xmm3                                  #176.5
        ja        ..L142        # Prob 50%                      #176.5
        movaps    %xmm2, %xmm3                                  #176.5
..L142:                                                         #
        cmpl      $750, %edx                                    #174.3
        jb        ..B1.258      # Prob 99%                      #174.3
                                # LOE rax rcx r12 r13 r14 edx xmm0 xmm3
..B1.259:                       # Preds ..B1.258
                                # Execution count [7.21e-01]
        movsd     %xmm3, 8(%rsp)                                #[spill]
        xorl      %edx, %edx                                    #180.3
        pxor      %xmm1, %xmm1                                  #179.3
        xorl      %eax, %eax                                    #180.3
        movsd     %xmm1, 40(%rsp)                               #179.3[spill]
        movaps    %xmm1, %xmm3                                  #180.3
        movq      224(%rsp), %rcx                               #180.3[spill]
                                # LOE rax rcx r12 r13 r14 edx xmm0 xmm3
..B1.260:                       # Preds ..B1.260 ..B1.259
                                # Execution count [5.41e+02]
        movsd     (%rax,%rcx), %xmm1                            #182.38
        incl      %edx                                          #180.3
        andps     .L_2il0floatpacket.11(%rip), %xmm1            #182.29
        movsd     8(%rax,%rcx), %xmm2                           #182.38
        addq      $16, %rax                                     #180.3
        andps     .L_2il0floatpacket.11(%rip), %xmm2            #182.29
        maxsd     %xmm1, %xmm3                                  #182.5
        comisd    %xmm2, %xmm3                                  #182.5
        ja        ..L146        # Prob 50%                      #182.5
        movaps    %xmm2, %xmm3                                  #182.5
..L146:                                                         #
        cmpl      $750, %edx                                    #180.3
        jb        ..B1.260      # Prob 99%                      #180.3
                                # LOE rax rcx r12 r13 r14 edx xmm0 xmm3
..B1.261:                       # Preds ..B1.260
                                # Execution count [6.49e-01]
        movsd     %xmm0, (%rsp)                                 #185.9[spill]
        movsd     %xmm3, 40(%rsp)                               #[spill]
        movaps    %xmm0, %xmm2                                  #185.9
        movsd     .L_2il0floatpacket.1(%rip), %xmm3             #185.9
                                # LOE r12 r13 r14 xmm0 xmm2 xmm3
..B1.262:                       # Preds ..B1.262 ..B1.261
                                # Execution count [3.60e+00]
        mulsd     %xmm3, %xmm2                                  #185.9
        movaps    %xmm0, %xmm1                                  #185.9
        addsd     %xmm2, %xmm1                                  #185.9
        comisd    %xmm0, %xmm1                                  #185.9
        ja        ..B1.262      # Prob 82%                      #185.9
                                # LOE r12 r13 r14 xmm0 xmm2 xmm3
..B1.263:                       # Preds ..B1.262
                                # Execution count [7.21e-01]
        movsd     %xmm2, (%rsp)                                 #[spill]
        movsd     (%rsp), %xmm0                                 #185.9[spill]
        pxor      %xmm2, %xmm2                                  #190.14
        movsd     32(%rsp), %xmm1                               #190.14[spill]
        addsd     %xmm0, %xmm0                                  #185.9
        comisd    %xmm2, %xmm1                                  #190.14
        movsd     %xmm0, (%rsp)                                 #185.9[spill]
        jbe       ..B1.266      # Prob 50%                      #190.14
                                # LOE r12 r13 r14
..B1.264:                       # Preds ..B1.263
                                # Execution count [3.60e-01]
        movsd     .L_2il0floatpacket.4(%rip), %xmm0             #192.33
        mulsd     32(%rsp), %xmm0                               #192.33[spill]
        movsd     .L_2il0floatpacket.6(%rip), %xmm1             #192.33
        divsd     %xmm0, %xmm1                                  #192.33
        movsd     %xmm1, 72(%rsp)                               #192.33[spill]
                                # LOE r12 r13 r14
..B1.266:                       # Preds ..B1.263 ..B1.264
                                # Execution count [7.21e-01]
        movl      $10, %edi                                     #201.3
        call      putchar                                       #201.3
                                # LOE r12 r13 r14
..B1.267:                       # Preds ..B1.266
                                # Execution count [7.21e-01]
        movl      $il0_peep_printf_format_5, %edi               #202.3
        call      puts                                          #202.3
                                # LOE r12 r13 r14
..B1.268:                       # Preds ..B1.267
                                # Execution count [7.21e-01]
        movl      $10, %edi                                     #203.3
        call      putchar                                       #203.3
                                # LOE r12 r13 r14
..B1.269:                       # Preds ..B1.268
                                # Execution count [7.21e-01]
        movsd     8(%rsp), %xmm1                                #204.3[spill]
        movl      $.L_2__STRING.12, %edi                        #204.3
        movaps    %xmm1, %xmm0                                  #204.3
        movl      $5, %eax                                      #204.3
        divsd     .L_2il0floatpacket.7(%rip), %xmm0             #204.3
        divsd     64(%rsp), %xmm0                               #204.3[spill]
        divsd     40(%rsp), %xmm0                               #204.3[spill]
        movsd     (%rsp), %xmm2                                 #204.3[spill]
        divsd     %xmm2, %xmm0                                  #204.3
        movq      224(%rsp), %rdx                               #204.3[spill]
        movsd     (%rdx), %xmm3                                 #204.3
        movsd     11992(%rdx), %xmm4                            #204.3
..___tag_value_main.160:
#       printf(const char *__restrict__, ...)
        call      printf                                        #204.3
..___tag_value_main.161:
                                # LOE r12 r13 r14
..B1.270:                       # Preds ..B1.269
                                # Execution count [7.21e-01]
        movl      $10, %edi                                     #205.3
        call      putchar                                       #205.3
                                # LOE r12 r13 r14
..B1.271:                       # Preds ..B1.270
                                # Execution count [7.21e-01]
        movl      $il0_peep_printf_format_6, %edi               #206.3
        call      puts                                          #206.3
                                # LOE r12 r13 r14
..B1.272:                       # Preds ..B1.271
                                # Execution count [7.21e-01]
        movl      $10, %edi                                     #207.3
        call      putchar                                       #207.3
                                # LOE r12 r13 r14
..B1.273:                       # Preds ..B1.272
                                # Execution count [7.21e-01]
        movsd     32(%rsp), %xmm2                               #208.3[spill]
        movl      $.L_2__STRING.14, %edi                        #208.3
        movsd     72(%rsp), %xmm3                               #208.3[spill]
        movaps    %xmm2, %xmm5                                  #208.3
        movsd     .L_2il0floatpacket.8(%rip), %xmm4             #208.3
        movl      $6, %eax                                      #208.3
        divsd     %xmm3, %xmm4                                  #208.3
        divsd     .L_2il0floatpacket.9(%rip), %xmm5             #208.3
        movsd     16(%rsp), %xmm0                               #208.3[spill]
        movsd     24(%rsp), %xmm1                               #208.3[spill]
..___tag_value_main.165:
#       printf(const char *__restrict__, ...)
        call      printf                                        #208.3
..___tag_value_main.166:
                                # LOE r12 r13 r14
..B1.274:                       # Preds ..B1.273
                                # Execution count [7.21e-01]
        movq      %r12, %rdi                                    #211.3
#       free(void *)
        call      free                                          #211.3
                                # LOE r13 r14
..B1.275:                       # Preds ..B1.274
                                # Execution count [7.21e-01]
        movq      224(%rsp), %rdi                               #212.3[spill]
#       free(void *)
        call      free                                          #212.3
                                # LOE r13 r14
..B1.276:                       # Preds ..B1.275
                                # Execution count [7.21e-01]
        movq      128(%rsp), %rdi                               #213.3[spill]
#       free(void *)
        call      free                                          #213.3
                                # LOE r13 r14
..B1.277:                       # Preds ..B1.276
                                # Execution count [7.21e-01]
        movq      56(%rsp), %rdi                                #214.3[spill]
#       free(void *)
        call      free                                          #214.3
                                # LOE r13 r14
..B1.278:                       # Preds ..B1.277
                                # Execution count [7.21e-01]
        movq      %r13, %rdi                                    #215.3
#       free(void *)
        call      free                                          #215.3
                                # LOE r14
..B1.279:                       # Preds ..B1.278
                                # Execution count [7.21e-01]
        movq      %r14, %rdi                                    #216.3
#       free(void *)
        call      free                                          #216.3
                                # LOE
..B1.280:                       # Preds ..B1.279
                                # Execution count [7.21e-01]
        movl      $10, %edi                                     #220.3
        call      putchar                                       #220.3
                                # LOE
..B1.281:                       # Preds ..B1.280
                                # Execution count [7.21e-01]
        movl      $il0_peep_printf_format_7, %edi               #221.3
        call      puts                                          #221.3
                                # LOE
..B1.282:                       # Preds ..B1.281
                                # Execution count [7.21e-01]
        movl      $il0_peep_printf_format_8, %edi               #222.3
        call      puts                                          #222.3
                                # LOE
..B1.283:                       # Preds ..B1.282
                                # Execution count [7.21e-01]
        movl      $10, %edi                                     #224.3
        call      putchar                                       #224.3
                                # LOE
..B1.284:                       # Preds ..B1.283
                                # Execution count [7.21e-01]
        xorl      %edi, %edi                                    #225.3
#       time(time_t *)
        call      time                                          #225.3
                                # LOE rax
..B1.285:                       # Preds ..B1.284
                                # Execution count [7.21e-01]
        movq      %rax, (%rsp)                                  #225.3
        lea       (%rsp), %rdi                                  #225.3
#       localtime(const time_t *)
        call      localtime                                     #225.3
                                # LOE rax
..B1.333:                       # Preds ..B1.285
                                # Execution count [7.21e-01]
        movl      $time_buffer.959.0.14, %edi                   #225.3
        movl      $40, %esi                                     #225.3
        movl      $.L_2__STRING.16, %edx                        #225.3
        movq      %rax, %rcx                                    #225.3
#       strftime(char *__restrict__, size_t, const char *__restrict__, const struct tm *__restrict__)
        call      strftime                                      #225.3
                                # LOE
..B1.286:                       # Preds ..B1.333
                                # Execution count [7.21e-01]
        movl      $time_buffer.959.0.14, %edi                   #225.3
        call      puts                                          #225.3
                                # LOE
..B1.287:                       # Preds ..B1.286
                                # Execution count [7.21e-01]
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
..B1.288:                       # Preds ..B1.127 ..B1.128
                                # Execution count [2.80e-01]
        movl      $10, %edi                                     #124.5
        call      putchar                                       #124.5
                                # LOE
..B1.289:                       # Preds ..B1.288
                                # Execution count [2.80e-01]
        movl      $il0_peep_printf_format_9, %edi               #125.5
        call      puts                                          #125.5
                                # LOE
..B1.290:                       # Preds ..B1.289
                                # Execution count [2.80e-01]
        movl      $il0_peep_printf_format_10, %edi              #126.5
        call      puts                                          #126.5
                                # LOE
..B1.291:                       # Preds ..B1.290
                                # Execution count [2.80e-01]
        movl      $il0_peep_printf_format_11, %edi              #127.5
        call      puts                                          #127.5
                                # LOE
..B1.292:                       # Preds ..B1.291
                                # Execution count [2.80e-01]
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
..B1.293:                       # Preds ..B1.26
                                # Execution count [1.50e+02]: Infreq
        xorl      %esi, %esi                                    #99.5
        jmp       ..B1.31       # Prob 100%                     #99.5
                                # LOE rbx rsi r13 r14 r15 eax xmm0
..B1.294:                       # Preds ..B1.37
                                # Execution count [1.00e-01]: Infreq
        xorl      %eax, %eax                                    #105.3
        jmp       ..B1.42       # Prob 100%                     #105.3
                                # LOE rax r13 r14 r15 bl
..B1.295:                       # Preds ..B1.49
                                # Execution count [1.56e+02]: Infreq
        xorl      %eax, %eax                                    #110.3
        jmp       ..B1.59       # Prob 100%                     #110.3
                                # LOE rdx rcx r11 r14 r15 eax esi r8d r9d r10d xmm1
..B1.297:                       # Preds ..B1.83
                                # Execution count [4.78e-02]: Infreq
        xorl      %r12d, %r12d                                  #120.10
        jmp       ..B1.87       # Prob 100%                     #120.10
                                # LOE rax rsi r9 r12 r15 edx ecx ebx r8d r10d r11d xmm0 xmm1 xmm3
..B1.298:                       # Preds ..B1.95
                                # Execution count [2.82e-01]: Infreq
        xorl      %eax, %eax                                    #120.10
        jmp       ..B1.100      # Prob 100%                     #120.10
                                # LOE rax rsi r9 r12 r13 r14 edx ecx ebx r8d r10d r11d r15d xmm0 xmm1 xmm2 xmm3
..B1.299:                       # Preds ..B1.199
                                # Execution count [7.20e-02]: Infreq
        xorl      %eax, %eax                                    #150.3
        jmp       ..B1.204      # Prob 100%                     #150.3
                                # LOE rax r12 r13 r14 xmm0
..B1.300:                       # Preds ..B1.211
                                # Execution count [1.07e+02]: Infreq
        xorl      %eax, %eax                                    #155.3
        jmp       ..B1.221      # Prob 100%                     #155.3
                                # LOE rcx r9 r12 r13 r14 eax edx ebx esi r8d xmm0 xmm2
..B1.301:                       # Preds ..B1.242
                                # Execution count [1.07e+02]: Infreq
        xorl      %eax, %eax                                    #164.3
        jmp       ..B1.252      # Prob 100%                     #164.3
                                # LOE rdx rcx rbx rsi r12 eax r8d r9d r10d r11d xmm0 xmm2
..B1.302:                       # Preds ..B1.227
                                # Execution count [7.14e-02]: Infreq
        xorl      %edx, %edx                                    #164.3
        jmp       ..B1.236      # Prob 100%                     #164.3
                                # LOE rdx r12 r13 r14 eax r9d xmm0
..B1.304:                       # Preds ..B1.81
                                # Execution count [6.72e-01]: Infreq
        movslq    %r10d, %rsi                                   #120.10
        jmp       ..B1.106      # Prob 100%                     #120.10
                                # LOE rsi r9 r15 ecx ebx r8d r10d r11d xmm0 xmm1
..B1.305:                       # Preds ..B1.77
                                # Execution count [8.00e-01]: Infreq
        movl      %r10d, 32(%rsp)                               #120.10[spill]
        lea       1(%r10), %eax                                 #120.10
        addq      $12008, 104(%rsp)                             #120.10[spill]
        decl      %r11d                                         #120.10
        addq      $1501, 136(%rsp)                              #120.10[spill]
        incq      %r9                                           #120.10
        addq      $8, 112(%rsp)                                 #120.10[spill]
        movl      %eax, 120(%rsp)                               #120.10[spill]
        jmp       ..B1.125      # Prob 100%                     #120.10
        .align    16,0x90
                                # LOE r9 r15 r11d xmm0 xmm1
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.0:
	.section .rodata, "a"
	.align 16
	.align 8
.2.29_2.switchtab.144:
	.quad	..1.29_0.TAG.0
	.quad	..1.29_0.TAG.1
	.quad	..1.29_0.TAG.2
	.quad	..1.29_0.TAG.3
	.quad	..1.29_0.TAG.4
	.quad	..1.29_0.TAG.5
	.quad	..1.29_0.TAG.6
	.align 8
.2.29_2.switchtab.145:
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
..___tag_value_cpu_time.205:
..L206:
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
..___tag_value_daxpy.210:
..L211:
                                                        #321.1
        pushq     %r13                                          #321.1
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
        pushq     %r14                                          #321.1
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
        movl      %edi, %r13d                                   #321.1
        testl     %r13d, %r13d                                  #327.13
        jle       ..B3.34       # Prob 6%                       #327.13
                                # LOE rcx rbx rbp rsi r12 r15 edx r8d r13d xmm0
..B3.2:                         # Preds ..B3.1
                                # Execution count [9.31e-01]
        pxor      %xmm1, %xmm1                                  #332.3
        ucomisd   %xmm1, %xmm0                                  #332.14
        jp        ..B3.3        # Prob 0%                       #332.14
        je        ..B3.34       # Prob 6%                       #332.14
                                # LOE rcx rbx rbp rsi r12 r15 edx r8d r13d xmm0
..B3.3:                         # Preds ..B3.2
                                # Execution count [8.67e-01]
        lea       -1(%rdx), %edi                                #340.16
        lea       -1(%r8), %eax                                 #340.16
        orl       %eax, %edi                                    #340.16
        je        ..B3.23       # Prob 50%                      #340.16
                                # LOE rcx rbx rbp rsi r12 r15 edx r8d r13d xmm0
..B3.4:                         # Preds ..B3.3
                                # Execution count [4.33e-01]
        movslq    %r13d, %r11                                   #360.5
        xorl      %r10d, %r10d                                  #362.30
        movq      %r11, %rax                                    #348.20
        negq      %rax                                          #348.20
        incq      %rax                                          #348.20
        movslq    %edx, %r9                                     #362.7
        movq      %rax, %r14                                    #348.26
        imulq     %r9, %r14                                     #348.26
        movslq    %r8d, %rdi                                    #362.7
        testl     %edx, %edx                                    #362.30
        cmovge    %r10, %r14                                    #362.30
        imulq     %rdi, %rax                                    #357.26
        testl     %r8d, %r8d                                    #362.16
        lea       (%rsi,%r14,8), %rsi                           #362.30
        cmovge    %r10, %rax                                    #362.16
        lea       (%rcx,%rax,8), %rax                           #362.16
        cmpl      $6, %r13d                                     #360.5
        jle       ..B3.20       # Prob 50%                      #360.5
                                # LOE rax rbx rbp rsi rdi r9 r10 r11 r12 r15 edx r8d xmm0
..B3.5:                         # Preds ..B3.4
                                # Execution count [0.00e+00]
        shll      $3, %edx                                      #273.6
        cmpl      $8, %edx                                      #360.5
        jl        ..B3.11       # Prob 50%                      #360.5
                                # LOE rax rbx rbp rsi rdi r9 r10 r11 r12 r15 edx r8d xmm0
..B3.6:                         # Preds ..B3.5
                                # Execution count [0.00e+00]
        shll      $3, %r8d                                      #273.6
        cmpl      $8, %r8d                                      #360.5
        jl        ..B3.20       # Prob 50%                      #360.5
                                # LOE rax rbx rbp rsi rdi r9 r10 r11 r12 r15 edx r8d xmm0
..B3.7:                         # Preds ..B3.6
                                # Execution count [0.00e+00]
        cmpl      %r8d, %edx                                    #360.5
        jg        ..B3.42       # Prob 50%                      #360.5
                                # LOE rax rbx rbp rsi rdi r9 r10 r11 r12 r15 edx r8d xmm0
..B3.8:                         # Preds ..B3.7
                                # Execution count [0.00e+00]
        movslq    %edx, %r14                                    #273.6
        lea       -1(%r11), %rcx                                #273.6
        imulq     %rcx, %r14                                    #273.6
        movq      %rax, %r13                                    #362.30
        addq      $8, %r14                                      #273.6
        subq      %rsi, %r13                                    #362.30
        cmpq      %r14, %r13                                    #360.5
        jge       ..B3.17       # Prob 50%                      #360.5
                                # LOE rax rcx rbx rbp rsi rdi r9 r10 r11 r12 r15 edx r8d xmm0
..B3.9:                         # Preds ..B3.8
                                # Execution count [0.00e+00]
        cmpl      %edx, %r8d                                    #360.5
        jle       ..B3.10       # Prob 50%                      #360.5
        jmp       ..B3.20       # Prob 100%                     #360.5
                                # LOE rax rcx rbx rbp rsi rdi r9 r10 r11 r12 r15 r8d xmm0
..B3.42:                        # Preds ..B3.7
                                # Execution count [0.00e+00]
        lea       -1(%r11), %rcx                                #273.6
                                # LOE rax rcx rbx rbp rsi rdi r9 r10 r11 r12 r15 r8d xmm0
..B3.10:                        # Preds ..B3.42 ..B3.9
                                # Execution count [0.00e+00]
        movslq    %r8d, %r8                                     #273.6
        movq      %rsi, %rdx                                    #362.16
        imulq     %r8, %rcx                                     #273.6
        subq      %rax, %rdx                                    #362.16
        addq      $8, %rcx                                      #273.6
        cmpq      %rcx, %rdx                                    #360.5
        jge       ..B3.17       # Prob 50%                      #360.5
        jmp       ..B3.20       # Prob 100%                     #360.5
                                # LOE rax rbx rbp rsi rdi r9 r10 r11 r12 r15 xmm0
..B3.11:                        # Preds ..B3.5
                                # Execution count [0.00e+00]
        cmpl      $-8, %edx                                     #360.5
        jg        ..B3.20       # Prob 50%                      #360.5
                                # LOE rax rbx rbp rsi rdi r9 r10 r11 r12 r15 edx r8d xmm0
..B3.12:                        # Preds ..B3.11
                                # Execution count [0.00e+00]
        shll      $3, %r8d                                      #273.6
        cmpl      $-8, %r8d                                     #360.5
        jg        ..B3.20       # Prob 50%                      #360.5
                                # LOE rax rbx rbp rsi rdi r9 r10 r11 r12 r15 edx r8d xmm0
..B3.13:                        # Preds ..B3.12
                                # Execution count [0.00e+00]
        cmpl      %r8d, %edx                                    #360.5
        jg        ..B3.41       # Prob 50%                      #360.5
                                # LOE rax rbx rbp rsi rdi r9 r10 r11 r12 r15 edx r8d xmm0
..B3.14:                        # Preds ..B3.13
                                # Execution count [0.00e+00]
        movl      %r8d, %r14d                                   #273.6
        lea       -1(%r11), %rcx                                #273.6
        negl      %r14d                                         #273.6
        movq      %rax, %r13                                    #362.30
        movslq    %r14d, %r14                                   #273.6
        subq      %rsi, %r13                                    #362.30
        imulq     %rcx, %r14                                    #273.6
        addq      $8, %r14                                      #273.6
        cmpq      %r14, %r13                                    #360.5
        jg        ..B3.17       # Prob 50%                      #360.5
                                # LOE rax rcx rbx rbp rsi rdi r9 r10 r11 r12 r15 edx r8d xmm0
..B3.15:                        # Preds ..B3.14
                                # Execution count [0.00e+00]
        cmpl      %edx, %r8d                                    #360.5
        jle       ..B3.16       # Prob 50%                      #360.5
        jmp       ..B3.20       # Prob 100%                     #360.5
                                # LOE rax rcx rbx rbp rsi rdi r9 r10 r11 r12 r15 edx xmm0
..B3.41:                        # Preds ..B3.13
                                # Execution count [0.00e+00]
        lea       -1(%r11), %rcx                                #273.6
                                # LOE rax rcx rbx rbp rsi rdi r9 r10 r11 r12 r15 edx xmm0
..B3.16:                        # Preds ..B3.41 ..B3.15
                                # Execution count [0.00e+00]
        negl      %edx                                          #273.6
        movq      %rsi, %r8                                     #362.16
        movslq    %edx, %rdx                                    #273.6
        subq      %rax, %r8                                     #362.16
        imulq     %rdx, %rcx                                    #273.6
        addq      $8, %rcx                                      #273.6
        cmpq      %rcx, %r8                                     #360.5
        jle       ..B3.20       # Prob 50%                      #360.5
                                # LOE rax rbx rbp rsi rdi r9 r10 r11 r12 r15 xmm0
..B3.17:                        # Preds ..B3.16 ..B3.8 ..B3.14 ..B3.10
                                # Execution count [1.95e-01]
        movq      %r10, %rcx                                    #360.5
        movq      %rcx, %rdx                                    #360.5
                                # LOE rax rdx rcx rbx rbp rsi rdi r9 r10 r11 r12 r15 xmm0
..B3.18:                        # Preds ..B3.18 ..B3.17
                                # Execution count [1.08e+00]
        movsd     (%rsi,%rcx,8), %xmm1                          #362.30
        incq      %r10                                          #360.5
        mulsd     %xmm0, %xmm1                                  #362.30
        addq      %r9, %rcx                                     #360.5
        addsd     (%rax,%rdx,8), %xmm1                          #362.30
        movsd     %xmm1, (%rax,%rdx,8)                          #362.7
        addq      %rdi, %rdx                                    #360.5
        cmpq      %r11, %r10                                    #360.5
        jb        ..B3.18       # Prob 82%                      #360.5
        jmp       ..B3.34       # Prob 100%                     #360.5
                                # LOE rax rdx rcx rbx rbp rsi rdi r9 r10 r11 r12 r15 xmm0
..B3.20:                        # Preds ..B3.9 ..B3.6 ..B3.10 ..B3.4 ..B3.16
                                #       ..B3.15 ..B3.12 ..B3.11
                                # Execution count [1.95e-01]
        movq      %r10, %rcx                                    #360.5
        movq      %rcx, %rdx                                    #360.5
                                # LOE rax rdx rcx rbx rbp rsi rdi r9 r10 r11 r12 r15 xmm0
..B3.21:                        # Preds ..B3.21 ..B3.20
                                # Execution count [1.08e+00]
        movsd     (%rsi,%rcx,8), %xmm1                          #362.30
        incq      %r10                                          #360.5
        mulsd     %xmm0, %xmm1                                  #362.30
        addq      %r9, %rcx                                     #360.5
        addsd     (%rax,%rdx,8), %xmm1                          #362.30
        movsd     %xmm1, (%rax,%rdx,8)                          #362.7
        addq      %rdi, %rdx                                    #360.5
        cmpq      %r11, %r10                                    #360.5
        jb        ..B3.21       # Prob 82%                      #360.5
        jmp       ..B3.34       # Prob 100%                     #360.5
                                # LOE rax rdx rcx rbx rbp rsi rdi r9 r10 r11 r12 r15 xmm0
..B3.23:                        # Preds ..B3.3
                                # Execution count [4.33e-01]
        movl      %r13d, %eax                                   #372.13
        andl      $-2147483645, %eax                            #372.13
        jge       ..B3.39       # Prob 50%                      #372.13
                                # LOE rcx rbx rbp rsi r12 r15 eax r13d xmm0
..B3.40:                        # Preds ..B3.23
                                # Execution count [4.33e-01]
        subl      $1, %eax                                      #372.13
        orl       $-4, %eax                                     #372.13
        incl      %eax                                          #372.13
                                # LOE rcx rbx rbp rsi r12 r15 eax r13d xmm0
..B3.39:                        # Preds ..B3.23 ..B3.40
                                # Execution count [4.33e-01]
        testl     %eax, %eax                                    #374.22
        jle       ..B3.30       # Prob 50%                      #374.22
                                # LOE rcx rbx rbp rsi r12 r15 eax r13d xmm0
..B3.24:                        # Preds ..B3.39
                                # Execution count [4.33e-01]
        movl      %eax, %edx                                    #374.5
        xorl      %r8d, %r8d                                    #374.5
        movl      $1, %r9d                                      #374.5
        xorl      %edi, %edi                                    #374.5
        shrl      $1, %edx                                      #374.5
        je        ..B3.28       # Prob 15%                      #374.5
                                # LOE rdx rcx rbx rbp rsi rdi r8 r12 r15 eax r9d r13d xmm0
..B3.26:                        # Preds ..B3.24 ..B3.26
                                # Execution count [1.02e+00]
        movsd     (%rdi,%rsi), %xmm1                            #376.28
        incq      %r8                                           #374.5
        mulsd     %xmm0, %xmm1                                  #376.28
        addsd     (%rdi,%rcx), %xmm1                            #376.28
        movsd     %xmm1, (%rdi,%rcx)                            #376.7
        movsd     8(%rdi,%rsi), %xmm2                           #376.28
        mulsd     %xmm0, %xmm2                                  #376.28
        addsd     8(%rdi,%rcx), %xmm2                           #376.28
        movsd     %xmm2, 8(%rdi,%rcx)                           #376.7
        addq      $16, %rdi                                     #374.5
        cmpq      %rdx, %r8                                     #374.5
        jb        ..B3.26       # Prob 63%                      #374.5
                                # LOE rdx rcx rbx rbp rsi rdi r8 r12 r15 eax r13d xmm0
..B3.27:                        # Preds ..B3.26
                                # Execution count [3.67e-01]
        lea       1(%r8,%r8), %r9d                              #376.7
                                # LOE rcx rbx rbp rsi r12 r15 eax r9d r13d xmm0
..B3.28:                        # Preds ..B3.27 ..B3.24
                                # Execution count [4.33e-01]
        lea       -1(%r9), %edx                                 #374.5
        cmpl      %eax, %edx                                    #374.5
        jae       ..B3.30       # Prob 15%                      #374.5
                                # LOE rcx rbx rbp rsi r12 r15 eax r9d r13d xmm0
..B3.29:                        # Preds ..B3.28
                                # Execution count [3.67e-01]
        movslq    %r9d, %r9                                     #374.5
        movsd     -8(%rsi,%r9,8), %xmm1                         #376.28
        mulsd     %xmm0, %xmm1                                  #376.28
        addsd     -8(%rcx,%r9,8), %xmm1                         #376.28
        movsd     %xmm1, -8(%rcx,%r9,8)                         #376.7
                                # LOE rcx rbx rbp rsi r12 r15 eax r13d xmm0
..B3.30:                        # Preds ..B3.39 ..B3.28 ..B3.29
                                # Execution count [4.33e-01]
        xorl      %edi, %edi                                    #379.5
        cmpl      %r13d, %eax                                   #379.22
        jge       ..B3.34       # Prob 10%                      #379.22
                                # LOE rcx rbx rbp rsi r12 r15 eax edi r13d xmm0
..B3.31:                        # Preds ..B3.30
                                # Execution count [3.90e-01]
        movslq    %eax, %rax                                    #381.17
        subl      %eax, %r13d                                   #321.1
        addl      $3, %r13d                                     #321.1
        shrl      $2, %r13d                                     #321.1
        lea       (%rsi,%rax,8), %rsi                           #381.32
        lea       (%rcx,%rax,8), %rdx                           #381.17
        .align    16,0x90
                                # LOE rdx rbx rbp rsi r12 r15 edi r13d xmm0
..B3.32:                        # Preds ..B3.32 ..B3.31
                                # Execution count [2.17e+00]
        lea       (,%rdi,4), %eax                               #381.7
        incl      %edi                                          #379.5
        movslq    %eax, %rax                                    #381.32
        movsd     (%rsi,%rax,8), %xmm1                          #381.32
        mulsd     %xmm0, %xmm1                                  #381.32
        addsd     (%rdx,%rax,8), %xmm1                          #381.32
        movsd     %xmm1, (%rdx,%rax,8)                          #381.7
        movsd     8(%rsi,%rax,8), %xmm2                         #381.32
        mulsd     %xmm0, %xmm2                                  #381.32
        addsd     8(%rdx,%rax,8), %xmm2                         #381.32
        movsd     %xmm2, 8(%rdx,%rax,8)                         #381.7
        movsd     16(%rsi,%rax,8), %xmm3                        #381.32
        mulsd     %xmm0, %xmm3                                  #381.32
        addsd     16(%rdx,%rax,8), %xmm3                        #381.32
        movsd     %xmm3, 16(%rdx,%rax,8)                        #381.7
        movsd     24(%rsi,%rax,8), %xmm4                        #381.32
        mulsd     %xmm0, %xmm4                                  #381.32
        addsd     24(%rdx,%rax,8), %xmm4                        #381.32
        movsd     %xmm4, 24(%rdx,%rax,8)                        #381.7
        cmpl      %r13d, %edi                                   #379.5
        jb        ..B3.32       # Prob 82%                      #379.5
                                # LOE rdx rbx rbp rsi r12 r15 edi r13d xmm0
..B3.34:                        # Preds ..B3.1 ..B3.2 ..B3.32 ..B3.21 ..B3.18
                                #       ..B3.30
                                # Execution count [8.67e-01]
	.cfi_restore 14
        popq      %r14                                          #387.3
	.cfi_def_cfa_offset 16
	.cfi_restore 13
        popq      %r13                                          #387.3
	.cfi_def_cfa_offset 8
        ret                                                     #387.3
        .align    16,0x90
                                # LOE
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
..___tag_value_ddot.221:
..L222:
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
        jle       ..B4.38       # Prob 6%                       #448.13
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
        jl        ..B4.37       # Prob 10%                      #476.5
                                # LOE rcx rsi r15 edx edi r8d r13d r14d xmm0
..B4.4:                         # Preds ..B4.3
                                # Execution count [4.19e-01]
        andl      $-8, %edi                                     #476.5
        lea       (%r8,%r8,2), %r12d                            #478.7
        movl      %r12d, -8(%rsp)                               #478.7[spill]
        xorl      %r12d, %r12d                                  #478.7
        pxor      %xmm0, %xmm0                                  #446.3
        movl      %r14d, -48(%rsp)                              #478.7[spill]
        xorl      %r11d, %r11d                                  #476.5
        movl      %r13d, -56(%rsp)                              #478.7[spill]
        lea       (%rdx,%rdx,2), %eax                           #478.7
        movl      %edi, -16(%rsp)                               #478.7[spill]
        movaps    %xmm0, %xmm1                                  #446.3
        movl      %r13d, -32(%rsp)                              #478.7[spill]
        movl      %r14d, -24(%rsp)                              #478.7[spill]
        movslq    %edx, %r10                                    #478.7
        movslq    %r14d, %r9                                    #478.7
        movslq    %r8d, %rbp                                    #478.7
        movslq    %r13d, %rbx                                   #478.7
        movq      %r15, -40(%rsp)                               #478.7[spill]
        movl      -56(%rsp), %r14d                              #478.7[spill]
        movl      -48(%rsp), %r13d                              #478.7[spill]
        movq      %r12, %rdi                                    #478.7
                                # LOE rcx rbx rbp rsi rdi r9 r10 r12 eax edx r8d r11d r13d r14d xmm0 xmm1
..B4.5:                         # Preds ..B4.5 ..B4.4
                                # Execution count [2.33e+00]
        addl      $8, %r11d                                     #476.5
        lea       (%r9,%rdi), %r15                              #478.7
        lea       (%rsi,%r15,8), %r15                           #478.23
        movsd     (%r15), %xmm3                                 #478.23
        lea       (%rdi,%r10,8), %rdi                           #476.5
        movhpd    (%r15,%r10,8), %xmm3                          #478.23
        lea       (%rbx,%r12), %r15                             #478.7
        lea       (%rcx,%r15,8), %r15                           #478.32
        movsd     (%r15), %xmm2                                 #478.32
        lea       (%r12,%rbp,8), %r12                           #476.5
        movhpd    (%r15,%rbp,8), %xmm2                          #478.32
        lea       (%r13,%rdx,2), %r15d                          #478.7
        movslq    %r15d, %r15                                   #478.7
        mulpd     %xmm2, %xmm3                                  #478.32
        addpd     %xmm3, %xmm0                                  #478.32
        lea       (%rsi,%r15,8), %r15                           #478.23
        movsd     (%r15), %xmm5                                 #478.23
        movhpd    (%r15,%r10,8), %xmm5                          #478.23
        lea       (%r14,%r8,2), %r15d                           #478.7
        movslq    %r15d, %r15                                   #478.7
        lea       (%rcx,%r15,8), %r15                           #478.32
        movsd     (%r15), %xmm4                                 #478.32
        movhpd    (%r15,%rbp,8), %xmm4                          #478.32
        lea       (%r13,%rdx,4), %r15d                          #478.7
        movslq    %r15d, %r15                                   #478.7
        mulpd     %xmm4, %xmm5                                  #478.32
        addpd     %xmm5, %xmm1                                  #478.32
        lea       (%rsi,%r15,8), %r15                           #478.23
        movsd     (%r15), %xmm7                                 #478.23
        movhpd    (%r15,%r10,8), %xmm7                          #478.23
        lea       (%r14,%r8,4), %r15d                           #478.7
        movslq    %r15d, %r15                                   #478.7
        lea       (%rcx,%r15,8), %r15                           #478.32
        movsd     (%r15), %xmm6                                 #478.32
        movhpd    (%r15,%rbp,8), %xmm6                          #478.32
        lea       (%r13,%rax,2), %r15d                          #478.7
        movslq    %r15d, %r15                                   #478.7
        lea       (%r13,%rdx,8), %r13d                          #476.5
        mulpd     %xmm6, %xmm7                                  #478.32
        addpd     %xmm7, %xmm0                                  #478.32
        lea       (%rsi,%r15,8), %r15                           #478.23
        movsd     (%r15), %xmm9                                 #478.23
        movhpd    (%r15,%r10,8), %xmm9                          #478.23
        movl      -8(%rsp), %r15d                               #478.7[spill]
        lea       (%r14,%r15,2), %r15d                          #478.7
        movslq    %r15d, %r15                                   #478.7
        lea       (%r14,%r8,8), %r14d                           #476.5
        lea       (%rcx,%r15,8), %r15                           #478.32
        movsd     (%r15), %xmm8                                 #478.32
        movhpd    (%r15,%rbp,8), %xmm8                          #478.32
        mulpd     %xmm8, %xmm9                                  #478.32
        addpd     %xmm9, %xmm1                                  #478.32
        cmpl      -16(%rsp), %r11d                              #476.5[spill]
        jb        ..B4.5        # Prob 82%                      #476.5
                                # LOE rcx rbx rbp rsi rdi r9 r10 r12 eax edx r8d r11d r13d r14d xmm0 xmm1
..B4.6:                         # Preds ..B4.5
                                # Execution count [4.19e-01]
        addpd     %xmm1, %xmm0                                  #446.3
        movaps    %xmm0, %xmm1                                  #446.3
        unpckhpd  %xmm0, %xmm1                                  #446.3
        movl      -16(%rsp), %edi                               #[spill]
        addsd     %xmm1, %xmm0                                  #446.3
        movq      -40(%rsp), %r15                               #[spill]
        movl      -32(%rsp), %r13d                              #[spill]
        movl      -24(%rsp), %r14d                              #[spill]
                                # LOE rcx rsi r15 edx edi r8d r13d r14d xmm0
..B4.7:                         # Preds ..B4.6 ..B4.37
                                # Execution count [4.66e-01]
        movslq    %edi, %rdi                                    #476.5
        cmpq      %r15, %rdi                                    #476.5
        jae       ..B4.36       # Prob 10%                      #476.5
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
        jmp       ..B4.36       # Prob 100%                     #476.5
                                # LOE rax rdx rbx rbp rdi r8 r9 r15 xmm0
..B4.11:                        # Preds ..B4.2
                                # Execution count [4.66e-01]
        movl      $1717986919, %eax                             #488.13
        movl      %edi, %ebx                                    #488.13
        imull     %edi                                          #488.13
        sarl      $31, %ebx                                     #488.13
        sarl      $1, %edx                                      #488.13
        subl      %ebx, %edx                                    #488.13
        lea       (%rdx,%rdx,4), %eax                           #488.13
        negl      %eax                                          #488.13
        addl      %edi, %eax                                    #488.13
        testl     %eax, %eax                                    #490.22
        jle       ..B4.32       # Prob 50%                      #490.22
                                # LOE rcx rsi eax edi xmm0
..B4.12:                        # Preds ..B4.11
                                # Execution count [4.66e-01]
        movl      %eax, %edx                                    #490.5
        xorl      %ebp, %ebp                                    #490.5
        movl      $1, %r8d                                      #490.5
        xorl      %ebx, %ebx                                    #490.5
        shrl      $3, %edx                                      #490.5
        je        ..B4.16       # Prob 15%                      #490.5
                                # LOE rdx rcx rbx rbp rsi eax edi r8d xmm0
..B4.13:                        # Preds ..B4.12
                                # Execution count [1.37e-03]
        pxor      %xmm7, %xmm7                                  #478.7
        movaps    %xmm7, %xmm6                                  #478.7
        movaps    %xmm6, %xmm5                                  #478.7
        movaps    %xmm5, %xmm4                                  #478.7
        movaps    %xmm4, %xmm3                                  #478.7
        movaps    %xmm3, %xmm2                                  #478.7
        movaps    %xmm2, %xmm1                                  #478.7
                                # LOE rdx rcx rbx rbp rsi eax edi xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B4.14:                        # Preds ..B4.14 ..B4.13
                                # Execution count [2.74e-01]
        movsd     (%rbx,%rsi), %xmm8                            #492.23
        incq      %rbp                                          #490.5
        movsd     8(%rbx,%rsi), %xmm9                           #492.23
        movsd     16(%rbx,%rsi), %xmm10                         #492.23
        movsd     24(%rbx,%rsi), %xmm11                         #492.23
        movsd     32(%rbx,%rsi), %xmm12                         #492.23
        movsd     40(%rbx,%rsi), %xmm13                         #492.23
        movsd     48(%rbx,%rsi), %xmm14                         #492.23
        movsd     56(%rbx,%rsi), %xmm15                         #492.23
        mulsd     (%rbx,%rcx), %xmm8                            #492.31
        mulsd     8(%rbx,%rcx), %xmm9                           #492.31
        mulsd     16(%rbx,%rcx), %xmm10                         #492.31
        addsd     %xmm8, %xmm0                                  #492.31
        mulsd     24(%rbx,%rcx), %xmm11                         #492.31
        addsd     %xmm9, %xmm7                                  #492.31
        mulsd     32(%rbx,%rcx), %xmm12                         #492.31
        addsd     %xmm10, %xmm6                                 #492.31
        mulsd     40(%rbx,%rcx), %xmm13                         #492.31
        addsd     %xmm11, %xmm5                                 #492.31
        mulsd     48(%rbx,%rcx), %xmm14                         #492.31
        addsd     %xmm12, %xmm4                                 #492.31
        mulsd     56(%rbx,%rcx), %xmm15                         #492.31
        addsd     %xmm13, %xmm3                                 #492.31
        addsd     %xmm14, %xmm2                                 #492.31
        addsd     %xmm15, %xmm1                                 #492.31
        addq      $64, %rbx                                     #490.5
        cmpq      %rdx, %rbp                                    #490.5
        jb        ..B4.14       # Prob 99%                      #490.5
                                # LOE rdx rcx rbx rbp rsi eax edi xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
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
                                # LOE rcx rsi eax edi r8d xmm0
..B4.16:                        # Preds ..B4.15 ..B4.12
                                # Execution count [4.66e-01]
        cmpl      %eax, %r8d                                    #490.5
        ja        ..B4.32       # Prob 50%                      #490.5
                                # LOE rcx rsi eax edi r8d xmm0
..B4.17:                        # Preds ..B4.16
                                # Execution count [0.00e+00]
        lea       -1(%r8), %edx                                 #444.3
        negl      %edx                                          #444.3
        addl      %eax, %edx                                    #444.3
        decl      %edx                                          #444.3
        jmp       *.2.32_2.switchtab.7(,%rdx,8)                 #490.5
                                # LOE rcx rsi eax edi r8d xmm0
..1.32_0.TAG.6:
..B4.19:                        # Preds ..B4.17
                                # Execution count [0.00e+00]
        movslq    %r8d, %r8                                     #492.7
        movsd     40(%rsi,%r8,8), %xmm1                         #492.23
        mulsd     40(%rcx,%r8,8), %xmm1                         #492.31
        addsd     %xmm1, %xmm0                                  #492.31
                                # LOE rcx rsi eax edi r8d xmm0
..1.32_0.TAG.5:
..B4.21:                        # Preds ..B4.17 ..B4.19
                                # Execution count [0.00e+00]
        movslq    %r8d, %r8                                     #492.7
        movsd     32(%rsi,%r8,8), %xmm1                         #492.23
        mulsd     32(%rcx,%r8,8), %xmm1                         #492.31
        addsd     %xmm1, %xmm0                                  #492.31
                                # LOE rcx rsi eax edi r8d xmm0
..1.32_0.TAG.4:
..B4.23:                        # Preds ..B4.17 ..B4.21
                                # Execution count [0.00e+00]
        movslq    %r8d, %r8                                     #492.7
        movsd     24(%rsi,%r8,8), %xmm1                         #492.23
        mulsd     24(%rcx,%r8,8), %xmm1                         #492.31
        addsd     %xmm1, %xmm0                                  #492.31
                                # LOE rcx rsi eax edi r8d xmm0
..1.32_0.TAG.3:
..B4.25:                        # Preds ..B4.17 ..B4.23
                                # Execution count [0.00e+00]
        movslq    %r8d, %r8                                     #492.7
        movsd     16(%rsi,%r8,8), %xmm1                         #492.23
        mulsd     16(%rcx,%r8,8), %xmm1                         #492.31
        addsd     %xmm1, %xmm0                                  #492.31
                                # LOE rcx rsi eax edi r8d xmm0
..1.32_0.TAG.2:
..B4.27:                        # Preds ..B4.17 ..B4.25
                                # Execution count [0.00e+00]
        movslq    %r8d, %r8                                     #492.7
        movsd     8(%rsi,%r8,8), %xmm1                          #492.23
        mulsd     8(%rcx,%r8,8), %xmm1                          #492.31
        addsd     %xmm1, %xmm0                                  #492.31
                                # LOE rcx rsi eax edi r8d xmm0
..1.32_0.TAG.1:
..B4.29:                        # Preds ..B4.17 ..B4.27
                                # Execution count [0.00e+00]
        movslq    %r8d, %r8                                     #490.5
        movsd     (%rsi,%r8,8), %xmm1                           #492.23
        mulsd     (%rcx,%r8,8), %xmm1                           #492.31
        addsd     %xmm1, %xmm0                                  #492.31
                                # LOE rcx rsi eax edi r8d xmm0
..1.32_0.TAG.0:
..B4.31:                        # Preds ..B4.17 ..B4.29
                                # Execution count [3.94e-01]
        movslq    %r8d, %r8                                     #492.7
        movsd     -8(%rsi,%r8,8), %xmm1                         #492.23
        mulsd     -8(%rcx,%r8,8), %xmm1                         #492.31
        addsd     %xmm1, %xmm0                                  #492.31
                                # LOE rcx rsi eax edi xmm0
..B4.32:                        # Preds ..B4.11 ..B4.31 ..B4.16
                                # Execution count [4.66e-01]
        xorl      %r8d, %r8d                                    #495.5
        xorl      %ebp, %ebp                                    #497.7
        cmpl      %edi, %eax                                    #495.22
        jge       ..B4.36       # Prob 9%                       #495.22
                                # LOE rcx rbp rsi eax edi r8d xmm0
..B4.33:                        # Preds ..B4.32
                                # Execution count [4.19e-01]
        movslq    %eax, %rax                                    #497.23
        subl      %eax, %edi                                    #439.1
        addl      $4, %edi                                      #439.1
        lea       (%rcx,%rax,8), %rbx                           #497.33
        lea       (%rsi,%rax,8), %rcx                           #497.23
        movl      $-858993459, %eax                             #439.1
        mull      %edi                                          #439.1
        shrl      $2, %edx                                      #439.1
        .align    16,0x90
                                # LOE rcx rbx rbp edx r8d xmm0
..B4.34:                        # Preds ..B4.34 ..B4.33
                                # Execution count [2.33e+00]
        movsd     (%rcx,%rbp,8), %xmm1                          #497.23
        incl      %r8d                                          #495.5
        mulsd     (%rbx,%rbp,8), %xmm1                          #497.33
        movsd     8(%rcx,%rbp,8), %xmm2                         #497.23
        addsd     %xmm1, %xmm0                                  #497.33
        mulsd     8(%rbx,%rbp,8), %xmm2                         #497.33
        movsd     16(%rcx,%rbp,8), %xmm3                        #497.23
        addsd     %xmm2, %xmm0                                  #497.33
        mulsd     16(%rbx,%rbp,8), %xmm3                        #497.33
        movsd     24(%rcx,%rbp,8), %xmm4                        #497.23
        addsd     %xmm3, %xmm0                                  #497.33
        mulsd     24(%rbx,%rbp,8), %xmm4                        #497.33
        movsd     32(%rcx,%rbp,8), %xmm5                        #497.23
        addsd     %xmm4, %xmm0                                  #497.33
        mulsd     32(%rbx,%rbp,8), %xmm5                        #497.33
        addq      $5, %rbp                                      #495.5
        addsd     %xmm5, %xmm0                                  #497.33
        cmpl      %edx, %r8d                                    #495.5
        jb        ..B4.34       # Prob 81%                      #495.5
                                # LOE rcx rbx rbp edx r8d xmm0
..B4.36:                        # Preds ..B4.34 ..B4.9 ..B4.7 ..B4.32
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
..B4.37:                        # Preds ..B4.3
                                # Execution count [4.19e-02]: Infreq
        xorl      %edi, %edi                                    #476.5
        jmp       ..B4.7        # Prob 100%                     #476.5
                                # LOE rcx rsi r15 edx edi r8d r13d r14d xmm0
..B4.38:                        # Preds ..B4.1
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
.2.32_2.switchtab.7:
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
                                # Execution count [1.24e+00]
	.cfi_startproc
..___tag_value_dgefa.282:
..L283:
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
        subq      $280, %rsp                                    #553.1
	.cfi_def_cfa_offset 336
        movl      %edx, %r11d                                   #553.1
        movl      %esi, %edx                                    #553.1
        movq      %rcx, %r10                                    #553.1
        movl      %edx, %r8d                                    #564.13
        xorl      %eax, %eax                                    #562.3
        movl      $1, %ebx                                      #564.9
        movl      $1, %ebp                                      #564.13
        movl      $8, %r9d                                      #564.13
        lea       -1(%r11), %ecx                                #564.13
        pxor      %xmm0, %xmm0                                  #574.30
        cmpl      $1, %r11d                                     #564.23
        jle       ..B5.63       # Prob 10%                      #564.23
                                # LOE rbp rdi r9 r10 r12 r13 r14 eax edx ecx ebx r8d r11d xmm0
..B5.2:                         # Preds ..B5.1
                                # Execution count [1.24e+00]
        movslq    %edx, %rdx                                    #569.25
        movq      %rdx, 96(%rsp)                                #569.25[spill]
        movl      %eax, 24(%rsp)                                #574.22[spill]
        movl      %edx, 256(%rsp)                               #574.22[spill]
        movl      %r11d, 128(%rsp)                              #574.22[spill]
        lea       (,%rdx,8), %rsi                               #569.25
        movq      %rsi, %r15                                    #569.25
        negq      %r15                                          #569.25
        addq      %rdi, %r15                                    #569.25
        movq      %r15, 32(%rsp)                                #569.25[spill]
        movq      %rdi, %r15                                    #593.5
        subq      %rsi, %r15                                    #593.5
        movq      %r15, 40(%rsp)                                #593.5[spill]
        movl      %edx, %r15d                                   #574.22
        negl      %r15d                                         #574.22
        movq      %rsi, 184(%rsp)                               #569.25[spill]
        movl      %r15d, 152(%rsp)                              #574.22[spill]
        movq      %r10, 160(%rsp)                               #574.22[spill]
                                # LOE rbp rsi rdi r9 ecx ebx r8d xmm0
..B5.3:                         # Preds ..B5.61 ..B5.2
                                # Execution count [5.00e+00]
        lea       1(%rcx), %eax                                 #569.22
        testl     %eax, %eax                                    #569.9
        jle       ..B5.13       # Prob 28%                      #569.9
                                # LOE rbp rsi rdi r9 eax ecx ebx r8d xmm0
..B5.4:                         # Preds ..B5.3
                                # Execution count [3.35e+00]
        movl      $1, %r10d                                     #569.9
        cmpl      $1, %eax                                      #569.9
        je        ..B5.14       # Prob 6%                       #569.9
                                # LOE rbp rsi rdi r9 ecx ebx r8d r10d xmm0
..B5.5:                         # Preds ..B5.4
                                # Execution count [3.12e+00]
        movslq    %r8d, %rdx                                    #569.25
        addq      %rbp, %rdx                                    #569.25
        movq      32(%rsp), %rax                                #569.9[spill]
        movsd     -8(%rax,%rdx,8), %xmm1                        #569.9
        andps     .L_2il0floatpacket.11(%rip), %xmm1            #569.9
        testl     %ecx, %ecx                                    #569.9
        jle       ..B5.14       # Prob 50%                      #569.9
                                # LOE rbp rsi rdi r9 ecx ebx r8d r10d xmm0 xmm1
..B5.6:                         # Preds ..B5.5
                                # Execution count [3.12e+00]
        movl      %ecx, %edx                                    #569.9
        movl      $1, %r12d                                     #569.9
        xorl      %r11d, %r11d                                  #569.9
        shrl      $1, %edx                                      #569.9
        je        ..B5.10       # Prob 10%                      #569.9
                                # LOE rbp rsi rdi r9 edx ecx ebx r8d r10d r11d r12d xmm0 xmm1
..B5.7:                         # Preds ..B5.6
                                # Execution count [6.24e-03]
        movq      96(%rsp), %rax                                #569.9[spill]
        lea       8(,%rax,8), %rax                              #569.9
        imulq     %rbp, %rax                                    #569.9
        addq      40(%rsp), %rax                                #569.9[spill]
        .align    16,0x90
                                # LOE rax rbp rsi rdi r9 edx ecx ebx r8d r10d r11d xmm0 xmm1
..B5.8:                         # Preds ..B5.8 ..B5.7
                                # Execution count [1.25e+00]
        movslq    %r11d, %r12                                   #569.9
        lea       2(%r11,%r11), %r13d                           #569.9
        shlq      $4, %r12                                      #569.9
        movsd     (%rax,%r12), %xmm2                            #569.9
        andps     .L_2il0floatpacket.11(%rip), %xmm2            #569.9
        comisd    %xmm1, %xmm2                                  #569.9
        movaps    %xmm2, %xmm4                                  #569.9
        movsd     8(%rax,%r12), %xmm3                           #569.9
        maxsd     %xmm1, %xmm4                                  #569.9
        ja        ..L309        # Prob 50%                      #569.9
        movl      %r10d, %r13d                                  #569.9
..L309:                                                         #
        andps     .L_2il0floatpacket.11(%rip), %xmm3            #569.9
        lea       3(%r11,%r11), %r10d                           #569.9
        movaps    %xmm3, %xmm1                                  #569.9
        incl      %r11d                                         #569.9
        comisd    %xmm4, %xmm1                                  #569.9
        ja        ..L310        # Prob 50%                      #569.9
        movaps    %xmm4, %xmm1                                  #569.9
..L310:                                                         #
        comisd    %xmm4, %xmm3                                  #569.9
        cmovbe    %r13d, %r10d                                  #569.9
        cmpl      %edx, %r11d                                   #569.9
        jb        ..B5.8        # Prob 99%                      #569.9
                                # LOE rax rbp rsi rdi r9 edx ecx ebx r8d r10d r11d xmm0 xmm1
..B5.9:                         # Preds ..B5.8
                                # Execution count [2.81e+00]
        lea       1(%r11,%r11), %r12d                           #569.9
                                # LOE rbp rsi rdi r9 ecx ebx r8d r10d r12d xmm0 xmm1
..B5.10:                        # Preds ..B5.9 ..B5.6
                                # Execution count [3.12e+00]
        lea       -1(%r12), %eax                                #569.9
        cmpl      %ecx, %eax                                    #569.9
        jae       ..B5.14       # Prob 10%                      #569.9
                                # LOE rbp rsi rdi r9 ecx ebx r8d r10d r12d xmm0 xmm1
..B5.11:                        # Preds ..B5.10
                                # Execution count [2.81e+00]
        movq      40(%rsp), %rax                                #593.5[spill]
        lea       1(%r12), %r13d                                #569.9
        movslq    %r12d, %r12                                   #569.9
        lea       (%r9,%rsi), %r11                              #569.9
        lea       (%rax,%r12,8), %rdx                           #593.5
        movsd     -8(%rdx,%r11), %xmm2                          #569.9
        andps     .L_2il0floatpacket.11(%rip), %xmm2            #569.9
        comisd    %xmm1, %xmm2                                  #569.9
        cmova     %r13d, %r10d                                  #569.9
        jmp       ..B5.14       # Prob 100%                     #569.9
                                # LOE rbp rsi rdi r9 ecx ebx r8d r10d xmm0
..B5.13:                        # Preds ..B5.3
                                # Execution count [1.65e+00]
        xorl      %r10d, %r10d                                  #569.9
                                # LOE rbp rsi rdi r9 ecx ebx r8d r10d xmm0
..B5.14:                        # Preds ..B5.4 ..B5.5 ..B5.10 ..B5.11 ..B5.13
                                #      
                                # Execution count [5.00e+00]
        movl      152(%rsp), %edx                               #574.22[spill]
        lea       -1(%rbx,%r10), %r11d                          #569.54
        movq      160(%rsp), %rax                               #570.5[spill]
        lea       (%rdx,%r8), %r12d                             #574.22
        movslq    %r11d, %rdx                                   #574.10
        movslq    %r12d, %r12                                   #574.10
        addq      %r12, %rdx                                    #574.14
        movl      %r11d, -4(%rax,%rbp,4)                        #570.5
        movsd     -8(%rdi,%rdx,8), %xmm1                        #574.10
        ucomisd   %xmm0, %xmm1                                  #574.30
        jp        ..B5.15       # Prob 0%                       #574.30
        je        ..B5.68       # Prob 16%                      #574.30
                                # LOE rdx rbp rsi rdi r9 r12 ecx ebx r8d r10d r11d xmm0 xmm1
..B5.15:                        # Preds ..B5.14
                                # Execution count [4.20e+00]
        addq      %rbp, %r12                                    #585.30
        cmpl      %ebx, %r11d                                   #582.15
        je        ..B5.17       # Prob 50%                      #582.15
                                # LOE rdx rbp rsi rdi r9 r12 ecx ebx r8d r10d r11d xmm0 xmm1
..B5.16:                        # Preds ..B5.15
                                # Execution count [2.10e+00]
        movq      -8(%rdi,%r12,8), %rax                         #585.26
        movq      %rax, -8(%rdi,%rdx,8)                         #585.7
        movsd     %xmm1, -8(%rdi,%r12,8)                        #586.7
        jmp       ..B5.18       # Prob 100%                     #586.7
                                # LOE rbp rsi rdi r9 ecx ebx r8d r10d r11d xmm0 xmm1
..B5.17:                        # Preds ..B5.15
                                # Execution count [2.10e+00]
        movsd     -8(%rdi,%r12,8), %xmm1                        #591.16
                                # LOE rbp rsi rdi r9 ecx ebx r8d r10d r11d xmm0 xmm1
..B5.18:                        # Preds ..B5.16 ..B5.17
                                # Execution count [4.20e+00]
        movsd     .L_2il0floatpacket.3(%rip), %xmm2             #591.16
        divsd     %xmm1, %xmm2                                  #591.16
        testl     %ecx, %ecx                                    #593.5
        jle       ..B5.42       # Prob 16%                      #593.5
                                # LOE rbp rsi rdi r9 ecx ebx r8d r10d r11d xmm0 xmm2
..B5.19:                        # Preds ..B5.18
                                # Execution count [5.64e-01]
        movl      $1717986919, %eax                             #593.5
        movl      %ecx, %r12d                                   #593.5
        imull     %ecx                                          #593.5
        sarl      $31, %r12d                                    #593.5
        sarl      $1, %edx                                      #593.5
        subl      %r12d, %edx                                   #593.5
        lea       (%rdx,%rdx,4), %r12d                          #593.5
        negl      %r12d                                         #593.5
        addl      %ecx, %r12d                                   #593.5
        testl     %r12d, %r12d                                  #593.5
        jle       ..B5.28       # Prob 50%                      #593.5
                                # LOE rbp rsi rdi r9 ecx ebx r8d r10d r11d r12d xmm0 xmm2
..B5.20:                        # Preds ..B5.19
                                # Execution count [4.78e-01]
        movslq    %r12d, %r13                                   #593.5
        cmpq      $4, %r13                                      #593.5
        jl        ..B5.67       # Prob 10%                      #593.5
                                # LOE rbp rsi rdi r9 r13 ecx ebx r8d r10d r11d r12d xmm0 xmm2
..B5.21:                        # Preds ..B5.20
                                # Execution count [4.78e-01]
        movq      184(%rsp), %r15                               #569.39[spill]
        movl      %r12d, %eax                                   #593.5
        imulq     %rbp, %r15                                    #569.39
        movq      40(%rsp), %r14                                #593.5[spill]
        andl      $-4, %eax                                     #593.5
        movq      $0, (%rsp)                                    #593.5[spill]
        movaps    %xmm2, %xmm1                                  #591.5
        movslq    %eax, %rax                                    #593.5
        unpcklpd  %xmm1, %xmm1                                  #591.5
        lea       (%r14,%r15), %rdx                             #593.5
        lea       (%r15,%rbp,8), %r15                           #593.5
        addq      %r14, %r15                                    #593.5
        lea       (%rdx,%rbp,8), %rdx                           #593.5
        movq      (%rsp), %r14                                  #591.5[spill]
                                # LOE rax rdx rbp rsi rdi r9 r13 r14 r15 ecx ebx r8d r10d r11d r12d xmm0 xmm1 xmm2
..B5.22:                        # Preds ..B5.22 ..B5.21
                                # Execution count [2.65e+00]
        movups    (%rdx,%r14,8), %xmm3                          #593.5
        mulpd     %xmm1, %xmm3                                  #593.5
        movups    %xmm3, (%rdx,%r14,8)                          #593.5
        movups    16(%r15,%r14,8), %xmm4                        #593.5
        mulpd     %xmm1, %xmm4                                  #593.5
        movups    %xmm4, 16(%r15,%r14,8)                        #593.5
        addq      $4, %r14                                      #593.5
        cmpq      %rax, %r14                                    #593.5
        jb        ..B5.22       # Prob 82%                      #593.5
                                # LOE rax rdx rbp rsi rdi r9 r13 r14 r15 ecx ebx r8d r10d r11d r12d xmm0 xmm1 xmm2
..B5.24:                        # Preds ..B5.22 ..B5.67
                                # Execution count [5.64e-01]
        cmpq      %r13, %rax                                    #593.5
        jae       ..B5.28       # Prob 15%                      #593.5
                                # LOE rax rbp rsi rdi r9 r13 ecx ebx r8d r10d r11d r12d xmm0 xmm2
..B5.25:                        # Preds ..B5.24
                                # Execution count [4.78e-01]
        movq      96(%rsp), %rdx                                #593.5[spill]
        movq      40(%rsp), %r14                                #593.5[spill]
        lea       8(,%rdx,8), %rdx                              #593.5
        imulq     %rbp, %rdx                                    #593.5
        lea       (%r14,%rax,8), %r15                           #593.5
        addq      %r15, %rdx                                    #593.5
                                # LOE rax rdx rbp rsi rdi r9 r13 ecx ebx r8d r10d r11d r12d xmm0 xmm2
..B5.26:                        # Preds ..B5.26 ..B5.25
                                # Execution count [2.65e+00]
        movsd     (%rdx), %xmm1                                 #593.5
        incq      %rax                                          #593.5
        mulsd     %xmm2, %xmm1                                  #593.5
        movsd     %xmm1, (%rdx)                                 #593.5
        addq      $8, %rdx                                      #593.5
        cmpq      %r13, %rax                                    #593.5
        jb        ..B5.26       # Prob 82%                      #593.5
                                # LOE rax rdx rbp rsi rdi r9 r13 ecx ebx r8d r10d r11d r12d xmm0 xmm2
..B5.28:                        # Preds ..B5.19 ..B5.26 ..B5.24
                                # Execution count [5.64e-01]
        movl      $0, 16(%rsp)                                  #593.5[spill]
        movq      $0, 8(%rsp)                                   #593.5[spill]
        cmpl      %ecx, %r12d                                   #593.5
        jge       ..B5.42       # Prob 9%                       #593.5
                                # LOE rbp rsi rdi r9 ecx ebx r8d r10d r11d r12d xmm0 xmm2
..B5.29:                        # Preds ..B5.28
                                # Execution count [5.08e-01]
        movq      184(%rsp), %r13                               #569.39[spill]
        movl      %ecx, %r14d                                   #593.5
        imulq     %rbp, %r13                                    #569.39
        subl      %r12d, %r14d                                  #593.5
        movl      $-858993459, %eax                             #593.5
        addl      $4, %r14d                                     #593.5
        lea       (%r13,%rbp,8), %r15                           #593.5
        mull      %r14d                                         #593.5
        movq      40(%rsp), %rax                                #593.5[spill]
        addq      %rax, %r13                                    #593.5
        movslq    %r12d, %r12                                   #593.5
        addq      %rax, %r15                                    #593.5
        movl      %edx, %r14d                                   #593.5
        movaps    %xmm2, %xmm1                                  #591.5
        shrl      $2, %r14d                                     #593.5
        unpcklpd  %xmm1, %xmm1                                  #591.5
        lea       (%r13,%rbp,8), %r13                           #593.5
        movl      %ebx, 264(%rsp)                               #591.5[spill]
        lea       (%r15,%r12,8), %rdx                           #593.5
        movl      %ecx, 208(%rsp)                               #591.5[spill]
        lea       (%r13,%r12,8), %rax                           #593.5
        movq      %rdi, 200(%rsp)                               #591.5[spill]
        movq      8(%rsp), %r13                                 #591.5[spill]
        movl      16(%rsp), %r15d                               #591.5[spill]
                                # LOE rax rdx rbp rsi r9 r13 r8d r10d r11d r14d r15d xmm0 xmm1 xmm2
..B5.30:                        # Preds ..B5.40 ..B5.29
                                # Execution count [2.82e+00]
        lea       (%rax,%r13,8), %r12                           #593.5
        movq      %r12, %rbx                                    #593.5
        andq      $15, %rbx                                     #593.5
        je        ..B5.33       # Prob 50%                      #593.5
                                # LOE rax rdx rbx rbp rsi r9 r12 r13 r8d r10d r11d r14d r15d xmm0 xmm1 xmm2
..B5.31:                        # Preds ..B5.30
                                # Execution count [2.82e+00]
        testq     $7, %rbx                                      #593.5
        jne       ..B5.65       # Prob 10%                      #593.5
                                # LOE rax rdx rbp rsi r9 r12 r13 r8d r10d r11d r14d r15d xmm0 xmm1 xmm2
..B5.32:                        # Preds ..B5.31
                                # Execution count [2.82e+00]
        movsd     (%rax,%r13,8), %xmm3                          #593.5
        movl      $1, %ebx                                      #593.5
        mulsd     %xmm2, %xmm3                                  #593.5
        movsd     %xmm3, (%rax,%r13,8)                          #593.5
                                # LOE rax rdx rbx rbp rsi r9 r12 r13 r8d r10d r11d r14d r15d xmm0 xmm1 xmm2
..B5.33:                        # Preds ..B5.32 ..B5.30
                                # Execution count [2.82e+00]
        movq      %rbx, %rdi                                    #593.5
        lea       (%rdx,%r13,8), %rcx                           #593.5
        negq      %rdi                                          #593.5
        addq      $5, %rdi                                      #593.5
        andq      $3, %rdi                                      #593.5
        negq      %rdi                                          #593.5
        addq      $5, %rdi                                      #593.5
                                # LOE rax rdx rcx rbx rbp rsi rdi r9 r12 r13 r8d r10d r11d r14d r15d xmm0 xmm1 xmm2
..B5.34:                        # Preds ..B5.34 ..B5.33
                                # Execution count [1.41e+01]
        movups    (%r12,%rbx,8), %xmm3                          #593.5
        mulpd     %xmm1, %xmm3                                  #593.5
        movups    %xmm3, (%r12,%rbx,8)                          #593.5
        movups    16(%rcx,%rbx,8), %xmm4                        #593.5
        mulpd     %xmm1, %xmm4                                  #593.5
        movups    %xmm4, 16(%rcx,%rbx,8)                        #593.5
        addq      $4, %rbx                                      #593.5
        cmpq      %rdi, %rbx                                    #593.5
        jb        ..B5.34       # Prob 79%                      #593.5
                                # LOE rax rdx rcx rbx rbp rsi rdi r9 r12 r13 r8d r10d r11d r14d r15d xmm0 xmm1 xmm2
..B5.36:                        # Preds ..B5.34 ..B5.65
                                # Execution count [2.82e+00]
        cmpq      $5, %rdi                                      #593.5
        jae       ..B5.40       # Prob 0%                       #593.5
                                # LOE rax rdx rbp rsi rdi r9 r12 r13 r8d r10d r11d r14d r15d xmm0 xmm1 xmm2
..B5.38:                        # Preds ..B5.36 ..B5.38
                                # Execution count [1.41e+01]
        movsd     (%r12,%rdi,8), %xmm3                          #593.5
        mulsd     %xmm2, %xmm3                                  #593.5
        movsd     %xmm3, (%r12,%rdi,8)                          #593.5
        incq      %rdi                                          #593.5
        cmpq      $5, %rdi                                      #593.5
        jb        ..B5.38       # Prob 79%                      #593.5
                                # LOE rax rdx rbp rsi rdi r9 r12 r13 r8d r10d r11d r14d r15d xmm0 xmm1 xmm2
..B5.40:                        # Preds ..B5.38 ..B5.36
                                # Execution count [2.82e+00]
        incl      %r15d                                         #593.5
        addq      $5, %r13                                      #593.5
        cmpl      %r14d, %r15d                                  #593.5
        jb        ..B5.30       # Prob 81%                      #593.5
                                # LOE rax rdx rbp rsi r9 r13 r8d r10d r11d r14d r15d xmm0 xmm1 xmm2
..B5.41:                        # Preds ..B5.40
                                # Execution count [5.08e-01]
        movl      264(%rsp), %ebx                               #[spill]
        movl      208(%rsp), %ecx                               #[spill]
        movq      200(%rsp), %rdi                               #[spill]
                                # LOE rbp rsi rdi r9 ecx ebx r8d r10d r11d xmm0
..B5.42:                        # Preds ..B5.28 ..B5.18 ..B5.41
                                # Execution count [4.20e+00]
        movq      96(%rsp), %r12                                #597.17[spill]
        lea       -1(%rcx), %edx                                #597.17
        movl      %edx, 136(%rsp)                               #597.17[spill]
        lea       2(%rbx), %r14d                                #597.11
        movl      256(%rsp), %eax                               #597.17[spill]
        addl      %eax, %r8d                                    #597.17
        addq      $8, %r9                                       #597.17
        lea       (%rsi,%r12,8), %rdx                           #597.17
        negl      %eax                                          #553.1
        lea       1(%rbx), %r12d                                #597.17
        movslq    %r12d, %r12                                   #597.11
        addl      %ebx, %eax                                    #569.9
        movslq    %r14d, %r14                                   #599.7
        lea       1(%rbp), %r13                                 #597.17
        movq      %r13, 144(%rsp)                               #597.17[spill]
        movq      %r14, 104(%rsp)                               #599.7[spill]
        movl      $0, 112(%rsp)                                 #597.5[spill]
        movl      %eax, 120(%rsp)                               #569.9[spill]
        cmpl      128(%rsp), %r12d                              #597.25[spill]
        jg        ..B5.62       # Prob 10%                      #597.25
                                # LOE rdx rbp rsi rdi r9 ecx ebx r8d r10d r11d r12d xmm0
..B5.43:                        # Preds ..B5.42
                                # Execution count [3.78e+00]
        movl      %ecx, %eax                                    #605.7
        andl      $-2147483645, %eax                            #605.7
        jge       ..B5.71       # Prob 50%                      #605.7
                                # LOE rdx rbp rsi rdi r9 eax ecx ebx r8d r10d r11d r12d xmm0
..B5.72:                        # Preds ..B5.43
                                # Execution count [3.78e+00]
        subl      $1, %eax                                      #605.7
        orl       $-4, %eax                                     #605.7
        incl      %eax                                          #605.7
                                # LOE rdx rbp rsi rdi r9 eax ecx ebx r8d r10d r11d r12d xmm0
..B5.71:                        # Preds ..B5.43 ..B5.72
                                # Execution count [3.78e+00]
        movq      40(%rsp), %r14                                #605.7[spill]
        movl      %ecx, %r13d                                   #605.7
        subl      %eax, %r13d                                   #605.7
        addl      $3, %r13d                                     #605.7
        shrl      $2, %r13d                                     #605.7
        lea       (%r14,%rsi), %r15                             #605.7
        movl      %r13d, 216(%rsp)                              #605.7[spill]
        lea       (%r15,%rbp,8), %r13                           #605.7
        movslq    %eax, %rax                                    #605.7
        lea       (%r14,%rbp,8), %r15                           #605.7
        movq      %r15, 48(%rsp)                                #605.7[spill]
        lea       (%rsi,%rbp,8), %rbp                           #605.7
        movl      256(%rsp), %esi                               #599.7[spill]
        addq      %r14, %rbp                                    #605.7
        imull     %r12d, %esi                                   #599.7
        movl      %eax, %r15d                                   #605.7
        movl      %esi, 56(%rsp)                                #599.7[spill]
        lea       (%rbp,%rax,8), %rsi                           #605.7
        movq      %rsi, 224(%rsp)                               #605.7[spill]
        lea       (%r13,%rax,8), %r14                           #605.7
        movl      128(%rsp), %esi                               #553.1[spill]
        subl      %r12d, %esi                                   #553.1
        shrl      $1, %r15d                                     #605.7
        incl      %esi                                          #553.1
        movq      %r14, 232(%rsp)                               #605.7[spill]
        movl      %r15d, 248(%rsp)                              #605.7[spill]
        movq      %rdx, 64(%rsp)                                #553.1[spill]
        movl      %esi, 272(%rsp)                               #553.1[spill]
        movq      %rbp, 192(%rsp)                               #553.1[spill]
        movq      %r9, 80(%rsp)                                 #553.1[spill]
        movl      %r8d, 88(%rsp)                                #553.1[spill]
        movl      %ebx, 264(%rsp)                               #553.1[spill]
        movq      %rax, 240(%rsp)                               #605.7[spill]
        movq      %r15, 176(%rsp)                               #605.7[spill]
        movl      %r12d, 72(%rsp)                               #553.1[spill]
        movq      %r13, 168(%rsp)                               #553.1[spill]
        movl      56(%rsp), %ebx                                #553.1[spill]
        movq      48(%rsp), %r9                                 #553.1[spill]
        movl      120(%rsp), %r8d                               #553.1[spill]
        movl      112(%rsp), %esi                               #553.1[spill]
        movq      104(%rsp), %rbp                               #553.1[spill]
        movq      %r12, %r14                                    #553.1
        movq      184(%rsp), %rdx                               #553.1[spill]
                                # LOE rdx rbp rdi r9 r14 eax ecx ebx esi r8d r10d r11d xmm0
..B5.44:                        # Preds ..B5.59 ..B5.71
                                # Execution count [2.10e+01]
        lea       (%r10,%r8), %r12d                             #599.23
        addl      %ebx, %r12d                                   #599.23
        movslq    %r12d, %r12                                   #599.23
        movsd     -16(%rdi,%r12,8), %xmm1                       #599.11
        cmpl      264(%rsp), %r11d                              #600.17[spill]
        je        ..B5.46       # Prob 50%                      #600.17
                                # LOE rdx rbp rdi r9 r12 r14 eax ecx ebx esi r8d r10d r11d xmm0 xmm1
..B5.45:                        # Preds ..B5.44
                                # Execution count [1.05e+01]
        lea       (%rbx,%r8), %r13d                             #602.40
        movslq    %r13d, %r13                                   #602.40
        movq      -8(%rdi,%r13,8), %r15                         #602.28
        movq      %r15, -16(%rdi,%r12,8)                        #602.9
        movsd     %xmm1, -8(%rdi,%r13,8)                        #603.9
                                # LOE rdx rbp rdi r9 r14 eax ecx ebx esi r8d r10d r11d xmm0 xmm1
..B5.46:                        # Preds ..B5.44 ..B5.45
                                # Execution count [2.10e+01]
        testl     %ecx, %ecx                                    #605.7
        jle       ..B5.59       # Prob 6%                       #605.7
                                # LOE rdx rbp rdi r9 r14 eax ecx ebx esi r8d r10d r11d xmm0 xmm1
..B5.47:                        # Preds ..B5.46
                                # Execution count [1.96e+01]
        ucomisd   %xmm0, %xmm1                                  #605.7
        jp        ..B5.48       # Prob 0%                       #605.7
        je        ..B5.59       # Prob 6%                       #605.7
                                # LOE rdx rbp rdi r9 r14 eax ecx ebx esi r8d r10d r11d xmm0 xmm1
..B5.48:                        # Preds ..B5.47
                                # Execution count [9.10e+00]
        testl     %eax, %eax                                    #605.7
        jle       ..B5.55       # Prob 50%                      #605.7
                                # LOE rdx rbp rdi r9 r14 eax ecx ebx esi r8d r10d r11d xmm0 xmm1
..B5.49:                        # Preds ..B5.48
                                # Execution count [9.10e+00]
        xorl      %r12d, %r12d                                  #605.7
        movl      $1, %r15d                                     #605.7
        xorl      %r13d, %r13d                                  #605.7
        cmpl      $0, 248(%rsp)                                 #605.7[spill]
        je        ..B5.53       # Prob 15%                      #605.7
                                # LOE rdx rbp rdi r9 r12 r13 r14 eax ecx ebx esi r8d r10d r11d r15d xmm0 xmm1
..B5.50:                        # Preds ..B5.49
                                # Execution count [7.70e+00]
        movq      %rdx, %r15                                    #605.51
        imulq     %r14, %r15                                    #605.51
        movl      %ecx, 208(%rsp)                               #605.7[spill]
        addq      %r9, %r15                                     #605.7
        movq      %rdi, 200(%rsp)                               #605.7[spill]
        movq      176(%rsp), %rdx                               #605.7[spill]
        movq      192(%rsp), %rcx                               #605.7[spill]
        movq      168(%rsp), %rdi                               #605.7[spill]
                                # LOE rdx rcx rbp rdi r9 r12 r13 r14 r15 eax ebx esi r8d r10d r11d xmm0 xmm1
..B5.51:                        # Preds ..B5.51 ..B5.50
                                # Execution count [2.14e+01]
        movsd     (%r13,%rdi), %xmm2                            #605.7
        incq      %r12                                          #605.7
        mulsd     %xmm1, %xmm2                                  #605.7
        addsd     (%r13,%r15), %xmm2                            #605.7
        movsd     %xmm2, (%r13,%r15)                            #605.7
        movsd     8(%r13,%rcx), %xmm3                           #605.7
        mulsd     %xmm1, %xmm3                                  #605.7
        addsd     8(%r13,%r15), %xmm3                           #605.7
        movsd     %xmm3, 8(%r13,%r15)                           #605.7
        addq      $16, %r13                                     #605.7
        cmpq      %rdx, %r12                                    #605.7
        jb        ..B5.51       # Prob 64%                      #605.7
                                # LOE rdx rcx rbp rdi r9 r12 r13 r14 r15 eax ebx esi r8d r10d r11d xmm0 xmm1
..B5.52:                        # Preds ..B5.51
                                # Execution count [7.70e+00]
        movq      184(%rsp), %rdx                               #[spill]
        lea       1(%r12,%r12), %r15d                           #605.7
        movl      208(%rsp), %ecx                               #[spill]
        movq      200(%rsp), %rdi                               #[spill]
                                # LOE rdx rbp rdi r9 r14 eax ecx ebx esi r8d r10d r11d r15d xmm0 xmm1
..B5.53:                        # Preds ..B5.52 ..B5.49
                                # Execution count [9.10e+00]
        lea       -1(%r15), %r12d                               #605.7
        cmpl      %eax, %r12d                                   #605.7
        jae       ..B5.55       # Prob 15%                      #605.7
                                # LOE rdx rbp rdi r9 r14 eax ecx ebx esi r8d r10d r11d r15d xmm0 xmm1
..B5.54:                        # Preds ..B5.53
                                # Execution count [7.70e+00]
        movq      %rdx, %r13                                    #605.51
        imulq     %r14, %r13                                    #605.51
        movslq    %r15d, %r15                                   #605.7
        addq      %r9, %r13                                     #605.7
        movq      192(%rsp), %r12                               #605.7[spill]
        movsd     -8(%r12,%r15,8), %xmm2                        #605.7
        mulsd     %xmm1, %xmm2                                  #605.7
        addsd     -8(%r13,%r15,8), %xmm2                        #605.7
        movsd     %xmm2, -8(%r13,%r15,8)                        #605.7
                                # LOE rdx rbp rdi r9 r14 eax ecx ebx esi r8d r10d r11d xmm0 xmm1
..B5.55:                        # Preds ..B5.48 ..B5.53 ..B5.54
                                # Execution count [9.10e+00]
        xorl      %r13d, %r13d                                  #605.7
        cmpl      %ecx, %eax                                    #605.7
        jge       ..B5.59       # Prob 10%                      #605.7
                                # LOE rdx rbp rdi r9 r14 eax ecx ebx esi r8d r10d r11d r13d xmm0 xmm1
..B5.56:                        # Preds ..B5.55
                                # Execution count [8.19e+00]
        imulq     %rdx, %r14                                    #605.51
        addq      %r9, %r14                                     #605.7
        movq      240(%rsp), %r12                               #605.7[spill]
        movl      %ecx, 208(%rsp)                               #605.7[spill]
        movq      %rdi, 200(%rsp)                               #605.7[spill]
        movq      224(%rsp), %rdi                               #605.7[spill]
        lea       (%r14,%r12,8), %r12                           #605.7
        movq      232(%rsp), %r14                               #605.7[spill]
        movl      216(%rsp), %ecx                               #605.7[spill]
        .align    16,0x90
                                # LOE rdx rbp rdi r9 r12 r14 eax ecx ebx esi r8d r10d r11d r13d xmm0 xmm1
..B5.57:                        # Preds ..B5.57 ..B5.56
                                # Execution count [4.55e+01]
        lea       (,%r13,4), %r15d                              #605.7
        incl      %r13d                                         #605.7
        movslq    %r15d, %r15                                   #605.7
        movsd     (%rdi,%r15,8), %xmm2                          #605.7
        mulsd     %xmm1, %xmm2                                  #605.7
        addsd     (%r12,%r15,8), %xmm2                          #605.7
        movsd     %xmm2, (%r12,%r15,8)                          #605.7
        movsd     8(%r14,%r15,8), %xmm3                         #605.7
        mulsd     %xmm1, %xmm3                                  #605.7
        addsd     8(%r12,%r15,8), %xmm3                         #605.7
        movsd     %xmm3, 8(%r12,%r15,8)                         #605.7
        movsd     16(%r14,%r15,8), %xmm4                        #605.7
        mulsd     %xmm1, %xmm4                                  #605.7
        addsd     16(%r12,%r15,8), %xmm4                        #605.7
        movsd     %xmm4, 16(%r12,%r15,8)                        #605.7
        movsd     24(%r14,%r15,8), %xmm5                        #605.7
        mulsd     %xmm1, %xmm5                                  #605.7
        addsd     24(%r12,%r15,8), %xmm5                        #605.7
        movsd     %xmm5, 24(%r12,%r15,8)                        #605.7
        cmpl      %ecx, %r13d                                   #605.7
        jb        ..B5.57       # Prob 82%                      #605.7
                                # LOE rdx rbp rdi r9 r12 r14 eax ecx ebx esi r8d r10d r11d r13d xmm0 xmm1
..B5.58:                        # Preds ..B5.57
                                # Execution count [8.19e+00]
        movl      208(%rsp), %ecx                               #[spill]
        movq      200(%rsp), %rdi                               #[spill]
                                # LOE rdx rbp rdi r9 eax ecx ebx esi r8d r10d r11d xmm0
..B5.59:                        # Preds ..B5.58 ..B5.55 ..B5.46 ..B5.47
                                # Execution count [2.10e+01]
        incl      %esi                                          #597.5
        movq      %rbp, %r14                                    #597.28
        addl      256(%rsp), %r8d                               #597.5[spill]
        incq      %rbp                                          #597.5
        cmpl      272(%rsp), %esi                               #597.5[spill]
        jb        ..B5.44       # Prob 82%                      #597.5
                                # LOE rdx rbp rdi r9 r14 eax ecx ebx esi r8d r10d r11d xmm0
..B5.60:                        # Preds ..B5.59
                                # Execution count [3.78e+00]
        movq      64(%rsp), %rdx                                #[spill]
        movl      72(%rsp), %r12d                               #[spill]
        movq      80(%rsp), %r9                                 #[spill]
        movl      88(%rsp), %r8d                                #[spill]
                                # LOE rdx rdi r9 r8d r12d xmm0
..B5.61:                        # Preds ..B5.60 ..B5.68
                                # Execution count [4.58e+00]
        movl      136(%rsp), %ecx                               #564.26[spill]
        movq      %rdx, %rsi                                    #564.26
        movq      144(%rsp), %rbp                               #564.26[spill]
        movl      %r12d, %ebx                                   #564.26
        cmpl      128(%rsp), %r12d                              #564.23[spill]
        jl        ..B5.3        # Prob 82%                      #564.23
                                # LOE rbp rsi rdi r9 ecx ebx r8d xmm0
..B5.62:                        # Preds ..B5.42 ..B5.61
                                # Execution count [8.24e-01]
        movl      128(%rsp), %r11d                              #[spill]
        lea       -1(%r11), %ecx                                #564.13
        movl      24(%rsp), %eax                                #[spill]
        movl      256(%rsp), %edx                               #[spill]
        movq      160(%rsp), %r10                               #[spill]
                                # LOE rdi r10 r12 r13 r14 eax edx ecx r11d xmm0
..B5.63:                        # Preds ..B5.1 ..B5.62
                                # Execution count [1.00e+00]
        imull     %ecx, %edx                                    #612.20
        movslq    %r11d, %rbx                                   #610.3
        movslq    %edx, %rdx                                    #612.8
        movl      %r11d, -4(%r10,%rbx,4)                        #610.3
        addq      %rdx, %rbx                                    #612.12
        movsd     -8(%rdi,%rbx,8), %xmm1                        #612.8
        ucomisd   %xmm0, %xmm1                                  #617.10
        jne       ..L397        # Prob 50%                      #617.10
        jp        ..L397        # Prob 0%                       #617.10
        movl      %r11d, %eax                                   #617.10
..L397:                                                         #
        addq      $280, %rsp                                    #617.10
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
	.cfi_def_cfa_offset 336
	.cfi_offset 3, -48
	.cfi_offset 6, -56
	.cfi_offset 12, -16
	.cfi_offset 13, -24
	.cfi_offset 14, -32
	.cfi_offset 15, -40
                                # LOE
..B5.65:                        # Preds ..B5.31
                                # Execution count [2.82e-01]: Infreq
        xorl      %edi, %edi                                    #593.5
        jmp       ..B5.36       # Prob 100%                     #593.5
                                # LOE rax rdx rbp rsi rdi r9 r12 r13 r8d r10d r11d r14d r15d xmm0 xmm1 xmm2
..B5.67:                        # Preds ..B5.20
                                # Execution count [4.78e-02]: Infreq
        xorl      %eax, %eax                                    #593.5
        jmp       ..B5.24       # Prob 100%                     #593.5
                                # LOE rax rbp rsi rdi r9 r13 ecx ebx r8d r10d r11d r12d xmm0 xmm2
..B5.68:                        # Preds ..B5.14
                                # Execution count [8.00e-01]: Infreq
        movq      96(%rsp), %rax                                #564.26[spill]
        lea       -1(%rcx), %edx                                #564.26
        addl      256(%rsp), %r8d                               #564.26[spill]
        lea       1(%rbp), %rcx                                 #564.26
        movl      %ebx, 24(%rsp)                                #576.7[spill]
        addq      $8, %r9                                       #564.26
        movl      %edx, 136(%rsp)                               #564.26[spill]
        lea       (%rsi,%rax,8), %rdx                           #564.26
        movq      %rcx, 144(%rsp)                               #564.26[spill]
        lea       1(%rbx), %r12d                                #564.26
        jmp       ..B5.61       # Prob 100%                     #564.26
        .align    16,0x90
                                # LOE rdx rdi r9 r8d r12d xmm0
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
..___tag_value_dgesl.424:
..L425:
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
        xorl      %ebp, %ebp                                    #686.5
        movq      %rcx, %rax                                    #677.1
        movl      %edx, %ebx                                    #677.1
        movslq    %esi, %rcx                                    #677.1
        movl      $1, %r10d                                     #686.11
        xorl      %edx, %edx                                    #715.11
        testl     %r9d, %r9d                                    #684.15
        jne       ..B6.38       # Prob 50%                      #684.15
                                # LOE rax rcx rdi r8 r10 r12 r13 r14 edx ebx ebp esi
..B6.2:                         # Preds ..B6.1
                                # Execution count [5.00e-01]
        cmpl      $1, %ebx                                      #686.25
        jle       ..B6.69       # Prob 15%                      #686.25
                                # LOE rax rcx rdi r8 r10 r12 r13 r14 edx ebx ebp esi
..B6.3:                         # Preds ..B6.2
                                # Execution count [4.23e-01]
        shlq      $3, %rcx                                      #697.7
        lea       -1(%rbx), %r9d                                #677.1
        movq      %rcx, -56(%rsp)                               #697.7[spill]
        subq      %rcx, %rdi                                    #697.7
        movl      %r9d, -80(%rsp)                               #697.7[spill]
        pxor      %xmm0, %xmm0                                  #697.7
        movl      %esi, -104(%rsp)                              #697.7[spill]
                                # LOE rax rdi r8 r10 edx ebx ebp xmm0
..B6.4:                         # Preds ..B6.19 ..B6.3
                                # Execution count [2.35e+00]
        movslq    %ebp, %r12                                    #686.5
        incl      %ebp                                          #688.7
        lea       -1(%rdx), %r11d                               #688.7
        movslq    (%rax,%r12,4), %rsi                           #689.11
        movsd     -8(%r8,%rsi,8), %xmm1                         #689.11
        cmpl      (%rax,%r12,4), %ebp                           #691.17
        je        ..B6.6        # Prob 50%                      #691.17
                                # LOE rax rsi rdi r8 r10 r12 edx ebx ebp r11d xmm0 xmm1
..B6.5:                         # Preds ..B6.4
                                # Execution count [1.18e+00]
        movq      (%r8,%r12,8), %rcx                            #693.18
        movq      %rcx, -8(%r8,%rsi,8)                          #693.9
        movsd     %xmm1, (%r8,%r12,8)                           #694.9
                                # LOE rax rdi r8 r10 r12 edx ebx ebp r11d xmm0 xmm1
..B6.6:                         # Preds ..B6.4 ..B6.5
                                # Execution count [2.35e+00]
        lea       -1(%rbx,%rdx), %esi                           #677.1
        testl     %esi, %esi                                    #697.7
        jle       ..B6.19       # Prob 6%                       #697.7
                                # LOE rax rdi r8 r10 r12 edx ebx ebp esi r11d xmm0 xmm1
..B6.7:                         # Preds ..B6.6
                                # Execution count [2.19e+00]
        ucomisd   %xmm0, %xmm1                                  #697.7
        jp        ..B6.8        # Prob 0%                       #697.7
        je        ..B6.19       # Prob 6%                       #697.7
                                # LOE rax rdi r8 r10 r12 edx ebx ebp esi r11d xmm0 xmm1
..B6.8:                         # Preds ..B6.7
                                # Execution count [1.02e+00]
        movl      %esi, %r9d                                    #697.7
        andl      $-2147483645, %r9d                            #697.7
        jge       ..B6.109      # Prob 50%                      #697.7
                                # LOE rax rdi r8 r10 r12 edx ebx ebp esi r9d r11d xmm0 xmm1
..B6.110:                       # Preds ..B6.8
                                # Execution count [1.02e+00]
        subl      $1, %r9d                                      #697.7
        orl       $-4, %r9d                                     #697.7
        incl      %r9d                                          #697.7
                                # LOE rax rdi r8 r10 r12 edx ebx ebp esi r9d r11d xmm0 xmm1
..B6.109:                       # Preds ..B6.8 ..B6.110
                                # Execution count [1.02e+00]
        testl     %r9d, %r9d                                    #697.7
        jle       ..B6.15       # Prob 50%                      #697.7
                                # LOE rax rdi r8 r10 r12 edx ebx ebp esi r9d r11d xmm0 xmm1
..B6.9:                         # Preds ..B6.109
                                # Execution count [1.02e+00]
        movl      %r9d, %r14d                                   #697.7
        xorl      %ecx, %ecx                                    #697.7
        movl      $1, %r13d                                     #697.7
        shrl      $1, %r14d                                     #697.7
        je        ..B6.13       # Prob 15%                      #697.7
                                # LOE rax rcx rdi r8 r10 r12 r14 edx ebx ebp esi r9d r11d r13d xmm0 xmm1
..B6.10:                        # Preds ..B6.9
                                # Execution count [8.63e-01]
        movslq    %r10d, %r13                                   #697.23
        lea       (%rdi,%r10,8), %r15                           #697.7
        imulq     -56(%rsp), %r13                               #697.33[spill]
        addq      %r13, %r15                                    #697.7
        lea       (%r13,%r10,8), %r13                           #697.7
        movq      %r15, -96(%rsp)                               #697.7[spill]
        lea       (%r8,%r10,8), %r15                            #697.7
        addq      %rdi, %r13                                    #697.7
        movq      %rax, -88(%rsp)                               #697.7[spill]
        movq      %r8, -72(%rsp)                                #697.7[spill]
        movq      %r15, %rax                                    #697.7
        movq      -96(%rsp), %r8                                #697.7[spill]
        movq      %rcx, %r15                                    #697.7
                                # LOE rax rcx rdi r8 r10 r12 r13 r14 r15 edx ebx ebp esi r9d r11d xmm0 xmm1
..B6.11:                        # Preds ..B6.11 ..B6.10
                                # Execution count [2.40e+00]
        movsd     (%r15,%r8), %xmm2                             #697.7
        incq      %rcx                                          #697.7
        mulsd     %xmm1, %xmm2                                  #697.7
        addsd     (%r15,%rax), %xmm2                            #697.7
        movsd     %xmm2, (%r15,%rax)                            #697.7
        movsd     8(%r15,%r13), %xmm3                           #697.7
        mulsd     %xmm1, %xmm3                                  #697.7
        addsd     8(%r15,%rax), %xmm3                           #697.7
        movsd     %xmm3, 8(%r15,%rax)                           #697.7
        addq      $16, %r15                                     #697.7
        cmpq      %r14, %rcx                                    #697.7
        jb        ..B6.11       # Prob 64%                      #697.7
                                # LOE rax rcx rdi r8 r10 r12 r13 r14 r15 edx ebx ebp esi r9d r11d xmm0 xmm1
..B6.12:                        # Preds ..B6.11
                                # Execution count [8.63e-01]
        movq      -88(%rsp), %rax                               #[spill]
        lea       1(%rcx,%rcx), %r13d                           #697.7
        movq      -72(%rsp), %r8                                #[spill]
                                # LOE rax rdi r8 r10 r12 edx ebx ebp esi r9d r11d r13d xmm0 xmm1
..B6.13:                        # Preds ..B6.12 ..B6.9
                                # Execution count [1.02e+00]
        lea       -1(%r13), %ecx                                #697.7
        cmpl      %r9d, %ecx                                    #697.7
        jae       ..B6.15       # Prob 15%                      #697.7
                                # LOE rax rdi r8 r10 r12 edx ebx ebp esi r9d r11d r13d xmm0 xmm1
..B6.14:                        # Preds ..B6.13
                                # Execution count [8.63e-01]
        movslq    %r10d, %rcx                                   #697.23
        lea       (%r8,%r10,8), %r15                            #697.7
        imulq     -56(%rsp), %rcx                               #697.33[spill]
        movslq    %r13d, %r13                                   #697.7
        lea       (%rcx,%r10,8), %r14                           #697.7
        addq      %rdi, %r14                                    #697.7
        movsd     -8(%r14,%r13,8), %xmm2                        #697.7
        mulsd     %xmm1, %xmm2                                  #697.7
        addsd     -8(%r15,%r13,8), %xmm2                        #697.7
        movsd     %xmm2, -8(%r15,%r13,8)                        #697.7
                                # LOE rax rdi r8 r10 r12 edx ebx ebp esi r9d r11d xmm0 xmm1
..B6.15:                        # Preds ..B6.109 ..B6.13 ..B6.14
                                # Execution count [1.02e+00]
        xorl      %r13d, %r13d                                  #697.7
        cmpl      %esi, %r9d                                    #697.7
        jge       ..B6.19       # Prob 10%                      #697.7
                                # LOE rax rdi r8 r10 r12 edx ebx ebp r9d r11d r13d xmm0 xmm1
..B6.16:                        # Preds ..B6.15
                                # Execution count [9.17e-01]
        movslq    %r10d, %rsi                                   #697.23
        addl      %ebx, %edx                                    #677.1
        imulq     -56(%rsp), %rsi                               #697.33[spill]
        subl      %r9d, %edx                                    #697.7
        lea       (%rdi,%r10,8), %rcx                           #697.7
        movslq    %r9d, %r9                                     #697.7
        lea       (%rsi,%r10,8), %r14                           #697.7
        addq      %rsi, %rcx                                    #697.7
        addl      $2, %edx                                      #697.7
        addq      %rdi, %r14                                    #697.7
        lea       (%r8,%r10,8), %r10                            #697.7
        shrl      $2, %edx                                      #697.7
        lea       (%rcx,%r9,8), %rcx                            #697.7
        lea       (%r14,%r9,8), %rsi                            #697.7
        lea       (%r10,%r9,8), %r9                             #697.7
        .align    16,0x90
                                # LOE rax rcx rsi rdi r8 r9 r12 edx ebx ebp r11d r13d xmm0 xmm1
..B6.17:                        # Preds ..B6.17 ..B6.16
                                # Execution count [5.10e+00]
        lea       (,%r13,4), %r10d                              #697.7
        incl      %r13d                                         #697.7
        movslq    %r10d, %r10                                   #697.7
        movsd     (%rsi,%r10,8), %xmm2                          #697.7
        mulsd     %xmm1, %xmm2                                  #697.7
        addsd     (%r9,%r10,8), %xmm2                           #697.7
        movsd     %xmm2, (%r9,%r10,8)                           #697.7
        movsd     8(%rcx,%r10,8), %xmm3                         #697.7
        mulsd     %xmm1, %xmm3                                  #697.7
        addsd     8(%r9,%r10,8), %xmm3                          #697.7
        movsd     %xmm3, 8(%r9,%r10,8)                          #697.7
        movsd     16(%rcx,%r10,8), %xmm4                        #697.7
        mulsd     %xmm1, %xmm4                                  #697.7
        addsd     16(%r9,%r10,8), %xmm4                         #697.7
        movsd     %xmm4, 16(%r9,%r10,8)                         #697.7
        movsd     24(%rcx,%r10,8), %xmm5                        #697.7
        mulsd     %xmm1, %xmm5                                  #697.7
        addsd     24(%r9,%r10,8), %xmm5                         #697.7
        movsd     %xmm5, 24(%r9,%r10,8)                         #697.7
        cmpl      %edx, %r13d                                   #697.7
        jb        ..B6.17       # Prob 82%                      #697.7
                                # LOE rax rcx rsi rdi r8 r9 r12 edx ebx ebp r11d r13d xmm0 xmm1
..B6.19:                        # Preds ..B6.17 ..B6.7 ..B6.15 ..B6.6
                                # Execution count [2.35e+00]
        movl      %r11d, %edx                                   #686.5
        lea       2(%r12), %r10                                 #686.28
        cmpl      -80(%rsp), %ebp                               #686.5[spill]
        jb        ..B6.4        # Prob 82%                      #686.5
                                # LOE rax rdi r8 r10 edx ebx ebp xmm0
..B6.20:                        # Preds ..B6.19
                                # Execution count [4.23e-01]
        movq      -56(%rsp), %rcx                               #[spill]
        movl      -104(%rsp), %esi                              #[spill]
        movslq    %ebx, %rbp                                    #701.11
                                # LOE rcx rbp rdi r8 r12 r13 r14 ebx esi xmm0
..B6.21:                        # Preds ..B6.20 ..B6.70
                                # Execution count [4.50e-01]
        movl      %ebx, %eax                                    #703.7
        xorl      %r9d, %r9d                                    #688.7
        imull     %esi, %eax                                    #703.7
        negl      %esi                                          #
        addl      %ebx, %eax                                    #703.37
        decl      %esi                                          #
        movslq    %eax, %rax                                    #688.7
        lea       (%r8,%rbp,8), %r10                            #703.16
        movslq    %esi, %rsi                                    #703.7
        movl      %ebx, %edx                                    #688.7
        movq      %rcx, -56(%rsp)                               #688.7[spill]
        movl      %ebx, -16(%rsp)                               #688.7[spill]
        lea       (%rdi,%rax,8), %r11                           #688.7
        xorl      %eax, %eax                                    #688.7
                                # LOE rax rbp rsi rdi r8 r10 r11 edx r9d xmm0
..B6.22:                        # Preds ..B6.35 ..B6.21
                                # Execution count [2.50e+00]
        movsd     -8(%r10,%rax,8), %xmm1                        #703.16
        lea       -1(%rdx), %r14d                               #705.17
        divsd     -8(%r11), %xmm1                               #703.25
        movsd     %xmm1, -8(%r10,%rax,8)                        #703.7
        xorps     .L_2il0floatpacket.12(%rip), %xmm1            #704.12
        testl     %r14d, %r14d                                  #705.7
        jle       ..B6.35       # Prob 6%                       #705.7
                                # LOE rax rbp rsi rdi r8 r10 r11 edx r9d r14d xmm0 xmm1
..B6.23:                        # Preds ..B6.22
                                # Execution count [2.33e+00]
        ucomisd   %xmm0, %xmm1                                  #705.7
        jp        ..B6.24       # Prob 0%                       #705.7
        je        ..B6.35       # Prob 6%                       #705.7
                                # LOE rax rbp rsi rdi r8 r10 r11 edx r9d r14d xmm0 xmm1
..B6.24:                        # Preds ..B6.23
                                # Execution count [1.08e+00]
        movl      %r14d, %r13d                                  #705.7
        andl      $-2147483645, %r13d                           #705.7
        jge       ..B6.111      # Prob 50%                      #705.7
                                # LOE rax rbp rsi rdi r8 r10 r11 edx r9d r13d r14d xmm0 xmm1
..B6.112:                       # Preds ..B6.24
                                # Execution count [1.08e+00]
        subl      $1, %r13d                                     #705.7
        orl       $-4, %r13d                                    #705.7
        incl      %r13d                                         #705.7
                                # LOE rax rbp rsi rdi r8 r10 r11 edx r9d r13d r14d xmm0 xmm1
..B6.111:                       # Preds ..B6.24 ..B6.112
                                # Execution count [1.08e+00]
        testl     %r13d, %r13d                                  #705.7
        jle       ..B6.31       # Prob 50%                      #705.7
                                # LOE rax rbp rsi rdi r8 r10 r11 edx r9d r13d r14d xmm0 xmm1
..B6.25:                        # Preds ..B6.111
                                # Execution count [1.08e+00]
        movl      %r13d, %r12d                                  #705.7
        xorl      %ecx, %ecx                                    #705.7
        movl      $1, %r15d                                     #705.7
        xorl      %ebx, %ebx                                    #705.7
        shrl      $1, %r12d                                     #705.7
        je        ..B6.29       # Prob 15%                      #705.7
                                # LOE rax rcx rbx rbp rsi rdi r8 r10 r11 r12 edx r9d r13d r14d r15d xmm0 xmm1
..B6.26:                        # Preds ..B6.25
                                # Execution count [9.17e-01]
        movq      -56(%rsp), %r15                               #705.33[spill]
        imulq     %rbp, %r15                                    #705.33
        addq      %rdi, %r15                                    #705.7
                                # LOE rax rcx rbx rbp rsi rdi r8 r10 r11 r12 r15 edx r9d r13d r14d xmm0 xmm1
..B6.27:                        # Preds ..B6.27 ..B6.26
                                # Execution count [2.55e+00]
        movsd     (%rbx,%r15), %xmm2                            #705.7
        incq      %rcx                                          #705.7
        mulsd     %xmm1, %xmm2                                  #705.7
        addsd     (%rbx,%r8), %xmm2                             #705.7
        movsd     %xmm2, (%rbx,%r8)                             #705.7
        movsd     8(%rbx,%r15), %xmm3                           #705.7
        mulsd     %xmm1, %xmm3                                  #705.7
        addsd     8(%rbx,%r8), %xmm3                            #705.7
        movsd     %xmm3, 8(%rbx,%r8)                            #705.7
        addq      $16, %rbx                                     #705.7
        cmpq      %r12, %rcx                                    #705.7
        jb        ..B6.27       # Prob 63%                      #705.7
                                # LOE rax rcx rbx rbp rsi rdi r8 r10 r11 r12 r15 edx r9d r13d r14d xmm0 xmm1
..B6.28:                        # Preds ..B6.27
                                # Execution count [9.17e-01]
        lea       1(%rcx,%rcx), %r15d                           #705.7
                                # LOE rax rbp rsi rdi r8 r10 r11 edx r9d r13d r14d r15d xmm0 xmm1
..B6.29:                        # Preds ..B6.28 ..B6.25
                                # Execution count [1.08e+00]
        lea       -1(%r15), %ecx                                #705.7
        cmpl      %r13d, %ecx                                   #705.7
        jae       ..B6.31       # Prob 15%                      #705.7
                                # LOE rax rbp rsi rdi r8 r10 r11 edx r9d r13d r14d r15d xmm0 xmm1
..B6.30:                        # Preds ..B6.29
                                # Execution count [9.17e-01]
        movq      -56(%rsp), %rcx                               #705.33[spill]
        imulq     %rbp, %rcx                                    #705.33
        movslq    %r15d, %r15                                   #705.7
        addq      %rdi, %rcx                                    #705.7
        movsd     -8(%rcx,%r15,8), %xmm2                        #705.7
        mulsd     %xmm1, %xmm2                                  #705.7
        addsd     -8(%r8,%r15,8), %xmm2                         #705.7
        movsd     %xmm2, -8(%r8,%r15,8)                         #705.7
                                # LOE rax rbp rsi rdi r8 r10 r11 edx r9d r13d r14d xmm0 xmm1
..B6.31:                        # Preds ..B6.29 ..B6.111 ..B6.30
                                # Execution count [1.08e+00]
        xorl      %ebx, %ebx                                    #705.7
        cmpl      %r14d, %r13d                                  #705.7
        jge       ..B6.35       # Prob 10%                      #705.7
                                # LOE rax rbp rsi rdi r8 r10 r11 edx ebx r9d r13d r14d xmm0 xmm1
..B6.32:                        # Preds ..B6.31
                                # Execution count [9.75e-01]
        imulq     -56(%rsp), %rbp                               #705.33[spill]
        movl      %edx, %r12d                                   #705.7
        addq      %rdi, %rbp                                    #705.7
        subl      %r13d, %r12d                                  #705.7
        movslq    %r13d, %r13                                   #705.7
        addl      $2, %r12d                                     #705.7
        shrl      $2, %r12d                                     #705.7
        lea       (%rbp,%r13,8), %rcx                           #705.7
        lea       (%r8,%r13,8), %rbp                            #705.7
        .align    16,0x90
                                # LOE rax rcx rbp rsi rdi r8 r10 r11 edx ebx r9d r12d r14d xmm0 xmm1
..B6.33:                        # Preds ..B6.33 ..B6.32
                                # Execution count [5.42e+00]
        lea       (,%rbx,4), %r13d                              #705.7
        incl      %ebx                                          #705.7
        movslq    %r13d, %r13                                   #705.7
        movsd     (%rcx,%r13,8), %xmm2                          #705.7
        mulsd     %xmm1, %xmm2                                  #705.7
        addsd     (%rbp,%r13,8), %xmm2                          #705.7
        movsd     %xmm2, (%rbp,%r13,8)                          #705.7
        movsd     8(%rcx,%r13,8), %xmm3                         #705.7
        mulsd     %xmm1, %xmm3                                  #705.7
        addsd     8(%rbp,%r13,8), %xmm3                         #705.7
        movsd     %xmm3, 8(%rbp,%r13,8)                         #705.7
        movsd     16(%rcx,%r13,8), %xmm4                        #705.7
        mulsd     %xmm1, %xmm4                                  #705.7
        addsd     16(%rbp,%r13,8), %xmm4                        #705.7
        movsd     %xmm4, 16(%rbp,%r13,8)                        #705.7
        movsd     24(%rcx,%r13,8), %xmm5                        #705.7
        mulsd     %xmm1, %xmm5                                  #705.7
        addsd     24(%rbp,%r13,8), %xmm5                        #705.7
        movsd     %xmm5, 24(%rbp,%r13,8)                        #705.7
        cmpl      %r12d, %ebx                                   #705.7
        jb        ..B6.33       # Prob 82%                      #705.7
                                # LOE rax rcx rbp rsi rdi r8 r10 r11 edx ebx r9d r12d r14d xmm0 xmm1
..B6.35:                        # Preds ..B6.33 ..B6.31 ..B6.23 ..B6.22
                                # Execution count [2.50e+00]
        incl      %r9d                                          #701.5
        decl      %edx                                          #701.5
        decq      %rax                                          #701.5
        lea       (%r11,%rsi,8), %r11                           #701.5
        movslq    %r14d, %rbp                                   #701.26
        cmpl      -16(%rsp), %r9d                               #701.5[spill]
        jb        ..B6.22       # Prob 81%                      #701.5
                                # LOE rax rbp rsi rdi r8 r10 r11 edx r9d xmm0
..B6.37:                        # Preds ..B6.104 ..B6.35 ..B6.69 ..B6.73
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
..B6.38:                        # Preds ..B6.1
                                # Execution count [5.00e-01]
        testl     %ebx, %ebx                                    #713.23
        jle       ..B6.73       # Prob 15%                      #713.23
                                # LOE rax rcx rdi r8 r12 r13 r14 ebx ebp
..B6.39:                        # Preds ..B6.38
                                # Execution count [2.92e-02]
        movq      %rdi, %rsi                                    #716.33
        lea       (,%rcx,8), %r9                                #716.33
        movq      %rax, -88(%rsp)                               #716.33[spill]
        lea       8(,%rcx,8), %r10                              #716.33
        subq      %r9, %rsi                                     #716.33
                                # LOE rcx rsi rdi r8 r9 r10 ebx ebp
..B6.40:                        # Preds ..B6.42 ..B6.39
                                # Execution count [1.62e-01]: Infreq
        pxor      %xmm0, %xmm0                                  #715.11
                                # LOE rcx rsi rdi r8 r9 r10 ebx ebp xmm0
..B6.41:                        # Preds ..B6.64 ..B6.66 ..B6.40
                                # Execution count [2.35e+00]: Infreq
        movslq    %ebp, %r14                                    #713.5
        movq      %r10, %rax                                    #716.45
        imulq     %r14, %rax                                    #716.45
        movsd     (%r8,%r14,8), %xmm1                           #716.18
        incl      %ebp                                          #713.5
        subsd     %xmm0, %xmm1                                  #716.27
        divsd     (%rdi,%rax), %xmm1                            #716.33
        movsd     %xmm1, (%r8,%r14,8)                           #716.7
        addq      $2, %r14                                      #713.26
        cmpl      %ebx, %ebp                                    #713.5
        jae       ..B6.72       # Prob 18%                      #713.5
                                # LOE rcx rsi rdi r8 r9 r10 r14 ebx ebp
..B6.42:                        # Preds ..B6.41
                                # Execution count [1.93e+00]: Infreq
        pxor      %xmm0, %xmm0                                  #715.11
        testl     %ebp, %ebp                                    #715.11
        jle       ..B6.40       # Prob 6%                       #715.11
                                # LOE rcx rsi rdi r8 r9 r10 r14 ebx ebp xmm0
..B6.43:                        # Preds ..B6.42
                                # Execution count [1.09e+00]: Infreq
        movl      $1717986919, %eax                             #715.11
        movl      %ebp, %r11d                                   #715.11
        imull     %ebp                                          #715.11
        sarl      $31, %r11d                                    #715.11
        sarl      $1, %edx                                      #715.11
        subl      %r11d, %edx                                   #715.11
        lea       (%rdx,%rdx,4), %edx                           #715.11
        negl      %edx                                          #715.11
        addl      %ebp, %edx                                    #715.11
        testl     %edx, %edx                                    #715.11
        jle       ..B6.64       # Prob 50%                      #715.11
                                # LOE rcx rsi rdi r8 r9 r10 r14 edx ebx ebp xmm0
..B6.44:                        # Preds ..B6.43
                                # Execution count [1.09e+00]: Infreq
        movl      %edx, %r13d                                   #715.11
        xorl      %eax, %eax                                    #715.11
        movl      $1, %r11d                                     #715.11
        xorl      %r12d, %r12d                                  #715.11
        shrl      $3, %r13d                                     #715.11
        je        ..B6.48       # Prob 15%                      #715.11
                                # LOE rax rcx rsi rdi r8 r9 r10 r12 r13 r14 edx ebx ebp r11d xmm0
..B6.45:                        # Preds ..B6.44
                                # Execution count [3.22e-03]: Infreq
        movslq    %r14d, %r11                                   #697.23
        imulq     %r9, %r11                                     #697.33
        pxor      %xmm7, %xmm7                                  #715.11
        addq      %rsi, %r11                                    #715.11
        movaps    %xmm7, %xmm6                                  #715.11
        movaps    %xmm6, %xmm5                                  #715.11
        movaps    %xmm5, %xmm4                                  #715.11
        movaps    %xmm4, %xmm3                                  #715.11
        movaps    %xmm3, %xmm2                                  #715.11
        movaps    %xmm2, %xmm1                                  #715.11
                                # LOE rax rcx rsi rdi r8 r9 r10 r11 r12 r13 r14 edx ebx ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B6.46:                        # Preds ..B6.46 ..B6.45
                                # Execution count [6.44e-01]: Infreq
        movsd     (%r12,%r11), %xmm8                            #715.11
        incq      %rax                                          #715.11
        movsd     8(%r12,%r11), %xmm9                           #715.11
        movsd     16(%r12,%r11), %xmm10                         #715.11
        movsd     24(%r12,%r11), %xmm11                         #715.11
        movsd     32(%r12,%r11), %xmm12                         #715.11
        movsd     40(%r12,%r11), %xmm13                         #715.11
        movsd     48(%r12,%r11), %xmm14                         #715.11
        movsd     56(%r12,%r11), %xmm15                         #715.11
        mulsd     (%r12,%r8), %xmm8                             #715.11
        mulsd     8(%r12,%r8), %xmm9                            #715.11
        mulsd     16(%r12,%r8), %xmm10                          #715.11
        addsd     %xmm8, %xmm0                                  #715.11
        mulsd     24(%r12,%r8), %xmm11                          #715.11
        addsd     %xmm9, %xmm7                                  #715.11
        mulsd     32(%r12,%r8), %xmm12                          #715.11
        addsd     %xmm10, %xmm6                                 #715.11
        mulsd     40(%r12,%r8), %xmm13                          #715.11
        addsd     %xmm11, %xmm5                                 #715.11
        mulsd     48(%r12,%r8), %xmm14                          #715.11
        addsd     %xmm12, %xmm4                                 #715.11
        mulsd     56(%r12,%r8), %xmm15                          #715.11
        addsd     %xmm13, %xmm3                                 #715.11
        addsd     %xmm14, %xmm2                                 #715.11
        addsd     %xmm15, %xmm1                                 #715.11
        addq      $64, %r12                                     #715.11
        cmpq      %r13, %rax                                    #715.11
        jb        ..B6.46       # Prob 99%                      #715.11
                                # LOE rax rcx rsi rdi r8 r9 r10 r11 r12 r13 r14 edx ebx ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B6.47:                        # Preds ..B6.46
                                # Execution count [9.27e-01]: Infreq
        addsd     %xmm7, %xmm0                                  #715.11
        addsd     %xmm6, %xmm0                                  #715.11
        addsd     %xmm5, %xmm0                                  #715.11
        addsd     %xmm4, %xmm0                                  #715.11
        addsd     %xmm3, %xmm0                                  #715.11
        addsd     %xmm2, %xmm0                                  #715.11
        addsd     %xmm1, %xmm0                                  #715.11
        lea       1(,%rax,8), %r11d                             #715.11
                                # LOE rcx rsi rdi r8 r9 r10 r14 edx ebx ebp r11d xmm0
..B6.48:                        # Preds ..B6.47 ..B6.44
                                # Execution count [1.09e+00]: Infreq
        cmpl      %edx, %r11d                                   #715.11
        ja        ..B6.64       # Prob 50%                      #715.11
                                # LOE rcx rsi rdi r8 r9 r10 r14 edx ebx ebp r11d xmm0
..B6.49:                        # Preds ..B6.48
                                # Execution count [0.00e+00]: Infreq
        lea       -1(%r11), %eax                                #715.11
        negl      %eax                                          #715.11
        addl      %edx, %eax                                    #715.11
        decl      %eax                                          #715.11
        jmp       *.2.34_2.switchtab.58(,%rax,8)                #715.11
                                # LOE rcx rsi rdi r8 r9 r10 r14 edx ebx ebp r11d xmm0
..1.34_0.TAG.6:
..B6.51:                        # Preds ..B6.49
                                # Execution count [0.00e+00]: Infreq
        movslq    %r14d, %rax                                   #697.23
        imulq     %r9, %rax                                     #697.33
        movslq    %r11d, %r11                                   #715.11
        addq      %rsi, %rax                                    #715.11
        movsd     40(%rax,%r11,8), %xmm1                        #715.11
        mulsd     40(%r8,%r11,8), %xmm1                         #715.11
        addsd     %xmm1, %xmm0                                  #715.11
        jmp       ..B6.53       # Prob 100%                     #715.11
                                # LOE rax rcx rsi rdi r8 r9 r10 r14 edx ebx ebp r11d xmm0
..1.34_0.TAG.5:
..B6.52:                        # Preds ..B6.49
                                # Execution count [0.00e+00]: Infreq
        movslq    %r14d, %rax                                   #697.23
        imulq     %r9, %rax                                     #697.23
        addq      %rsi, %rax                                    #697.23
                                # LOE rax rcx rsi rdi r8 r9 r10 r14 edx ebx ebp r11d xmm0
..B6.53:                        # Preds ..B6.52 ..B6.51
                                # Execution count [0.00e+00]: Infreq
        movslq    %r11d, %r11                                   #715.11
        movsd     32(%rax,%r11,8), %xmm1                        #715.11
        mulsd     32(%r8,%r11,8), %xmm1                         #715.11
        addsd     %xmm1, %xmm0                                  #715.11
        jmp       ..B6.55       # Prob 100%                     #715.11
                                # LOE rax rcx rsi rdi r8 r9 r10 r14 edx ebx ebp r11d xmm0
..1.34_0.TAG.4:
..B6.54:                        # Preds ..B6.49
                                # Execution count [0.00e+00]: Infreq
        movslq    %r14d, %rax                                   #697.23
        imulq     %r9, %rax                                     #697.23
        addq      %rsi, %rax                                    #697.23
                                # LOE rax rcx rsi rdi r8 r9 r10 r14 edx ebx ebp r11d xmm0
..B6.55:                        # Preds ..B6.54 ..B6.53
                                # Execution count [0.00e+00]: Infreq
        movslq    %r11d, %r11                                   #715.11
        movsd     24(%rax,%r11,8), %xmm1                        #715.11
        mulsd     24(%r8,%r11,8), %xmm1                         #715.11
        addsd     %xmm1, %xmm0                                  #715.11
        jmp       ..B6.57       # Prob 100%                     #715.11
                                # LOE rax rcx rsi rdi r8 r9 r10 r14 edx ebx ebp r11d xmm0
..1.34_0.TAG.3:
..B6.56:                        # Preds ..B6.49
                                # Execution count [0.00e+00]: Infreq
        movslq    %r14d, %rax                                   #697.23
        imulq     %r9, %rax                                     #697.23
        addq      %rsi, %rax                                    #697.23
                                # LOE rax rcx rsi rdi r8 r9 r10 r14 edx ebx ebp r11d xmm0
..B6.57:                        # Preds ..B6.56 ..B6.55
                                # Execution count [0.00e+00]: Infreq
        movslq    %r11d, %r11                                   #715.11
        movsd     16(%rax,%r11,8), %xmm1                        #715.11
        mulsd     16(%r8,%r11,8), %xmm1                         #715.11
        addsd     %xmm1, %xmm0                                  #715.11
        jmp       ..B6.59       # Prob 100%                     #715.11
                                # LOE rax rcx rsi rdi r8 r9 r10 r14 edx ebx ebp r11d xmm0
..1.34_0.TAG.2:
..B6.58:                        # Preds ..B6.49
                                # Execution count [0.00e+00]: Infreq
        movslq    %r14d, %rax                                   #697.23
        imulq     %r9, %rax                                     #697.23
        addq      %rsi, %rax                                    #697.23
                                # LOE rax rcx rsi rdi r8 r9 r10 r14 edx ebx ebp r11d xmm0
..B6.59:                        # Preds ..B6.58 ..B6.57
                                # Execution count [0.00e+00]: Infreq
        movslq    %r11d, %r11                                   #715.11
        movsd     8(%rax,%r11,8), %xmm1                         #715.11
        mulsd     8(%r8,%r11,8), %xmm1                          #715.11
        addsd     %xmm1, %xmm0                                  #715.11
        jmp       ..B6.61       # Prob 100%                     #715.11
                                # LOE rax rcx rsi rdi r8 r9 r10 r14 edx ebx ebp r11d xmm0
..1.34_0.TAG.1:
..B6.60:                        # Preds ..B6.49
                                # Execution count [0.00e+00]: Infreq
        movslq    %r14d, %rax                                   #697.23
        imulq     %r9, %rax                                     #697.23
        addq      %rsi, %rax                                    #697.23
                                # LOE rax rcx rsi rdi r8 r9 r10 r14 edx ebx ebp r11d xmm0
..B6.61:                        # Preds ..B6.60 ..B6.59
                                # Execution count [0.00e+00]: Infreq
        movslq    %r11d, %r11                                   #715.11
        movsd     (%rax,%r11,8), %xmm1                          #715.11
        mulsd     (%r8,%r11,8), %xmm1                           #715.11
        addsd     %xmm1, %xmm0                                  #715.11
        jmp       ..B6.63       # Prob 100%                     #715.11
                                # LOE rax rcx rsi rdi r8 r9 r10 r14 edx ebx ebp r11d xmm0
..1.34_0.TAG.0:
..B6.62:                        # Preds ..B6.49
                                # Execution count [0.00e+00]: Infreq
        movslq    %r14d, %rax                                   #697.23
        imulq     %r9, %rax                                     #697.23
        addq      %rsi, %rax                                    #697.23
                                # LOE rax rcx rsi rdi r8 r9 r10 r14 edx ebx ebp r11d xmm0
..B6.63:                        # Preds ..B6.62 ..B6.61
                                # Execution count [9.27e-01]: Infreq
        movslq    %r11d, %r11                                   #715.11
        movsd     -8(%rax,%r11,8), %xmm1                        #715.11
        mulsd     -8(%r8,%r11,8), %xmm1                         #715.11
        addsd     %xmm1, %xmm0                                  #715.11
                                # LOE rcx rsi rdi r8 r9 r10 r14 edx ebx ebp xmm0
..B6.64:                        # Preds ..B6.63 ..B6.48 ..B6.43
                                # Execution count [1.09e+00]: Infreq
        xorl      %r11d, %r11d                                  #715.11
        xorl      %r12d, %r12d                                  #715.11
        cmpl      %ebp, %edx                                    #715.11
        jge       ..B6.41       # Prob 10%                      #715.11
                                # LOE rcx rsi rdi r8 r9 r10 r12 r14 edx ebx ebp r11d xmm0
..B6.65:                        # Preds ..B6.64
                                # Execution count [9.85e-01]: Infreq
        movslq    %r14d, %r14                                   #697.23
        movl      $-858993459, %eax                             #715.11
        imulq     %r9, %r14                                     #697.33
        movslq    %edx, %rdx                                    #715.11
        addq      %rsi, %r14                                    #715.11
        lea       (%r8,%rdx,8), %r13                            #715.11
        lea       (%r14,%rdx,8), %r14                           #715.11
        negl      %edx                                          #715.11
        addl      %ebp, %edx                                    #715.11
        addl      $4, %edx                                      #715.11
        mull      %edx                                          #715.11
        shrl      $2, %edx                                      #715.11
        .align    16,0x90
                                # LOE rcx rsi rdi r8 r9 r10 r12 r13 r14 edx ebx ebp r11d xmm0
..B6.66:                        # Preds ..B6.66 ..B6.65
                                # Execution count [5.47e+00]: Infreq
        movsd     (%r14,%r12,8), %xmm1                          #715.11
        incl      %r11d                                         #715.11
        mulsd     (%r13,%r12,8), %xmm1                          #715.11
        movsd     8(%r14,%r12,8), %xmm2                         #715.11
        addsd     %xmm1, %xmm0                                  #715.11
        mulsd     8(%r13,%r12,8), %xmm2                         #715.11
        movsd     16(%r14,%r12,8), %xmm3                        #715.11
        addsd     %xmm2, %xmm0                                  #715.11
        mulsd     16(%r13,%r12,8), %xmm3                        #715.11
        movsd     24(%r14,%r12,8), %xmm4                        #715.11
        addsd     %xmm3, %xmm0                                  #715.11
        mulsd     24(%r13,%r12,8), %xmm4                        #715.11
        movsd     32(%r14,%r12,8), %xmm5                        #715.11
        addsd     %xmm4, %xmm0                                  #715.11
        mulsd     32(%r13,%r12,8), %xmm5                        #715.11
        addq      $5, %r12                                      #715.11
        addsd     %xmm5, %xmm0                                  #715.11
        cmpl      %edx, %r11d                                   #715.11
        jb        ..B6.66       # Prob 81%                      #715.11
        jmp       ..B6.41       # Prob 100%                     #715.11
                                # LOE rcx rsi rdi r8 r9 r10 r12 r13 r14 edx ebx ebp r11d xmm0
..B6.69:                        # Preds ..B6.2
                                # Execution count [7.67e-02]: Infreq
        movslq    %ebx, %rbp                                    #701.11
        jl        ..B6.37       # Prob 9%                       #701.23
                                # LOE rcx rbp rdi r8 r12 r13 r14 ebx esi
..B6.70:                        # Preds ..B6.69
                                # Execution count [6.91e-02]: Infreq
        shlq      $3, %rcx                                      #703.25
        subq      %rcx, %rdi                                    #703.25
        pxor      %xmm0, %xmm0                                  #703.25
        jmp       ..B6.21       # Prob 100%                     #703.25
                                # LOE rcx rbp rdi r8 r12 r13 r14 ebx esi xmm0
..B6.72:                        # Preds ..B6.41
                                # Execution count [4.23e-01]: Infreq
        movq      -88(%rsp), %rax                               #[spill]
                                # LOE rax rcx rdi r8 r12 r13 r14 ebx
..B6.73:                        # Preds ..B6.38 ..B6.72
                                # Execution count [5.00e-01]: Infreq
        movslq    %ebx, %r11                                    #719.11
        lea       -1(%rbx), %edx                                #719.11
        xorl      %r9d, %r9d                                    #719.5
        xorl      %esi, %esi                                    #721.25
        movl      %ebx, %ebp                                    #721.25
        lea       -1(%r11), %r10                                #719.17
        testl     %edx, %edx                                    #719.25
        jle       ..B6.37       # Prob 9%                       #719.25
                                # LOE rax rcx rsi rdi r8 r10 r11 r12 r13 r14 edx ebx ebp r9d
..B6.74:                        # Preds ..B6.73
                                # Execution count [4.50e-01]: Infreq
        shlq      $3, %rcx                                      #721.25
        lea       (%rax,%r11,4), %rax                           #722.11
        subq      %rcx, %rdi                                    #721.25
        lea       (%r8,%r11,8), %r15                            #721.16
        movq      %rdi, -48(%rsp)                               #721.25[spill]
        movq      %rax, %rdi                                    #721.25
        movq      %rcx, -56(%rsp)                               #721.25[spill]
        movl      %edx, -24(%rsp)                               #721.25[spill]
        movl      %ebx, -16(%rsp)                               #721.25[spill]
                                # LOE rsi rdi r8 r10 r11 r15 ebp r9d
..B6.75:                        # Preds ..B6.104 ..B6.74
                                # Execution count [2.50e+00]: Infreq
        movl      -16(%rsp), %r13d                              #721.32[spill]
        lea       -1(%rbp), %r12d                               #721.25
        subl      %r12d, %r13d                                  #721.32
        pxor      %xmm0, %xmm0                                  #721.25
        testl     %r13d, %r13d                                  #721.25
        jle       ..B6.106      # Prob 6%                       #721.25
                                # LOE rsi rdi r8 r10 r11 r15 ebp r9d r12d r13d xmm0
..B6.76:                        # Preds ..B6.75
                                # Execution count [1.16e+00]: Infreq
        movl      $1717986919, %eax                             #721.25
        movl      %r13d, %ecx                                   #721.25
        imull     %r13d                                         #721.25
        sarl      $31, %ecx                                     #721.25
        sarl      $1, %edx                                      #721.25
        subl      %ecx, %edx                                    #721.25
        lea       (%rdx,%rdx,4), %edx                           #721.25
        negl      %edx                                          #721.25
        addl      %r13d, %edx                                   #721.25
        testl     %edx, %edx                                    #721.25
        jle       ..B6.97       # Prob 50%                      #721.25
                                # LOE rsi rdi r8 r10 r11 r15 edx ebp r9d r12d r13d xmm0
..B6.77:                        # Preds ..B6.76
                                # Execution count [1.16e+00]: Infreq
        movl      %edx, %eax                                    #721.25
        xorl      %ebx, %ebx                                    #721.25
        movl      $1, %r14d                                     #721.25
        xorl      %ecx, %ecx                                    #721.25
        shrl      $3, %eax                                      #721.25
        je        ..B6.81       # Prob 15%                      #721.25
                                # LOE rax rcx rbx rsi rdi r8 r10 r11 r15 edx ebp r9d r12d r13d r14d xmm0
..B6.78:                        # Preds ..B6.77
                                # Execution count [3.42e-03]: Infreq
        movq      %rbx, -88(%rsp)                               #[spill]
        lea       (%r8,%r10,8), %rbx                            #721.25
        movq      %rbx, -104(%rsp)                              #721.25[spill]
        movslq    %r10d, %rbx                                   #721.37
        pxor      %xmm7, %xmm7                                  #721.25
        imulq     -56(%rsp), %rbx                               #721.47[spill]
        movq      %rcx, -80(%rsp)                               #[spill]
        movaps    %xmm7, %xmm6                                  #721.25
        movq      -48(%rsp), %rcx                               #721.25[spill]
        movaps    %xmm6, %xmm5                                  #721.25
        movaps    %xmm5, %xmm4                                  #721.25
        movaps    %xmm4, %xmm3                                  #721.25
        movaps    %xmm3, %xmm2                                  #721.25
        lea       (%rcx,%r10,8), %r14                           #721.25
        addq      %rbx, %r14                                    #721.25
        movaps    %xmm2, %xmm1                                  #721.25
        movq      %r14, -96(%rsp)                               #721.25[spill]
        lea       (%rbx,%r10,8), %r14                           #721.25
        addq      %rcx, %r14                                    #721.25
        movq      %r11, -64(%rsp)                               #721.25[spill]
        movq      %r8, -72(%rsp)                                #721.25[spill]
        movq      -80(%rsp), %rcx                               #721.25[spill]
        movq      -88(%rsp), %rbx                               #721.25[spill]
        movq      %r14, %r8                                     #721.25
        movq      -96(%rsp), %r11                               #721.25[spill]
        movq      -104(%rsp), %r14                              #721.25[spill]
                                # LOE rax rcx rbx rsi rdi r8 r10 r11 r14 r15 edx ebp r9d r12d r13d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B6.79:                        # Preds ..B6.79 ..B6.78
                                # Execution count [6.84e-01]: Infreq
        movsd     (%rcx,%r11), %xmm8                            #721.25
        incq      %rbx                                          #721.25
        movsd     8(%rcx,%r8), %xmm9                            #721.25
        movsd     16(%rcx,%r8), %xmm10                          #721.25
        movsd     24(%rcx,%r8), %xmm11                          #721.25
        movsd     32(%rcx,%r8), %xmm12                          #721.25
        movsd     40(%rcx,%r8), %xmm13                          #721.25
        movsd     48(%rcx,%r8), %xmm14                          #721.25
        movsd     56(%rcx,%r8), %xmm15                          #721.25
        mulsd     (%rcx,%r14), %xmm8                            #721.25
        mulsd     8(%rcx,%r14), %xmm9                           #721.25
        mulsd     16(%rcx,%r14), %xmm10                         #721.25
        addsd     %xmm8, %xmm0                                  #721.25
        mulsd     24(%rcx,%r14), %xmm11                         #721.25
        addsd     %xmm9, %xmm7                                  #721.25
        mulsd     32(%rcx,%r14), %xmm12                         #721.25
        addsd     %xmm10, %xmm6                                 #721.25
        mulsd     40(%rcx,%r14), %xmm13                         #721.25
        addsd     %xmm11, %xmm5                                 #721.25
        mulsd     48(%rcx,%r14), %xmm14                         #721.25
        addsd     %xmm12, %xmm4                                 #721.25
        mulsd     56(%rcx,%r14), %xmm15                         #721.25
        addsd     %xmm13, %xmm3                                 #721.25
        addsd     %xmm14, %xmm2                                 #721.25
        addsd     %xmm15, %xmm1                                 #721.25
        addq      $64, %rcx                                     #721.25
        cmpq      %rax, %rbx                                    #721.25
        jb        ..B6.79       # Prob 99%                      #721.25
                                # LOE rax rcx rbx rsi rdi r8 r10 r11 r14 r15 edx ebp r9d r12d r13d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B6.80:                        # Preds ..B6.79
                                # Execution count [9.85e-01]: Infreq
        movq      -64(%rsp), %r11                               #[spill]
        lea       1(,%rbx,8), %r14d                             #721.25
        movq      -72(%rsp), %r8                                #[spill]
        addsd     %xmm7, %xmm0                                  #721.25
        addsd     %xmm6, %xmm0                                  #721.25
        addsd     %xmm5, %xmm0                                  #721.25
        addsd     %xmm4, %xmm0                                  #721.25
        addsd     %xmm3, %xmm0                                  #721.25
        addsd     %xmm2, %xmm0                                  #721.25
        addsd     %xmm1, %xmm0                                  #721.25
                                # LOE rsi rdi r8 r10 r11 r15 edx ebp r9d r12d r13d r14d xmm0
..B6.81:                        # Preds ..B6.80 ..B6.77
                                # Execution count [1.16e+00]: Infreq
        cmpl      %edx, %r14d                                   #721.25
        ja        ..B6.97       # Prob 50%                      #721.25
                                # LOE rsi rdi r8 r10 r11 r15 edx ebp r9d r12d r13d r14d xmm0
..B6.82:                        # Preds ..B6.81
                                # Execution count [0.00e+00]: Infreq
        lea       -1(%r14), %ecx                                #721.25
        negl      %ecx                                          #721.25
        addl      %edx, %ecx                                    #721.25
        decl      %ecx                                          #721.25
        jmp       *.2.34_2.switchtab.59(,%rcx,8)                #721.25
                                # LOE rsi rdi r8 r10 r11 r15 edx ebp r9d r12d r13d r14d xmm0
..1.34_1.TAG.6:
..B6.84:                        # Preds ..B6.82
                                # Execution count [0.00e+00]: Infreq
        movslq    %r10d, %rcx                                   #721.37
        imulq     -56(%rsp), %rcx                               #721.47[spill]
        movslq    %r14d, %r14                                   #721.25
        lea       (%rcx,%r10,8), %rbx                           #721.25
        addq      -48(%rsp), %rbx                               #721.25[spill]
        lea       (%r8,%r10,8), %rcx                            #721.25
        movsd     40(%rbx,%r14,8), %xmm1                        #721.25
        mulsd     40(%rcx,%r14,8), %xmm1                        #721.25
        addsd     %xmm1, %xmm0                                  #721.25
                                # LOE rsi rdi r8 r10 r11 r15 edx ebp r9d r12d r13d r14d xmm0
..1.34_1.TAG.5:
..B6.86:                        # Preds ..B6.82 ..B6.84
                                # Execution count [0.00e+00]: Infreq
        movslq    %r10d, %rcx                                   #721.37
        imulq     -56(%rsp), %rcx                               #721.47[spill]
        movslq    %r14d, %r14                                   #721.25
        lea       (%rcx,%r10,8), %rbx                           #721.25
        addq      -48(%rsp), %rbx                               #721.25[spill]
        lea       (%r8,%r10,8), %rcx                            #721.25
        movsd     32(%rbx,%r14,8), %xmm1                        #721.25
        mulsd     32(%rcx,%r14,8), %xmm1                        #721.25
        addsd     %xmm1, %xmm0                                  #721.25
                                # LOE rsi rdi r8 r10 r11 r15 edx ebp r9d r12d r13d r14d xmm0
..1.34_1.TAG.4:
..B6.88:                        # Preds ..B6.82 ..B6.86
                                # Execution count [0.00e+00]: Infreq
        movslq    %r10d, %rcx                                   #721.37
        imulq     -56(%rsp), %rcx                               #721.47[spill]
        movslq    %r14d, %r14                                   #721.25
        lea       (%rcx,%r10,8), %rbx                           #721.25
        addq      -48(%rsp), %rbx                               #721.25[spill]
        lea       (%r8,%r10,8), %rcx                            #721.25
        movsd     24(%rbx,%r14,8), %xmm1                        #721.25
        mulsd     24(%rcx,%r14,8), %xmm1                        #721.25
        addsd     %xmm1, %xmm0                                  #721.25
                                # LOE rsi rdi r8 r10 r11 r15 edx ebp r9d r12d r13d r14d xmm0
..1.34_1.TAG.3:
..B6.90:                        # Preds ..B6.82 ..B6.88
                                # Execution count [0.00e+00]: Infreq
        movslq    %r10d, %rcx                                   #721.37
        imulq     -56(%rsp), %rcx                               #721.47[spill]
        movslq    %r14d, %r14                                   #721.25
        lea       (%rcx,%r10,8), %rbx                           #721.25
        addq      -48(%rsp), %rbx                               #721.25[spill]
        lea       (%r8,%r10,8), %rcx                            #721.25
        movsd     16(%rbx,%r14,8), %xmm1                        #721.25
        mulsd     16(%rcx,%r14,8), %xmm1                        #721.25
        addsd     %xmm1, %xmm0                                  #721.25
                                # LOE rsi rdi r8 r10 r11 r15 edx ebp r9d r12d r13d r14d xmm0
..1.34_1.TAG.2:
..B6.92:                        # Preds ..B6.82 ..B6.90
                                # Execution count [0.00e+00]: Infreq
        movslq    %r10d, %rcx                                   #721.37
        imulq     -56(%rsp), %rcx                               #721.47[spill]
        movslq    %r14d, %r14                                   #721.25
        lea       (%rcx,%r10,8), %rbx                           #721.25
        addq      -48(%rsp), %rbx                               #721.25[spill]
        lea       (%r8,%r10,8), %rcx                            #721.25
        movsd     8(%rbx,%r14,8), %xmm1                         #721.25
        mulsd     8(%rcx,%r14,8), %xmm1                         #721.25
        addsd     %xmm1, %xmm0                                  #721.25
                                # LOE rsi rdi r8 r10 r11 r15 edx ebp r9d r12d r13d r14d xmm0
..1.34_1.TAG.1:
..B6.94:                        # Preds ..B6.82 ..B6.92
                                # Execution count [0.00e+00]: Infreq
        movslq    %r10d, %rbx                                   #721.37
        imulq     -56(%rsp), %rbx                               #721.47[spill]
        movq      -48(%rsp), %rcx                               #721.25[spill]
        movslq    %r14d, %r14                                   #721.25
        lea       (%rcx,%r10,8), %rcx                           #721.25
        addq      %rbx, %rcx                                    #721.25
        movsd     (%rcx,%r14,8), %xmm1                          #721.25
        lea       (%r8,%r10,8), %rcx                            #721.25
        mulsd     (%rcx,%r14,8), %xmm1                          #721.25
        addsd     %xmm1, %xmm0                                  #721.25
                                # LOE rsi rdi r8 r10 r11 r15 edx ebp r9d r12d r13d r14d xmm0
..1.34_1.TAG.0:
..B6.96:                        # Preds ..B6.82 ..B6.94
                                # Execution count [9.85e-01]: Infreq
        movslq    %r10d, %rcx                                   #721.37
        imulq     -56(%rsp), %rcx                               #721.47[spill]
        movslq    %r14d, %r14                                   #721.25
        lea       (%rcx,%r10,8), %rbx                           #721.25
        addq      -48(%rsp), %rbx                               #721.25[spill]
        lea       (%r8,%r10,8), %rcx                            #721.25
        movsd     -8(%rbx,%r14,8), %xmm1                        #721.25
        mulsd     -8(%rcx,%r14,8), %xmm1                        #721.25
        addsd     %xmm1, %xmm0                                  #721.25
                                # LOE rsi rdi r8 r10 r11 r15 edx ebp r9d r12d r13d xmm0
..B6.97:                        # Preds ..B6.96 ..B6.81 ..B6.76
                                # Execution count [1.16e+00]: Infreq
        xorl      %ebx, %ebx                                    #721.25
        xorl      %ecx, %ecx                                    #721.25
        cmpl      %r13d, %edx                                   #721.25
        jge       ..B6.102      # Prob 10%                      #721.25
                                # LOE rcx rsi rdi r8 r10 r11 r15 edx ebx ebp r9d r12d xmm0
..B6.98:                        # Preds ..B6.97
                                # Execution count [1.05e+00]: Infreq
        movslq    %r10d, %r13                                   #721.37
        imulq     -56(%rsp), %r13                               #721.47[spill]
        movq      -48(%rsp), %r14                               #721.25[spill]
        movslq    %edx, %rdx                                    #721.25
        lea       (%r14,%r10,8), %rax                           #721.25
        addq      %r13, %rax                                    #721.25
        lea       (%rax,%rdx,8), %rax                           #721.25
        movq      %rax, -40(%rsp)                               #721.25[spill]
        lea       (%r8,%r10,8), %rax                            #721.25
        lea       (%r13,%r10,8), %r10                           #721.25
        addq      %r14, %r10                                    #721.25
        lea       (%rax,%rdx,8), %rax                           #721.25
        movq      %rax, -32(%rsp)                               #721.25[spill]
        movl      $-858993459, %eax                             #721.25
        movq      -32(%rsp), %r13                               #721.25[spill]
        movq      -40(%rsp), %r14                               #721.25[spill]
        lea       (%r10,%rdx,8), %r10                           #721.25
        negl      %edx                                          #721.25
        addl      %r9d, %edx                                    #721.25
        addl      $5, %edx                                      #721.25
        mull      %edx                                          #721.25
        shrl      $2, %edx                                      #721.25
        .align    16,0x90
                                # LOE rcx rsi rdi r8 r10 r11 r13 r14 r15 edx ebx ebp r9d r12d xmm0
..B6.99:                        # Preds ..B6.99 ..B6.98
                                # Execution count [5.82e+00]: Infreq
        movsd     (%r10,%rcx,8), %xmm1                          #721.25
        incl      %ebx                                          #721.25
        mulsd     (%r13,%rcx,8), %xmm1                          #721.25
        movsd     8(%r14,%rcx,8), %xmm2                         #721.25
        addsd     %xmm1, %xmm0                                  #721.25
        mulsd     8(%r13,%rcx,8), %xmm2                         #721.25
        movsd     16(%r14,%rcx,8), %xmm3                        #721.25
        addsd     %xmm2, %xmm0                                  #721.25
        mulsd     16(%r13,%rcx,8), %xmm3                        #721.25
        movsd     24(%r14,%rcx,8), %xmm4                        #721.25
        addsd     %xmm3, %xmm0                                  #721.25
        mulsd     24(%r13,%rcx,8), %xmm4                        #721.25
        movsd     32(%r14,%rcx,8), %xmm5                        #721.25
        addsd     %xmm4, %xmm0                                  #721.25
        mulsd     32(%r13,%rcx,8), %xmm5                        #721.25
        addq      $5, %rcx                                      #721.25
        addsd     %xmm5, %xmm0                                  #721.25
        cmpl      %edx, %ebx                                    #721.25
        jb        ..B6.99       # Prob 82%                      #721.25
                                # LOE rcx rsi rdi r8 r10 r11 r13 r14 r15 edx ebx ebp r9d r12d xmm0
..B6.102:                       # Preds ..B6.97 ..B6.99 ..B6.106
                                # Execution count [2.50e+00]: Infreq
        movl      -8(%rdi,%rsi,4), %edx                         #722.11
        addsd     -16(%r15,%rsi,8), %xmm0                       #721.25
        movsd     %xmm0, -16(%r15,%rsi,8)                       #721.7
        cmpl      %r12d, %edx                                   #724.17
        je        ..B6.104      # Prob 50%                      #724.17
                                # LOE rsi rdi r8 r11 r15 edx ebp r9d xmm0
..B6.103:                       # Preds ..B6.102
                                # Execution count [1.25e+00]: Infreq
        movslq    %edx, %rdx                                    #726.13
        movq      -8(%r8,%rdx,8), %rcx                          #726.13
        movsd     %xmm0, -8(%r8,%rdx,8)                         #727.9
        movq      %rcx, -16(%r15,%rsi,8)                        #728.9
                                # LOE rsi rdi r8 r11 r15 ebp r9d
..B6.104:                       # Preds ..B6.102 ..B6.103
                                # Execution count [2.50e+00]: Infreq
        incl      %r9d                                          #719.5
        lea       -2(%rsi,%r11), %r10                           #719.11
        decl      %ebp                                          #719.5
        decq      %rsi                                          #719.5
        cmpl      -24(%rsp), %r9d                               #719.5[spill]
        jb        ..B6.75       # Prob 81%                      #719.5
        jmp       ..B6.37       # Prob 100%                     #719.5
                                # LOE rsi rdi r8 r10 r11 r15 ebp r9d
..B6.106:                       # Preds ..B6.75
                                # Execution count [1.72e-01]: Infreq
        pxor      %xmm0, %xmm0                                  #721.25
        jmp       ..B6.102      # Prob 100%                     #721.25
        .align    16,0x90
                                # LOE rsi rdi r8 r11 r15 ebp r9d r12d xmm0
	.cfi_endproc
# mark_end;
	.type	dgesl,@function
	.size	dgesl,.-dgesl
..LNdgesl.5:
	.section .rodata, "a"
	.align 8
.2.34_2.switchtab.58:
	.quad	..1.34_0.TAG.0
	.quad	..1.34_0.TAG.1
	.quad	..1.34_0.TAG.2
	.quad	..1.34_0.TAG.3
	.quad	..1.34_0.TAG.4
	.quad	..1.34_0.TAG.5
	.quad	..1.34_0.TAG.6
	.align 8
.2.34_2.switchtab.59:
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
..___tag_value_dscal.521:
..L522:
                                                        #775.1
        movslq    %edx, %rcx                                    #775.1
        testl     %edi, %edi                                    #780.13
        jle       ..B7.8        # Prob 16%                      #780.13
                                # LOE rcx rbx rbp rsi r12 r13 r14 r15 edx edi xmm0
..B7.2:                         # Preds ..B7.1
                                # Execution count [8.40e-01]
        cmpq      $1, %rcx                                      #783.21
        je        ..B7.10       # Prob 16%                      #783.21
                                # LOE rcx rbx rbp rsi r12 r13 r14 r15 edx edi xmm0
..B7.3:                         # Preds ..B7.2
                                # Execution count [7.06e-01]
        testq     %rcx, %rcx                                    #803.15
        jl        ..B7.9        # Prob 16%                      #803.15
                                # LOE rcx rbx rbp rsi r12 r13 r14 r15 edx edi xmm0
..B7.4:                         # Preds ..B7.3
                                # Execution count [5.93e-01]
        xorl      %eax, %eax                                    #805.7
                                # LOE rax rcx rbx rbp rsi r12 r13 r14 r15 edi xmm0
..B7.5:                         # Preds ..B7.4 ..B7.9
                                # Execution count [6.35e-01]
        xorl      %edx, %edx                                    #812.11
                                # LOE rax rcx rbx rbp rsi r12 r13 r14 r15 edx edi xmm0
..B7.6:                         # Preds ..B7.6 ..B7.5
                                # Execution count [3.53e+00]
        movsd     (%rsi,%rax,8), %xmm1                          #814.20
        incl      %edx                                          #812.25
        mulsd     %xmm0, %xmm1                                  #814.20
        movsd     %xmm1, (%rsi,%rax,8)                          #814.7
        addq      %rcx, %rax                                    #815.17
        cmpl      %edi, %edx                                    #812.22
        jl        ..B7.6        # Prob 82%                      #812.22
                                # LOE rax rcx rbx rbp rsi r12 r13 r14 r15 edx edi xmm0
..B7.8:                         # Preds ..B7.28 ..B7.6 ..B7.1 ..B7.19
                                # Execution count [1.00e+00]
        ret                                                     #818.3
                                # LOE
..B7.9:                         # Preds ..B7.3
                                # Execution count [1.13e-01]: Infreq
        movl      %edi, %eax                                    #809.20
        negl      %eax                                          #809.20
        incl      %eax                                          #809.20
        imull     %edx, %eax                                    #809.26
        movslq    %eax, %rax                                    #809.7
        jmp       ..B7.5        # Prob 100%                     #809.7
                                # LOE rax rcx rbx rbp rsi r12 r13 r14 r15 edi xmm0
..B7.10:                        # Preds ..B7.2
                                # Execution count [1.34e-01]: Infreq
        movl      $1717986919, %eax                             #785.13
        movl      %edi, %ecx                                    #785.13
        imull     %edi                                          #785.13
        sarl      $31, %ecx                                     #785.13
        sarl      $1, %edx                                      #785.13
        subl      %ecx, %edx                                    #785.13
        lea       (%rdx,%rdx,4), %r9d                           #785.13
        negl      %r9d                                          #785.13
        addl      %edi, %r9d                                    #785.13
        testl     %r9d, %r9d                                    #787.22
        jle       ..B7.19       # Prob 50%                      #787.22
                                # LOE rbx rbp rsi r12 r13 r14 r15 edi r9d xmm0
..B7.11:                        # Preds ..B7.10
                                # Execution count [1.14e-01]: Infreq
        movslq    %r9d, %rcx                                    #787.5
        cmpq      $4, %rcx                                      #787.5
        jl        ..B7.33       # Prob 10%                      #787.5
                                # LOE rcx rbx rbp rsi r12 r13 r14 r15 edi r9d xmm0
..B7.12:                        # Preds ..B7.11
                                # Execution count [1.14e-01]: Infreq
        movl      %r9d, %edx                                    #787.5
        movaps    %xmm0, %xmm1                                  #736.6
        andl      $-4, %edx                                     #787.5
        xorl      %eax, %eax                                    #787.5
        movslq    %edx, %rdx                                    #787.5
        unpcklpd  %xmm1, %xmm1                                  #736.6
                                # LOE rax rdx rcx rbx rbp rsi r12 r13 r14 r15 edi r9d xmm0 xmm1
..B7.13:                        # Preds ..B7.13 ..B7.12
                                # Execution count [6.32e-01]: Infreq
        movups    (%rsi,%rax,8), %xmm2                          #789.19
        movups    16(%rsi,%rax,8), %xmm3                        #789.19
        mulpd     %xmm1, %xmm2                                  #789.19
        mulpd     %xmm1, %xmm3                                  #789.19
        movups    %xmm2, (%rsi,%rax,8)                          #789.7
        movups    %xmm3, 16(%rsi,%rax,8)                        #789.7
        addq      $4, %rax                                      #787.5
        cmpq      %rdx, %rax                                    #787.5
        jb        ..B7.13       # Prob 82%                      #787.5
                                # LOE rax rdx rcx rbx rbp rsi r12 r13 r14 r15 edi r9d xmm0 xmm1
..B7.15:                        # Preds ..B7.13 ..B7.33
                                # Execution count [1.34e-01]: Infreq
        cmpq      %rcx, %rdx                                    #787.5
        jae       ..B7.19       # Prob 15%                      #787.5
                                # LOE rdx rcx rbx rbp rsi r12 r13 r14 r15 edi r9d xmm0
..B7.17:                        # Preds ..B7.15 ..B7.17
                                # Execution count [6.32e-01]: Infreq
        movsd     (%rsi,%rdx,8), %xmm1                          #789.19
        mulsd     %xmm0, %xmm1                                  #789.19
        movsd     %xmm1, (%rsi,%rdx,8)                          #789.7
        incq      %rdx                                          #787.5
        cmpq      %rcx, %rdx                                    #787.5
        jb        ..B7.17       # Prob 82%                      #787.5
                                # LOE rdx rcx rbx rbp rsi r12 r13 r14 r15 edi r9d xmm0
..B7.19:                        # Preds ..B7.17 ..B7.10 ..B7.15
                                # Execution count [1.34e-01]: Infreq
        xorl      %r8d, %r8d                                    #792.5
        cmpl      %edi, %r9d                                    #792.22
        jge       ..B7.8        # Prob 10%                      #792.22
                                # LOE rbx rbp rsi r12 r13 r14 r15 edi r8d r9d xmm0
..B7.20:                        # Preds ..B7.19
                                # Execution count [0.00e+00]: Infreq
        movslq    %r9d, %r9                                     #794.21
        movl      $-858993459, %eax                             #775.1
        subl      %r9d, %edi                                    #775.1
        addl      $4, %edi                                      #775.1
        mull      %edi                                          #775.1
        lea       (%rsi,%r9,8), %rcx                            #794.21
        shrl      $2, %edx                                      #775.1
                                # LOE rcx rbx rbp r12 r13 r14 r15 edx r8d xmm0
..B7.21:                        # Preds ..B7.28 ..B7.20
                                # Execution count [0.00e+00]: Infreq
        lea       (%r8,%r8,4), %esi                             #792.25
        movslq    %esi, %rsi                                    #794.21
        lea       (%rcx,%rsi,8), %rdi                           #794.21
        movq      %rdi, %rax                                    #794.7
        andq      $15, %rax                                     #794.7
        je        ..B7.24       # Prob 50%                      #794.7
                                # LOE rax rcx rbx rbp rsi rdi r12 r13 r14 r15 edx r8d xmm0
..B7.22:                        # Preds ..B7.21
                                # Execution count [0.00e+00]: Infreq
        testq     $7, %rax                                      #794.7
        jne       ..B7.34       # Prob 10%                      #794.7
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 edx r8d xmm0
..B7.23:                        # Preds ..B7.22
                                # Execution count [0.00e+00]: Infreq
        movsd     (%rcx,%rsi,8), %xmm1                          #794.21
        xorl      %eax, %eax                                    #794.7
        incq      %rax                                          #794.7
        mulsd     %xmm0, %xmm1                                  #794.21
        movsd     %xmm1, (%rcx,%rsi,8)                          #794.7
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B7.24:                        # Preds ..B7.23 ..B7.21
                                # Execution count [0.00e+00]: Infreq
        movq      %rax, %rsi                                    #794.7
        movaps    %xmm0, %xmm1                                  #736.6
        negq      %rsi                                          #794.7
        addq      $5, %rsi                                      #794.7
        andq      $3, %rsi                                      #794.7
        negq      %rsi                                          #794.7
        unpcklpd  %xmm1, %xmm1                                  #736.6
        addq      $5, %rsi                                      #794.7
                                # LOE rax rcx rbx rbp rsi rdi r12 r13 r14 r15 edx r8d xmm0 xmm1
..B7.25:                        # Preds ..B7.25 ..B7.24
                                # Execution count [0.00e+00]: Infreq
        movups    (%rdi,%rax,8), %xmm2                          #794.21
        movups    16(%rdi,%rax,8), %xmm3                        #794.21
        mulpd     %xmm1, %xmm2                                  #794.21
        mulpd     %xmm1, %xmm3                                  #794.21
        movups    %xmm2, (%rdi,%rax,8)                          #794.7
        movups    %xmm3, 16(%rdi,%rax,8)                        #794.7
        addq      $4, %rax                                      #794.7
        cmpq      %rsi, %rax                                    #794.7
        jb        ..B7.25       # Prob 50%                      #794.7
                                # LOE rax rcx rbx rbp rsi rdi r12 r13 r14 r15 edx r8d xmm0 xmm1
..B7.27:                        # Preds ..B7.25 ..B7.34
                                # Execution count [0.00e+00]: Infreq
        cmpq      $5, %rsi                                      #794.7
        jb        ..B7.31       # Prob 0%                       #794.7
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 edx r8d xmm0
..B7.28:                        # Preds ..B7.31 ..B7.27
                                # Execution count [5.51e-01]: Infreq
        incl      %r8d                                          #792.5
        cmpl      %edx, %r8d                                    #792.5
        jb        ..B7.21       # Prob 78%                      #792.5
        jmp       ..B7.8        # Prob 100%                     #792.5
                                # LOE rcx rbx rbp r12 r13 r14 r15 edx r8d xmm0
..B7.31:                        # Preds ..B7.27 ..B7.31
                                # Execution count [0.00e+00]: Infreq
        movsd     (%rdi,%rsi,8), %xmm1                          #794.21
        mulsd     %xmm0, %xmm1                                  #794.21
        movsd     %xmm1, (%rdi,%rsi,8)                          #794.7
        incq      %rsi                                          #794.7
        cmpq      $5, %rsi                                      #794.7
        jb        ..B7.31       # Prob 50%                      #794.7
        jmp       ..B7.28       # Prob 100%                     #794.7
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 edx r8d xmm0
..B7.33:                        # Preds ..B7.11
                                # Execution count [1.14e-02]: Infreq
        xorl      %edx, %edx                                    #787.5
        jmp       ..B7.15       # Prob 100%                     #787.5
                                # LOE rdx rcx rbx rbp rsi r12 r13 r14 r15 edi r9d xmm0
..B7.34:                        # Preds ..B7.22
                                # Execution count [0.00e+00]: Infreq
        xorl      %esi, %esi                                    #794.7
        jmp       ..B7.27       # Prob 100%                     #794.7
        .align    16,0x90
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 edx r8d xmm0
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
..___tag_value_idamax.524:
..L525:
                                                        #866.1
        movslq    %edx, %r8                                     #866.1
        testl     %edi, %edi                                    #874.12
        jle       ..B8.10       # Prob 28%                      #874.12
                                # LOE rbx rbp rsi r8 r12 r13 r14 r15 edi
..B8.2:                         # Preds ..B8.1
                                # Execution count [7.20e-01]
        testq     %r8, %r8                                      #874.25
        jle       ..B8.10       # Prob 6%                       #874.25
                                # LOE rbx rbp rsi r8 r12 r13 r14 r15 edi
..B8.3:                         # Preds ..B8.2
                                # Execution count [6.70e-01]
        movl      $1, %eax                                      #879.3
        movl      %eax, %edx                                    #879.3
        cmpl      $1, %edi                                      #881.13
        je        ..B8.9        # Prob 6%                       #881.13
                                # LOE rbx rbp rsi r8 r12 r13 r14 r15 eax edx edi
..B8.4:                         # Preds ..B8.3
                                # Execution count [6.24e-01]
        movsd     (%rsi), %xmm0                                 #888.21
        andps     .L_2il0floatpacket.11(%rip), %xmm0            #888.12
        cmpq      $1, %r8                                       #886.16
        je        ..B8.11       # Prob 16%                      #886.16
                                # LOE rbx rbp rsi r8 r12 r13 r14 r15 eax edx edi xmm0
..B8.5:                         # Preds ..B8.4
                                # Execution count [5.24e-01]
        movq      %r8, %rcx                                     #903.5
        cmpl      $1, %edi                                      #905.22
        jle       ..B8.9        # Prob 10%                      #905.22
                                # LOE rcx rbx rbp rsi r8 r12 r13 r14 r15 eax edx edi xmm0
..B8.7:                         # Preds ..B8.5 ..B8.7
                                # Execution count [2.62e+00]
        movsd     (%rsi,%rcx,8), %xmm1                          #907.28
        incl      %edx                                          #909.21
        andps     .L_2il0floatpacket.11(%rip), %xmm1            #907.19
        movaps    %xmm0, %xmm2                                  #910.9
        comisd    %xmm0, %xmm1                                  #909.9
        movaps    %xmm1, %xmm0                                  #910.9
        jbe       ..L526        # Prob 50%                      #909.9
        movl      %edx, %eax                                    #909.9
..L526:                                                         #
        comisd    %xmm2, %xmm0                                  #910.9
        ja        ..L527        # Prob 50%                      #910.9
        movaps    %xmm2, %xmm0                                  #910.9
..L527:                                                         #
        addq      %r8, %rcx                                     #912.17
        cmpl      %edi, %edx                                    #905.22
        jl        ..B8.7        # Prob 82%                      #905.22
                                # LOE rcx rbx rbp rsi r8 r12 r13 r14 r15 eax edx edi xmm0
..B8.9:                         # Preds ..B8.3 ..B8.7 ..B8.16 ..B8.11 ..B8.5
                                #      
                                # Execution count [6.24e-01]
        ret                                                     #916.10
                                # LOE
..B8.10:                        # Preds ..B8.1 ..B8.2
                                # Execution count [3.30e-01]
        xorl      %eax, %eax                                    #876.12
        ret                                                     #876.12
                                # LOE
..B8.11:                        # Preds ..B8.4
                                # Execution count [9.99e-02]: Infreq
        cmpl      $1, %edi                                      #890.22
        jle       ..B8.9        # Prob 50%                      #890.22
                                # LOE rbx rbp rsi r12 r13 r14 r15 eax edx edi xmm0
..B8.12:                        # Preds ..B8.11
                                # Execution count [9.99e-02]: Infreq
        decl      %edi                                          #890.5
        xorl      %r9d, %r9d                                    #890.5
        movl      %edi, %r8d                                    #890.5
        xorl      %ecx, %ecx                                    #890.5
        shrl      $1, %r8d                                      #890.5
        je        ..B8.16       # Prob 10%                      #890.5
        .align    16,0x90
                                # LOE rcx rbx rbp rsi r8 r9 r12 r13 r14 r15 eax edx edi xmm0
..B8.14:                        # Preds ..B8.12 ..B8.14
                                # Execution count [2.50e-01]: Infreq
        movsd     8(%rcx,%rsi), %xmm1                           #892.28
        lea       2(%r9,%r9), %edx                              #894.21
        andps     .L_2il0floatpacket.11(%rip), %xmm1            #892.19
        comisd    %xmm0, %xmm1                                  #894.9
        movaps    %xmm1, %xmm3                                  #895.9
        movsd     16(%rcx,%rsi), %xmm2                          #892.28
        maxsd     %xmm0, %xmm3                                  #895.9
        ja        ..L528        # Prob 50%                      #894.9
        movl      %eax, %edx                                    #894.9
..L528:                                                         #
        andps     .L_2il0floatpacket.11(%rip), %xmm2            #892.19
        lea       3(%r9,%r9), %eax                              #894.21
        movaps    %xmm2, %xmm0                                  #895.9
        incq      %r9                                           #890.5
        comisd    %xmm3, %xmm0                                  #895.9
        ja        ..L529        # Prob 50%                      #895.9
        movaps    %xmm3, %xmm0                                  #895.9
..L529:                                                         #
        comisd    %xmm3, %xmm2                                  #894.9
        cmovbe    %edx, %eax                                    #894.9
        addq      $16, %rcx                                     #890.5
        cmpq      %r8, %r9                                      #890.5
        jb        ..B8.14       # Prob 64%                      #890.5
                                # LOE rcx rbx rbp rsi r8 r9 r12 r13 r14 r15 eax edi xmm0
..B8.15:                        # Preds ..B8.14
                                # Execution count [8.99e-02]: Infreq
        lea       1(%r9,%r9), %edx                              #892.7
                                # LOE rbx rbp rsi r12 r13 r14 r15 eax edx edi xmm0
..B8.16:                        # Preds ..B8.15 ..B8.12
                                # Execution count [9.99e-02]: Infreq
        lea       -1(%rdx), %ecx                                #894.21
        cmpl      %edi, %ecx                                    #890.5
        jae       ..B8.9        # Prob 10%                      #890.5
                                # LOE rbx rbp rsi r12 r13 r14 r15 eax edx xmm0
..B8.17:                        # Preds ..B8.16
                                # Execution count [8.99e-02]: Infreq
        lea       1(%rdx), %ecx                                 #894.21
        movslq    %edx, %rdx                                    #890.25
        movsd     (%rsi,%rdx,8), %xmm1                          #892.28
        andps     .L_2il0floatpacket.11(%rip), %xmm1            #892.19
        comisd    %xmm0, %xmm1                                  #894.9
        cmova     %ecx, %eax                                    #894.9
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
..___tag_value_r8_abs.531:
..L532:
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
..___tag_value_r8_epsilon.534:
..L535:
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
..___tag_value_r8_max.537:
..L538:
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
..___tag_value_r8_random.540:
..L541:
                                                        #1070.1
        movq      %rdi, %r10                                    #1070.1
        movl      12(%r10), %r8d                                #1086.9
        imull     $2549, %r8d, %r9d                             #1086.20
        imull     $2508, %r8d, %r11d                            #1089.42
        movl      %r9d, %edi                                    #1087.15
        movl      8(%r10), %esi                                 #1089.15
        imull     $2549, %esi, %eax                             #1089.26
        sarl      $11, %edi                                     #1087.15
        shrl      $20, %edi                                     #1087.15
        addl      %r9d, %edi                                    #1087.15
        sarl      $12, %edi                                     #1087.15
        movl      %edi, %ecx                                    #1088.22
        addl      %eax, %edi                                    #1089.26
        shll      $12, %ecx                                     #1088.22
        addl      %r11d, %edi                                   #1089.42
        subl      %ecx, %r9d                                    #1088.3
        movl      %edi, %ecx                                    #1090.15
        sarl      $11, %ecx                                     #1090.15
        shrl      $20, %ecx                                     #1090.15
        movl      4(%r10), %edx                                 #1092.15
        addl      %edi, %ecx                                    #1090.15
        imull     $2549, %edx, %r11d                            #1092.26
        imull     $2508, %edx, %edx                             #1095.42
        sarl      $12, %ecx                                     #1090.15
        movl      %ecx, %eax                                    #1091.22
        addl      %r11d, %ecx                                   #1092.26
        shll      $12, %eax                                     #1091.22
        imull     $2508, %esi, %r11d                            #1092.42
        subl      %eax, %edi                                    #1091.3
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
        subl      %r11d, %ecx                                   #1094.3
        imull     $2549, (%r10), %r11d                          #1095.26
        addl      %r11d, %eax                                   #1095.26
        addl      %edx, %eax                                    #1095.42
        addl      %esi, %eax                                    #1095.74
        andl      $-2147479553, %eax                            #1096.17
        jge       ..B12.4       # Prob 50%                      #1096.17
                                # LOE rbx rbp r10 r12 r13 r14 r15 eax ecx edi r9d
..B12.5:                        # Preds ..B12.1
                                # Execution count [1.00e+00]
        subl      $1, %eax                                      #1096.17
        orl       $-4096, %eax                                  #1096.17
        incl      %eax                                          #1096.17
                                # LOE rbx rbp r10 r12 r13 r14 r15 eax ecx edi r9d
..B12.4:                        # Preds ..B12.1 ..B12.5
                                # Execution count [1.00e+00]
        pxor      %xmm4, %xmm4                                  #1111.24
        pxor      %xmm1, %xmm1                                  #1110.24
        cvtsi2sd  %r9d, %xmm4                                   #1111.24
        cvtsi2sd  %edi, %xmm1                                   #1110.24
        movsd     .L_2il0floatpacket.0(%rip), %xmm0             #1081.12
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
..___tag_value_r8mat_gen.543:
..L544:
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
        xorl      %esi, %esi                                    #1145.3
        testq     %rbx, %rbx                                    #1145.21
        jle       ..B13.9       # Prob 9%                       #1145.21
                                # LOE rax rbx rbp rsi r12 r13 r14 r15
..B13.4:                        # Preds ..B13.3
                                # Execution count [8.10e-01]
        movl      12(%rsp), %r10d                               #1149.38
        movq      %rax, %r11                                    #1145.3
        movl      8(%rsp), %r8d                                 #1149.38
        movl      4(%rsp), %edx                                 #1149.38
        movl      (%rsp), %ecx                                  #1149.38
        movsd     .L_2il0floatpacket.0(%rip), %xmm1             #1149.26
        movsd     .L_2il0floatpacket.1(%rip), %xmm0             #1149.47
        movq      %r12, 16(%rsp)                                #1145.3[spill]
        movq      %r13, 24(%rsp)                                #1145.3[spill]
	.cfi_offset 12, -64
	.cfi_offset 13, -56
        movq      %rsi, %r13                                    #1145.3
        movq      %r14, 32(%rsp)                                #1145.3[spill]
        movq      %r15, 40(%rsp)                                #1145.3[spill]
	.cfi_offset 14, -48
	.cfi_offset 15, -40
                                # LOE rax rbx rbp r11 r13 edx ecx r8d r10d xmm0 xmm1
..B13.5:                        # Preds ..B13.7 ..B13.4
                                # Execution count [4.50e+00]
        xorl      %r14d, %r14d                                  #1147.5
                                # LOE rax rbx rbp r11 r13 r14 edx ecx r8d r10d xmm0 xmm1
..B13.6:                        # Preds ..B13.12 ..B13.5
                                # Execution count [2.50e+01]
        imull     $2549, %r10d, %esi                            #1149.26
        imull     $2508, %r10d, %r15d                           #1149.26
        imull     $2549, %ecx, %ecx                             #1149.26
        movl      %esi, %edi                                    #1149.26
        sarl      $11, %edi                                     #1149.26
        shrl      $20, %edi                                     #1149.26
        addl      %esi, %edi                                    #1149.26
        sarl      $12, %edi                                     #1149.26
        movl      %edi, %r9d                                    #1149.26
        addl      %r15d, %edi                                   #1149.26
        shll      $12, %r9d                                     #1149.26
        subl      %r9d, %esi                                    #1149.26
        imull     $2549, %r8d, %r9d                             #1149.26
        imull     $322, %r10d, %r15d                            #1149.26
        imull     $494, %r10d, %r10d                            #1149.26
        addl      %r9d, %edi                                    #1149.26
        movl      %edi, %r9d                                    #1149.26
        sarl      $11, %r9d                                     #1149.26
        shrl      $20, %r9d                                     #1149.26
        addl      %edi, %r9d                                    #1149.26
        sarl      $12, %r9d                                     #1149.26
        movl      %r9d, %r12d                                   #1149.26
        addl      %r15d, %r9d                                   #1149.26
        shll      $12, %r12d                                    #1149.26
        imull     $2508, %r8d, %r15d                            #1149.26
        subl      %r12d, %edi                                   #1149.26
        imull     $2549, %edx, %r12d                            #1149.26
        imull     $322, %r8d, %r8d                              #1149.26
        imull     $2508, %edx, %edx                             #1149.26
        addl      %r12d, %r15d                                  #1149.26
        addl      %ecx, %edx                                    #1149.26
        addl      %r15d, %r9d                                   #1149.26
        movl      %r9d, %r12d                                   #1149.26
        sarl      $11, %r12d                                    #1149.26
        shrl      $20, %r12d                                    #1149.26
        addl      %r9d, %r12d                                   #1149.26
        sarl      $12, %r12d                                    #1149.26
        movl      %r12d, %r15d                                  #1149.26
        addl      %r10d, %r12d                                  #1149.26
        addl      %r8d, %r12d                                   #1149.26
        addl      %edx, %r12d                                   #1149.26
        shll      $12, %r15d                                    #1149.26
        movl      %r12d, %ecx                                   #1149.26
        subl      %r15d, %r9d                                   #1149.26
        andl      $-2147479553, %ecx                            #1149.26
        jge       ..B13.12      # Prob 50%                      #1149.26
                                # LOE rax rbx rbp r11 r13 r14 ecx esi edi r9d xmm0 xmm1
..B13.13:                       # Preds ..B13.6
                                # Execution count [2.50e+01]
        subl      $1, %ecx                                      #1149.26
        orl       $-4096, %ecx                                  #1149.26
        incl      %ecx                                          #1149.26
                                # LOE rax rbx rbp r11 r13 r14 ecx esi edi r9d xmm0 xmm1
..B13.12:                       # Preds ..B13.6 ..B13.13
                                # Execution count [2.50e+01]
        pxor      %xmm5, %xmm5                                  #1149.26
        pxor      %xmm2, %xmm2                                  #1149.26
        cvtsi2sd  %esi, %xmm5                                   #1149.26
        cvtsi2sd  %edi, %xmm2                                   #1149.26
        mulsd     %xmm1, %xmm5                                  #1149.26
        pxor      %xmm3, %xmm3                                  #1149.26
        pxor      %xmm4, %xmm4                                  #1149.26
        cvtsi2sd  %r9d, %xmm3                                   #1149.26
        cvtsi2sd  %ecx, %xmm4                                   #1149.26
        addsd     %xmm2, %xmm5                                  #1149.26
        mulsd     %xmm1, %xmm5                                  #1149.26
        movl      %r9d, %edx                                    #1149.26
        movl      %edi, %r8d                                    #1149.26
        movl      %esi, %r10d                                   #1149.26
        addsd     %xmm3, %xmm5                                  #1149.26
        mulsd     %xmm1, %xmm5                                  #1149.26
        addsd     %xmm4, %xmm5                                  #1149.26
        mulsd     %xmm1, %xmm5                                  #1149.26
        subsd     %xmm0, %xmm5                                  #1149.47
        movsd     %xmm5, (%r11,%r14,8)                          #1149.7
        incq      %r14                                          #1147.5
        cmpq      %rbx, %r14                                    #1147.5
        jb        ..B13.6       # Prob 82%                      #1147.5
                                # LOE rax rbx rbp r11 r13 r14 edx ecx esi edi r8d r9d r10d xmm0 xmm1
..B13.7:                        # Preds ..B13.12
                                # Execution count [4.50e+00]
        .byte     15                                            #1145.3
        .byte     31                                            #1145.3
        .byte     64                                            #1145.3
        .byte     0                                             #1145.3
        incq      %r13                                          #1145.3
        lea       (%r11,%rbp,8), %r11                           #1145.3
        cmpq      %rbx, %r13                                    #1145.3
        jb        ..B13.5       # Prob 82%                      #1145.3
                                # LOE rax rbx rbp r11 r13 edx ecx esi edi r8d r9d r10d xmm0 xmm1
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
        movl      %esi, 12(%rsp)                                #1149.38
        movl      %edi, 8(%rsp)                                 #1149.38
        movl      %r9d, 4(%rsp)                                 #1149.38
        movl      %ecx, (%rsp)                                  #1149.38
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
..___tag_value_timestamp.571:
..L572:
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
