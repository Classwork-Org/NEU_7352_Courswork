# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.4.235 Build 20190416";
# mark_description "-O0 -S -fverbose-asm -o ../asm/linpack.icc.opt0.asm";
	.file "linpack.c"
	.text
..TXTST0:
.L_2__routine_start_main_0:
# -- Begin  main
	.section .rodata, "a"
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
	.space 7, 0x00 	# pad
	.align 16
.L_2il0floatpacket.7:
	.long	0x00000000,0x80000000,0x00000000,0x00000000
	.type	.L_2il0floatpacket.7,@object
	.size	.L_2il0floatpacket.7,16
	.align 8
.L_2il0floatpacket.0:
	.long	0x3126e979,0x3facac08
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,8
	.align 8
.L_2il0floatpacket.1:
	.long	0x05555555,0xc1c224dd
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,8
	.align 8
.L_2il0floatpacket.2:
	.long	0x00000000,0x40977000
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,8
	.align 8
.L_2il0floatpacket.3:
	.long	0x00000000,0x412e8480
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,8
	.align 8
.L_2il0floatpacket.4:
	.long	0x00000000,0xbff00000
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,8
	.align 8
.L_2il0floatpacket.5:
	.long	0x00000000,0x40000000
	.type	.L_2il0floatpacket.5,@object
	.size	.L_2il0floatpacket.5,8
	.align 8
.L_2il0floatpacket.6:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.6,@object
	.size	.L_2il0floatpacket.6,8
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
	.text
# mark_begin;

	.globl main
# --- main(void)
main:
..B1.1:                         # Preds ..B1.0
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_main.1:
..L2:
                                                          #44.1
        pushq     %rbp                                          #44.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #44.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        subq      $464, %rsp                                    #44.1
        movq      %rbx, -16(%rbp)                               #44.1[spill]
        movsd     .L_2il0floatpacket.0(%rip), %xmm0             #56.15
        movsd     %xmm0, -344(%rbp)                             #56.15
..___tag_value_main.7:
        call      timestamp                                     #74.3
..___tag_value_main.8:
	.cfi_offset 3, -32
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.2:                         # Preds ..B1.1
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.0, %eax                         #75.3
        movq      %rax, %rdi                                    #75.3
        movl      $0, %eax                                      #75.3
..___tag_value_main.10:
#       printf(const char *__restrict__, ...)
        call      printf                                        #75.3
..___tag_value_main.11:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.98:                        # Preds ..B1.2
                                # Execution count [0.00e+00]
        movl      %eax, -464(%rbp)                              #75.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.3:                         # Preds ..B1.98
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.1, %eax                         #76.3
        movq      %rax, %rdi                                    #76.3
        movl      $0, %eax                                      #76.3
..___tag_value_main.12:
#       printf(const char *__restrict__, ...)
        call      printf                                        #76.3
..___tag_value_main.13:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.99:                        # Preds ..B1.3
                                # Execution count [0.00e+00]
        movl      %eax, -460(%rbp)                              #76.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.4:                         # Preds ..B1.99
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.2, %eax                         #77.3
        movq      %rax, %rdi                                    #77.3
        movl      $0, %eax                                      #77.3
..___tag_value_main.14:
#       printf(const char *__restrict__, ...)
        call      printf                                        #77.3
..___tag_value_main.15:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.100:                       # Preds ..B1.4
                                # Execution count [0.00e+00]
        movl      %eax, -456(%rbp)                              #77.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.5:                         # Preds ..B1.100
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.0, %eax                         #78.3
        movq      %rax, %rdi                                    #78.3
        movl      $0, %eax                                      #78.3
..___tag_value_main.16:
#       printf(const char *__restrict__, ...)
        call      printf                                        #78.3
..___tag_value_main.17:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.101:                       # Preds ..B1.5
                                # Execution count [0.00e+00]
        movl      %eax, -452(%rbp)                              #78.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.6:                         # Preds ..B1.101
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.3, %eax                         #79.3
        movq      %rax, %rdi                                    #79.3
        movl      $0, %eax                                      #79.3
..___tag_value_main.18:
#       printf(const char *__restrict__, ...)
        call      printf                                        #79.3
..___tag_value_main.19:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.102:                       # Preds ..B1.6
                                # Execution count [0.00e+00]
        movl      %eax, -448(%rbp)                              #79.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.7:                         # Preds ..B1.102
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.4, %eax                         #80.3
        movq      %rax, %rdi                                    #80.3
        movl      $0, %eax                                      #80.3
..___tag_value_main.20:
#       printf(const char *__restrict__, ...)
        call      printf                                        #80.3
..___tag_value_main.21:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.103:                       # Preds ..B1.7
                                # Execution count [0.00e+00]
        movl      %eax, -444(%rbp)                              #80.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.8:                         # Preds ..B1.103
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.5, %eax                         #81.3
        movq      %rax, %rdi                                    #81.3
        movl      $0, %eax                                      #81.3
..___tag_value_main.22:
#       printf(const char *__restrict__, ...)
        call      printf                                        #81.3
..___tag_value_main.23:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.104:                       # Preds ..B1.8
                                # Execution count [0.00e+00]
        movl      %eax, -440(%rbp)                              #81.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.9:                         # Preds ..B1.104
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.6, %eax                         #82.3
        movl      $1500, %edx                                   #82.3
        movq      %rax, %rdi                                    #82.3
        movl      %edx, %esi                                    #82.3
        movl      $0, %eax                                      #82.3
..___tag_value_main.24:
#       printf(const char *__restrict__, ...)
        call      printf                                        #82.3
..___tag_value_main.25:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.105:                       # Preds ..B1.9
                                # Execution count [0.00e+00]
        movl      %eax, -436(%rbp)                              #82.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.10:                        # Preds ..B1.105
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.7, %eax                         #83.3
        movl      $1501, %edx                                   #83.3
        movq      %rax, %rdi                                    #83.3
        movl      %edx, %esi                                    #83.3
        movl      $0, %eax                                      #83.3
..___tag_value_main.26:
#       printf(const char *__restrict__, ...)
        call      printf                                        #83.3
..___tag_value_main.27:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.106:                       # Preds ..B1.10
                                # Execution count [0.00e+00]
        movl      %eax, -432(%rbp)                              #83.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.11:                        # Preds ..B1.106
                                # Execution count [0.00e+00]
        movsd     .L_2il0floatpacket.1(%rip), %xmm0             #85.9
        movsd     %xmm0, -336(%rbp)                             #85.3
        movl      $1501, %eax                                   #89.7
        movl      $1500, %edx                                   #89.7
        movl      %eax, %edi                                    #89.7
        movl      %edx, %esi                                    #89.7
..___tag_value_main.28:
        call      r8mat_gen                                     #89.7
..___tag_value_main.29:
                                # LOE rax rbp rsp r12 r13 r14 r15 rip
..B1.107:                       # Preds ..B1.11
                                # Execution count [0.00e+00]
        movq      %rax, -328(%rbp)                              #89.7
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.12:                        # Preds ..B1.107
                                # Execution count [0.00e+00]
        movq      -328(%rbp), %rax                              #89.7
        movq      %rax, -320(%rbp)                              #89.3
        movl      $12000, %eax                                  #90.20
        movq      %rax, %rdi                                    #90.20
..___tag_value_main.30:
#       malloc(size_t)
        call      malloc                                        #90.20
..___tag_value_main.31:
                                # LOE rax rbp rsp r12 r13 r14 r15 rip
..B1.108:                       # Preds ..B1.12
                                # Execution count [0.00e+00]
        movq      %rax, -312(%rbp)                              #90.20
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.13:                        # Preds ..B1.108
                                # Execution count [0.00e+00]
        movq      -312(%rbp), %rax                              #90.20
        movq      %rax, -304(%rbp)                              #90.3
        movl      $6000, %eax                                   #91.20
        movq      %rax, %rdi                                    #91.20
..___tag_value_main.32:
#       malloc(size_t)
        call      malloc                                        #91.20
..___tag_value_main.33:
                                # LOE rax rbp rsp r12 r13 r14 r15 rip
..B1.109:                       # Preds ..B1.13
                                # Execution count [0.00e+00]
        movq      %rax, -296(%rbp)                              #91.20
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.14:                        # Preds ..B1.109
                                # Execution count [0.00e+00]
        movq      -296(%rbp), %rax                              #91.20
        movq      %rax, -288(%rbp)                              #91.3
        movl      $12000, %eax                                  #92.24
        movq      %rax, %rdi                                    #92.24
..___tag_value_main.34:
#       malloc(size_t)
        call      malloc                                        #92.24
..___tag_value_main.35:
                                # LOE rax rbp rsp r12 r13 r14 r15 rip
..B1.110:                       # Preds ..B1.14
                                # Execution count [0.00e+00]
        movq      %rax, -280(%rbp)                              #92.24
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.15:                        # Preds ..B1.110
                                # Execution count [0.00e+00]
        movq      -280(%rbp), %rax                              #92.24
        movq      %rax, -272(%rbp)                              #92.3
        movl      $12000, %eax                                  #93.22
        movq      %rax, %rdi                                    #93.22
..___tag_value_main.36:
#       malloc(size_t)
        call      malloc                                        #93.22
..___tag_value_main.37:
                                # LOE rax rbp rsp r12 r13 r14 r15 rip
..B1.111:                       # Preds ..B1.15
                                # Execution count [0.00e+00]
        movq      %rax, -264(%rbp)                              #93.22
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.16:                        # Preds ..B1.111
                                # Execution count [0.00e+00]
        movq      -264(%rbp), %rax                              #93.22
        movq      %rax, -256(%rbp)                              #93.3
        movl      $12000, %eax                                  #94.20
        movq      %rax, %rdi                                    #94.20
..___tag_value_main.38:
#       malloc(size_t)
        call      malloc                                        #94.20
..___tag_value_main.39:
                                # LOE rax rbp rsp r12 r13 r14 r15 rip
..B1.112:                       # Preds ..B1.16
                                # Execution count [0.00e+00]
        movq      %rax, -248(%rbp)                              #94.20
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.17:                        # Preds ..B1.112
                                # Execution count [0.00e+00]
        movq      -248(%rbp), %rax                              #94.20
        movq      %rax, -240(%rbp)                              #94.3
        pxor      %xmm0, %xmm0                                  #96.3
        movsd     %xmm0, -232(%rbp)                             #96.3
        movl      $0, -428(%rbp)                                #97.9
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.18:                        # Preds ..B1.19 ..B1.17
                                # Execution count [0.00e+00]
        movl      -428(%rbp), %eax                              #97.16
        cmpl      $1500, %eax                                   #97.20
        jl        ..B1.20       # Prob 50%                      #97.20
        jmp       ..B1.24       # Prob 100%                     #97.20
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.19:                        # Preds ..B1.21
                                # Execution count [0.00e+00]
        movl      $1, %eax                                      #97.23
        addl      -428(%rbp), %eax                              #97.23
        movl      %eax, -428(%rbp)                              #97.23
        jmp       ..B1.18       # Prob 100%                     #97.23
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.20:                        # Preds ..B1.18
                                # Execution count [0.00e+00]
        movl      $0, -424(%rbp)                                #99.11
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.21:                        # Preds ..B1.23 ..B1.20
                                # Execution count [0.00e+00]
        movl      -424(%rbp), %eax                              #99.18
        cmpl      $1500, %eax                                   #99.22
        jge       ..B1.19       # Prob 50%                      #99.22
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.22:                        # Preds ..B1.21
                                # Execution count [0.00e+00]
        movsd     -232(%rbp), %xmm0                             #101.15
        movl      -428(%rbp), %eax                              #101.15
        imull     $1501, %eax, %eax                             #101.15
        addl      -424(%rbp), %eax                              #101.15
        movslq    %eax, %rax                                    #101.15
        imulq     $8, %rax, %rax                                #101.15
        addq      -320(%rbp), %rax                              #101.15
        movsd     (%rax), %xmm1                                 #101.15
..___tag_value_main.40:
        call      r8_max                                        #101.15
..___tag_value_main.41:
                                # LOE rbp rsp r12 r13 r14 r15 rip xmm0
..B1.113:                       # Preds ..B1.22
                                # Execution count [0.00e+00]
        movsd     %xmm0, -224(%rbp)                             #101.15
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.23:                        # Preds ..B1.113
                                # Execution count [0.00e+00]
        movsd     -224(%rbp), %xmm0                             #101.15
        movsd     %xmm0, -232(%rbp)                             #101.7
        movl      $1, %eax                                      #99.25
        addl      -424(%rbp), %eax                              #99.25
        movl      %eax, -424(%rbp)                              #99.25
        jmp       ..B1.21       # Prob 100%                     #99.25
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.24:                        # Preds ..B1.18
                                # Execution count [0.00e+00]
        movl      $0, -424(%rbp)                                #105.9
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.25:                        # Preds ..B1.26 ..B1.24
                                # Execution count [0.00e+00]
        movl      -424(%rbp), %eax                              #105.16
        cmpl      $1500, %eax                                   #105.20
        jge       ..B1.27       # Prob 50%                      #105.20
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.26:                        # Preds ..B1.25
                                # Execution count [0.00e+00]
        movsd     .L_2il0floatpacket.6(%rip), %xmm0             #107.5
        movl      -424(%rbp), %eax                              #107.7
        movslq    %eax, %rax                                    #107.5
        imulq     $8, %rax, %rax                                #107.5
        addq      -240(%rbp), %rax                              #107.5
        movsd     %xmm0, (%rax)                                 #107.5
        movl      $1, %eax                                      #105.23
        addl      -424(%rbp), %eax                              #105.23
        movl      %eax, -424(%rbp)                              #105.23
        jmp       ..B1.25       # Prob 100%                     #105.23
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.27:                        # Preds ..B1.25
                                # Execution count [0.00e+00]
        movl      $0, -424(%rbp)                                #110.9
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.28:                        # Preds ..B1.29 ..B1.27
                                # Execution count [0.00e+00]
        movl      -424(%rbp), %eax                              #110.16
        cmpl      $1500, %eax                                   #110.20
        jl        ..B1.30       # Prob 50%                      #110.20
        jmp       ..B1.33       # Prob 100%                     #110.20
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.29:                        # Preds ..B1.31
                                # Execution count [0.00e+00]
        movl      $1, %eax                                      #110.23
        addl      -424(%rbp), %eax                              #110.23
        movl      %eax, -424(%rbp)                              #110.23
        jmp       ..B1.28       # Prob 100%                     #110.23
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.30:                        # Preds ..B1.28
                                # Execution count [0.00e+00]
        pxor      %xmm0, %xmm0                                  #112.5
        movl      -424(%rbp), %eax                              #112.7
        movslq    %eax, %rax                                    #112.5
        imulq     $8, %rax, %rax                                #112.5
        addq      -304(%rbp), %rax                              #112.5
        movsd     %xmm0, (%rax)                                 #112.5
        movl      $0, -428(%rbp)                                #113.11
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.31:                        # Preds ..B1.32 ..B1.30
                                # Execution count [0.00e+00]
        movl      -428(%rbp), %eax                              #113.18
        cmpl      $1500, %eax                                   #113.22
        jge       ..B1.29       # Prob 50%                      #113.22
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.32:                        # Preds ..B1.31
                                # Execution count [0.00e+00]
        movl      -424(%rbp), %eax                              #115.16
        movslq    %eax, %rax                                    #115.14
        imulq     $8, %rax, %rax                                #115.14
        addq      -304(%rbp), %rax                              #115.14
        movl      -428(%rbp), %edx                              #115.25
        imull     $1501, %edx, %edx                             #115.27
        addl      -424(%rbp), %edx                              #115.27
        movslq    %edx, %rdx                                    #115.21
        imulq     $8, %rdx, %rdx                                #115.21
        addq      -320(%rbp), %rdx                              #115.21
        movsd     (%rdx), %xmm0                                 #115.21
        movl      -428(%rbp), %edx                              #115.36
        movslq    %edx, %rdx                                    #115.34
        imulq     $8, %rdx, %rdx                                #115.34
        addq      -240(%rbp), %rdx                              #115.34
        movsd     (%rdx), %xmm1                                 #115.34
        mulsd     %xmm1, %xmm0                                  #115.34
        movsd     (%rax), %xmm1                                 #115.14
        addsd     %xmm0, %xmm1                                  #115.34
        movl      -424(%rbp), %eax                              #115.9
        movslq    %eax, %rax                                    #115.7
        imulq     $8, %rax, %rax                                #115.7
        addq      -304(%rbp), %rax                              #115.7
        movsd     %xmm1, (%rax)                                 #115.7
        movl      $1, %eax                                      #113.25
        addl      -428(%rbp), %eax                              #113.25
        movl      %eax, -428(%rbp)                              #113.25
        jmp       ..B1.31       # Prob 100%                     #113.25
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.33:                        # Preds ..B1.28
                                # Execution count [0.00e+00]
..___tag_value_main.42:
        call      cpu_time                                      #118.8
..___tag_value_main.43:
                                # LOE rbp rsp r12 r13 r14 r15 rip xmm0
..B1.114:                       # Preds ..B1.33
                                # Execution count [0.00e+00]
        movsd     %xmm0, -216(%rbp)                             #118.8
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.34:                        # Preds ..B1.114
                                # Execution count [0.00e+00]
        movsd     -216(%rbp), %xmm0                             #118.8
        movsd     %xmm0, -208(%rbp)                             #118.3
        movq      -320(%rbp), %rax                              #120.10
        movl      $1501, %edx                                   #120.10
        movl      $1500, %ecx                                   #120.10
        movq      -288(%rbp), %rbx                              #120.10
        movq      %rax, %rdi                                    #120.10
        movl      %edx, %esi                                    #120.10
        movl      %ecx, %edx                                    #120.10
        movq      %rbx, %rcx                                    #120.10
..___tag_value_main.44:
        call      dgefa                                         #120.10
..___tag_value_main.45:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.115:                       # Preds ..B1.34
                                # Execution count [0.00e+00]
        movl      %eax, -420(%rbp)                              #120.10
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.35:                        # Preds ..B1.115
                                # Execution count [0.00e+00]
        movl      -420(%rbp), %eax                              #120.10
        movl      %eax, -416(%rbp)                              #120.3
        movl      -416(%rbp), %eax                              #122.8
        testl     %eax, %eax                                    #122.16
        je        ..B1.41       # Prob 50%                      #122.16
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.36:                        # Preds ..B1.35
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.0, %eax                         #124.5
        movq      %rax, %rdi                                    #124.5
        movl      $0, %eax                                      #124.5
..___tag_value_main.46:
#       printf(const char *__restrict__, ...)
        call      printf                                        #124.5
..___tag_value_main.47:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.116:                       # Preds ..B1.36
                                # Execution count [0.00e+00]
        movl      %eax, -412(%rbp)                              #124.5
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.37:                        # Preds ..B1.116
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.8, %eax                         #125.5
        movq      %rax, %rdi                                    #125.5
        movl      $0, %eax                                      #125.5
..___tag_value_main.48:
#       printf(const char *__restrict__, ...)
        call      printf                                        #125.5
..___tag_value_main.49:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.117:                       # Preds ..B1.37
                                # Execution count [0.00e+00]
        movl      %eax, -408(%rbp)                              #125.5
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.38:                        # Preds ..B1.117
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.9, %eax                         #126.5
        movq      %rax, %rdi                                    #126.5
        movl      $0, %eax                                      #126.5
