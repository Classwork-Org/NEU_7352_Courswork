# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.4.235 Build 20190416";
# mark_description "-O1 -S -fverbose-asm -o ../asm/drystone.icc.opt1.asm";
	.file "drystone.c"
	.text
..TXTST0:
.L_2__routine_start_main_0:
# -- Begin  main
	.text
# mark_begin;

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
        pushq     %rsi                                          #132.1
	.cfi_def_cfa_offset 16
        xorl      %esi, %esi                                    #132.1
        pushq     $3                                            #132.1
        popq      %rdi                                          #132.1
        call      __intel_new_feature_proc_init                 #132.1
                                # LOE rbx rbp r12 r13 r14 r15
..B1.5:                         # Preds ..B1.1
                                # Execution count [1.00e+00]
        stmxcsr   (%rsp)                                        #132.1
        orl       $32832, (%rsp)                                #132.1
        ldmxcsr   (%rsp)                                        #132.1
..___tag_value_main.4:
#       Proc0()
        call      Proc0                                         #135.7
..___tag_value_main.5:
                                # LOE rbx rbp r12 r13 r14 r15
..B1.2:                         # Preds ..B1.5
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #136.1
        popq      %rcx                                          #136.1
	.cfi_def_cfa_offset 8
        ret                                                     #136.1
                                # LOE
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.0:
	.data
# -- End  main
	.text
.L_2__routine_start_Proc0_1:
# -- Begin  Proc0
	.text
# mark_begin;

	.globl Proc0
# --- Proc0()
Proc0:
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Proc0.8:
..L9:
                                                          #151.1
        subq      $168, %rsp                                    #151.1
	.cfi_def_cfa_offset 176
        lea       (%rsp), %rdi                                  #176.8
..___tag_value_Proc0.11:
#       times(struct tms *)
        call      times                                         #176.8
..___tag_value_Proc0.12:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
                                # Execution count [0.00e+00]
        movq      (%rsp), %rax                                  #176.33
        lea       (%rsp), %rdi                                  #178.8
        movq      %rax, 32(%rdi)                                #176.33[spill]
..___tag_value_Proc0.13:
#       times(struct tms *)
        call      times                                         #178.8
..___tag_value_Proc0.14:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.3:                         # Preds ..B2.2
                                # Execution count [0.00e+00]
        movq      (%rsp), %rax                                  #179.19
        pushq     $56                                           #182.33
        popq      %rdi                                          #182.33
        subq      32(%rsp), %rax                                #179.35[spill]
        movq      %rax, 96(%rsp)                                #179.35[spill]
..___tag_value_Proc0.17:
#       malloc(size_t)
        call      malloc                                        #182.33
..___tag_value_Proc0.18:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.4:                         # Preds ..B2.3
                                # Execution count [0.00e+00]
        pushq     $56                                           #183.29
        popq      %rdi                                          #183.29
        movq      %rax, PtrGlbNext(%rip)                        #182.8
..___tag_value_Proc0.20:
#       malloc(size_t)
        call      malloc                                        #183.29
..___tag_value_Proc0.21:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.38:                        # Preds ..B2.4
                                # Execution count [0.00e+00]
        movq      %rax, %rdx                                    #183.29
                                # LOE rdx rbx rbp r12 r13 r14 r15
..B2.5:                         # Preds ..B2.38
                                # Execution count [0.00e+00]
        movq      PtrGlbNext(%rip), %rax                        #184.26
        movl      $.L_2__STRING.0, %esi                         #188.8
        lea       PtrGlb(%rip), %rcx                            #183.8
        movq      %rdx, (%rcx)                                  #183.8
        movq      %rax, (%rdx)                                  #184.8
        xorl      %eax, %eax                                    #188.8
        movq      (%rcx), %rdi                                  #185.8
        movl      $0, 8(%rdi)                                   #185.8
        movl      $2, 12(%rdi)                                  #186.8
        movl      $40, 16(%rdi)                                 #187.8
        addq      $20, %rdi                                     #188.8
..___tag_value_Proc0.22:
#       strcpy()
        call      strcpy                                        #188.8
..___tag_value_Proc0.23:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.6:                         # Preds ..B2.5
                                # Execution count [0.00e+00]
        lea       (%rsp), %rdi                                  #197.8
..___tag_value_Proc0.24:
#       times(struct tms *)
        call      times                                         #197.8