..___tag_value_main.50:
#       printf(const char *__restrict__, ...)
        call      printf                                        #126.5
..___tag_value_main.51:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.118:                       # Preds ..B1.38
                                # Execution count [0.00e+00]
        movl      %eax, -404(%rbp)                              #126.5
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.39:                        # Preds ..B1.118
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.10, %eax                        #127.5
        movq      %rax, %rdi                                    #127.5
        movl      $0, %eax                                      #127.5
..___tag_value_main.52:
#       printf(const char *__restrict__, ...)
        call      printf                                        #127.5
..___tag_value_main.53:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.119:                       # Preds ..B1.39
                                # Execution count [0.00e+00]
        movl      %eax, -396(%rbp)                              #127.5
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.40:                        # Preds ..B1.119
                                # Execution count [0.00e+00]
        movl      $1, %eax                                      #128.12
        movq      -16(%rbp), %rbx                               #128.12[spill]
	.cfi_restore 3
        leave                                                   #128.12
	.cfi_restore 6
        ret                                                     #128.12
	.cfi_offset 3, -32
	.cfi_offset 6, -16
                                # LOE
..B1.41:                        # Preds ..B1.35
                                # Execution count [0.00e+00]
..___tag_value_main.59:
        call      cpu_time                                      #131.8
..___tag_value_main.60:
                                # LOE rbp rsp r12 r13 r14 r15 rip xmm0
..B1.120:                       # Preds ..B1.41
                                # Execution count [0.00e+00]
        movsd     %xmm0, -200(%rbp)                             #131.8
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.42:                        # Preds ..B1.120
                                # Execution count [0.00e+00]
        movsd     -200(%rbp), %xmm0                             #131.8
        movsd     %xmm0, -192(%rbp)                             #131.3
        movsd     -192(%rbp), %xmm0                             #132.13
        movsd     -208(%rbp), %xmm1                             #132.18
        subsd     %xmm1, %xmm0                                  #132.18
        lea       -184(%rbp), %rax                              #132.3
        movsd     %xmm0, (%rax)                                 #132.3
..___tag_value_main.61:
        call      cpu_time                                      #134.8
..___tag_value_main.62:
                                # LOE rbp rsp r12 r13 r14 r15 rip xmm0
..B1.121:                       # Preds ..B1.42
                                # Execution count [0.00e+00]
        movsd     %xmm0, -136(%rbp)                             #134.8
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.43:                        # Preds ..B1.121
                                # Execution count [0.00e+00]
        movsd     -136(%rbp), %xmm0                             #134.8
        movsd     %xmm0, -208(%rbp)                             #134.3
        movl      $0, -400(%rbp)                                #136.3
        movq      -320(%rbp), %rax                              #137.3
        movl      $1501, %edx                                   #137.3
        movl      $1500, %ecx                                   #137.3
        movq      -288(%rbp), %rbx                              #137.3
        movq      -304(%rbp), %rsi                              #137.3
        movl      -400(%rbp), %edi                              #137.3
        movl      %edi, -32(%rbp)                               #137.3[spill]
        movq      %rax, %rdi                                    #137.3
        movq      %rsi, -24(%rbp)                               #137.3[spill]
        movl      %edx, %esi                                    #137.3
        movl      %ecx, %edx                                    #137.3
        movq      %rbx, %rcx                                    #137.3
        movq      -24(%rbp), %rax                               #137.3[spill]
        movq      %rax, %r8                                     #137.3
        movl      -32(%rbp), %eax                               #137.3[spill]
        movl      %eax, %r9d                                    #137.3
..___tag_value_main.67:
        call      dgesl                                         #137.3
..___tag_value_main.68:
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.44:                        # Preds ..B1.43
                                # Execution count [0.00e+00]
..___tag_value_main.69:
        call      cpu_time                                      #139.8
..___tag_value_main.70:
                                # LOE rbp rsp r12 r13 r14 r15 rip xmm0
..B1.122:                       # Preds ..B1.44
                                # Execution count [0.00e+00]
        movsd     %xmm0, -128(%rbp)                             #139.8
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.45:                        # Preds ..B1.122
                                # Execution count [0.00e+00]
        movsd     -128(%rbp), %xmm0                             #139.8
        movsd     %xmm0, -192(%rbp)                             #139.3
        movsd     -192(%rbp), %xmm0                             #140.13
        movsd     -208(%rbp), %xmm1                             #140.18
        subsd     %xmm1, %xmm0                                  #140.18
        lea       -184(%rbp), %rax                              #140.3
        addq      $8, %rax                                      #140.3
        movsd     %xmm0, (%rax)                                 #140.3
        lea       -184(%rbp), %rax                              #142.11
        lea       -184(%rbp), %rdx                              #142.21
        addq      $8, %rdx                                      #142.21
        movsd     (%rax), %xmm0                                 #142.11
        movsd     (%rdx), %xmm1                                 #142.21
        addsd     %xmm1, %xmm0                                  #142.21
        movsd     %xmm0, -120(%rbp)                             #142.3
        movq      -320(%rbp), %rax                              #144.3
        movq      %rax, %rdi                                    #144.3
..___tag_value_main.71:
#       free(void *)
        call      free                                          #144.3
..___tag_value_main.72:
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.46:                        # Preds ..B1.45
                                # Execution count [0.00e+00]
        movl      $1501, %eax                                   #148.7
        movl      $1500, %edx                                   #148.7
        movl      %eax, %edi                                    #148.7
        movl      %edx, %esi                                    #148.7
..___tag_value_main.73:
        call      r8mat_gen                                     #148.7
..___tag_value_main.74:
                                # LOE rax rbp rsp r12 r13 r14 r15 rip
..B1.123:                       # Preds ..B1.46
                                # Execution count [0.00e+00]
        movq      %rax, -112(%rbp)                              #148.7
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.47:                        # Preds ..B1.123
                                # Execution count [0.00e+00]
        movq      -112(%rbp), %rax                              #148.7
        movq      %rax, -320(%rbp)                              #148.3
        movl      $0, -424(%rbp)                                #150.9
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.48:                        # Preds ..B1.49 ..B1.47
                                # Execution count [0.00e+00]
        movl      -424(%rbp), %eax                              #150.16
        cmpl      $1500, %eax                                   #150.20
        jge       ..B1.50       # Prob 50%                      #150.20
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.49:                        # Preds ..B1.48
                                # Execution count [0.00e+00]
        movsd     .L_2il0floatpacket.6(%rip), %xmm0             #152.5
        movl      -424(%rbp), %eax                              #152.7
        movslq    %eax, %rax                                    #152.5
        imulq     $8, %rax, %rax                                #152.5
        addq      -240(%rbp), %rax                              #152.5
        movsd     %xmm0, (%rax)                                 #152.5
        movl      $1, %eax                                      #150.23
        addl      -424(%rbp), %eax                              #150.23
        movl      %eax, -424(%rbp)                              #150.23
        jmp       ..B1.48       # Prob 100%                     #150.23
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.50:                        # Preds ..B1.48
                                # Execution count [0.00e+00]
        movl      $0, -424(%rbp)                                #155.9
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.51:                        # Preds ..B1.52 ..B1.50
                                # Execution count [0.00e+00]
        movl      -424(%rbp), %eax                              #155.16
        cmpl      $1500, %eax                                   #155.20
        jl        ..B1.53       # Prob 50%                      #155.20
        jmp       ..B1.56       # Prob 100%                     #155.20
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.52:                        # Preds ..B1.54
                                # Execution count [0.00e+00]
        movl      $1, %eax                                      #155.23
        addl      -424(%rbp), %eax                              #155.23
        movl      %eax, -424(%rbp)                              #155.23
        jmp       ..B1.51       # Prob 100%                     #155.23
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.53:                        # Preds ..B1.51
                                # Execution count [0.00e+00]
        pxor      %xmm0, %xmm0                                  #157.5
        movl      -424(%rbp), %eax                              #157.9
        movslq    %eax, %rax                                    #157.5
        imulq     $8, %rax, %rax                                #157.5
        addq      -256(%rbp), %rax                              #157.5
        movsd     %xmm0, (%rax)                                 #157.5
        movl      $0, -428(%rbp)                                #158.11
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.54:                        # Preds ..B1.55 ..B1.53
                                # Execution count [0.00e+00]
        movl      -428(%rbp), %eax                              #158.18
        cmpl      $1500, %eax                                   #158.22
        jge       ..B1.52       # Prob 50%                      #158.22
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.55:                        # Preds ..B1.54
                                # Execution count [0.00e+00]
        movl      -424(%rbp), %eax                              #160.20
        movslq    %eax, %rax                                    #160.16
        imulq     $8, %rax, %rax                                #160.16
        addq      -256(%rbp), %rax                              #160.16
        movl      -428(%rbp), %edx                              #160.29
        imull     $1501, %edx, %edx                             #160.31
        addl      -424(%rbp), %edx                              #160.31
        movslq    %edx, %rdx                                    #160.25
        imulq     $8, %rdx, %rdx                                #160.25
        addq      -320(%rbp), %rdx                              #160.25
        movsd     (%rdx), %xmm0                                 #160.25
        movl      -428(%rbp), %edx                              #160.40
        movslq    %edx, %rdx                                    #160.38
        imulq     $8, %rdx, %rdx                                #160.38
        addq      -240(%rbp), %rdx                              #160.38
        movsd     (%rdx), %xmm1                                 #160.38
        mulsd     %xmm1, %xmm0                                  #160.38
        movsd     (%rax), %xmm1                                 #160.16
        addsd     %xmm0, %xmm1                                  #160.38
        movl      -424(%rbp), %eax                              #160.11
        movslq    %eax, %rax                                    #160.7
        imulq     $8, %rax, %rax                                #160.7
        addq      -256(%rbp), %rax                              #160.7
        movsd     %xmm1, (%rax)                                 #160.7
        movl      $1, %eax                                      #158.25
        addl      -428(%rbp), %eax                              #158.25
        movl      %eax, -428(%rbp)                              #158.25
        jmp       ..B1.54       # Prob 100%                     #158.25
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.56:                        # Preds ..B1.51
                                # Execution count [0.00e+00]
        movl      $0, -424(%rbp)                                #164.9
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.57:                        # Preds ..B1.58 ..B1.56
                                # Execution count [0.00e+00]
        movl      -424(%rbp), %eax                              #164.16
        cmpl      $1500, %eax                                   #164.20
        jl        ..B1.59       # Prob 50%                      #164.20
        jmp       ..B1.62       # Prob 100%                     #164.20
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.58:                        # Preds ..B1.60
                                # Execution count [0.00e+00]
        movl      $1, %eax                                      #164.23
        addl      -424(%rbp), %eax                              #164.23
        movl      %eax, -424(%rbp)                              #164.23
        jmp       ..B1.57       # Prob 100%                     #164.23
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.59:                        # Preds ..B1.57
                                # Execution count [0.00e+00]
        movl      -424(%rbp), %eax                              #166.21
        movslq    %eax, %rax                                    #166.17
        imulq     $8, %rax, %rax                                #166.17
        addq      -256(%rbp), %rax                              #166.17
        movsd     (%rax), %xmm0                                 #166.17
        xorpd     .L_2il0floatpacket.7(%rip), %xmm0             #166.17
        movl      -424(%rbp), %eax                              #166.11
        movslq    %eax, %rax                                    #166.5
        imulq     $8, %rax, %rax                                #166.5
        addq      -272(%rbp), %rax                              #166.5
        movsd     %xmm0, (%rax)                                 #166.5
        movl      $0, -428(%rbp)                                #167.11
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.60:                        # Preds ..B1.61 ..B1.59
                                # Execution count [0.00e+00]
        movl      -428(%rbp), %eax                              #167.18
        cmpl      $1500, %eax                                   #167.22
        jge       ..B1.58       # Prob 50%                      #167.22
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.61:                        # Preds ..B1.60
                                # Execution count [0.00e+00]
        movl      -424(%rbp), %eax                              #169.24
        movslq    %eax, %rax                                    #169.18
        imulq     $8, %rax, %rax                                #169.18
        addq      -272(%rbp), %rax                              #169.18
        movl      -428(%rbp), %edx                              #169.33
        imull     $1501, %edx, %edx                             #169.35
        addl      -424(%rbp), %edx                              #169.35
        movslq    %edx, %rdx                                    #169.29
        imulq     $8, %rdx, %rdx                                #169.29
        addq      -320(%rbp), %rdx                              #169.29
        movsd     (%rdx), %xmm0                                 #169.29
        movl      -428(%rbp), %edx                              #169.44
        movslq    %edx, %rdx                                    #169.42
        imulq     $8, %rdx, %rdx                                #169.42
        addq      -304(%rbp), %rdx                              #169.42
        movsd     (%rdx), %xmm1                                 #169.42
        mulsd     %xmm1, %xmm0                                  #169.42
        movsd     (%rax), %xmm1                                 #169.18
        addsd     %xmm0, %xmm1                                  #169.42
        movl      -424(%rbp), %eax                              #169.13
        movslq    %eax, %rax                                    #169.7
        imulq     $8, %rax, %rax                                #169.7
        addq      -272(%rbp), %rax                              #169.7
        movsd     %xmm1, (%rax)                                 #169.7
        movl      $1, %eax                                      #167.25
        addl      -428(%rbp), %eax                              #167.25
        movl      %eax, -428(%rbp)                              #167.25
        jmp       ..B1.60       # Prob 100%                     #167.25
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.62:                        # Preds ..B1.57
                                # Execution count [0.00e+00]
        pxor      %xmm0, %xmm0                                  #173.3
        movsd     %xmm0, -104(%rbp)                             #173.3
        movl      $0, -424(%rbp)                                #174.9
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.63:                        # Preds ..B1.66 ..B1.62
                                # Execution count [0.00e+00]
        movl      -424(%rbp), %eax                              #174.16
        cmpl      $1500, %eax                                   #174.20
        jge       ..B1.67       # Prob 50%                      #174.20
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.64:                        # Preds ..B1.63
                                # Execution count [0.00e+00]
        movl      -424(%rbp), %eax                              #176.37
        movslq    %eax, %rax                                    #176.37
        imulq     $8, %rax, %rax                                #176.37
        addq      -272(%rbp), %rax                              #176.37
        movsd     (%rax), %xmm0                                 #176.37
..___tag_value_main.75:
        call      r8_abs                                        #176.37
..___tag_value_main.76:
                                # LOE rbp rsp r12 r13 r14 r15 rip xmm0
..B1.124:                       # Preds ..B1.64
                                # Execution count [0.00e+00]
        movsd     %xmm0, -96(%rbp)                              #176.37
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.65:                        # Preds ..B1.124
                                # Execution count [0.00e+00]
        movsd     -104(%rbp), %xmm0                             #176.17
        movsd     -96(%rbp), %xmm1                              #176.17
..___tag_value_main.77:
        call      r8_max                                        #176.17
..___tag_value_main.78:
                                # LOE rbp rsp r12 r13 r14 r15 rip xmm0
..B1.125:                       # Preds ..B1.65
                                # Execution count [0.00e+00]
        movsd     %xmm0, -80(%rbp)                              #176.17
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.66:                        # Preds ..B1.125
                                # Execution count [0.00e+00]
        movsd     -80(%rbp), %xmm0                              #176.17
        movsd     %xmm0, -104(%rbp)                             #176.5
        movl      $1, %eax                                      #174.23
        addl      -424(%rbp), %eax                              #174.23
        movl      %eax, -424(%rbp)                              #174.23
        jmp       ..B1.63       # Prob 100%                     #174.23
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.67:                        # Preds ..B1.63
                                # Execution count [0.00e+00]
        pxor      %xmm0, %xmm0                                  #179.3
        movsd     %xmm0, -88(%rbp)                              #179.3
        movl      $0, -424(%rbp)                                #180.9
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.68:                        # Preds ..B1.71 ..B1.67
                                # Execution count [0.00e+00]
        movl      -424(%rbp), %eax                              #180.16
        cmpl      $1500, %eax                                   #180.20
        jge       ..B1.72       # Prob 50%                      #180.20
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.69:                        # Preds ..B1.68
                                # Execution count [0.00e+00]
        movl      -424(%rbp), %eax                              #182.29
        movslq    %eax, %rax                                    #182.29
        imulq     $8, %rax, %rax                                #182.29
        addq      -304(%rbp), %rax                              #182.29
        movsd     (%rax), %xmm0                                 #182.29
..___tag_value_main.79:
        call      r8_abs                                        #182.29
..___tag_value_main.80:
                                # LOE rbp rsp r12 r13 r14 r15 rip xmm0
..B1.126:                       # Preds ..B1.69
                                # Execution count [0.00e+00]
        movsd     %xmm0, -72(%rbp)                              #182.29
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.70:                        # Preds ..B1.126
                                # Execution count [0.00e+00]
        movsd     -88(%rbp), %xmm0                              #182.13
        movsd     -72(%rbp), %xmm1                              #182.13
..___tag_value_main.81:
        call      r8_max                                        #182.13
..___tag_value_main.82:
                                # LOE rbp rsp r12 r13 r14 r15 rip xmm0
..B1.127:                       # Preds ..B1.70
                                # Execution count [0.00e+00]
        movsd     %xmm0, -56(%rbp)                              #182.13
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.71:                        # Preds ..B1.127
                                # Execution count [0.00e+00]
        movsd     -56(%rbp), %xmm0                              #182.13
        movsd     %xmm0, -88(%rbp)                              #182.5
        movl      $1, %eax                                      #180.23
        addl      -424(%rbp), %eax                              #180.23
        movl      %eax, -424(%rbp)                              #180.23
        jmp       ..B1.68       # Prob 100%                     #180.23
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.72:                        # Preds ..B1.68
                                # Execution count [0.00e+00]
..___tag_value_main.83:
        call      r8_epsilon                                    #185.9
..___tag_value_main.84:
                                # LOE rbp rsp r12 r13 r14 r15 rip xmm0
..B1.128:                       # Preds ..B1.72
                                # Execution count [0.00e+00]
        movsd     %xmm0, -64(%rbp)                              #185.9
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.73:                        # Preds ..B1.128
                                # Execution count [0.00e+00]
        movsd     -64(%rbp), %xmm0                              #185.9
        movsd     %xmm0, -48(%rbp)                              #185.3
        movsd     -104(%rbp), %xmm0                             #187.12
        movsd     .L_2il0floatpacket.2(%rip), %xmm1             #187.24
        divsd     %xmm1, %xmm0                                  #187.24
        movsd     -232(%rbp), %xmm1                             #187.39
        divsd     %xmm1, %xmm0                                  #187.39
        movsd     -88(%rbp), %xmm1                              #187.47
        divsd     %xmm1, %xmm0                                  #187.47
        movsd     -48(%rbp), %xmm1                              #187.55
        divsd     %xmm1, %xmm0                                  #187.55
        movsd     %xmm0, -40(%rbp)                              #187.3
        lea       -184(%rbp), %rax                              #189.3
        addq      $16, %rax                                     #189.3
        movsd     -120(%rbp), %xmm0                             #189.13
        movsd     %xmm0, (%rax)                                 #189.3
        pxor      %xmm0, %xmm0                                  #190.3
        movsd     -120(%rbp), %xmm1                             #190.14
        comisd    %xmm1, %xmm0                                  #190.14
        jae       ..B1.75       # Prob 50%                      #190.14
        jp        ..B1.75       # Prob 0%                       #190.14
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.74:                        # Preds ..B1.73
                                # Execution count [0.00e+00]
        movsd     -336(%rbp), %xmm0                             #192.15
        movsd     .L_2il0floatpacket.3(%rip), %xmm1             #192.23
        movsd     -120(%rbp), %xmm2                             #192.33
        mulsd     %xmm2, %xmm1                                  #192.33
        divsd     %xmm1, %xmm0                                  #192.33
        lea       -184(%rbp), %rax                              #192.5
        addq      $24, %rax                                     #192.5
        movsd     %xmm0, (%rax)                                 #192.5
        jmp       ..B1.76       # Prob 100%                     #192.5
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.75:                        # Preds ..B1.73
                                # Execution count [0.00e+00]
        movsd     .L_2il0floatpacket.4(%rip), %xmm0             #196.15
        lea       -184(%rbp), %rax                              #196.5
        addq      $24, %rax                                     #196.5
        movsd     %xmm0, (%rax)                                 #196.5
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.76:                        # Preds ..B1.74 ..B1.75
                                # Execution count [0.00e+00]
        movsd     .L_2il0floatpacket.5(%rip), %xmm0             #198.13
        lea       -184(%rbp), %rax                              #198.19
        addq      $24, %rax                                     #198.19
        movsd     (%rax), %xmm1                                 #198.19
        divsd     %xmm1, %xmm0                                  #198.19
        lea       -184(%rbp), %rax                              #198.3
        addq      $32, %rax                                     #198.3
        movsd     %xmm0, (%rax)                                 #198.3
        movsd     -120(%rbp), %xmm0                             #199.13
        movsd     -344(%rbp), %xmm1                             #199.21
        divsd     %xmm1, %xmm0                                  #199.21
        lea       -184(%rbp), %rax                              #199.3
        addq      $40, %rax                                     #199.3
        movsd     %xmm0, (%rax)                                 #199.3
        movl      $.L_2__STRING.0, %eax                         #201.3
        movq      %rax, %rdi                                    #201.3
        movl      $0, %eax                                      #201.3
..___tag_value_main.85:
#       printf(const char *__restrict__, ...)
        call      printf                                        #201.3
..___tag_value_main.86:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.129:                       # Preds ..B1.76
                                # Execution count [0.00e+00]
        movl      %eax, -392(%rbp)                              #201.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.77:                        # Preds ..B1.129
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.11, %eax                        #202.3
        movq      %rax, %rdi                                    #202.3
        movl      $0, %eax                                      #202.3
..___tag_value_main.87:
#       printf(const char *__restrict__, ...)
        call      printf                                        #202.3
..___tag_value_main.88:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.130:                       # Preds ..B1.77
                                # Execution count [0.00e+00]
        movl      %eax, -388(%rbp)                              #202.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.78:                        # Preds ..B1.130
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.0, %eax                         #203.3
        movq      %rax, %rdi                                    #203.3
        movl      $0, %eax                                      #203.3
..___tag_value_main.89:
#       printf(const char *__restrict__, ...)
        call      printf                                        #203.3
..___tag_value_main.90:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.131:                       # Preds ..B1.78
                                # Execution count [0.00e+00]
        movl      %eax, -384(%rbp)                              #203.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.79:                        # Preds ..B1.131
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.12, %eax                        #204.3
        movsd     -40(%rbp), %xmm0                              #204.3
        movsd     -104(%rbp), %xmm1                             #204.3
        movsd     -48(%rbp), %xmm2                              #204.3
        movq      -304(%rbp), %rdx                              #204.3
        movsd     (%rdx), %xmm3                                 #204.3
        movl      $11992, %edx                                  #204.3
        addq      -304(%rbp), %rdx                              #204.3
        movsd     (%rdx), %xmm4                                 #204.3
        movq      %rax, %rdi                                    #204.3
        movl      $5, %eax                                      #204.3
..___tag_value_main.91:
#       printf(const char *__restrict__, ...)
        call      printf                                        #204.3
..___tag_value_main.92:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.132:                       # Preds ..B1.79
                                # Execution count [0.00e+00]
        movl      %eax, -380(%rbp)                              #204.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.80:                        # Preds ..B1.132
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.0, %eax                         #205.3
        movq      %rax, %rdi                                    #205.3
        movl      $0, %eax                                      #205.3
..___tag_value_main.93:
#       printf(const char *__restrict__, ...)
        call      printf                                        #205.3
..___tag_value_main.94:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.133:                       # Preds ..B1.80
                                # Execution count [0.00e+00]
        movl      %eax, -376(%rbp)                              #205.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.81:                        # Preds ..B1.133
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.13, %eax                        #206.3
        movq      %rax, %rdi                                    #206.3
        movl      $0, %eax                                      #206.3
..___tag_value_main.95:
#       printf(const char *__restrict__, ...)
        call      printf                                        #206.3
..___tag_value_main.96:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.134:                       # Preds ..B1.81
                                # Execution count [0.00e+00]
        movl      %eax, -372(%rbp)                              #206.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.82:                        # Preds ..B1.134
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.0, %eax                         #207.3
        movq      %rax, %rdi                                    #207.3
        movl      $0, %eax                                      #207.3
..___tag_value_main.97:
#       printf(const char *__restrict__, ...)
        call      printf                                        #207.3
..___tag_value_main.98:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.135:                       # Preds ..B1.82
                                # Execution count [0.00e+00]
        movl      %eax, -368(%rbp)                              #207.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.83:                        # Preds ..B1.135
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.14, %eax                        #208.3
        lea       -184(%rbp), %rdx                              #208.3
        movsd     (%rdx), %xmm0                                 #208.3
        lea       -184(%rbp), %rdx                              #208.3
        addq      $8, %rdx                                      #208.3
        movsd     (%rdx), %xmm1                                 #208.3
        lea       -184(%rbp), %rdx                              #208.3
        addq      $16, %rdx                                     #208.3
        movsd     (%rdx), %xmm2                                 #208.3
        lea       -184(%rbp), %rdx                              #208.3
        addq      $24, %rdx                                     #208.3
        movsd     (%rdx), %xmm3                                 #208.3
        lea       -184(%rbp), %rdx                              #208.3
        addq      $32, %rdx                                     #208.3
        movsd     (%rdx), %xmm4                                 #208.3
        lea       -184(%rbp), %rdx                              #208.3
        addq      $40, %rdx                                     #208.3
        movsd     (%rdx), %xmm5                                 #208.3
        movq      %rax, %rdi                                    #208.3
        movl      $6, %eax                                      #208.3
..___tag_value_main.99:
#       printf(const char *__restrict__, ...)
        call      printf                                        #208.3
..___tag_value_main.100:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.136:                       # Preds ..B1.83
                                # Execution count [0.00e+00]
        movl      %eax, -364(%rbp)                              #208.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.84:                        # Preds ..B1.136
                                # Execution count [0.00e+00]
        movq      -320(%rbp), %rax                              #211.3
        movq      %rax, %rdi                                    #211.3
..___tag_value_main.101:
#       free(void *)
        call      free                                          #211.3
..___tag_value_main.102:
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.85:                        # Preds ..B1.84
                                # Execution count [0.00e+00]
        movq      -304(%rbp), %rax                              #212.3
        movq      %rax, %rdi                                    #212.3
..___tag_value_main.103:
#       free(void *)
        call      free                                          #212.3
..___tag_value_main.104:
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.86:                        # Preds ..B1.85
                                # Execution count [0.00e+00]
        movq      -288(%rbp), %rax                              #213.3
        movq      %rax, %rdi                                    #213.3
..___tag_value_main.105:
#       free(void *)
        call      free                                          #213.3
..___tag_value_main.106:
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.87:                        # Preds ..B1.86
                                # Execution count [0.00e+00]
        movq      -272(%rbp), %rax                              #214.3
        movq      %rax, %rdi                                    #214.3
..___tag_value_main.107:
#       free(void *)
        call      free                                          #214.3
..___tag_value_main.108:
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.88:                        # Preds ..B1.87
                                # Execution count [0.00e+00]
        movq      -256(%rbp), %rax                              #215.3
        movq      %rax, %rdi                                    #215.3
..___tag_value_main.109:
#       free(void *)
        call      free                                          #215.3
..___tag_value_main.110:
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.89:                        # Preds ..B1.88
                                # Execution count [0.00e+00]
        movq      -240(%rbp), %rax                              #216.3
        movq      %rax, %rdi                                    #216.3
..___tag_value_main.111:
#       free(void *)
        call      free                                          #216.3
..___tag_value_main.112:
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.90:                        # Preds ..B1.89
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.0, %eax                         #220.3
        movq      %rax, %rdi                                    #220.3
        movl      $0, %eax                                      #220.3
..___tag_value_main.113:
#       printf(const char *__restrict__, ...)
        call      printf                                        #220.3
..___tag_value_main.114:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.137:                       # Preds ..B1.90
                                # Execution count [0.00e+00]
        movl      %eax, -360(%rbp)                              #220.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.91:                        # Preds ..B1.137
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.1, %eax                         #221.3
        movq      %rax, %rdi                                    #221.3
        movl      $0, %eax                                      #221.3
..___tag_value_main.115:
#       printf(const char *__restrict__, ...)
        call      printf                                        #221.3
..___tag_value_main.116:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.138:                       # Preds ..B1.91
                                # Execution count [0.00e+00]
        movl      %eax, -356(%rbp)                              #221.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.92:                        # Preds ..B1.138
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.15, %eax                        #222.3
        movq      %rax, %rdi                                    #222.3
        movl      $0, %eax                                      #222.3
..___tag_value_main.117:
#       printf(const char *__restrict__, ...)
        call      printf                                        #222.3
..___tag_value_main.118:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.139:                       # Preds ..B1.92
                                # Execution count [0.00e+00]
        movl      %eax, -352(%rbp)                              #222.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.93:                        # Preds ..B1.139
                                # Execution count [0.00e+00]
        movl      $.L_2__STRING.0, %eax                         #224.3
        movq      %rax, %rdi                                    #224.3
        movl      $0, %eax                                      #224.3
..___tag_value_main.119:
#       printf(const char *__restrict__, ...)
        call      printf                                        #224.3
..___tag_value_main.120:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B1.140:                       # Preds ..B1.93
                                # Execution count [0.00e+00]
        movl      %eax, -348(%rbp)                              #224.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.94:                        # Preds ..B1.140
                                # Execution count [0.00e+00]
..___tag_value_main.121:
        call      timestamp                                     #225.3
..___tag_value_main.122:
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B1.95:                        # Preds ..B1.94
                                # Execution count [0.00e+00]
        movl      $0, %eax                                      #227.10
        movq      -16(%rbp), %rbx                               #227.10[spill]
	.cfi_restore 3
        leave                                                   #227.10
	.cfi_restore 6
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
.L_2__routine_start_cpu_time_1:
# -- Begin  cpu_time
	.text
# mark_begin;

	.globl cpu_time
# --- cpu_time(void)
cpu_time:
..B2.1:                         # Preds ..B2.0
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_cpu_time.127:
..L128:
                                                        #263.1
        pushq     %rbp                                          #263.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #263.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        subq      $16, %rsp                                     #263.1
..___tag_value_cpu_time.132:
#       clock(void)
        call      clock                                         #266.22
..___tag_value_cpu_time.133:
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B2.5:                         # Preds ..B2.1
                                # Execution count [0.00e+00]
        movq      %rax, -16(%rbp)                               #266.22
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.2:                         # Preds ..B2.5
                                # Execution count [0.00e+00]
        movq      -16(%rbp), %rax                               #266.22
        cvtsi2sdq %rax, %xmm0                                   #266.22
        movsd     .L_2il0floatpacket.3(%rip), %xmm1             #267.11
        divsd     %xmm1, %xmm0                                  #267.11
        movsd     %xmm0, -8(%rbp)                               #266.3
        movsd     -8(%rbp), %xmm0                               #269.10
        leave                                                   #269.10
	.cfi_restore 6
        ret                                                     #269.10
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
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_daxpy.136:
..L137:
                                                        #321.1
        pushq     %rbp                                          #321.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #321.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        subq      $80, %rsp                                     #321.1
        movl      %edi, -64(%rbp)                               #321.1
        movsd     %xmm0, -56(%rbp)                              #321.1
        movq      %rsi, -48(%rbp)                               #321.1
        movl      %edx, -40(%rbp)                               #321.1
        movq      %rcx, -32(%rbp)                               #321.1
        movl      %r8d, -24(%rbp)                               #321.1
        movl      -64(%rbp), %eax                               #327.8
        testl     %eax, %eax                                    #327.13
        jg        ..B3.3        # Prob 50%                      #327.13
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B3.2:                         # Preds ..B3.1
                                # Execution count [0.00e+00]
        leave                                                   #329.5
	.cfi_restore 6
        ret                                                     #329.5
	.cfi_offset 6, -16
                                # LOE
..B3.3:                         # Preds ..B3.1
                                # Execution count [0.00e+00]
        movsd     -56(%rbp), %xmm0                              #332.8
        pxor      %xmm1, %xmm1                                  #332.3
        ucomisd   %xmm1, %xmm0                                  #332.14
        jne       ..B3.5        # Prob 50%                      #332.14
        jp        ..B3.5        # Prob 0%                       #332.14
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B3.4:                         # Preds ..B3.3
                                # Execution count [0.00e+00]
        leave                                                   #334.5
	.cfi_restore 6
        ret                                                     #334.5
	.cfi_offset 6, -16
                                # LOE