..___tag_value_Proc0.25:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.7:                         # Preds ..B2.6
                                # Execution count [0.00e+00]
        movq      (%rsp), %rax                                  #197.33
        movq      %rax, 88(%rsp)                                #197.33[spill]
        movl      $0, 72(%rsp)                                  #199.6[spill]
                                # LOE rbx rbp r12 r13 r14 r15
..B2.8:                         # Preds ..B2.30 ..B2.7
                                # Execution count [0.00e+00]
..___tag_value_Proc0.27:
#       Proc5()
        call      Proc5                                         #202.8
..___tag_value_Proc0.28:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.9:                         # Preds ..B2.8
                                # Execution count [0.00e+00]
..___tag_value_Proc0.30:
#       Proc4()
        call      Proc4                                         #203.8
..___tag_value_Proc0.31:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.10:                        # Preds ..B2.9
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.1, %esi                         #206.8
        lea       104(%rsp), %rdi                               #206.8
        xorl      %eax, %eax                                    #206.8
        movl      $2, -56(%rdi)                                 #204.8
..___tag_value_Proc0.32:
#       strcpy()
        call      strcpy                                        #206.8
..___tag_value_Proc0.33:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.11:                        # Preds ..B2.10
                                # Execution count [0.00e+00]
        movl      $1, 80(%rsp)                                  #207.8
        lea       135(%rsp), %rdi                               #208.21
        lea       -31(%rdi), %rsi                               #208.21
..___tag_value_Proc0.34:
#       Func2()
        call      Func2                                         #208.21
..___tag_value_Proc0.35:
                                # LOE rbx rbp r12 r13 r14 r15 eax
..B2.12:                        # Preds ..B2.11
                                # Execution count [0.00e+00]
        testl     %eax, %eax                                    #208.21
        jne       ..B2.14       # Prob 50%                      #208.21
                                # LOE rbx rbp r12 r13 r14 r15
..B2.13:                        # Preds ..B2.12
                                # Execution count [0.00e+00]
        movl      $1, BoolGlob(%rip)                            #208.8
        jmp       ..B2.15       # Prob 100%                     #208.8
                                # LOE rbx rbp r12 r13 r14 r15
..B2.14:                        # Preds ..B2.12
                                # Execution count [0.00e+00]
        movl      $0, BoolGlob(%rip)                            #208.8
                                # LOE rbx rbp r12 r13 r14 r15
..B2.15:                        # Preds ..B2.13 ..B2.14
                                # Execution count [0.00e+00]
        movl      48(%rsp), %edx                                #209.15
        movl      %edx, 32(%rsp)                                #209.15[spill]
        lea       -3(%rdx,%rdx,4), %eax                         #205.8
        movl      %eax, 56(%rsp)                                #205.8[spill]
        cmpl      $3, %edx                                      #209.25
        jge       ..B2.20       # Prob 10%                      #209.25
                                # LOE rbx rbp r12 r13 r14 r15
..B2.17:                        # Preds ..B2.15 ..B2.18
                                # Execution count [0.00e+00]
        movl      56(%rsp), %eax                                #211.16[spill]
        lea       52(%rsp), %rdx                                #212.16
        pushq     $3                                            #212.16
        popq      %rsi                                          #212.16
        movl      -20(%rdx), %edi                               #212.16[spill]
        movl      %eax, (%rdx)                                  #211.16
..___tag_value_Proc0.40:
#       Proc7()
        call      Proc7                                         #212.16
..___tag_value_Proc0.41:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.18:                        # Preds ..B2.17
                                # Execution count [0.00e+00]
        movl      32(%rsp), %eax                                #213.18[spill]
        incl      %eax                                          #213.18
        addl      $5, 56(%rsp)                                  #213.18[spill]
        movl      %eax, 32(%rsp)                                #213.18[spill]
        movl      %eax, 48(%rsp)                                #213.18
        cmpl      $3, %eax                                      #209.25
        jl        ..B2.17       # Prob 82%                      #209.25
                                # LOE rbx rbp r12 r13 r14 r15
..B2.20:                        # Preds ..B2.18 ..B2.15
                                # Execution count [0.00e+00]
        movl      $Array1Glob, %edi                             #215.8
        movl      $Array2Glob, %esi                             #215.8
        movl      32(%rsp), %edx                                #215.8[spill]
        movl      52(%rsp), %ecx                                #215.8
..___tag_value_Proc0.46:
#       Proc8()
        call      Proc8                                         #215.8