..B3.5:                         # Preds ..B3.3
                                # Execution count [0.00e+00]
        movl      $-1, %eax                                     #340.3
        addl      -40(%rbp), %eax                               #340.16
        movl      $-1, %edx                                     #340.3
        addl      -24(%rbp), %edx                               #340.16
        orl       %edx, %eax                                    #340.16
        je        ..B3.15       # Prob 50%                      #340.16
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B3.6:                         # Preds ..B3.5
                                # Execution count [0.00e+00]
        movl      -40(%rbp), %eax                               #342.15
        testl     %eax, %eax                                    #342.15
        jl        ..B3.8        # Prob 50%                      #342.15
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B3.7:                         # Preds ..B3.6
                                # Execution count [0.00e+00]
        movl      $0, -72(%rbp)                                 #344.7
        jmp       ..B3.9        # Prob 100%                     #344.7
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B3.8:                         # Preds ..B3.6
                                # Execution count [0.00e+00]
        movl      -64(%rbp), %eax                               #348.16
        negl      %eax                                          #348.16
        incl      %eax                                          #348.20
        imull     -40(%rbp), %eax                               #348.26
        movl      %eax, -72(%rbp)                               #348.7
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B3.9:                         # Preds ..B3.7 ..B3.8
                                # Execution count [0.00e+00]
        movl      -24(%rbp), %eax                               #351.15
        testl     %eax, %eax                                    #351.15
        jl        ..B3.11       # Prob 50%                      #351.15
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B3.10:                        # Preds ..B3.9
                                # Execution count [0.00e+00]
        movl      $0, -68(%rbp)                                 #353.7
        jmp       ..B3.12       # Prob 100%                     #353.7
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B3.11:                        # Preds ..B3.9
                                # Execution count [0.00e+00]
        movl      -64(%rbp), %eax                               #357.16
        negl      %eax                                          #357.16
        incl      %eax                                          #357.20
        imull     -24(%rbp), %eax                               #357.26
        movl      %eax, -68(%rbp)                               #357.7
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B3.12:                        # Preds ..B3.10 ..B3.11
                                # Execution count [0.00e+00]
        movl      $0, -76(%rbp)                                 #360.11
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B3.13:                        # Preds ..B3.14 ..B3.12
                                # Execution count [0.00e+00]
        movl      -76(%rbp), %eax                               #360.18
        movl      -64(%rbp), %edx                               #360.22
        cmpl      %edx, %eax                                    #360.22
        jge       ..B3.21       # Prob 50%                      #360.22
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B3.14:                        # Preds ..B3.13
                                # Execution count [0.00e+00]
        movl      -68(%rbp), %eax                               #362.19
        movslq    %eax, %rax                                    #362.16
        imulq     $8, %rax, %rax                                #362.16
        addq      -32(%rbp), %rax                               #362.16
        movsd     -56(%rbp), %xmm0                              #362.25
        movl      -72(%rbp), %edx                               #362.33
        movslq    %edx, %rdx                                    #362.30
        imulq     $8, %rdx, %rdx                                #362.30
        addq      -48(%rbp), %rdx                               #362.30
        movsd     (%rdx), %xmm1                                 #362.30
        mulsd     %xmm1, %xmm0                                  #362.30
        movsd     (%rax), %xmm1                                 #362.16
        addsd     %xmm0, %xmm1                                  #362.30
        movl      -68(%rbp), %eax                               #362.10
        movslq    %eax, %rax                                    #362.7
        imulq     $8, %rax, %rax                                #362.7
        addq      -32(%rbp), %rax                               #362.7
        movsd     %xmm1, (%rax)                                 #362.7
        movl      -40(%rbp), %eax                               #363.17
        addl      -72(%rbp), %eax                               #363.17
        movl      %eax, -72(%rbp)                               #363.7
        movl      -24(%rbp), %eax                               #364.17
        addl      -68(%rbp), %eax                               #364.17
        movl      %eax, -68(%rbp)                               #364.7
        movl      $1, %eax                                      #360.25
        addl      -76(%rbp), %eax                               #360.25
        movl      %eax, -76(%rbp)                               #360.25
        jmp       ..B3.13       # Prob 100%                     #360.25
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B3.15:                        # Preds ..B3.5
                                # Execution count [0.00e+00]
        movl      -64(%rbp), %eax                               #372.9
        movl      $4, %edx                                      #372.5
        movl      %edx, -16(%rbp)                               #372.13[spill]
        cltd                                                    #372.13
        movl      -16(%rbp), %ecx                               #372.13[spill]
        idivl     %ecx                                          #372.13
        movl      %edx, -80(%rbp)                               #372.5
        movl      $0, -76(%rbp)                                 #374.11
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B3.16:                        # Preds ..B3.17 ..B3.15
                                # Execution count [0.00e+00]
        movl      -76(%rbp), %eax                               #374.18
        movl      -80(%rbp), %edx                               #374.22
        cmpl      %edx, %eax                                    #374.22
        jge       ..B3.18       # Prob 50%                      #374.22
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B3.17:                        # Preds ..B3.16
                                # Execution count [0.00e+00]
        movl      -76(%rbp), %eax                               #376.18
        movslq    %eax, %rax                                    #376.15
        imulq     $8, %rax, %rax                                #376.15
        addq      -32(%rbp), %rax                               #376.15
        movsd     -56(%rbp), %xmm0                              #376.23
        movl      -76(%rbp), %edx                               #376.31
        movslq    %edx, %rdx                                    #376.28
        imulq     $8, %rdx, %rdx                                #376.28
        addq      -48(%rbp), %rdx                               #376.28
        movsd     (%rdx), %xmm1                                 #376.28
        mulsd     %xmm1, %xmm0                                  #376.28
        movsd     (%rax), %xmm1                                 #376.15
        addsd     %xmm0, %xmm1                                  #376.28
        movl      -76(%rbp), %eax                               #376.10
        movslq    %eax, %rax                                    #376.7
        imulq     $8, %rax, %rax                                #376.7
        addq      -32(%rbp), %rax                               #376.7
        movsd     %xmm1, (%rax)                                 #376.7
        movl      $1, %eax                                      #374.25
        addl      -76(%rbp), %eax                               #374.25
        movl      %eax, -76(%rbp)                               #374.25
        jmp       ..B3.16       # Prob 100%                     #374.25
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B3.18:                        # Preds ..B3.16
                                # Execution count [0.00e+00]
        movl      -80(%rbp), %eax                               #379.15
        movl      %eax, -76(%rbp)                               #379.11
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B3.19:                        # Preds ..B3.20 ..B3.18
                                # Execution count [0.00e+00]
        movl      -76(%rbp), %eax                               #379.18
        movl      -64(%rbp), %edx                               #379.22
        cmpl      %edx, %eax                                    #379.22
        jge       ..B3.21       # Prob 50%                      #379.22
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B3.20:                        # Preds ..B3.19
                                # Execution count [0.00e+00]
        movl      -76(%rbp), %eax                               #381.20
        movslq    %eax, %rax                                    #381.17
        imulq     $8, %rax, %rax                                #381.17
        addq      -32(%rbp), %rax                               #381.17
        movsd     -56(%rbp), %xmm0                              #381.27
        movl      -76(%rbp), %edx                               #381.35
        movslq    %edx, %rdx                                    #381.32
        imulq     $8, %rdx, %rdx                                #381.32
        addq      -48(%rbp), %rdx                               #381.32
        movsd     (%rdx), %xmm1                                 #381.32
        mulsd     %xmm1, %xmm0                                  #381.32
        movsd     (%rax), %xmm1                                 #381.17
        addsd     %xmm0, %xmm1                                  #381.32
        movl      -76(%rbp), %eax                               #381.10
        movslq    %eax, %rax                                    #381.7
        imulq     $8, %rax, %rax                                #381.7
        addq      -32(%rbp), %rax                               #381.7
        movsd     %xmm1, (%rax)                                 #381.7
        movl      $1, %eax                                      #382.7
        addl      -76(%rbp), %eax                               #382.22
        movslq    %eax, %rax                                    #382.17
        imulq     $8, %rax, %rax                                #382.17
        addq      -32(%rbp), %rax                               #382.17
        movsd     -56(%rbp), %xmm0                              #382.27
        movl      $1, %edx                                      #382.7
        addl      -76(%rbp), %edx                               #382.37
        movslq    %edx, %rdx                                    #382.32
        imulq     $8, %rdx, %rdx                                #382.32
        addq      -48(%rbp), %rdx                               #382.32
        movsd     (%rdx), %xmm1                                 #382.32
        mulsd     %xmm1, %xmm0                                  #382.32
        movsd     (%rax), %xmm1                                 #382.17
        addsd     %xmm0, %xmm1                                  #382.32
        movl      $1, %eax                                      #382.7
        addl      -76(%rbp), %eax                               #382.12
        movslq    %eax, %rax                                    #382.7
        imulq     $8, %rax, %rax                                #382.7
        addq      -32(%rbp), %rax                               #382.7
        movsd     %xmm1, (%rax)                                 #382.7
        movl      $2, %eax                                      #383.7
        addl      -76(%rbp), %eax                               #383.22
        movslq    %eax, %rax                                    #383.17
        imulq     $8, %rax, %rax                                #383.17
        addq      -32(%rbp), %rax                               #383.17
        movsd     -56(%rbp), %xmm0                              #383.27
        movl      $2, %edx                                      #383.7
        addl      -76(%rbp), %edx                               #383.37
        movslq    %edx, %rdx                                    #383.32
        imulq     $8, %rdx, %rdx                                #383.32
        addq      -48(%rbp), %rdx                               #383.32
        movsd     (%rdx), %xmm1                                 #383.32
        mulsd     %xmm1, %xmm0                                  #383.32
        movsd     (%rax), %xmm1                                 #383.17
        addsd     %xmm0, %xmm1                                  #383.32
        movl      $2, %eax                                      #383.7
        addl      -76(%rbp), %eax                               #383.12
        movslq    %eax, %rax                                    #383.7
        imulq     $8, %rax, %rax                                #383.7
        addq      -32(%rbp), %rax                               #383.7
        movsd     %xmm1, (%rax)                                 #383.7
        movl      $3, %eax                                      #384.7
        addl      -76(%rbp), %eax                               #384.22
        movslq    %eax, %rax                                    #384.17
        imulq     $8, %rax, %rax                                #384.17
        addq      -32(%rbp), %rax                               #384.17
        movsd     -56(%rbp), %xmm0                              #384.27
        movl      $3, %edx                                      #384.7
        addl      -76(%rbp), %edx                               #384.37
        movslq    %edx, %rdx                                    #384.32
        imulq     $8, %rdx, %rdx                                #384.32
        addq      -48(%rbp), %rdx                               #384.32
        movsd     (%rdx), %xmm1                                 #384.32
        mulsd     %xmm1, %xmm0                                  #384.32
        movsd     (%rax), %xmm1                                 #384.17
        addsd     %xmm0, %xmm1                                  #384.32
        movl      $3, %eax                                      #384.7
        addl      -76(%rbp), %eax                               #384.12
        movslq    %eax, %rax                                    #384.7
        imulq     $8, %rax, %rax                                #384.7
        addq      -32(%rbp), %rax                               #384.7
        movsd     %xmm1, (%rax)                                 #384.7
        movl      $4, %eax                                      #379.25
        addl      -76(%rbp), %eax                               #379.33
        movl      %eax, -76(%rbp)                               #379.25
        jmp       ..B3.19       # Prob 100%                     #379.25
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B3.21:                        # Preds ..B3.13 ..B3.19
                                # Execution count [0.00e+00]
        leave                                                   #387.3
	.cfi_restore 6
        ret                                                     #387.3
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

	.globl ddot
# --- ddot(int, double *, int, double *, int)
ddot:
# parameter 1: %edi
# parameter 2: %rsi
# parameter 3: %edx
# parameter 4: %rcx
# parameter 5: %r8d
..B4.1:                         # Preds ..B4.0
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_ddot.149:
..L150:
                                                        #439.1
        pushq     %rbp                                          #439.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #439.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        subq      $80, %rsp                                     #439.1
        movl      %edi, -64(%rbp)                               #439.1
        movq      %rsi, -56(%rbp)                               #439.1
        movl      %edx, -48(%rbp)                               #439.1
        movq      %rcx, -40(%rbp)                               #439.1
        movl      %r8d, -32(%rbp)                               #439.1
        pxor      %xmm0, %xmm0                                  #446.3
        movsd     %xmm0, -24(%rbp)                              #446.3
        movl      -64(%rbp), %eax                               #448.8
        testl     %eax, %eax                                    #448.13
        jg        ..B4.3        # Prob 50%                      #448.13
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B4.2:                         # Preds ..B4.1
                                # Execution count [0.00e+00]
        movsd     -24(%rbp), %xmm0                              #450.12
        leave                                                   #450.12
	.cfi_restore 6
        ret                                                     #450.12
	.cfi_offset 6, -16
                                # LOE
..B4.3:                         # Preds ..B4.1
                                # Execution count [0.00e+00]
        movl      $-1, %eax                                     #456.3
        addl      -48(%rbp), %eax                               #456.16
        movl      $-1, %edx                                     #456.3
        addl      -32(%rbp), %edx                               #456.16
        orl       %edx, %eax                                    #456.16
        je        ..B4.13       # Prob 50%                      #456.16
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B4.4:                         # Preds ..B4.3
                                # Execution count [0.00e+00]
        movl      -48(%rbp), %eax                               #458.15
        testl     %eax, %eax                                    #458.15
        jl        ..B4.6        # Prob 50%                      #458.15
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B4.5:                         # Preds ..B4.4
                                # Execution count [0.00e+00]
        movl      $0, -72(%rbp)                                 #460.7
        jmp       ..B4.7        # Prob 100%                     #460.7
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B4.6:                         # Preds ..B4.4
                                # Execution count [0.00e+00]
        movl      -64(%rbp), %eax                               #464.16
        negl      %eax                                          #464.16
        incl      %eax                                          #464.20
        imull     -48(%rbp), %eax                               #464.26
        movl      %eax, -72(%rbp)                               #464.7
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B4.7:                         # Preds ..B4.5 ..B4.6
                                # Execution count [0.00e+00]
        movl      -32(%rbp), %eax                               #467.15
        testl     %eax, %eax                                    #467.15
        jl        ..B4.9        # Prob 50%                      #467.15
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B4.8:                         # Preds ..B4.7
                                # Execution count [0.00e+00]
        movl      $0, -68(%rbp)                                 #469.7
        jmp       ..B4.10       # Prob 100%                     #469.7
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B4.9:                         # Preds ..B4.7
                                # Execution count [0.00e+00]
        movl      -64(%rbp), %eax                               #473.16
        negl      %eax                                          #473.16
        incl      %eax                                          #473.20
        imull     -32(%rbp), %eax                               #473.26
        movl      %eax, -68(%rbp)                               #473.7
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B4.10:                        # Preds ..B4.8 ..B4.9
                                # Execution count [0.00e+00]
        movl      $0, -76(%rbp)                                 #476.11
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B4.11:                        # Preds ..B4.12 ..B4.10
                                # Execution count [0.00e+00]
        movl      -76(%rbp), %eax                               #476.18
        movl      -64(%rbp), %edx                               #476.22
        cmpl      %edx, %eax                                    #476.22
        jge       ..B4.19       # Prob 50%                      #476.22
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B4.12:                        # Preds ..B4.11
                                # Execution count [0.00e+00]
        movl      -72(%rbp), %eax                               #478.26
        movslq    %eax, %rax                                    #478.23
        imulq     $8, %rax, %rax                                #478.23
        addq      -56(%rbp), %rax                               #478.23
        movsd     (%rax), %xmm0                                 #478.23
        movl      -68(%rbp), %eax                               #478.35
        movslq    %eax, %rax                                    #478.32
        imulq     $8, %rax, %rax                                #478.32
        addq      -40(%rbp), %rax                               #478.32
        movsd     (%rax), %xmm1                                 #478.32
        mulsd     %xmm1, %xmm0                                  #478.32
        movsd     -24(%rbp), %xmm1                              #478.15
        addsd     %xmm0, %xmm1                                  #478.32
        movsd     %xmm1, -24(%rbp)                              #478.7
        movl      -48(%rbp), %eax                               #479.17
        addl      -72(%rbp), %eax                               #479.17
        movl      %eax, -72(%rbp)                               #479.7
        movl      -32(%rbp), %eax                               #480.17
        addl      -68(%rbp), %eax                               #480.17
        movl      %eax, -68(%rbp)                               #480.7
        movl      $1, %eax                                      #476.25
        addl      -76(%rbp), %eax                               #476.25
        movl      %eax, -76(%rbp)                               #476.25
        jmp       ..B4.11       # Prob 100%                     #476.25
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B4.13:                        # Preds ..B4.3
                                # Execution count [0.00e+00]
        movl      -64(%rbp), %eax                               #488.9
        movl      $5, %edx                                      #488.5
        movl      %edx, -16(%rbp)                               #488.13[spill]
        cltd                                                    #488.13
        movl      -16(%rbp), %ecx                               #488.13[spill]
        idivl     %ecx                                          #488.13
        movl      %edx, -80(%rbp)                               #488.5
        movl      $0, -76(%rbp)                                 #490.11
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B4.14:                        # Preds ..B4.15 ..B4.13
                                # Execution count [0.00e+00]
        movl      -76(%rbp), %eax                               #490.18
        movl      -80(%rbp), %edx                               #490.22
        cmpl      %edx, %eax                                    #490.22
        jge       ..B4.16       # Prob 50%                      #490.22
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B4.15:                        # Preds ..B4.14
                                # Execution count [0.00e+00]
        movl      -76(%rbp), %eax                               #492.26
        movslq    %eax, %rax                                    #492.23
        imulq     $8, %rax, %rax                                #492.23
        addq      -56(%rbp), %rax                               #492.23
        movsd     (%rax), %xmm0                                 #492.23
        movl      -76(%rbp), %eax                               #492.34
        movslq    %eax, %rax                                    #492.31
        imulq     $8, %rax, %rax                                #492.31
        addq      -40(%rbp), %rax                               #492.31
        movsd     (%rax), %xmm1                                 #492.31
        mulsd     %xmm1, %xmm0                                  #492.31
        movsd     -24(%rbp), %xmm1                              #492.15
        addsd     %xmm0, %xmm1                                  #492.31
        movsd     %xmm1, -24(%rbp)                              #492.7
        movl      $1, %eax                                      #490.25
        addl      -76(%rbp), %eax                               #490.25
        movl      %eax, -76(%rbp)                               #490.25
        jmp       ..B4.14       # Prob 100%                     #490.25
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B4.16:                        # Preds ..B4.14
                                # Execution count [0.00e+00]
        movl      -80(%rbp), %eax                               #495.15
        movl      %eax, -76(%rbp)                               #495.11
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B4.17:                        # Preds ..B4.18 ..B4.16
                                # Execution count [0.00e+00]
        movl      -76(%rbp), %eax                               #495.18
        movl      -64(%rbp), %edx                               #495.22
        cmpl      %edx, %eax                                    #495.22
        jge       ..B4.19       # Prob 50%                      #495.22
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B4.18:                        # Preds ..B4.17
                                # Execution count [0.00e+00]
        movl      -76(%rbp), %eax                               #497.26
        movslq    %eax, %rax                                    #497.23
        imulq     $8, %rax, %rax                                #497.23
        addq      -56(%rbp), %rax                               #497.23
        movsd     (%rax), %xmm0                                 #497.23
        movl      -76(%rbp), %eax                               #497.36
        movslq    %eax, %rax                                    #497.33
        imulq     $8, %rax, %rax                                #497.33
        addq      -40(%rbp), %rax                               #497.33
        movsd     (%rax), %xmm1                                 #497.33
        mulsd     %xmm1, %xmm0                                  #497.33
        movsd     -24(%rbp), %xmm1                              #497.15
        addsd     %xmm0, %xmm1                                  #497.33
        movl      $1, %eax                                      #497.7
        addl      -76(%rbp), %eax                               #498.28
        movslq    %eax, %rax                                    #498.23
        imulq     $8, %rax, %rax                                #498.23
        addq      -56(%rbp), %rax                               #498.23
        movsd     (%rax), %xmm0                                 #498.23
        movl      $1, %eax                                      #497.7
        addl      -76(%rbp), %eax                               #498.38
        movslq    %eax, %rax                                    #498.33
        imulq     $8, %rax, %rax                                #498.33
        addq      -40(%rbp), %rax                               #498.33
        movsd     (%rax), %xmm2                                 #498.33
        mulsd     %xmm2, %xmm0                                  #498.33
        addsd     %xmm0, %xmm1                                  #498.33
        movl      $2, %eax                                      #497.7
        addl      -76(%rbp), %eax                               #499.28
        movslq    %eax, %rax                                    #499.23
        imulq     $8, %rax, %rax                                #499.23
        addq      -56(%rbp), %rax                               #499.23
        movsd     (%rax), %xmm0                                 #499.23
        movl      $2, %eax                                      #497.7
        addl      -76(%rbp), %eax                               #499.38
        movslq    %eax, %rax                                    #499.33
        imulq     $8, %rax, %rax                                #499.33
        addq      -40(%rbp), %rax                               #499.33
        movsd     (%rax), %xmm2                                 #499.33
        mulsd     %xmm2, %xmm0                                  #499.33
        addsd     %xmm0, %xmm1                                  #499.33
        movl      $3, %eax                                      #497.7
        addl      -76(%rbp), %eax                               #500.28
        movslq    %eax, %rax                                    #500.23
        imulq     $8, %rax, %rax                                #500.23
        addq      -56(%rbp), %rax                               #500.23
        movsd     (%rax), %xmm0                                 #500.23
        movl      $3, %eax                                      #497.7
        addl      -76(%rbp), %eax                               #500.38
        movslq    %eax, %rax                                    #500.33
        imulq     $8, %rax, %rax                                #500.33
        addq      -40(%rbp), %rax                               #500.33
        movsd     (%rax), %xmm2                                 #500.33
        mulsd     %xmm2, %xmm0                                  #500.33
        addsd     %xmm0, %xmm1                                  #500.33
        movl      $4, %eax                                      #497.7
        addl      -76(%rbp), %eax                               #501.28
        movslq    %eax, %rax                                    #501.23
        imulq     $8, %rax, %rax                                #501.23
        addq      -56(%rbp), %rax                               #501.23
        movsd     (%rax), %xmm0                                 #501.23
        movl      $4, %eax                                      #497.7
        addl      -76(%rbp), %eax                               #501.38
        movslq    %eax, %rax                                    #501.33
        imulq     $8, %rax, %rax                                #501.33
        addq      -40(%rbp), %rax                               #501.33
        movsd     (%rax), %xmm2                                 #501.33
        mulsd     %xmm2, %xmm0                                  #501.33
        addsd     %xmm0, %xmm1                                  #501.33
        movsd     %xmm1, -24(%rbp)                              #497.7
        movl      $5, %eax                                      #495.25
        addl      -76(%rbp), %eax                               #495.33
        movl      %eax, -76(%rbp)                               #495.25
        jmp       ..B4.17       # Prob 100%                     #495.25
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B4.19:                        # Preds ..B4.11 ..B4.17
                                # Execution count [0.00e+00]
        movsd     -24(%rbp), %xmm0                              #504.10
        leave                                                   #504.10
	.cfi_restore 6
        ret                                                     #504.10
                                # LOE
	.cfi_endproc
# mark_end;
	.type	ddot,@function
	.size	ddot,.-ddot
..LNddot.3:
	.data
# -- End  ddot
	.text