..___tag_value_Proc0.47:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.21:                        # Preds ..B2.20
                                # Execution count [0.00e+00]
        movq      PtrGlb(%rip), %rdi                            #216.8
..___tag_value_Proc0.48:
#       Proc1()
        call      Proc1                                         #216.8
..___tag_value_Proc0.49:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.22:                        # Preds ..B2.21
                                # Execution count [0.00e+00]
        movsbl    Char2Glob(%rip), %eax                         #217.43
        movl      %eax, 64(%rsp)                                #217.43[spill]
        cmpl      $65, %eax                                     #217.43
        jl        ..B2.29       # Prob 10%                      #217.43
                                # LOE rbx rbp r12 r13 r14 r15
..B2.23:                        # Preds ..B2.22
                                # Execution count [0.00e+00]
        movl      $65, 40(%rsp)                                 #218.37[spill]
                                # LOE rbx rbp r12 r13 r14 r15
..B2.24:                        # Preds ..B2.27 ..B2.23
                                # Execution count [0.00e+00]
        pushq     $67                                           #218.31
        popq      %rsi                                          #218.31
        movl      40(%rsp), %edi                                #218.31[spill]
..___tag_value_Proc0.52:
#       Func1()
        call      Func1                                         #218.31
..___tag_value_Proc0.53:
                                # LOE rbx rbp r12 r13 r14 r15 eax
..B2.40:                        # Preds ..B2.24
                                # Execution count [0.00e+00]
        cmpl      80(%rsp), %eax                                #218.31
        jne       ..B2.27       # Prob 78%                      #218.31
                                # LOE rbx rbp r12 r13 r14 r15
..B2.25:                        # Preds ..B2.40
                                # Execution count [0.00e+00]
        xorl      %edi, %edi                                    #219.24
        lea       80(%rsp), %rsi                                #219.24
..___tag_value_Proc0.55:
#       Proc6()
        call      Proc6                                         #219.24
..___tag_value_Proc0.56:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.26:                        # Preds ..B2.25
                                # Execution count [0.00e+00]
        movsbl    Char2Glob(%rip), %eax                         #217.43
        movl      %eax, 64(%rsp)                                #217.43[spill]
                                # LOE rbx rbp r12 r13 r14 r15
..B2.27:                        # Preds ..B2.26 ..B2.40
                                # Execution count [0.00e+00]
        movl      40(%rsp), %eax                                #217.56[spill]
        incl      %eax                                          #217.56
        movsbq    %al, %rdx                                     #217.30
        movl      %edx, 40(%rsp)                                #217.30[spill]
        cmpl      64(%rsp), %edx                                #217.43[spill]
        jle       ..B2.24       # Prob 82%                      #217.43
                                # LOE rbx rbp r12 r13 r14 r15
..B2.29:                        # Preds ..B2.27 ..B2.22
                                # Execution count [0.00e+00]
        movl      32(%rsp), %eax                                #220.28[spill]
        lea       48(%rsp), %rdi                                #223.8
        lea       (%rax,%rax,2), %edx                           #220.28
        movl      %edx, 4(%rdi)                                 #220.8
..___tag_value_Proc0.62:
#       Proc2()
        call      Proc2                                         #223.8
..___tag_value_Proc0.63:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.30:                        # Preds ..B2.29
                                # Execution count [0.00e+00]
        movl      72(%rsp), %eax                                #199.26[spill]
        incl      %eax                                          #199.26
        movl      %eax, 72(%rsp)                                #199.26[spill]
        cmpl      $500000000, %eax                              #199.17
        jb        ..B2.8        # Prob 100%                     #199.17
                                # LOE rbx rbp r12 r13 r14 r15
..B2.31:                        # Preds ..B2.30
                                # Execution count [0.00e+00]
        lea       (%rsp), %rdi                                  #236.8
..___tag_value_Proc0.66:
#       times(struct tms *)
        call      times                                         #236.8
..___tag_value_Proc0.67:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.32:                        # Preds ..B2.31
                                # Execution count [0.00e+00]
        movq      (%rsp), %rcx                                  #237.20
        movq      $0x8888888888888889, %rax                     #238.1
        subq      88(%rsp), %rcx                                #237.36[spill]
        movl      $.L_2__STRING.2, %edi                         #238.1
        subq      96(%rsp), %rcx                                #237.48[spill]
        movl      $500000000, %esi                              #238.1
        imulq     %rcx                                          #238.1
        addq      %rcx, %rdx                                    #238.1
        xorl      %eax, %eax                                    #238.1
        movq      %rcx, 32(%rsp)                                #237.48[spill]
        sarq      $5, %rdx                                      #238.1
        sarq      $63, %rcx                                     #238.1
        subq      %rcx, %rdx                                    #238.1
..___tag_value_Proc0.71:
#       printf(const char *__restrict__, ...)
        call      printf                                        #238.1
..___tag_value_Proc0.72:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.33:                        # Preds ..B2.32
                                # Execution count [0.00e+00]
        movq      $0x6fc23ac00, %rax                            #239.1
        movl      $.L_2__STRING.3, %edi                         #239.1
        cqto                                                    #239.1
        idivq     32(%rsp)                                      #239.1[spill]
        movq      %rax, %rsi                                    #239.1
        xorl      %eax, %eax                                    #239.1
..___tag_value_Proc0.74:
#       printf(const char *__restrict__, ...)
        call      printf                                        #239.1
..___tag_value_Proc0.75:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.34:                        # Preds ..B2.33
                                # Execution count [0.00e+00]
        addq      $168, %rsp                                    #243.1
	.cfi_def_cfa_offset 8
        ret                                                     #243.1
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Proc0,@function
	.size	Proc0,.-Proc0
..LNProc0.1:
	.data
# -- End  Proc0
	.text
.L_2__routine_start_Proc2_2:
# -- Begin  Proc2
	.text
# mark_begin;

	.globl Proc2
# --- Proc2()
Proc2:
# parameter 1: %rdi
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.64e+00]
	.cfi_startproc
..___tag_value_Proc2.78:
..L79:
                                                         #270.1
        movl      (%rdi), %edx                                  #274.18
        movb      Char1Glob(%rip), %al                          #277.20
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx ecx al
..B3.2:                         # Preds ..B3.4 ..B3.1
                                # Execution count [5.00e+00]
        cmpb      $65, %al                                      #277.33
        jne       ..B3.4        # Prob 84%                      #277.33
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx ecx al
..B3.3:                         # Preds ..B3.2
                                # Execution count [8.00e-01]
        addl      $9, %edx                                      #279.26
        subl      IntGlob(%rip), %edx                           #280.45
        movl      %edx, (%rdi)                                  #280.25
        ret                                                     #280.25
                                # LOE rbx rbp r12 r13 r14 r15
..B3.4:                         # Preds ..B3.2
                                # Execution count [4.20e+00]
        testl     %ecx, %ecx                                    #283.31
        jne       ..B3.2        # Prob 80%                      #283.31
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx ecx al
..B3.6:                         # Preds ..B3.4
                                # Execution count [1.00e+00]
        ret                                                     #286.1
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Proc2,@function
	.size	Proc2,.-Proc2
..LNProc2.2:
	.data
# -- End  Proc2
	.text
.L_2__routine_start_Proc1_3:
# -- Begin  Proc1
	.text
# mark_begin;

	.globl Proc1
# --- Proc1()
Proc1:
# parameter 1: %rdi
..B4.1:                         # Preds ..B4.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Proc1.81:
..L82:
                                                         #247.1
        pushq     %r12                                          #247.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        movq      %rdi, %r12                                    #247.1
        pushq     $7                                            #250.8
        popq      %rcx                                          #250.8
        movq      PtrGlb(%rip), %rsi                            #250.8
        movq      (%r12), %rdi                                  #250.8
        rep   movsq                                             #250.8
                                # LOE rbx rbp r12 r13 r14 r15
..B4.2:                         # Preds ..B4.1
                                # Execution count [1.00e+00]
        movq      (%r12), %rdx                                  #252.8
        pushq     $5                                            #251.8
        popq      %rax                                          #251.8
        movl      %eax, 16(%r12)                                #251.8
        movq      %rdx, (%rdx)                                  #253.8
        movq      (%r12), %rcx                                  #254.8
        movl      %eax, 16(%rdx)                                #252.8
        movq      (%rcx), %rdi                                  #254.8
..___tag_value_Proc1.85:
#       Proc3()
        call      Proc3                                         #254.8
..___tag_value_Proc1.86:
                                # LOE rbx rbp r12 r13 r14 r15
..B4.3:                         # Preds ..B4.2
                                # Execution count [1.00e+00]
        movq      (%r12), %rsi                                  #255.12
        cmpl      $0, 8(%rsi)                                   #255.32
        jne       ..B4.6        # Prob 78%                      #255.32
                                # LOE rbx rbp rsi r12 r13 r14 r15