.L_2__routine_start_dgefa_4:
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
..B5.1:                         # Preds ..B5.0
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_dgefa.160:
..L161:
                                                        #553.1
        pushq     %rbp                                          #553.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #553.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        subq      $80, %rsp                                     #553.1
        movq      %rbx, -8(%rbp)                                #553.1[spill]
        movq      %rdi, -56(%rbp)                               #553.1
        movl      %esi, -48(%rbp)                               #553.1
        movl      %edx, -40(%rbp)                               #553.1
        movq      %rcx, -32(%rbp)                               #553.1
        movl      $0, -80(%rbp)                                 #562.3
        movl      $1, -76(%rbp)                                 #564.9
	.cfi_offset 3, -24
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B5.2:                         # Preds ..B5.3 ..B5.1
                                # Execution count [0.00e+00]
        movl      -76(%rbp), %eax                               #564.16
        movl      $-1, %edx                                     #564.3
        addl      -40(%rbp), %edx                               #564.23
        cmpl      %edx, %eax                                    #564.23
        jle       ..B5.4        # Prob 50%                      #564.23
        jmp       ..B5.16       # Prob 100%                     #564.23
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B5.3:                         # Preds ..B5.11 ..B5.6
                                # Execution count [0.00e+00]
        movl      $1, %eax                                      #564.26
        addl      -76(%rbp), %eax                               #564.26
        movl      %eax, -76(%rbp)                               #564.26
        jmp       ..B5.2        # Prob 100%                     #564.26
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B5.4:                         # Preds ..B5.2
                                # Execution count [0.00e+00]
        movl      -76(%rbp), %eax                               #569.9
        negl      %eax                                          #569.9
        addl      -40(%rbp), %eax                               #569.9
        incl      %eax                                          #569.9
        movl      $-1, %edx                                     #569.9
        addl      -76(%rbp), %edx                               #569.9
        movslq    %edx, %rdx                                    #569.9
        imulq     $8, %rdx, %rdx                                #569.9
        addq      -56(%rbp), %rdx                               #569.9
        movl      $-1, %ecx                                     #569.9
        addl      -76(%rbp), %ecx                               #569.9
        imull     -48(%rbp), %ecx                               #569.9
        movslq    %ecx, %rcx                                    #569.9
        imulq     $8, %rcx, %rcx                                #569.9
        addq      %rcx, %rdx                                    #569.9
        movl      $1, %ecx                                      #569.9
        movl      %eax, %edi                                    #569.9
        movq      %rdx, %rsi                                    #569.9
        movl      %ecx, %edx                                    #569.9
..___tag_value_dgefa.167:
        call      idamax                                        #569.9
..___tag_value_dgefa.168:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B5.21:                        # Preds ..B5.4
                                # Execution count [0.00e+00]
        movl      %eax, -72(%rbp)                               #569.9
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B5.5:                         # Preds ..B5.21
                                # Execution count [0.00e+00]
        movl      -76(%rbp), %eax                               #569.50
        addl      -72(%rbp), %eax                               #569.50
        decl      %eax                                          #569.54
        movl      %eax, -68(%rbp)                               #569.5
        movl      $-1, %eax                                     #570.5
        addl      -76(%rbp), %eax                               #570.12
        movslq    %eax, %rax                                    #570.5
        imulq     $4, %rax, %rax                                #570.5
        addq      -32(%rbp), %rax                               #570.5
        movl      -68(%rbp), %edx                               #570.17
        movl      %edx, (%rax)                                  #570.5
        movl      $-1, %eax                                     #574.5
        addl      -68(%rbp), %eax                               #574.14
        movl      $-1, %edx                                     #574.5
        addl      -76(%rbp), %edx                               #574.19
        imull     -48(%rbp), %edx                               #574.22
        addl      %edx, %eax                                    #574.22
        movslq    %eax, %rax                                    #574.10
        imulq     $8, %rax, %rax                                #574.10
        addq      -56(%rbp), %rax                               #574.10
        movsd     (%rax), %xmm0                                 #574.10
        pxor      %xmm1, %xmm1                                  #574.5
        ucomisd   %xmm1, %xmm0                                  #574.30
        jne       ..B5.7        # Prob 50%                      #574.30
        jp        ..B5.7        # Prob 0%                       #574.30
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B5.6:                         # Preds ..B5.5
                                # Execution count [0.00e+00]
        movl      -76(%rbp), %eax                               #576.14
        movl      %eax, -80(%rbp)                               #576.7
        jmp       ..B5.3        # Prob 100%                     #576.7
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B5.7:                         # Preds ..B5.5
                                # Execution count [0.00e+00]
        movl      -68(%rbp), %eax                               #582.10
        movl      -76(%rbp), %edx                               #582.15
        cmpl      %edx, %eax                                    #582.15
        je        ..B5.9        # Prob 50%                      #582.15
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B5.8:                         # Preds ..B5.7
                                # Execution count [0.00e+00]
        movl      $-1, %eax                                     #584.7
        addl      -68(%rbp), %eax                               #584.15
        movl      $-1, %edx                                     #584.7
        addl      -76(%rbp), %edx                               #584.20
        imull     -48(%rbp), %edx                               #584.23
        addl      %edx, %eax                                    #584.23
        movslq    %eax, %rax                                    #584.11
        imulq     $8, %rax, %rax                                #584.11
        addq      -56(%rbp), %rax                               #584.11
        movsd     (%rax), %xmm0                                 #584.11
        movsd     %xmm0, -24(%rbp)                              #584.7
        movl      $-1, %eax                                     #585.7
        addl      -76(%rbp), %eax                               #585.30
        movl      $-1, %edx                                     #585.7
        addl      -76(%rbp), %edx                               #585.35
        imull     -48(%rbp), %edx                               #585.38
        addl      %edx, %eax                                    #585.38
        movslq    %eax, %rax                                    #585.26
        imulq     $8, %rax, %rax                                #585.26
        addq      -56(%rbp), %rax                               #585.26
        movl      $-1, %edx                                     #585.7
        addl      -68(%rbp), %edx                               #585.11
        movl      $-1, %ecx                                     #585.7
        addl      -76(%rbp), %ecx                               #585.16
        imull     -48(%rbp), %ecx                               #585.19
        addl      %ecx, %edx                                    #585.19
        movslq    %edx, %rdx                                    #585.7
        imulq     $8, %rdx, %rdx                                #585.7
        addq      -56(%rbp), %rdx                               #585.7
        movsd     (%rax), %xmm0                                 #585.26
        movsd     %xmm0, (%rdx)                                 #585.7
        movl      $-1, %eax                                     #586.7
        addl      -76(%rbp), %eax                               #586.11
        movl      $-1, %edx                                     #586.7
        addl      -76(%rbp), %edx                               #586.16
        imull     -48(%rbp), %edx                               #586.19
        addl      %edx, %eax                                    #586.19
        movslq    %eax, %rax                                    #586.7
        imulq     $8, %rax, %rax                                #586.7
        addq      -56(%rbp), %rax                               #586.7
        movsd     -24(%rbp), %xmm0                              #586.26
        movsd     %xmm0, (%rax)                                 #586.7
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B5.9:                         # Preds ..B5.8 ..B5.7
                                # Execution count [0.00e+00]
        movsd     .L_2il0floatpacket.4(%rip), %xmm0             #591.9
        movl      $-1, %eax                                     #591.5
        addl      -76(%rbp), %eax                               #591.20
        movl      $-1, %edx                                     #591.5
        addl      -76(%rbp), %edx                               #591.25
        imull     -48(%rbp), %edx                               #591.28
        addl      %edx, %eax                                    #591.28
        movslq    %eax, %rax                                    #591.16
        imulq     $8, %rax, %rax                                #591.16
        addq      -56(%rbp), %rax                               #591.16
        movsd     (%rax), %xmm1                                 #591.16
        divsd     %xmm1, %xmm0                                  #591.16
        movsd     %xmm0, -24(%rbp)                              #591.5
        movl      -76(%rbp), %eax                               #593.5
        negl      %eax                                          #593.5
        addl      -40(%rbp), %eax                               #593.5
        movsd     -24(%rbp), %xmm0                              #593.5
        movl      -76(%rbp), %edx                               #593.5
        movslq    %edx, %rdx                                    #593.5
        imulq     $8, %rdx, %rdx                                #593.5
        addq      -56(%rbp), %rdx                               #593.5
        movl      $-1, %ecx                                     #593.5
        addl      -76(%rbp), %ecx                               #593.5
        imull     -48(%rbp), %ecx                               #593.5
        movslq    %ecx, %rcx                                    #593.5
        imulq     $8, %rcx, %rcx                                #593.5
        addq      %rcx, %rdx                                    #593.5
        movl      $1, %ecx                                      #593.5
        movl      %eax, %edi                                    #593.5
        movq      %rdx, %rsi                                    #593.5
        movl      %ecx, %edx                                    #593.5
..___tag_value_dgefa.169:
        call      dscal                                         #593.5
..___tag_value_dgefa.170:
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B5.10:                        # Preds ..B5.9
                                # Execution count [0.00e+00]
        movl      $1, %eax                                      #597.11
        addl      -76(%rbp), %eax                               #597.17
        movl      %eax, -64(%rbp)                               #597.11
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B5.11:                        # Preds ..B5.12 ..B5.10
                                # Execution count [0.00e+00]
        movl      -64(%rbp), %eax                               #597.20
        movl      -40(%rbp), %edx                               #597.25
        cmpl      %edx, %eax                                    #597.25
        jle       ..B5.13       # Prob 50%                      #597.25
        jmp       ..B5.3        # Prob 100%                     #597.25
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B5.12:                        # Preds ..B5.15
                                # Execution count [0.00e+00]
        movl      $1, %eax                                      #597.28
        addl      -64(%rbp), %eax                               #597.28
        movl      %eax, -64(%rbp)                               #597.28
        jmp       ..B5.11       # Prob 100%                     #597.28
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B5.13:                        # Preds ..B5.11
                                # Execution count [0.00e+00]
        movl      $-1, %eax                                     #599.7
        addl      -68(%rbp), %eax                               #599.15
        movl      $-1, %edx                                     #599.7
        addl      -64(%rbp), %edx                               #599.20
        imull     -48(%rbp), %edx                               #599.23
        addl      %edx, %eax                                    #599.23
        movslq    %eax, %rax                                    #599.11
        imulq     $8, %rax, %rax                                #599.11
        addq      -56(%rbp), %rax                               #599.11
        movsd     (%rax), %xmm0                                 #599.11
        movsd     %xmm0, -24(%rbp)                              #599.7
        movl      -68(%rbp), %eax                               #600.12
        movl      -76(%rbp), %edx                               #600.17
        cmpl      %edx, %eax                                    #600.17
        je        ..B5.15       # Prob 50%                      #600.17
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B5.14:                        # Preds ..B5.13
                                # Execution count [0.00e+00]
        movl      $-1, %eax                                     #602.9
        addl      -76(%rbp), %eax                               #602.32
        movl      $-1, %edx                                     #602.9
        addl      -64(%rbp), %edx                               #602.37
        imull     -48(%rbp), %edx                               #602.40
        addl      %edx, %eax                                    #602.40
        movslq    %eax, %rax                                    #602.28
        imulq     $8, %rax, %rax                                #602.28
        addq      -56(%rbp), %rax                               #602.28
        movl      $-1, %edx                                     #602.9
        addl      -68(%rbp), %edx                               #602.13
        movl      $-1, %ecx                                     #602.9
        addl      -64(%rbp), %ecx                               #602.18
        imull     -48(%rbp), %ecx                               #602.21
        addl      %ecx, %edx                                    #602.21
        movslq    %edx, %rdx                                    #602.9
        imulq     $8, %rdx, %rdx                                #602.9
        addq      -56(%rbp), %rdx                               #602.9
        movsd     (%rax), %xmm0                                 #602.28
        movsd     %xmm0, (%rdx)                                 #602.9
        movl      $-1, %eax                                     #603.9
        addl      -76(%rbp), %eax                               #603.13
        movl      $-1, %edx                                     #603.9
        addl      -64(%rbp), %edx                               #603.18
        imull     -48(%rbp), %edx                               #603.21
        addl      %edx, %eax                                    #603.21
        movslq    %eax, %rax                                    #603.9
        imulq     $8, %rax, %rax                                #603.9
        addq      -56(%rbp), %rax                               #603.9
        movsd     -24(%rbp), %xmm0                              #603.28
        movsd     %xmm0, (%rax)                                 #603.9
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B5.15:                        # Preds ..B5.14 ..B5.13
                                # Execution count [0.00e+00]
        movl      -76(%rbp), %eax                               #605.7
        negl      %eax                                          #605.7
        addl      -40(%rbp), %eax                               #605.7
        movsd     -24(%rbp), %xmm0                              #605.7
        movl      -76(%rbp), %edx                               #605.7
        movslq    %edx, %rdx                                    #605.7
        imulq     $8, %rdx, %rdx                                #605.7
        addq      -56(%rbp), %rdx                               #605.7
        movl      $-1, %ecx                                     #605.7
        addl      -76(%rbp), %ecx                               #605.7
        imull     -48(%rbp), %ecx                               #605.7
        movslq    %ecx, %rcx                                    #605.7
        imulq     $8, %rcx, %rcx                                #605.7
        addq      %rcx, %rdx                                    #605.7
        movl      $1, %ecx                                      #605.7
        movl      -76(%rbp), %ebx                               #605.7
        movslq    %ebx, %rbx                                    #605.7
        imulq     $8, %rbx, %rbx                                #605.7
        addq      -56(%rbp), %rbx                               #605.7
        movl      $-1, %esi                                     #605.7
        addl      -64(%rbp), %esi                               #605.7
        imull     -48(%rbp), %esi                               #605.7
        movslq    %esi, %rsi                                    #605.7
        imulq     $8, %rsi, %rsi                                #605.7
        addq      %rsi, %rbx                                    #605.7
        movl      $1, %esi                                      #605.7
        movl      %eax, %edi                                    #605.7
        movl      %esi, -16(%rbp)                               #605.7[spill]
        movq      %rdx, %rsi                                    #605.7
        movl      %ecx, %edx                                    #605.7
        movq      %rbx, %rcx                                    #605.7
        movl      -16(%rbp), %eax                               #605.7[spill]
        movl      %eax, %r8d                                    #605.7
..___tag_value_dgefa.173:
#       daxpy(int, double, double *, int, double *, int)
        call      daxpy                                         #605.7
..___tag_value_dgefa.174:
        jmp       ..B5.12       # Prob 100%                     #605.7
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B5.16:                        # Preds ..B5.2
                                # Execution count [0.00e+00]
        movl      $-1, %eax                                     #610.3
        addl      -40(%rbp), %eax                               #610.10
        movslq    %eax, %rax                                    #610.3
        imulq     $4, %rax, %rax                                #610.3
        addq      -32(%rbp), %rax                               #610.3
        movl      -40(%rbp), %edx                               #610.15
        movl      %edx, (%rax)                                  #610.3
        movl      $-1, %eax                                     #612.3
        addl      -40(%rbp), %eax                               #612.12
        movl      $-1, %edx                                     #612.3
        addl      -40(%rbp), %edx                               #612.17
        imull     -48(%rbp), %edx                               #612.20
        addl      %edx, %eax                                    #612.20
        movslq    %eax, %rax                                    #612.8
        imulq     $8, %rax, %rax                                #612.8
        addq      -56(%rbp), %rax                               #612.8
        movsd     (%rax), %xmm0                                 #612.8
        pxor      %xmm1, %xmm1                                  #612.3
        ucomisd   %xmm1, %xmm0                                  #612.28
        jne       ..B5.18       # Prob 50%                      #612.28
        jp        ..B5.18       # Prob 0%                       #612.28
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B5.17:                        # Preds ..B5.16
                                # Execution count [0.00e+00]
        movl      -40(%rbp), %eax                               #614.12
        movl      %eax, -80(%rbp)                               #614.5
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B5.18:                        # Preds ..B5.17 ..B5.16
                                # Execution count [0.00e+00]
        movl      -80(%rbp), %eax                               #617.10
        movq      -8(%rbp), %rbx                                #617.10[spill]
	.cfi_restore 3
        leave                                                   #617.10
	.cfi_restore 6
        ret                                                     #617.10
                                # LOE
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
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_dgesl.179:
..L180:
                                                        #677.1
        pushq     %rbp                                          #677.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #677.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        subq      $128, %rsp                                    #677.1
        movq      %rbx, -16(%rbp)                               #677.1[spill]
        movq      %rdi, -120(%rbp)                              #677.1
        movl      %esi, -112(%rbp)                              #677.1
        movl      %edx, -104(%rbp)                              #677.1
        movq      %rcx, -96(%rbp)                               #677.1
        movq      %r8, -88(%rbp)                                #677.1
        movl      %r9d, -80(%rbp)                               #677.1
        movl      -80(%rbp), %eax                               #684.8
        testl     %eax, %eax                                    #684.15
        jne       ..B6.12       # Prob 50%                      #684.15
	.cfi_offset 3, -32
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.2:                         # Preds ..B6.1
                                # Execution count [0.00e+00]
        movl      $1, -128(%rbp)                                #686.11
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.3:                         # Preds ..B6.4 ..B6.2
                                # Execution count [0.00e+00]
        movl      -128(%rbp), %eax                              #686.18
        movl      $-1, %edx                                     #686.5
        addl      -104(%rbp), %edx                              #686.25
        cmpl      %edx, %eax                                    #686.25
        jle       ..B6.5        # Prob 50%                      #686.25
        jmp       ..B6.8        # Prob 100%                     #686.25
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.4:                         # Preds ..B6.7
                                # Execution count [0.00e+00]
        movl      $1, %eax                                      #686.28
        addl      -128(%rbp), %eax                              #686.28
        movl      %eax, -128(%rbp)                              #686.28
        jmp       ..B6.3        # Prob 100%                     #686.28
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.5:                         # Preds ..B6.3
                                # Execution count [0.00e+00]
        movl      $-1, %eax                                     #688.7
        addl      -128(%rbp), %eax                              #688.18
        movslq    %eax, %rax                                    #688.11
        imulq     $4, %rax, %rax                                #688.11
        addq      -96(%rbp), %rax                               #688.11
        movl      (%rax), %eax                                  #688.11
        movl      %eax, -124(%rbp)                              #688.7
        movl      $-1, %eax                                     #689.7
        addl      -124(%rbp), %eax                              #689.15
        movslq    %eax, %rax                                    #689.11
        imulq     $8, %rax, %rax                                #689.11
        addq      -88(%rbp), %rax                               #689.11
        movsd     (%rax), %xmm0                                 #689.11
        movsd     %xmm0, -72(%rbp)                              #689.7
        movl      -124(%rbp), %eax                              #691.12
        movl      -128(%rbp), %edx                              #691.17
        cmpl      %edx, %eax                                    #691.17
        je        ..B6.7        # Prob 50%                      #691.17
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.6:                         # Preds ..B6.5
                                # Execution count [0.00e+00]
        movl      $-1, %eax                                     #693.9
        addl      -128(%rbp), %eax                              #693.22
        movslq    %eax, %rax                                    #693.18
        imulq     $8, %rax, %rax                                #693.18
        addq      -88(%rbp), %rax                               #693.18
        movl      $-1, %edx                                     #693.9
        addl      -124(%rbp), %edx                              #693.13
        movslq    %edx, %rdx                                    #693.9
        imulq     $8, %rdx, %rdx                                #693.9
        addq      -88(%rbp), %rdx                               #693.9
        movsd     (%rax), %xmm0                                 #693.18
        movsd     %xmm0, (%rdx)                                 #693.9
        movl      $-1, %eax                                     #694.9
        addl      -128(%rbp), %eax                              #694.13
        movslq    %eax, %rax                                    #694.9
        imulq     $8, %rax, %rax                                #694.9
        addq      -88(%rbp), %rax                               #694.9
        movsd     -72(%rbp), %xmm0                              #694.18
        movsd     %xmm0, (%rax)                                 #694.9
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.7:                         # Preds ..B6.6 ..B6.5
                                # Execution count [0.00e+00]
        movl      -128(%rbp), %eax                              #697.7
        negl      %eax                                          #697.7
        addl      -104(%rbp), %eax                              #697.7
        movsd     -72(%rbp), %xmm0                              #697.7
        movl      -128(%rbp), %edx                              #697.7
        movslq    %edx, %rdx                                    #697.7
        imulq     $8, %rdx, %rdx                                #697.7
        addq      -120(%rbp), %rdx                              #697.7
        movl      $-1, %ecx                                     #697.7
        addl      -128(%rbp), %ecx                              #697.7
        imull     -112(%rbp), %ecx                              #697.7
        movslq    %ecx, %rcx                                    #697.7
        imulq     $8, %rcx, %rcx                                #697.7
        addq      %rcx, %rdx                                    #697.7
        movl      $1, %ecx                                      #697.7
        movl      -128(%rbp), %ebx                              #697.7
        movslq    %ebx, %rbx                                    #697.7
        imulq     $8, %rbx, %rbx                                #697.7
        addq      -88(%rbp), %rbx                               #697.7
        movl      $1, %esi                                      #697.7
        movl      %eax, %edi                                    #697.7
        movl      %esi, -48(%rbp)                               #697.7[spill]
        movq      %rdx, %rsi                                    #697.7
        movl      %ecx, %edx                                    #697.7
        movq      %rbx, %rcx                                    #697.7
        movl      -48(%rbp), %eax                               #697.7[spill]
        movl      %eax, %r8d                                    #697.7
..___tag_value_dgesl.188:
#       daxpy(int, double, double *, int, double *, int)
        call      daxpy                                         #697.7
..___tag_value_dgesl.189:
        jmp       ..B6.4        # Prob 100%                     #697.7
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.8:                         # Preds ..B6.3
                                # Execution count [0.00e+00]
        movl      -104(%rbp), %eax                              #701.15
        movl      %eax, -128(%rbp)                              #701.11
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.9:                         # Preds ..B6.10 ..B6.8
                                # Execution count [0.00e+00]
        movl      -128(%rbp), %eax                              #701.23
        testl     %eax, %eax                                    #701.23
        jg        ..B6.11       # Prob 50%                      #701.23
        jmp       ..B6.22       # Prob 100%                     #701.23
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.10:                        # Preds ..B6.11
                                # Execution count [0.00e+00]
        movl      $-1, %eax                                     #701.26
        addl      -128(%rbp), %eax                              #701.26
        movl      %eax, -128(%rbp)                              #701.26
        jmp       ..B6.9        # Prob 100%                     #701.26
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.11:                        # Preds ..B6.9
                                # Execution count [0.00e+00]
        movl      $-1, %eax                                     #703.7
        addl      -128(%rbp), %eax                              #703.20
        movslq    %eax, %rax                                    #703.16
        imulq     $8, %rax, %rax                                #703.16
        addq      -88(%rbp), %rax                               #703.16
        movsd     (%rax), %xmm0                                 #703.16
        movl      $-1, %eax                                     #703.7
        addl      -128(%rbp), %eax                              #703.29
        movl      $-1, %edx                                     #703.7
        addl      -128(%rbp), %edx                              #703.34
        imull     -112(%rbp), %edx                              #703.37
        addl      %edx, %eax                                    #703.37
        movslq    %eax, %rax                                    #703.25
        imulq     $8, %rax, %rax                                #703.25
        addq      -120(%rbp), %rax                              #703.25
        movsd     (%rax), %xmm1                                 #703.25
        divsd     %xmm1, %xmm0                                  #703.25
        movl      $-1, %eax                                     #703.7
        addl      -128(%rbp), %eax                              #703.11
        movslq    %eax, %rax                                    #703.7
        imulq     $8, %rax, %rax                                #703.7
        addq      -88(%rbp), %rax                               #703.7
        movsd     %xmm0, (%rax)                                 #703.7
        movl      $-1, %eax                                     #704.7
        addl      -128(%rbp), %eax                              #704.16
        movslq    %eax, %rax                                    #704.12
        imulq     $8, %rax, %rax                                #704.12
        addq      -88(%rbp), %rax                               #704.12
        movsd     (%rax), %xmm0                                 #704.12
        xorpd     .L_2il0floatpacket.7(%rip), %xmm0             #704.12
        movsd     %xmm0, -72(%rbp)                              #704.7
        movl      $-1, %eax                                     #705.7
        addl      -128(%rbp), %eax                              #705.7
        movsd     -72(%rbp), %xmm0                              #705.7
        movl      $-1, %edx                                     #705.7
        addl      -128(%rbp), %edx                              #705.7
        imull     -112(%rbp), %edx                              #705.7
        movslq    %edx, %rdx                                    #705.7
        imulq     $8, %rdx, %rdx                                #705.7
        addq      -120(%rbp), %rdx                              #705.7
        movl      $1, %ecx                                      #705.7
        movq      -88(%rbp), %rbx                               #705.7
        movl      $1, %esi                                      #705.7
        movl      %eax, %edi                                    #705.7
        movl      %esi, -40(%rbp)                               #705.7[spill]
        movq      %rdx, %rsi                                    #705.7
        movl      %ecx, %edx                                    #705.7
        movq      %rbx, %rcx                                    #705.7
        movl      -40(%rbp), %eax                               #705.7[spill]
        movl      %eax, %r8d                                    #705.7
..___tag_value_dgesl.192:
#       daxpy(int, double, double *, int, double *, int)
        call      daxpy                                         #705.7
..___tag_value_dgesl.193:
        jmp       ..B6.10       # Prob 100%                     #705.7
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.12:                        # Preds ..B6.1
                                # Execution count [0.00e+00]
        movl      $1, -128(%rbp)                                #713.11
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.13:                        # Preds ..B6.15 ..B6.12
                                # Execution count [0.00e+00]
        movl      -128(%rbp), %eax                              #713.18
        movl      -104(%rbp), %edx                              #713.23
        cmpl      %edx, %eax                                    #713.23
        jg        ..B6.16       # Prob 50%                      #713.23
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.14:                        # Preds ..B6.13
                                # Execution count [0.00e+00]
        movl      $-1, %eax                                     #715.11
        addl      -128(%rbp), %eax                              #715.11
        movl      $-1, %edx                                     #715.11
        addl      -128(%rbp), %edx                              #715.11
        imull     -112(%rbp), %edx                              #715.11
        movslq    %edx, %rdx                                    #715.11
        imulq     $8, %rdx, %rdx                                #715.11
        addq      -120(%rbp), %rdx                              #715.11
        movl      $1, %ecx                                      #715.11
        movq      -88(%rbp), %rbx                               #715.11
        movl      $1, %esi                                      #715.11
        movl      %eax, %edi                                    #715.11
        movl      %esi, -32(%rbp)                               #715.11[spill]
        movq      %rdx, %rsi                                    #715.11
        movl      %ecx, %edx                                    #715.11
        movq      %rbx, %rcx                                    #715.11
        movl      -32(%rbp), %eax                               #715.11[spill]
        movl      %eax, %r8d                                    #715.11
..___tag_value_dgesl.196:
#       ddot(int, double *, int, double *, int)
        call      ddot                                          #715.11
..___tag_value_dgesl.197:
                                # LOE rbp rsp r12 r13 r14 r15 rip xmm0
..B6.25:                        # Preds ..B6.14
                                # Execution count [0.00e+00]
        movsd     %xmm0, -64(%rbp)                              #715.11
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.15:                        # Preds ..B6.25
                                # Execution count [0.00e+00]
        movsd     -64(%rbp), %xmm0                              #715.11
        movsd     %xmm0, -72(%rbp)                              #715.7
        movl      $-1, %eax                                     #716.7
        addl      -128(%rbp), %eax                              #716.22
        movslq    %eax, %rax                                    #716.18
        imulq     $8, %rax, %rax                                #716.18
        addq      -88(%rbp), %rax                               #716.18
        movsd     (%rax), %xmm0                                 #716.18
        movsd     -72(%rbp), %xmm1                              #716.27
        subsd     %xmm1, %xmm0                                  #716.27
        movl      $-1, %eax                                     #716.7
        addl      -128(%rbp), %eax                              #716.37
        movl      $-1, %edx                                     #716.7
        addl      -128(%rbp), %edx                              #716.42
        imull     -112(%rbp), %edx                              #716.45
        addl      %edx, %eax                                    #716.45
        movslq    %eax, %rax                                    #716.33
        imulq     $8, %rax, %rax                                #716.33
        addq      -120(%rbp), %rax                              #716.33
        movsd     (%rax), %xmm1                                 #716.33
        divsd     %xmm1, %xmm0                                  #716.33
        movl      $-1, %eax                                     #716.7
        addl      -128(%rbp), %eax                              #716.11
        movslq    %eax, %rax                                    #716.7
        imulq     $8, %rax, %rax                                #716.7
        addq      -88(%rbp), %rax                               #716.7
        movsd     %xmm0, (%rax)                                 #716.7
        movl      $1, %eax                                      #713.26
        addl      -128(%rbp), %eax                              #713.26
        movl      %eax, -128(%rbp)                              #713.26
        jmp       ..B6.13       # Prob 100%                     #713.26
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.16:                        # Preds ..B6.13
                                # Execution count [0.00e+00]
        movl      $-1, %eax                                     #719.11
        addl      -104(%rbp), %eax                              #719.17
        movl      %eax, -128(%rbp)                              #719.11
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.17:                        # Preds ..B6.18 ..B6.16
                                # Execution count [0.00e+00]
        movl      -128(%rbp), %eax                              #719.25
        testl     %eax, %eax                                    #719.25
        jg        ..B6.19       # Prob 50%                      #719.25
        jmp       ..B6.22       # Prob 100%                     #719.25
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.18:                        # Preds ..B6.21 ..B6.20
                                # Execution count [0.00e+00]
        movl      $-1, %eax                                     #719.28
        addl      -128(%rbp), %eax                              #719.28
        movl      %eax, -128(%rbp)                              #719.28
        jmp       ..B6.17       # Prob 100%                     #719.28
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.19:                        # Preds ..B6.17
                                # Execution count [0.00e+00]
        movl      -128(%rbp), %eax                              #721.25
        negl      %eax                                          #721.25
        addl      -104(%rbp), %eax                              #721.25
        movl      -128(%rbp), %edx                              #721.25
        movslq    %edx, %rdx                                    #721.25
        imulq     $8, %rdx, %rdx                                #721.25
        addq      -120(%rbp), %rdx                              #721.25
        movl      $-1, %ecx                                     #721.25
        addl      -128(%rbp), %ecx                              #721.25
        imull     -112(%rbp), %ecx                              #721.25
        movslq    %ecx, %rcx                                    #721.25
        imulq     $8, %rcx, %rcx                                #721.25
        addq      %rcx, %rdx                                    #721.25
        movl      $1, %ecx                                      #721.25
        movl      -128(%rbp), %ebx                              #721.25
        movslq    %ebx, %rbx                                    #721.25
        imulq     $8, %rbx, %rbx                                #721.25
        addq      -88(%rbp), %rbx                               #721.25
        movl      $1, %esi                                      #721.25
        movl      %eax, %edi                                    #721.25
        movl      %esi, -24(%rbp)                               #721.25[spill]
        movq      %rdx, %rsi                                    #721.25
        movl      %ecx, %edx                                    #721.25
        movq      %rbx, %rcx                                    #721.25
        movl      -24(%rbp), %eax                               #721.25[spill]
        movl      %eax, %r8d                                    #721.25
..___tag_value_dgesl.200:
#       ddot(int, double *, int, double *, int)
        call      ddot                                          #721.25
..___tag_value_dgesl.201:
                                # LOE rbp rsp r12 r13 r14 r15 rip xmm0
..B6.26:                        # Preds ..B6.19
                                # Execution count [0.00e+00]
        movsd     %xmm0, -56(%rbp)                              #721.25
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.20:                        # Preds ..B6.26
                                # Execution count [0.00e+00]
        movl      $-1, %eax                                     #721.7
        addl      -128(%rbp), %eax                              #721.20
        movslq    %eax, %rax                                    #721.16
        imulq     $8, %rax, %rax                                #721.16
        addq      -88(%rbp), %rax                               #721.16
        movsd     (%rax), %xmm0                                 #721.16
        movsd     -56(%rbp), %xmm1                              #721.25
        addsd     %xmm1, %xmm0                                  #721.25
        movl      $-1, %eax                                     #721.7
        addl      -128(%rbp), %eax                              #721.11
        movslq    %eax, %rax                                    #721.7
        imulq     $8, %rax, %rax                                #721.7
        addq      -88(%rbp), %rax                               #721.7
        movsd     %xmm0, (%rax)                                 #721.7
        movl      $-1, %eax                                     #722.7
        addl      -128(%rbp), %eax                              #722.18
        movslq    %eax, %rax                                    #722.11
        imulq     $4, %rax, %rax                                #722.11
        addq      -96(%rbp), %rax                               #722.11
        movl      (%rax), %eax                                  #722.11
        movl      %eax, -124(%rbp)                              #722.7
        movl      -124(%rbp), %eax                              #724.12
        movl      -128(%rbp), %edx                              #724.17
        cmpl      %edx, %eax                                    #724.17
        je        ..B6.18       # Prob 50%                      #724.17
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.21:                        # Preds ..B6.20
                                # Execution count [0.00e+00]
        movl      $-1, %eax                                     #726.9
        addl      -124(%rbp), %eax                              #726.17
        movslq    %eax, %rax                                    #726.13
        imulq     $8, %rax, %rax                                #726.13
        addq      -88(%rbp), %rax                               #726.13
        movsd     (%rax), %xmm0                                 #726.13
        movsd     %xmm0, -72(%rbp)                              #726.9
        movl      $-1, %eax                                     #727.9
        addl      -128(%rbp), %eax                              #727.22
        movslq    %eax, %rax                                    #727.18
        imulq     $8, %rax, %rax                                #727.18
        addq      -88(%rbp), %rax                               #727.18
        movl      $-1, %edx                                     #727.9
        addl      -124(%rbp), %edx                              #727.13
        movslq    %edx, %rdx                                    #727.9
        imulq     $8, %rdx, %rdx                                #727.9
        addq      -88(%rbp), %rdx                               #727.9
        movsd     (%rax), %xmm0                                 #727.18
        movsd     %xmm0, (%rdx)                                 #727.9
        movl      $-1, %eax                                     #728.9
        addl      -128(%rbp), %eax                              #728.13
        movslq    %eax, %rax                                    #728.9
        imulq     $8, %rax, %rax                                #728.9
        addq      -88(%rbp), %rax                               #728.9
        movsd     -72(%rbp), %xmm0                              #728.18
        movsd     %xmm0, (%rax)                                 #728.9
        jmp       ..B6.18       # Prob 100%                     #728.9
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B6.22:                        # Preds ..B6.9 ..B6.17
                                # Execution count [0.00e+00]
        movq      -16(%rbp), %rbx                               #732.3[spill]
	.cfi_restore 3
        leave                                                   #732.3
	.cfi_restore 6
        ret                                                     #732.3
                                # LOE
	.cfi_endproc
# mark_end;
	.type	dgesl,@function
	.size	dgesl,.-dgesl
..LNdgesl.5:
	.data
# -- End  dgesl
	.text