..B4.4:                         # Preds ..B4.3
                                # Execution count [2.20e-01]
        movl      $6, 16(%rsi)                                  #257.16
        addq      $12, %rsi                                     #258.16
        movl      12(%r12), %edi                                #258.16
..___tag_value_Proc1.87:
#       Proc6()
        call      Proc6                                         #258.16
..___tag_value_Proc1.88:
                                # LOE rbx rbp r12 r13 r14 r15
..B4.5:                         # Preds ..B4.4
                                # Execution count [2.20e-01]
        movq      PtrGlb(%rip), %rax                            #259.37
        pushq     $10                                           #260.16
        popq      %rsi                                          #260.16
        movq      (%r12), %rcx                                  #259.16
        movq      (%rax), %rdx                                  #259.37
        movq      %rdx, (%rcx)                                  #259.16
        movq      (%r12), %r8                                   #260.22
        movl      16(%r8), %edi                                 #260.16
        lea       16(%r8), %rdx                                 #260.16
..___tag_value_Proc1.89:
#       Proc7()
        call      Proc7                                         #260.16
..___tag_value_Proc1.90:
        jmp       ..B4.7        # Prob 100%                     #260.16
                                # LOE rbx rbp r13 r14 r15
..B4.6:                         # Preds ..B4.3
                                # Execution count [7.80e-01]
        movq      %r12, %rdi                                    #263.16
        pushq     $7                                            #263.16
        popq      %rcx                                          #263.16
        rep   movsq                                             #263.16
                                # LOE rbx rbp r13 r14 r15
..B4.7:                         # Preds ..B4.5 ..B4.6
                                # Execution count [1.00e+00]
        popq      %r12                                          #266.1
	.cfi_def_cfa_offset 8
        ret                                                     #266.1
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Proc1,@function
	.size	Proc1,.-Proc1
..LNProc1.3:
	.data
# -- End  Proc1
	.text
.L_2__routine_start_Proc3_4:
# -- Begin  Proc3
	.text
# mark_begin;

	.globl Proc3
# --- Proc3()
Proc3:
# parameter 1: %rdi
..B5.1:                         # Preds ..B5.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Proc3.93:
..L94:
                                                         #290.1
        movq      PtrGlb(%rip), %rdx                            #291.12
        testq     %rdx, %rdx                                    #291.22
        jne       ..B5.3        # Prob 88%                      #291.22
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15
..B5.2:                         # Preds ..B5.1
                                # Execution count [1.20e-01]
        pushq     $100                                          #294.16
        popq      %rsi                                          #294.16
        movl      %esi, IntGlob(%rip)                           #294.16
        jmp       ..B5.4        # Prob 100%                     #294.16
                                # LOE rdx rbx rbp r12 r13 r14 r15 esi
..B5.3:                         # Preds ..B5.1
                                # Execution count [8.80e-01]
        movl      IntGlob(%rip), %esi                           #295.18
        movq      (%rdx), %rax                                  #292.29
        movq      %rax, (%rdi)                                  #292.17
        movq      PtrGlb(%rip), %rdx                            #295.28
                                # LOE rdx rbx rbp r12 r13 r14 r15 esi
..B5.4:                         # Preds ..B5.3 ..B5.2
                                # Execution count [1.00e+00]
        addq      $16, %rdx                                     #295.8
        pushq     $10                                           #295.8
        popq      %rdi                                          #295.8
#       Proc7()
        jmp       Proc7                                         #295.8
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Proc3,@function
	.size	Proc3,.-Proc3
..LNProc3.4:
	.data
# -- End  Proc3
	.text
.L_2__routine_start_Proc8_5:
# -- Begin  Proc8
	.text
# mark_begin;

	.globl Proc8
# --- Proc8()
Proc8:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %edx
# parameter 4: %ecx
..B6.1:                         # Preds ..B6.0
                                # Execution count [9.00e-01]
	.cfi_startproc
..___tag_value_Proc8.96:
..L97:
                                                         #350.1
        pushq     %rbp                                          #350.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #350.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        lea       5(%rdx), %r9d                                 #354.28
        movslq    %r9d, %rax                                    #355.8
        movq      %rdi, %r10                                    #350.1
        imulq     $204, %rax, %r8                               #359.16
        movl      %ecx, (%r10,%rax,4)                           #355.8
        movl      %r9d, %edi                                    #358.13
        movl      %ecx, 4(%r10,%rax,4)                          #356.8
        movq      %rax, %rcx                                    #358.13
        movl      %r9d, 120(%r10,%rax,4)                        #357.8
        addq      %r8, %rsi                                     #359.16
        addl      $6, %edx                                      #358.52
                                # LOE rax rcx rbx rsi r10 r12 r13 r14 r15 edx edi r9d
..B6.2:                         # Preds ..B6.2 ..B6.1
                                # Execution count [5.00e+00]
        incl      %edi                                          #358.58
        movl      %r9d, (%rsi,%rcx,4)                           #359.16
        incq      %rcx                                          #358.58
        cmpl      %edx, %edi                                    #358.52
        jle       ..B6.2        # Prob 82%                      #358.52
                                # LOE rax rcx rbx rsi r10 r12 r13 r14 r15 edx edi r9d
..B6.3:                         # Preds ..B6.2
                                # Execution count [1.00e+00]
        incl      -4(%rsi,%rax,4)                               #360.10
        movl      (%r10,%rax,4), %edx                           #361.39
        movl      %edx, 4080(%rsi,%rax,4)                       #361.8
        movl      $5, IntGlob(%rip)                             #362.8
        leave                                                   #363.1
        ret                                                     #363.1
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Proc8,@function
	.size	Proc8,.-Proc8
..LNProc8.5:
	.data
# -- End  Proc8
	.text
.L_2__routine_start_Func2_6:
# -- Begin  Func2
	.text
# mark_begin;

	.globl Func2
# --- Func2()
Func2:
# parameter 1: %rdi
# parameter 2: %rsi
..B7.1:                         # Preds ..B7.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Func2.102:
..L103:
                                                        #383.1
        pushq     %r13                                          #383.1
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
        pushq     %r14                                          #383.1
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
        pushq     %r15                                          #383.1
	.cfi_def_cfa_offset 32
	.cfi_offset 15, -32
        pushq     %rbx                                          #383.1
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
        pushq     %rsi                                          #383.1
	.cfi_def_cfa_offset 48
        movq      %rsi, %r15                                    #383.1
        movq      %rdi, %r14                                    #383.1
        xorl      %ebx, %ebx                                    #387.8
        incq      %rbx                                          #387.8
                                # LOE rbx rbp r12 r14 r15 r13d
..B7.2:                         # Preds ..B7.9 ..B7.1
                                # Execution count [1.00e+00]
        movsbl    (%rbx,%r14), %edi                             #389.20
        movsbl    1(%rbx,%r15), %esi                            #389.20
..___tag_value_Func2.113:
#       Func1()
        call      Func1                                         #389.20
..___tag_value_Func2.114:
                                # LOE rbx rbp r12 r14 r15 eax r13d
..B7.9:                         # Preds ..B7.2
                                # Execution count [1.00e+00]
        movl      %eax, %edx                                    #389.20
        lea       1(%rbx), %rcx                                 #392.26
        pushq     $65                                           #391.24
        popq      %rax                                          #391.24
        testl     %edx, %edx                                    #391.24
        cmove     %rcx, %rbx                                    #392.26
        cmove     %eax, %r13d                                   #391.24
        cmpq      $1, %rbx                                      #388.25
        jle       ..B7.2        # Prob 0%                       #388.25
                                # LOE rbx rbp r12 r14 r15 r13d
..B7.3:                         # Preds ..B7.9
                                # Execution count [1.00e+00]
        cmpb      $88, %r13b                                    #396.23
        jne       ..B7.5        # Prob 79%                      #396.23
                                # LOE rbp r12 r14 r15
..B7.4:                         # Preds ..B7.3
                                # Execution count [2.08e-01]
        xorl      %eax, %eax                                    #397.22
        incl      %eax                                          #397.22
        jmp       ..B7.12       # Prob 100%                     #397.22
                                # LOE
..B7.5:                         # Preds ..B7.3
                                # Execution count [7.92e-01]
        movq      %r14, %rdi                                    #400.20
        movq      %r15, %rsi                                    #400.20
        xorl      %eax, %eax                                    #400.20
..___tag_value_Func2.115:
#       strcmp()
        call      strcmp                                        #400.20
..___tag_value_Func2.116:
                                # LOE rbp r12 eax
..B7.6:                         # Preds ..B7.5
                                # Execution count [7.92e-01]
        xorl      %edx, %edx                                    #403.31
        testl     %eax, %eax                                    #403.31
        setg      %dl                                           #403.31
        movl      %edx, %eax                                    #403.31
                                # LOE