.L_2__routine_start_dscal_6:
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
..B7.1:                         # Preds ..B7.0
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_dscal.205:
..L206:
                                                        #775.1
        pushq     %rbp                                          #775.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #775.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        subq      $64, %rsp                                     #775.1
        movl      %edi, -48(%rbp)                               #775.1
        movsd     %xmm0, -40(%rbp)                              #775.1
        movq      %rsi, -32(%rbp)                               #775.1
        movl      %edx, -24(%rbp)                               #775.1
        movl      -48(%rbp), %eax                               #780.8
        testl     %eax, %eax                                    #780.13
        jle       ..B7.15       # Prob 50%                      #780.13
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B7.2:                         # Preds ..B7.1
                                # Execution count [0.00e+00]
        movl      -24(%rbp), %eax                               #783.13
        cmpl      $1, %eax                                      #783.21
        jne       ..B7.9        # Prob 50%                      #783.21
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B7.3:                         # Preds ..B7.2
                                # Execution count [0.00e+00]
        movl      -48(%rbp), %eax                               #785.9
        movl      $5, %edx                                      #785.5
        movl      %edx, -16(%rbp)                               #785.13[spill]
        cltd                                                    #785.13
        movl      -16(%rbp), %ecx                               #785.13[spill]
        idivl     %ecx                                          #785.13
        movl      %edx, -64(%rbp)                               #785.5
        movl      $0, -60(%rbp)                                 #787.11
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B7.4:                         # Preds ..B7.5 ..B7.3
                                # Execution count [0.00e+00]
        movl      -60(%rbp), %eax                               #787.18
        movl      -64(%rbp), %edx                               #787.22
        cmpl      %edx, %eax                                    #787.22
        jge       ..B7.6        # Prob 50%                      #787.22
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B7.5:                         # Preds ..B7.4
                                # Execution count [0.00e+00]
        movsd     -40(%rbp), %xmm0                              #789.14
        movl      -60(%rbp), %eax                               #789.21
        movslq    %eax, %rax                                    #789.19
        imulq     $8, %rax, %rax                                #789.19
        addq      -32(%rbp), %rax                               #789.19
        movsd     (%rax), %xmm1                                 #789.19
        mulsd     %xmm1, %xmm0                                  #789.19
        movl      -60(%rbp), %eax                               #789.9
        movslq    %eax, %rax                                    #789.7
        imulq     $8, %rax, %rax                                #789.7
        addq      -32(%rbp), %rax                               #789.7
        movsd     %xmm0, (%rax)                                 #789.7
        movl      $1, %eax                                      #787.25
        addl      -60(%rbp), %eax                               #787.25
        movl      %eax, -60(%rbp)                               #787.25
        jmp       ..B7.4        # Prob 100%                     #787.25
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B7.6:                         # Preds ..B7.4
                                # Execution count [0.00e+00]
        movl      -64(%rbp), %eax                               #792.15
        movl      %eax, -60(%rbp)                               #792.11
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B7.7:                         # Preds ..B7.8 ..B7.6
                                # Execution count [0.00e+00]
        movl      -60(%rbp), %eax                               #792.18
        movl      -48(%rbp), %edx                               #792.22
        cmpl      %edx, %eax                                    #792.22
        jge       ..B7.15       # Prob 50%                      #792.22
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B7.8:                         # Preds ..B7.7
                                # Execution count [0.00e+00]
        movsd     -40(%rbp), %xmm0                              #794.16
        movl      -60(%rbp), %eax                               #794.23
        movslq    %eax, %rax                                    #794.21
        imulq     $8, %rax, %rax                                #794.21
        addq      -32(%rbp), %rax                               #794.21
        movsd     (%rax), %xmm1                                 #794.21
        mulsd     %xmm1, %xmm0                                  #794.21
        movl      -60(%rbp), %eax                               #794.9
        movslq    %eax, %rax                                    #794.7
        imulq     $8, %rax, %rax                                #794.7
        addq      -32(%rbp), %rax                               #794.7
        movsd     %xmm0, (%rax)                                 #794.7
        movsd     -40(%rbp), %xmm0                              #795.16
        movl      $1, %eax                                      #795.7
        addl      -60(%rbp), %eax                               #795.25
        movslq    %eax, %rax                                    #795.21
        imulq     $8, %rax, %rax                                #795.21
        addq      -32(%rbp), %rax                               #795.21
        movsd     (%rax), %xmm1                                 #795.21
        mulsd     %xmm1, %xmm0                                  #795.21
        movl      $1, %eax                                      #795.7
        addl      -60(%rbp), %eax                               #795.11
        movslq    %eax, %rax                                    #795.7
        imulq     $8, %rax, %rax                                #795.7
        addq      -32(%rbp), %rax                               #795.7
        movsd     %xmm0, (%rax)                                 #795.7
        movsd     -40(%rbp), %xmm0                              #796.16
        movl      $2, %eax                                      #796.7
        addl      -60(%rbp), %eax                               #796.25
        movslq    %eax, %rax                                    #796.21
        imulq     $8, %rax, %rax                                #796.21
        addq      -32(%rbp), %rax                               #796.21
        movsd     (%rax), %xmm1                                 #796.21
        mulsd     %xmm1, %xmm0                                  #796.21
        movl      $2, %eax                                      #796.7
        addl      -60(%rbp), %eax                               #796.11
        movslq    %eax, %rax                                    #796.7
        imulq     $8, %rax, %rax                                #796.7
        addq      -32(%rbp), %rax                               #796.7
        movsd     %xmm0, (%rax)                                 #796.7
        movsd     -40(%rbp), %xmm0                              #797.16
        movl      $3, %eax                                      #797.7
        addl      -60(%rbp), %eax                               #797.25
        movslq    %eax, %rax                                    #797.21
        imulq     $8, %rax, %rax                                #797.21
        addq      -32(%rbp), %rax                               #797.21
        movsd     (%rax), %xmm1                                 #797.21
        mulsd     %xmm1, %xmm0                                  #797.21
        movl      $3, %eax                                      #797.7
        addl      -60(%rbp), %eax                               #797.11
        movslq    %eax, %rax                                    #797.7
        imulq     $8, %rax, %rax                                #797.7
        addq      -32(%rbp), %rax                               #797.7
        movsd     %xmm0, (%rax)                                 #797.7
        movsd     -40(%rbp), %xmm0                              #798.16
        movl      $4, %eax                                      #798.7
        addl      -60(%rbp), %eax                               #798.25
        movslq    %eax, %rax                                    #798.21
        imulq     $8, %rax, %rax                                #798.21
        addq      -32(%rbp), %rax                               #798.21
        movsd     (%rax), %xmm1                                 #798.21
        mulsd     %xmm1, %xmm0                                  #798.21
        movl      $4, %eax                                      #798.7
        addl      -60(%rbp), %eax                               #798.11
        movslq    %eax, %rax                                    #798.7
        imulq     $8, %rax, %rax                                #798.7
        addq      -32(%rbp), %rax                               #798.7
        movsd     %xmm0, (%rax)                                 #798.7
        movl      $5, %eax                                      #792.25
        addl      -60(%rbp), %eax                               #792.33
        movl      %eax, -60(%rbp)                               #792.25
        jmp       ..B7.7        # Prob 100%                     #792.25
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B7.9:                         # Preds ..B7.2
                                # Execution count [0.00e+00]
        movl      -24(%rbp), %eax                               #803.15
        testl     %eax, %eax                                    #803.15
        jl        ..B7.11       # Prob 50%                      #803.15
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B7.10:                        # Preds ..B7.9
                                # Execution count [0.00e+00]
        movl      $0, -56(%rbp)                                 #805.7
        jmp       ..B7.12       # Prob 100%                     #805.7
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B7.11:                        # Preds ..B7.9
                                # Execution count [0.00e+00]
        movl      -48(%rbp), %eax                               #809.16
        negl      %eax                                          #809.16
        incl      %eax                                          #809.20
        imull     -24(%rbp), %eax                               #809.26
        movl      %eax, -56(%rbp)                               #809.7
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B7.12:                        # Preds ..B7.10 ..B7.11
                                # Execution count [0.00e+00]
        movl      $0, -60(%rbp)                                 #812.11
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B7.13:                        # Preds ..B7.14 ..B7.12
                                # Execution count [0.00e+00]
        movl      -60(%rbp), %eax                               #812.18
        movl      -48(%rbp), %edx                               #812.22
        cmpl      %edx, %eax                                    #812.22
        jge       ..B7.15       # Prob 50%                      #812.22
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B7.14:                        # Preds ..B7.13
                                # Execution count [0.00e+00]
        movsd     -40(%rbp), %xmm0                              #814.15
        movl      -56(%rbp), %eax                               #814.22
        movslq    %eax, %rax                                    #814.20
        imulq     $8, %rax, %rax                                #814.20
        addq      -32(%rbp), %rax                               #814.20
        movsd     (%rax), %xmm1                                 #814.20
        mulsd     %xmm1, %xmm0                                  #814.20
        movl      -56(%rbp), %eax                               #814.9
        movslq    %eax, %rax                                    #814.7
        imulq     $8, %rax, %rax                                #814.7
        addq      -32(%rbp), %rax                               #814.7
        movsd     %xmm0, (%rax)                                 #814.7
        movl      -24(%rbp), %eax                               #815.17
        addl      -56(%rbp), %eax                               #815.17
        movl      %eax, -56(%rbp)                               #815.7
        movl      $1, %eax                                      #812.25
        addl      -60(%rbp), %eax                               #812.25
        movl      %eax, -60(%rbp)                               #812.25
        jmp       ..B7.13       # Prob 100%                     #812.25
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B7.15:                        # Preds ..B7.7 ..B7.13 ..B7.1
                                # Execution count [0.00e+00]
        leave                                                   #818.3
	.cfi_restore 6
        ret                                                     #818.3
                                # LOE
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

	.globl idamax
# --- idamax(int, double *, int)
idamax:
# parameter 1: %edi
# parameter 2: %rsi
# parameter 3: %edx
..B8.1:                         # Preds ..B8.0
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_idamax.214:
..L215:
                                                        #866.1
        pushq     %rbp                                          #866.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #866.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        subq      $96, %rsp                                     #866.1
        movl      %edi, -80(%rbp)                               #866.1
        movq      %rsi, -72(%rbp)                               #866.1
        movl      %edx, -64(%rbp)                               #866.1
        movl      $0, -96(%rbp)                                 #872.3
        movl      -80(%rbp), %eax                               #874.8
        testl     %eax, %eax                                    #874.12
        jle       ..B8.3        # Prob 50%                      #874.12
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.2:                         # Preds ..B8.1
                                # Execution count [0.00e+00]
        movl      -64(%rbp), %eax                               #874.17
        testl     %eax, %eax                                    #874.25
        jg        ..B8.4        # Prob 50%                      #874.25
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.3:                         # Preds ..B8.1 ..B8.2
                                # Execution count [0.00e+00]
        movl      -96(%rbp), %eax                               #876.12
        leave                                                   #876.12
	.cfi_restore 6
        ret                                                     #876.12
	.cfi_offset 6, -16
                                # LOE
..B8.4:                         # Preds ..B8.2
                                # Execution count [0.00e+00]
        movl      $1, -96(%rbp)                                 #879.3
        movl      -80(%rbp), %eax                               #881.8
        cmpl      $1, %eax                                      #881.13
        jne       ..B8.6        # Prob 50%                      #881.13
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.5:                         # Preds ..B8.4
                                # Execution count [0.00e+00]
        movl      -96(%rbp), %eax                               #883.12
        leave                                                   #883.12
	.cfi_restore 6
        ret                                                     #883.12
	.cfi_offset 6, -16
                                # LOE
..B8.6:                         # Preds ..B8.4
                                # Execution count [0.00e+00]
        movl      -64(%rbp), %eax                               #886.8
        cmpl      $1, %eax                                      #886.16
        jne       ..B8.15       # Prob 50%                      #886.16
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.7:                         # Preds ..B8.6
                                # Execution count [0.00e+00]
        movq      -72(%rbp), %rax                               #888.12
        movsd     (%rax), %xmm0                                 #888.12
..___tag_value_idamax.223:
        call      r8_abs                                        #888.12
..___tag_value_idamax.224:
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip xmm0
..B8.26:                        # Preds ..B8.7
                                # Execution count [0.00e+00]
        movsd     %xmm0, -56(%rbp)                              #888.12
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.8:                         # Preds ..B8.26
                                # Execution count [0.00e+00]
        movsd     -56(%rbp), %xmm0                              #888.12
        movsd     %xmm0, -40(%rbp)                              #888.5
        movl      $1, -88(%rbp)                                 #890.11
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.9:                         # Preds ..B8.10 ..B8.8
                                # Execution count [0.00e+00]
        movl      -88(%rbp), %eax                               #890.18
        movl      -80(%rbp), %edx                               #890.22
        cmpl      %edx, %eax                                    #890.22
        jl        ..B8.11       # Prob 50%                      #890.22
        jmp       ..B8.23       # Prob 100%                     #890.22
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.10:                        # Preds ..B8.14 ..B8.12
                                # Execution count [0.00e+00]
        movl      $1, %eax                                      #890.25
        addl      -88(%rbp), %eax                               #890.25
        movl      %eax, -88(%rbp)                               #890.25
        jmp       ..B8.9        # Prob 100%                     #890.25
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.11:                        # Preds ..B8.9
                                # Execution count [0.00e+00]
        movl      -88(%rbp), %eax                               #892.19
        movslq    %eax, %rax                                    #892.19
        imulq     $8, %rax, %rax                                #892.19
        addq      -72(%rbp), %rax                               #892.19
        movsd     (%rax), %xmm0                                 #892.19
..___tag_value_idamax.225:
        call      r8_abs                                        #892.19
..___tag_value_idamax.226:
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip xmm0
..B8.27:                        # Preds ..B8.11
                                # Execution count [0.00e+00]
        movsd     %xmm0, -32(%rbp)                              #892.19
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.12:                        # Preds ..B8.27
                                # Execution count [0.00e+00]
        movsd     -40(%rbp), %xmm0                              #892.12
        movsd     -32(%rbp), %xmm1                              #892.19
        comisd    %xmm1, %xmm0                                  #892.19
        jae       ..B8.10       # Prob 50%                      #892.19
        jp        ..B8.10       # Prob 0%                       #892.19
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.13:                        # Preds ..B8.12
                                # Execution count [0.00e+00]
        movl      $1, %eax                                      #894.9
        addl      -88(%rbp), %eax                               #894.21
        movl      %eax, -96(%rbp)                               #894.9
        movl      -88(%rbp), %eax                               #895.16
        movslq    %eax, %rax                                    #895.16
        imulq     $8, %rax, %rax                                #895.16
        addq      -72(%rbp), %rax                               #895.16
        movsd     (%rax), %xmm0                                 #895.16
..___tag_value_idamax.227:
        call      r8_abs                                        #895.16
..___tag_value_idamax.228:
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip xmm0
..B8.28:                        # Preds ..B8.13
                                # Execution count [0.00e+00]
        movsd     %xmm0, -16(%rbp)                              #895.16
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.14:                        # Preds ..B8.28
                                # Execution count [0.00e+00]
        movsd     -16(%rbp), %xmm0                              #895.16
        movsd     %xmm0, -40(%rbp)                              #895.9
        jmp       ..B8.10       # Prob 100%                     #895.9
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.15:                        # Preds ..B8.6
                                # Execution count [0.00e+00]
        movl      $0, -92(%rbp)                                 #901.5
        movq      -72(%rbp), %rax                               #902.12
        movsd     (%rax), %xmm0                                 #902.12
..___tag_value_idamax.229:
        call      r8_abs                                        #902.12
..___tag_value_idamax.230:
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip xmm0
..B8.29:                        # Preds ..B8.15
                                # Execution count [0.00e+00]
        movsd     %xmm0, -48(%rbp)                              #902.12
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.16:                        # Preds ..B8.29
                                # Execution count [0.00e+00]
        movsd     -48(%rbp), %xmm0                              #902.12
        movsd     %xmm0, -40(%rbp)                              #902.5
        movl      -64(%rbp), %eax                               #903.15
        addl      -92(%rbp), %eax                               #903.15
        movl      %eax, -92(%rbp)                               #903.5
        movl      $1, -88(%rbp)                                 #905.11
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.17:                        # Preds ..B8.22 ..B8.16
                                # Execution count [0.00e+00]
        movl      -88(%rbp), %eax                               #905.18
        movl      -80(%rbp), %edx                               #905.22
        cmpl      %edx, %eax                                    #905.22
        jge       ..B8.23       # Prob 50%                      #905.22
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.18:                        # Preds ..B8.17
                                # Execution count [0.00e+00]
        movl      -92(%rbp), %eax                               #907.19
        movslq    %eax, %rax                                    #907.19
        imulq     $8, %rax, %rax                                #907.19
        addq      -72(%rbp), %rax                               #907.19
        movsd     (%rax), %xmm0                                 #907.19
..___tag_value_idamax.231:
        call      r8_abs                                        #907.19
..___tag_value_idamax.232:
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip xmm0
..B8.30:                        # Preds ..B8.18
                                # Execution count [0.00e+00]
        movsd     %xmm0, -24(%rbp)                              #907.19
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.19:                        # Preds ..B8.30
                                # Execution count [0.00e+00]
        movsd     -40(%rbp), %xmm0                              #907.12
        movsd     -24(%rbp), %xmm1                              #907.19
        comisd    %xmm1, %xmm0                                  #907.19
        jae       ..B8.22       # Prob 50%                      #907.19
        jp        ..B8.22       # Prob 0%                       #907.19
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.20:                        # Preds ..B8.19
                                # Execution count [0.00e+00]
        movl      $1, %eax                                      #909.9
        addl      -88(%rbp), %eax                               #909.21
        movl      %eax, -96(%rbp)                               #909.9
        movl      -92(%rbp), %eax                               #910.16
        movslq    %eax, %rax                                    #910.16
        imulq     $8, %rax, %rax                                #910.16
        addq      -72(%rbp), %rax                               #910.16
        movsd     (%rax), %xmm0                                 #910.16
..___tag_value_idamax.233:
        call      r8_abs                                        #910.16
..___tag_value_idamax.234:
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip xmm0
..B8.31:                        # Preds ..B8.20
                                # Execution count [0.00e+00]
        movsd     %xmm0, -8(%rbp)                               #910.16
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.21:                        # Preds ..B8.31
                                # Execution count [0.00e+00]
        movsd     -8(%rbp), %xmm0                               #910.16
        movsd     %xmm0, -40(%rbp)                              #910.9
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.22:                        # Preds ..B8.21 ..B8.19
                                # Execution count [0.00e+00]
        movl      -64(%rbp), %eax                               #912.17
        addl      -92(%rbp), %eax                               #912.17
        movl      %eax, -92(%rbp)                               #912.7
        movl      $1, %eax                                      #905.25
        addl      -88(%rbp), %eax                               #905.25
        movl      %eax, -88(%rbp)                               #905.25
        jmp       ..B8.17       # Prob 100%                     #905.25
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B8.23:                        # Preds ..B8.9 ..B8.17
                                # Execution count [0.00e+00]
        movl      -96(%rbp), %eax                               #916.10
        leave                                                   #916.10
	.cfi_restore 6
        ret                                                     #916.10
                                # LOE
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

	.globl r8_abs
# --- r8_abs(double)
r8_abs:
# parameter 1: %xmm0
..B9.1:                         # Preds ..B9.0
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_r8_abs.237:
..L238:
                                                        #942.1
        pushq     %rbp                                          #942.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #942.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        subq      $16, %rsp                                     #942.1
        movsd     %xmm0, -16(%rbp)                              #942.1
        pxor      %xmm0, %xmm0                                  #945.3
        movsd     -16(%rbp), %xmm1                              #945.15
        comisd    %xmm1, %xmm0                                  #945.15
        ja        ..B9.3        # Prob 50%                      #945.15
        jp        ..B9.3        # Prob 0%                       #945.15
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B9.2:                         # Preds ..B9.1
                                # Execution count [0.00e+00]
        movsd     -16(%rbp), %xmm0                              #947.13
        movsd     %xmm0, -8(%rbp)                               #947.5
        jmp       ..B9.4        # Prob 100%                     #947.5
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B9.3:                         # Preds ..B9.1
                                # Execution count [0.00e+00]
        movsd     -16(%rbp), %xmm0                              #951.14
        xorpd     .L_2il0floatpacket.7(%rip), %xmm0             #951.14
        movsd     %xmm0, -8(%rbp)                               #951.5
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B9.4:                         # Preds ..B9.2 ..B9.3
                                # Execution count [0.00e+00]
        movsd     -8(%rbp), %xmm0                               #953.10
        leave                                                   #953.10
	.cfi_restore 6
        ret                                                     #953.10
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
	.section .rodata, "a"
	.align 8
.L_2il0floatpacket.8:
	.long	0x00000000,0x3fe00000
	.type	.L_2il0floatpacket.8,@object
	.size	.L_2il0floatpacket.8,8
	.text
# mark_begin;

	.globl r8_epsilon
# --- r8_epsilon(void)
r8_epsilon:
..B10.1:                        # Preds ..B10.0
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_r8_epsilon.244:
..L245:
                                                        #989.1
        pushq     %rbp                                          #989.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #989.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        subq      $16, %rsp                                     #989.1
        movsd     .L_2il0floatpacket.6(%rip), %xmm0             #992.3
        movsd     %xmm0, -16(%rbp)                              #992.3
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B10.2:                        # Preds ..B10.3 ..B10.1
                                # Execution count [0.00e+00]
        movsd     .L_2il0floatpacket.6(%rip), %xmm0             #994.3
        movsd     .L_2il0floatpacket.6(%rip), %xmm1             #994.3
        movsd     -16(%rbp), %xmm2                              #994.36
        addsd     %xmm1, %xmm2                                  #994.36
        comisd    %xmm2, %xmm0                                  #994.36
        jae       ..B10.4       # Prob 50%                      #994.36
        jp        ..B10.4       # Prob 0%                       #994.36
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B10.3:                        # Preds ..B10.2
                                # Execution count [0.00e+00]
        movsd     -16(%rbp), %xmm0                              #996.9
        movsd     .L_2il0floatpacket.8(%rip), %xmm1             #996.13
        mulsd     %xmm1, %xmm0                                  #996.13
        movsd     %xmm0, -16(%rbp)                              #996.5
        jmp       ..B10.2       # Prob 100%                     #996.5
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B10.4:                        # Preds ..B10.2
                                # Execution count [0.00e+00]
        movsd     -16(%rbp), %xmm0                              #998.13
        movsd     -16(%rbp), %xmm1                              #998.13
        addsd     %xmm1, %xmm0                                  #998.13
        movsd     %xmm0, -16(%rbp)                              #998.3
        movsd     -16(%rbp), %xmm0                              #1000.10
        leave                                                   #1000.10
	.cfi_restore 6
        ret                                                     #1000.10
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

	.globl r8_max