..B7.12:                        # Preds ..B7.4 ..B7.6
                                # Execution count [7.92e-01]
        popq      %rcx                                          #403.31
	.cfi_def_cfa_offset 40
        popq      %rbx                                          #403.31
	.cfi_def_cfa_offset 32
        popq      %r15                                          #403.31
	.cfi_def_cfa_offset 24
        popq      %r14                                          #403.31
	.cfi_def_cfa_offset 16
        popq      %r13                                          #403.31
	.cfi_def_cfa_offset 8
        ret                                                     #403.31
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Func2,@function
	.size	Func2,.-Func2
..LNFunc2.6:
	.data
# -- End  Func2
	.text
.L_2__routine_start_Func1_7:
# -- Begin  Func1
	.text
# mark_begin;

	.globl Func1
# --- Func1()
Func1:
# parameter 1: %edi
# parameter 2: %esi
..B8.1:                         # Preds ..B8.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Func1.123:
..L124:
                                                        #368.1
        xorl      %eax, %eax                                    #375.23
        cmpb      %sil, %dil                                    #375.23
        sete      %al                                           #375.23
        ret                                                     #375.23
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Func1,@function
	.size	Func1,.-Func1
..LNFunc1.7:
	.data
# -- End  Func1
	.text
.L_2__routine_start_Proc4_8:
# -- Begin  Proc4
	.text
# mark_begin;

	.globl Proc4
# --- Proc4()
Proc4:
..B9.1:                         # Preds ..B9.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Proc4.126:
..L127:
                                                        #299.1
        movb      $66, Char2Glob(%rip)                          #304.8
        ret                                                     #305.1
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Proc4,@function
	.size	Proc4,.-Proc4
..LNProc4.8:
	.data
# -- End  Proc4
	.text
.L_2__routine_start_Proc5_9:
# -- Begin  Proc5
	.text
# mark_begin;

	.globl Proc5
# --- Proc5()
Proc5:
..B10.1:                        # Preds ..B10.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Proc5.129:
..L130:
                                                        #308.1
        movb      $65, Char1Glob(%rip)                          #309.8
        movl      $0, BoolGlob(%rip)                            #310.8
        ret                                                     #311.1
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Proc5,@function
	.size	Proc5,.-Proc5
..LNProc5.9:
	.data
# -- End  Proc5
	.text
.L_2__routine_start_Proc7_10:
# -- Begin  Proc7
	.text
# mark_begin;

	.globl Proc7
# --- Proc7()
Proc7:
# parameter 1: %edi
# parameter 2: %esi
# parameter 3: %rdx
..B11.1:                        # Preds ..B11.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Proc7.132:
..L133:
                                                        #338.1
        lea       2(%rsi,%rdi), %eax                            #342.32
        movl      %eax, (%rdx)                                  #342.9
        ret                                                     #343.1
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Proc7,@function
	.size	Proc7,.-Proc7
..LNProc7.10:
	.data
# -- End  Proc7
	.text
.L_2__routine_start_Proc6_11:
# -- Begin  Proc6
	.text
# mark_begin;

	.globl Proc6
# --- Proc6()
Proc6:
# parameter 1: %edi
# parameter 2: %rsi
..B12.1:                        # Preds ..B12.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Proc6.135:
..L136:
                                                        #318.1
        pushq     %r12                                          #318.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %rbp                                          #318.1
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
        pushq     %rsi                                          #318.1
	.cfi_def_cfa_offset 32
        movl      %edi, %ebp                                    #318.1
        movl      %ebp, %edi                                    #320.14
        movq      %rsi, %r12                                    #318.1
..___tag_value_Proc6.142:
#       Func3()
        call      Func3                                         #320.14
..___tag_value_Proc6.143:
                                # LOE rbx rbp r12 r13 r14 r15 eax
..B12.21:                       # Preds ..B12.1
                                # Execution count [1.00e+00]
        testl     %eax, %eax                                    #320.14
        jne       ..B12.3       # Prob 50%                      #320.14
                                # LOE rbx rbp r12 r13 r14 r15
..B12.2:                        # Preds ..B12.21
                                # Execution count [5.00e-01]
        movl      $3, (%r12)                                    #321.17
        jmp       ..B12.4       # Prob 100%                     #321.17
                                # LOE rbx rbp r12 r13 r14 r15
..B12.3:                        # Preds ..B12.21
                                # Execution count [5.00e-01]
        movl      %ebp, (%r12)                                  #325.44
                                # LOE rbx rbp r12 r13 r14 r15
..B12.4:                        # Preds ..B12.2 ..B12.3
                                # Execution count [1.00e+00]
        cmpl      $4, %ebp                                      #322.8
        ja        ..B12.18      # Prob 50%                      #322.8
                                # LOE rbx rbp r12 r13 r14 r15
..B12.5:                        # Preds ..B12.4
                                # Execution count [5.00e-01]
        movzbl    .2.38_2.switchtab.2(%rbp), %eax               #322.8
        addq      $..1.8_0.TAG.4.0.8, %rax                      #322.8
        jmp       *%rax                                         #322.8
                                # LOE rbx r12 r13 r14 r15
..1.8_0.TAG.4.0.8:
..B12.7:                        # Preds ..B12.5
                                # Execution count [1.00e-01]
        movl      $2, (%r12)                                    #330.25
        jmp       ..B12.18      # Prob 100%                     #330.25
                                # LOE rbx r13 r14 r15
..1.8_0.TAG.2.0.8:
..B12.11:                       # Preds ..B12.5
                                # Execution count [1.00e-01]
        movl      $1, (%r12)                                    #328.25
        jmp       ..B12.18      # Prob 100%                     #328.25
                                # LOE rbx r13 r14 r15
..1.8_0.TAG.1.0.8:
..B12.13:                       # Preds ..B12.5
                                # Execution count [1.00e-01]
        cmpl      $100, IntGlob(%rip)                           #325.38
        jg        ..B12.17      # Prob 50%                      #325.38
                                # LOE rbx r12 r13 r14 r15
..B12.15:                       # Preds ..B12.13
                                # Execution count [5.00e-02]
        movl      $3, (%r12)                                    #326.30
        jmp       ..B12.18      # Prob 100%                     #326.30
                                # LOE rbx r13 r14 r15
..1.8_0.TAG.0.0.8:
..B12.17:                       # Preds ..B12.13 ..B12.5
                                # Execution count [1.00e-01]
        movl      $0, (%r12)                                    #324.25
                                # LOE rbx r13 r14 r15
..1.8_0.TAG.3.0.8:
..B12.18:                       # Preds ..B12.5 ..B12.4 ..B12.7 ..B12.15 ..B12.11
                                #       ..B12.17
                                # Execution count [1.00e+00]
        popq      %rcx                                          #332.1
	.cfi_def_cfa_offset 24
        popq      %rbp                                          #332.1
	.cfi_def_cfa_offset 16
        popq      %r12                                          #332.1
	.cfi_def_cfa_offset 8
        ret                                                     #332.1
                                # LOE
	.cfi_endproc
# mark_end;
	.type	Proc6,@function
	.size	Proc6,.-Proc6
..LNProc6.11:
	.section .rodata, "a"
	.align 4
	.align 1
.2.38_2.switchtab.2:
	.byte	..1.8_0.TAG.0.0.8 - ..1.8_0.TAG.4.0.8
	.byte	..1.8_0.TAG.1.0.8 - ..1.8_0.TAG.4.0.8
	.byte	..1.8_0.TAG.2.0.8 - ..1.8_0.TAG.4.0.8
	.byte	..1.8_0.TAG.3.0.8 - ..1.8_0.TAG.4.0.8
	.byte	..1.8_0.TAG.4.0.8 - ..1.8_0.TAG.4.0.8
	.data
# -- End  Proc6
	.text
.L_2__routine_start_Func3_12:
# -- Begin  Func3
	.text
# mark_begin;

	.globl Func3
# --- Func3()
Func3:
# parameter 1: %edi
..B13.1:                        # Preds ..B13.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_Func3.148:
..L149:
                                                        #412.1
        xorl      %eax, %eax                                    #416.38
        cmpl      $2, %edi                                      #416.38
        sete      %al                                           #416.38
        ret                                                     #416.38
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
.L_2__STRING.0:
	.long	1498564676
	.long	1313821779
	.long	1380982853
	.long	1095911247
	.long	1394617421
	.long	541412687
	.long	1230132307
	.word	18254
	.byte	0
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,31
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.long	1498564676
	.long	1313821779
	.long	1380982853
	.long	1095911247
	.long	840969293
	.long	541347367
	.long	1230132307
	.word	18254
	.byte	0
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,31
	.space 1, 0x00 	# pad
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