# --- r8_max(double, double)
r8_max:
# parameter 1: %xmm0
# parameter 2: %xmm1
..B11.1:                        # Preds ..B11.0
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_r8_max.251:
..L252:
                                                        #1026.1
        pushq     %rbp                                          #1026.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #1026.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        subq      $32, %rsp                                     #1026.1
        movsd     %xmm0, -32(%rbp)                              #1026.1
        movsd     %xmm1, -24(%rbp)                              #1026.1
        movsd     -24(%rbp), %xmm0                              #1029.8
        movsd     -32(%rbp), %xmm1                              #1029.12
        comisd    %xmm1, %xmm0                                  #1029.12
        jae       ..B11.3       # Prob 50%                      #1029.12
        jp        ..B11.3       # Prob 0%                       #1029.12
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B11.2:                        # Preds ..B11.1
                                # Execution count [0.00e+00]
        movsd     -32(%rbp), %xmm0                              #1031.13
        movsd     %xmm0, -16(%rbp)                              #1031.5
        jmp       ..B11.4       # Prob 100%                     #1031.5
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B11.3:                        # Preds ..B11.1
                                # Execution count [0.00e+00]
        movsd     -24(%rbp), %xmm0                              #1035.13
        movsd     %xmm0, -16(%rbp)                              #1035.5
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B11.4:                        # Preds ..B11.2 ..B11.3
                                # Execution count [0.00e+00]
        movsd     -16(%rbp), %xmm0                              #1037.10
        leave                                                   #1037.10
	.cfi_restore 6
        ret                                                     #1037.10
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
	.section .rodata, "a"
	.align 8
.L_2il0floatpacket.9:
	.long	0x00000000,0x3f300000
	.type	.L_2il0floatpacket.9,@object
	.size	.L_2il0floatpacket.9,8
	.text
# mark_begin;

	.globl r8_random
# --- r8_random(int *)
r8_random:
# parameter 1: %rdi
..B12.1:                        # Preds ..B12.0
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_r8_random.258:
..L259:
                                                        #1070.1
        pushq     %rbp                                          #1070.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #1070.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        subq      $112, %rsp                                    #1070.1
        movq      %rdi, -72(%rbp)                               #1070.1
        movl      $4096, -112(%rbp)                             #1071.12
        movl      $494, -108(%rbp)                              #1076.10
        movl      $322, -104(%rbp)                              #1077.10
        movl      $2508, -100(%rbp)                             #1078.10
        movl      $2549, -96(%rbp)                              #1079.10
        movsd     .L_2il0floatpacket.6(%rip), %xmm0             #1080.14
        movsd     %xmm0, -64(%rbp)                              #1080.14
        movsd     .L_2il0floatpacket.9(%rip), %xmm0             #1081.12
        movsd     %xmm0, -56(%rbp)                              #1081.12
        movl      $12, %eax                                     #1086.3
        addq      -72(%rbp), %rax                               #1086.9
        movl      -96(%rbp), %edx                               #1086.20
        imull     (%rax), %edx                                  #1086.20
        movl      %edx, -92(%rbp)                               #1086.3
        movl      -92(%rbp), %eax                               #1087.9
        movl      -112(%rbp), %edx                              #1087.15
        movl      %edx, -40(%rbp)                               #1087.15[spill]
        cltd                                                    #1087.15
        movl      -40(%rbp), %ecx                               #1087.15[spill]
        idivl     %ecx                                          #1087.15
        movl      %eax, -88(%rbp)                               #1087.3
        movl      -88(%rbp), %eax                               #1088.22
        imull     -112(%rbp), %eax                              #1088.22
        negl      %eax                                          #1088.22
        addl      -92(%rbp), %eax                               #1088.22
        movl      %eax, -92(%rbp)                               #1088.3
        movl      $8, %eax                                      #1089.3
        addq      -72(%rbp), %rax                               #1089.15
        movl      -96(%rbp), %edx                               #1089.26
        imull     (%rax), %edx                                  #1089.26
        addl      -88(%rbp), %edx                               #1089.26
        movl      $12, %eax                                     #1089.3
        addq      -72(%rbp), %rax                               #1089.31
        movl      -100(%rbp), %ecx                              #1089.42
        imull     (%rax), %ecx                                  #1089.42
        addl      %ecx, %edx                                    #1089.42
        movl      %edx, -88(%rbp)                               #1089.3
        movl      -88(%rbp), %eax                               #1090.9
        movl      -112(%rbp), %edx                              #1090.15
        movl      %edx, -32(%rbp)                               #1090.15[spill]
        cltd                                                    #1090.15
        movl      -32(%rbp), %ecx                               #1090.15[spill]
        idivl     %ecx                                          #1090.15
        movl      %eax, -84(%rbp)                               #1090.3
        movl      -84(%rbp), %eax                               #1091.22
        imull     -112(%rbp), %eax                              #1091.22
        negl      %eax                                          #1091.22
        addl      -88(%rbp), %eax                               #1091.22
        movl      %eax, -88(%rbp)                               #1091.3
        movl      $4, %eax                                      #1092.3
        addq      -72(%rbp), %rax                               #1092.15
        movl      -96(%rbp), %edx                               #1092.26
        imull     (%rax), %edx                                  #1092.26
        addl      -84(%rbp), %edx                               #1092.26
        movl      $8, %eax                                      #1092.3
        addq      -72(%rbp), %rax                               #1092.31
        movl      -100(%rbp), %ecx                              #1092.42
        imull     (%rax), %ecx                                  #1092.42
        addl      %ecx, %edx                                    #1092.42
        movl      $12, %eax                                     #1092.3
        addq      -72(%rbp), %rax                               #1092.47
        movl      -104(%rbp), %ecx                              #1092.58
        imull     (%rax), %ecx                                  #1092.58
        addl      %ecx, %edx                                    #1092.58
        movl      %edx, -84(%rbp)                               #1092.3
        movl      -84(%rbp), %eax                               #1093.9
        movl      -112(%rbp), %edx                              #1093.15
        movl      %edx, -24(%rbp)                               #1093.15[spill]
        cltd                                                    #1093.15
        movl      -24(%rbp), %ecx                               #1093.15[spill]
        idivl     %ecx                                          #1093.15
        movl      %eax, -80(%rbp)                               #1093.3
        movl      -80(%rbp), %eax                               #1094.22
        imull     -112(%rbp), %eax                              #1094.22
        negl      %eax                                          #1094.22
        addl      -84(%rbp), %eax                               #1094.22
        movl      %eax, -84(%rbp)                               #1094.3
        movq      -72(%rbp), %rax                               #1095.15
        movl      -96(%rbp), %edx                               #1095.26
        imull     (%rax), %edx                                  #1095.26
        addl      -80(%rbp), %edx                               #1095.26
        movl      $4, %eax                                      #1095.3
        addq      -72(%rbp), %rax                               #1095.31
        movl      -100(%rbp), %ecx                              #1095.42
        imull     (%rax), %ecx                                  #1095.42
        addl      %ecx, %edx                                    #1095.42
        movl      $8, %eax                                      #1095.3
        addq      -72(%rbp), %rax                               #1095.47
        movl      -104(%rbp), %ecx                              #1095.58
        imull     (%rax), %ecx                                  #1095.58
        addl      %ecx, %edx                                    #1095.58
        movl      $12, %eax                                     #1095.3
        addq      -72(%rbp), %rax                               #1095.63
        movl      -108(%rbp), %ecx                              #1095.74
        imull     (%rax), %ecx                                  #1095.74
        addl      %ecx, %edx                                    #1095.74
        movl      %edx, -80(%rbp)                               #1095.3
        movl      -80(%rbp), %eax                               #1096.11
        movl      -112(%rbp), %edx                              #1096.17
        movl      %edx, -16(%rbp)                               #1096.17[spill]
        cltd                                                    #1096.17
        movl      -16(%rbp), %ecx                               #1096.17[spill]
        idivl     %ecx                                          #1096.17
        movl      %edx, -80(%rbp)                               #1096.3
        movq      -72(%rbp), %rax                               #1100.3
        movl      -80(%rbp), %edx                               #1100.14
        movl      %edx, (%rax)                                  #1100.3
        movl      $4, %eax                                      #1101.3
        addq      -72(%rbp), %rax                               #1101.3
        movl      -84(%rbp), %edx                               #1101.14
        movl      %edx, (%rax)                                  #1101.3
        movl      $8, %eax                                      #1102.3
        addq      -72(%rbp), %rax                               #1102.3
        movl      -88(%rbp), %edx                               #1102.14
        movl      %edx, (%rax)                                  #1102.3
        movl      $12, %eax                                     #1103.3
        addq      -72(%rbp), %rax                               #1103.3
        movl      -92(%rbp), %edx                               #1103.14
        movl      %edx, (%rax)                                  #1103.3
        movsd     -56(%rbp), %xmm0                              #1108.7
        movl      -80(%rbp), %eax                               #1108.24
        cvtsi2sd  %eax, %xmm1                                   #1108.24
        movsd     -56(%rbp), %xmm2                              #1109.7
        movl      -84(%rbp), %eax                               #1109.24
        cvtsi2sd  %eax, %xmm3                                   #1109.24
        movsd     -56(%rbp), %xmm4                              #1110.7
        movl      -88(%rbp), %eax                               #1110.24
        cvtsi2sd  %eax, %xmm5                                   #1110.24
        movsd     -56(%rbp), %xmm6                              #1111.7
        movl      -92(%rbp), %eax                               #1111.24
        cvtsi2sd  %eax, %xmm7                                   #1111.24
        mulsd     %xmm7, %xmm6                                  #1111.24
        addsd     %xmm6, %xmm5                                  #1111.24
        mulsd     %xmm5, %xmm4                                  #1111.24
        addsd     %xmm4, %xmm3                                  #1111.24
        mulsd     %xmm3, %xmm2                                  #1111.24
        addsd     %xmm2, %xmm1                                  #1111.24
        mulsd     %xmm1, %xmm0                                  #1111.24
        movsd     %xmm0, -48(%rbp)                              #1107.3
        movsd     -48(%rbp), %xmm0                              #1113.10
        leave                                                   #1113.10
	.cfi_restore 6
        ret                                                     #1113.10
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

	.globl r8mat_gen
# --- r8mat_gen(int, int)
r8mat_gen:
# parameter 1: %edi
# parameter 2: %esi
..B13.1:                        # Preds ..B13.0
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_r8mat_gen.273:
..L274:
                                                        #1137.1
        pushq     %rbp                                          #1137.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #1137.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        subq      $64, %rsp                                     #1137.1
        movl      %edi, -40(%rbp)                               #1137.1
        movl      %esi, -32(%rbp)                               #1137.1
        lea       -64(%rbp), %rax                               #1140.15
        movl      $init.930.0, %edx                             #1140.15
        movl      $16, %ecx                                     #1140.15
        movq      %rax, %rdi                                    #1140.15
        movq      %rdx, %rsi                                    #1140.15
        movl      %ecx, %eax                                    #1140.15
        shrq      $2, %rcx                                      #1140.15
        rep                                                     #1140.15
        movsl                                                   #1140.15
        movl      %eax, %ecx                                    #1140.15
        andl      $3, %ecx                                      #1140.15
        rep                                                     #1140.15
        movsb                                                   #1140.15
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B13.2:                        # Preds ..B13.1
                                # Execution count [0.00e+00]
        movl      -32(%rbp), %eax                               #1143.20
        imull     -40(%rbp), %eax                               #1143.20
        movslq    %eax, %rax                                    #1143.20
        imulq     $8, %rax, %rax                                #1143.20
        movq      %rax, %rdi                                    #1143.20
..___tag_value_r8mat_gen.278:
#       malloc(size_t)
        call      malloc                                        #1143.20
..___tag_value_r8mat_gen.279:
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B13.13:                       # Preds ..B13.2
                                # Execution count [0.00e+00]
        movq      %rax, -24(%rbp)                               #1143.20
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B13.3:                        # Preds ..B13.13
                                # Execution count [0.00e+00]
        movq      -24(%rbp), %rax                               #1143.20
        movq      %rax, -16(%rbp)                               #1143.3
        movl      $1, -48(%rbp)                                 #1145.9
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B13.4:                        # Preds ..B13.5 ..B13.3
                                # Execution count [0.00e+00]
        movl      -48(%rbp), %eax                               #1145.16
        movl      -32(%rbp), %edx                               #1145.21
        cmpl      %edx, %eax                                    #1145.21
        jle       ..B13.6       # Prob 50%                      #1145.21
        jmp       ..B13.10      # Prob 100%                     #1145.21
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B13.5:                        # Preds ..B13.7
                                # Execution count [0.00e+00]
        movl      $1, %eax                                      #1145.24
        addl      -48(%rbp), %eax                               #1145.24
        movl      %eax, -48(%rbp)                               #1145.24
        jmp       ..B13.4       # Prob 100%                     #1145.24
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B13.6:                        # Preds ..B13.4
                                # Execution count [0.00e+00]
        movl      $1, -44(%rbp)                                 #1147.11
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B13.7:                        # Preds ..B13.9 ..B13.6
                                # Execution count [0.00e+00]
        movl      -44(%rbp), %eax                               #1147.18
        movl      -32(%rbp), %edx                               #1147.23
        cmpl      %edx, %eax                                    #1147.23
        jg        ..B13.5       # Prob 50%                      #1147.23
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B13.8:                        # Preds ..B13.7
                                # Execution count [0.00e+00]
        lea       -64(%rbp), %rax                               #1149.26
        movq      %rax, %rdi                                    #1149.26
..___tag_value_r8mat_gen.280:
#       r8_random(int *)
        call      r8_random                                     #1149.26
..___tag_value_r8mat_gen.281:
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip xmm0
..B13.14:                       # Preds ..B13.8
                                # Execution count [0.00e+00]
        movsd     %xmm0, -8(%rbp)                               #1149.26
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B13.9:                        # Preds ..B13.14
                                # Execution count [0.00e+00]
        movsd     .L_2il0floatpacket.8(%rip), %xmm0             #1149.47
        movsd     -8(%rbp), %xmm1                               #1149.26
        subsd     %xmm0, %xmm1                                  #1149.47
        movl      $-1, %eax                                     #1149.7
        addl      -44(%rbp), %eax                               #1149.11
        movl      $-1, %edx                                     #1149.7
        addl      -48(%rbp), %edx                               #1149.16
        imull     -40(%rbp), %edx                               #1149.19
        addl      %edx, %eax                                    #1149.19
        movslq    %eax, %rax                                    #1149.7
        imulq     $8, %rax, %rax                                #1149.7
        addq      -16(%rbp), %rax                               #1149.7
        movsd     %xmm1, (%rax)                                 #1149.7
        movl      $1, %eax                                      #1147.26
        addl      -44(%rbp), %eax                               #1147.26
        movl      %eax, -44(%rbp)                               #1147.26
        jmp       ..B13.7       # Prob 100%                     #1147.26
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B13.10:                       # Preds ..B13.4
                                # Execution count [0.00e+00]
        movq      -16(%rbp), %rax                               #1153.10
        leave                                                   #1153.10
	.cfi_restore 6
        ret                                                     #1153.10
                                # LOE
	.cfi_endproc
# mark_end;
	.type	r8mat_gen,@function
	.size	r8mat_gen,.-r8mat_gen
..LNr8mat_gen.12:
	.section .rodata, "a"
	.align 4
init.930.0:
	.long	1
	.long	2
	.long	3
	.long	1325
	.data
# -- End  r8mat_gen
	.text
.L_2__routine_start_timestamp_13:
# -- Begin  timestamp
	.section .rodata, "a"
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
	.text
# mark_begin;

	.globl timestamp
# --- timestamp(void)
timestamp:
..B14.1:                        # Preds ..B14.0
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_timestamp.284:
..L285:
                                                        #1185.1
        pushq     %rbp                                          #1185.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #1185.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        subq      $64, %rsp                                     #1185.1
        movq      %rbx, -8(%rbp)                                #1185.1[spill]
        movl      $0, %eax                                      #1193.9
        movq      %rax, %rdi                                    #1193.9
..___tag_value_timestamp.290:
#       time(time_t *)
        call      time                                          #1193.9
..___tag_value_timestamp.291:
	.cfi_offset 3, -24
                                # LOE rax rbp rsp r12 r13 r14 r15 rip
..B14.8:                        # Preds ..B14.1
                                # Execution count [0.00e+00]
        movq      %rax, -56(%rbp)                               #1193.9
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B14.2:                        # Preds ..B14.8
                                # Execution count [0.00e+00]
        movq      -56(%rbp), %rax                               #1193.9
        movq      %rax, -48(%rbp)                               #1193.3
        lea       -48(%rbp), %rax                               #1194.8
        movq      %rax, %rdi                                    #1194.8
..___tag_value_timestamp.293:
#       localtime(const time_t *)
        call      localtime                                     #1194.8
..___tag_value_timestamp.294:
                                # LOE rax rbp rsp r12 r13 r14 r15 rip
..B14.9:                        # Preds ..B14.2
                                # Execution count [0.00e+00]
        movq      %rax, -40(%rbp)                               #1194.8
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B14.3:                        # Preds ..B14.9
                                # Execution count [0.00e+00]
        movq      -40(%rbp), %rax                               #1194.8
        movq      %rax, -32(%rbp)                               #1194.3
        movl      $time_buffer.933, %eax                        #1196.9
        movl      $40, %edx                                     #1196.9
        movl      $.L_2__STRING.16, %ecx                        #1196.9
        movq      -32(%rbp), %rbx                               #1196.9
        movq      %rax, %rdi                                    #1196.9
        movq      %rdx, %rsi                                    #1196.9
        movq      %rcx, %rdx                                    #1196.9
        movq      %rbx, %rcx                                    #1196.9
..___tag_value_timestamp.295:
#       strftime(char *__restrict__, size_t, const char *__restrict__, const struct tm *__restrict__)
        call      strftime                                      #1196.9
..___tag_value_timestamp.296:
                                # LOE rax rbp rsp r12 r13 r14 r15 rip
..B14.10:                       # Preds ..B14.3
                                # Execution count [0.00e+00]
        movq      %rax, -24(%rbp)                               #1196.9
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B14.4:                        # Preds ..B14.10
                                # Execution count [0.00e+00]
        movq      -24(%rbp), %rax                               #1196.9
        movq      %rax, -16(%rbp)                               #1196.3
        movl      $.L_2__STRING.17, %eax                        #1198.3
        movl      $time_buffer.933, %edx                        #1198.3
        movq      %rax, %rdi                                    #1198.3
        movq      %rdx, %rsi                                    #1198.3
        movl      $0, %eax                                      #1198.3
..___tag_value_timestamp.297:
#       printf(const char *__restrict__, ...)
        call      printf                                        #1198.3
..___tag_value_timestamp.298:
                                # LOE rbp rsp r12 r13 r14 r15 rip eax
..B14.11:                       # Preds ..B14.4
                                # Execution count [0.00e+00]
        movl      %eax, -64(%rbp)                               #1198.3
                                # LOE rbp rsp r12 r13 r14 r15 rip
..B14.5:                        # Preds ..B14.11
                                # Execution count [0.00e+00]
        movq      -8(%rbp), %rbx                                #1200.3[spill]
	.cfi_restore 3
        leave                                                   #1200.3
	.cfi_restore 6
        ret                                                     #1200.3
                                # LOE
	.cfi_endproc
# mark_end;
	.type	timestamp,@function
	.size	timestamp,.-timestamp
..LNtimestamp.13:
	.bss
	.align 4
	.align 1
time_buffer.933:
	.type	time_buffer.933,@object
	.size	time_buffer.933,40
	.space 40	# pad
	.data
# -- End  timestamp
	.data
	.section .note.GNU-stack, ""
# End
