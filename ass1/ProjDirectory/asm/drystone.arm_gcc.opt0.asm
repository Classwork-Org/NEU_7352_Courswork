	.arch armv8-a
	.file	"drystone.c"
// GNU C11 (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.11) version 5.4.0 20160609 (aarch64-linux-gnu)
//	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -imultiarch aarch64-linux-gnu ../source/drystone.c
// -mlittle-endian -mabi=lp64
// -auxbase-strip ../asm/drystone.arm_gcc.opt0.asm -O0 -fverbose-asm
// -fstack-protector-strong -Wformat -Wformat-security
// options enabled:  -faggressive-loop-optimizations -fauto-inc-dec
// -fchkp-check-incomplete-type -fchkp-check-read -fchkp-check-write
// -fchkp-instrument-calls -fchkp-narrow-bounds -fchkp-optimize
// -fchkp-store-bounds -fchkp-use-static-bounds
// -fchkp-use-static-const-bounds -fchkp-use-wrappers -fcommon
// -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
// -feliminate-unused-debug-types -ffunction-cse -fgcse-lm -fgnu-runtime
// -fgnu-unique -fident -finline-atomics -fira-hoist-pressure
// -fira-share-save-slots -fira-share-spill-slots -fivopts
// -fkeep-static-consts -fleading-underscore -flifetime-dse
// -flto-odr-type-merging -fmath-errno -fmerge-debug-strings
// -fomit-frame-pointer -fpeephole -fplt -fprefetch-loop-arrays
// -freg-struct-return -fsched-critical-path-heuristic
// -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
// -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
// -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
// -fsemantic-interposition -fshow-column -fsigned-zeros
// -fsplit-ivs-in-unroller -fstack-protector-strong -fstdarg-opt
// -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
// -ftree-coalesce-vars -ftree-cselim -ftree-forwprop
// -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
// -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
// -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -fverbose-asm
// -fzero-initialized-in-bss -mfix-cortex-a53-835769
// -mfix-cortex-a53-843419 -mglibc -mlittle-endian
// -momit-leaf-frame-pointer -mpc-relative-literal-loads

	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -32]!	//,,,
	add	x29, sp, 0	//,,
	str	w0, [x29, 28]	// argc, argc
	str	x1, [x29, 16]	// argv, argv
	bl	Proc0	//
	mov	w0, 0	// D.4106,
	ldp	x29, x30, [sp], 32	//,,,
	ret
	.size	main, .-main
	.comm	IntGlob,4,4
	.comm	BoolGlob,4,4
	.comm	Char1Glob,1,1
	.comm	Char2Glob,1,1
	.comm	Array1Glob,204,8
	.comm	Array2Glob,10404,8
	.comm	PtrGlb,8,8
	.comm	PtrGlbNext,8,8
	.section	.rodata
	.align	3
.LC0:
	.string	"DHRYSTONE PROGRAM, SOME STRING"
	.align	3
.LC1:
	.string	"DHRYSTONE PROGRAM, 2'ND STRING"
	.align	3
.LC2:
	.string	"Dhrystone time for %ld passes = %ld\n"
	.align	3
.LC3:
	.string	"This machine benchmarks at %ld dhrystones/second\n"
	.text
	.align	2
	.global	Proc0
	.type	Proc0, %function
Proc0:
	stp	x29, x30, [sp, -192]!	//,,,
	add	x29, sp, 0	//,,
	str	x19, [sp, 16]	//,
	adrp	x0, __stack_chk_guard	// tmp115,
	add	x0, x0, :lo12:__stack_chk_guard	// tmp114, tmp115,
	ldr	x1, [x0]	// tmp213, __stack_chk_guard
	str	x1, [x29, 184]	// tmp213, D.4115
	mov	x1,0	// tmp213
	add	x0, x29, 88	// tmp116,,
	bl	times	//
	ldr	x0, [x29, 88]	// tmp117, tms.tms_utime
	str	x0, [x29, 64]	// tmp117, starttime
	mov	w19, 0	// i,
	b	.L4	//
.L5:
	add	w19, w19, 1	// i, i,
.L4:
	mov	w0, 25855	// tmp118,
	movk	w0, 0x1dcd, lsl 16	// tmp118,,
	cmp	w19, w0	// i, tmp118
	bls	.L5	//,
	add	x0, x29, 88	// tmp119,,
	bl	times	//
	ldr	x1, [x29, 88]	// D.4107, tms.tms_utime
	ldr	x0, [x29, 64]	// tmp121, starttime
	sub	x0, x1, x0	// tmp120, D.4107, tmp121
	str	x0, [x29, 72]	// tmp120, nulltime
	mov	x0, 56	//,
	bl	malloc	//
	mov	x1, x0	// D.4108, tmp122
	adrp	x0, PtrGlbNext	// tmp124,
	add	x0, x0, :lo12:PtrGlbNext	// tmp123, tmp124,
	str	x1, [x0]	// D.4108, PtrGlbNext
	mov	x0, 56	//,
	bl	malloc	//
	mov	x1, x0	// D.4108, tmp125
	adrp	x0, PtrGlb	// tmp127,
	add	x0, x0, :lo12:PtrGlb	// tmp126, tmp127,
	str	x1, [x0]	// D.4108, PtrGlb
	adrp	x0, PtrGlb	// tmp129,
	add	x0, x0, :lo12:PtrGlb	// tmp128, tmp129,
	ldr	x0, [x0]	// D.4109, PtrGlb
	adrp	x1, PtrGlbNext	// tmp131,
	add	x1, x1, :lo12:PtrGlbNext	// tmp130, tmp131,
	ldr	x1, [x1]	// D.4109, PtrGlbNext
	str	x1, [x0]	// D.4109, _22->PtrComp
	adrp	x0, PtrGlb	// tmp133,
	add	x0, x0, :lo12:PtrGlb	// tmp132, tmp133,
	ldr	x0, [x0]	// D.4109, PtrGlb
	str	wzr, [x0, 8]	//, _25->Discr
	adrp	x0, PtrGlb	// tmp135,
	add	x0, x0, :lo12:PtrGlb	// tmp134, tmp135,
	ldr	x0, [x0]	// D.4109, PtrGlb
	mov	w1, 2	// tmp136,
	str	w1, [x0, 12]	// tmp136, _27->EnumComp
	adrp	x0, PtrGlb	// tmp138,
	add	x0, x0, :lo12:PtrGlb	// tmp137, tmp138,
	ldr	x0, [x0]	// D.4109, PtrGlb
	mov	w1, 40	// tmp139,
	str	w1, [x0, 16]	// tmp139, _29->IntComp
	adrp	x0, PtrGlb	// tmp141,
	add	x0, x0, :lo12:PtrGlb	// tmp140, tmp141,
	ldr	x0, [x0]	// D.4109, PtrGlb
	add	x2, x0, 20	// D.4110, D.4109,
	adrp	x0, .LC0	// tmp143,
	add	x1, x0, :lo12:.LC0	// tmp142, tmp143,
	mov	x0, x2	// tmp144, D.4110
	ldp	x2, x3, [x1]	// tmp146, MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	stp	x2, x3, [x0]	// tmp146, MEM[(void *)_32]
	ldr	x2, [x1, 16]	// tmp147, MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	str	x2, [x0, 16]	// tmp147, MEM[(void *)_32]
	ldr	x1, [x1, 23]	// tmp148, MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	str	x1, [x0, 23]	// tmp148, MEM[(void *)_32]
	add	x0, x29, 88	// tmp149,,
	bl	times	//
	ldr	x0, [x29, 88]	// tmp150, tms.tms_utime
	str	x0, [x29, 64]	// tmp150, starttime
	mov	w19, 0	// i,
	b	.L6	//
.L12:
	bl	Proc5	//
	bl	Proc4	//
	mov	w0, 2	// tmp151,
	str	w0, [x29, 48]	// tmp151, IntLoc1
	mov	w0, 3	// tmp152,
	str	w0, [x29, 60]	// tmp152, IntLoc2
	adrp	x0, .LC1	// tmp154,
	add	x1, x0, :lo12:.LC1	// tmp153, tmp154,
	add	x0, x29, 152	// tmp155,,
	ldp	x2, x3, [x1]	// tmp157, MEM[(char * {ref-all})"DHRYSTONE PROGRAM, 2\'ND STRING"]
	stp	x2, x3, [x0]	// tmp157, MEM[(char * {ref-all})&String2Loc]
	ldr	x2, [x1, 16]	// tmp158, MEM[(char * {ref-all})"DHRYSTONE PROGRAM, 2\'ND STRING"]
	str	x2, [x0, 16]	// tmp158, MEM[(char * {ref-all})&String2Loc]
	ldr	x1, [x1, 23]	// tmp159, MEM[(char * {ref-all})"DHRYSTONE PROGRAM, 2\'ND STRING"]
	str	x1, [x0, 23]	// tmp159, MEM[(char * {ref-all})&String2Loc]
	mov	w0, 1	// tmp160,
	str	w0, [x29, 56]	// tmp160, EnumLoc
	add	x1, x29, 152	// tmp161,,
	add	x0, x29, 120	// tmp162,,
	bl	Func2	//
	cmp	w0, 0	// D.4111,
	cset	w0, eq	// tmp164,
	uxtb	w0, w0	// D.4112, tmp163
	mov	w1, w0	// D.4111, D.4112
	adrp	x0, BoolGlob	// tmp166,
	add	x0, x0, :lo12:BoolGlob	// tmp165, tmp166,
	str	w1, [x0]	// D.4111, BoolGlob
	b	.L7	//
.L8:
	ldr	w1, [x29, 48]	// D.4111, IntLoc1
	mov	w0, w1	// tmp167, D.4111
	lsl	w0, w0, 2	// tmp168, tmp167,
	add	w1, w0, w1	// D.4111, tmp167, D.4111
	ldr	w0, [x29, 60]	// tmp169, IntLoc2
	sub	w0, w1, w0	// D.4111, D.4111, tmp169
	str	w0, [x29, 52]	// D.4111, IntLoc3
	ldr	w0, [x29, 48]	// D.4111, IntLoc1
	add	x1, x29, 52	// tmp170,,
	mov	x2, x1	//, tmp170
	ldr	w1, [x29, 60]	//, IntLoc2
	bl	Proc7	//
	ldr	w0, [x29, 48]	// D.4111, IntLoc1
	add	w0, w0, 1	// D.4111, D.4111,
	str	w0, [x29, 48]	// D.4111, IntLoc1
.L7:
	ldr	w1, [x29, 48]	// D.4111, IntLoc1
	ldr	w0, [x29, 60]	// tmp171, IntLoc2
	cmp	w1, w0	// D.4111, tmp171
	blt	.L8	//,
	ldr	w2, [x29, 48]	// D.4111, IntLoc1
	ldr	w3, [x29, 52]	// D.4111, IntLoc3
	adrp	x0, Array2Glob	// tmp173,
	add	x1, x0, :lo12:Array2Glob	// tmp172, tmp173,
	adrp	x0, Array1Glob	// tmp175,
	add	x0, x0, :lo12:Array1Glob	// tmp174, tmp175,
	bl	Proc8	//
	adrp	x0, PtrGlb	// tmp177,
	add	x0, x0, :lo12:PtrGlb	// tmp176, tmp177,
	ldr	x0, [x0]	// D.4109, PtrGlb
	bl	Proc1	//
	mov	w0, 65	// tmp178,
	strb	w0, [x29, 47]	// tmp178, CharIndex
	b	.L9	//
.L11:
	ldrb	w0, [x29, 47]	// D.4111, CharIndex
	mov	w1, 67	//,
	bl	Func1	//
	mov	w1, w0	// D.4114,
	ldr	w0, [x29, 56]	// D.4114, EnumLoc
	cmp	w1, w0	// D.4114, D.4114
	bne	.L10	//,
	add	x0, x29, 56	// tmp179,,
	mov	x1, x0	//, tmp179
	mov	w0, 0	//,
	bl	Proc6	//
.L10:
	ldrb	w0, [x29, 47]	// tmp180, CharIndex
	add	w0, w0, 1	// tmp181, tmp180,
	strb	w0, [x29, 47]	// tmp182, CharIndex
.L9:
	adrp	x0, Char2Glob	// tmp184,
	add	x0, x0, :lo12:Char2Glob	// tmp183, tmp184,
	ldrb	w0, [x0]	// D.4113, Char2Glob
	ldrb	w1, [x29, 47]	// tmp185, CharIndex
	cmp	w1, w0	// tmp185, D.4113
	bls	.L11	//,
	ldr	w1, [x29, 48]	// D.4111, IntLoc1
	ldr	w0, [x29, 60]	// tmp186, IntLoc2
	mul	w0, w1, w0	// D.4111, D.4111, tmp186
	str	w0, [x29, 52]	// D.4111, IntLoc3
	ldr	w1, [x29, 52]	// D.4111, IntLoc3
	ldr	w0, [x29, 48]	// D.4111, IntLoc1
	sdiv	w0, w1, w0	// tmp187, D.4111, D.4111
	str	w0, [x29, 60]	// tmp187, IntLoc2
	ldr	w1, [x29, 52]	// D.4111, IntLoc3
	ldr	w0, [x29, 60]	// tmp188, IntLoc2
	sub	w1, w1, w0	// D.4111, D.4111, tmp188
	mov	w0, w1	// tmp189, D.4111
	lsl	w0, w0, 3	// tmp190, tmp189,
	sub	w1, w0, w1	// D.4111, tmp189, D.4111
	ldr	w0, [x29, 48]	// D.4111, IntLoc1
	sub	w0, w1, w0	// tmp191, D.4111, D.4111
	str	w0, [x29, 60]	// tmp191, IntLoc2
	add	x0, x29, 48	// tmp192,,
	bl	Proc2	//
	add	w19, w19, 1	// i, i,
.L6:
	mov	w0, 25855	// tmp193,
	movk	w0, 0x1dcd, lsl 16	// tmp193,,
	cmp	w19, w0	// i, tmp193
	bls	.L12	//,
	add	x0, x29, 88	// tmp194,,
	bl	times	//
	ldr	x1, [x29, 88]	// D.4107, tms.tms_utime
	ldr	x0, [x29, 64]	// tmp195, starttime
	sub	x1, x1, x0	// D.4107, D.4107, tmp195
	ldr	x0, [x29, 72]	// tmp197, nulltime
	sub	x0, x1, x0	// tmp196, D.4107, tmp197
	str	x0, [x29, 80]	// tmp196, benchtime
	ldr	x0, [x29, 80]	// tmp198, benchtime
	mov	x1, -8608480567731124088	// tmp200,
	movk	x1, 0x8889, lsl 0	// tmp200,,
	smulh	x1, x0, x1	// tmp199, tmp198, tmp200
	add	x2, x1, x0	// tmp201, tmp199, tmp198
	asr	x1, x2, 5	// tmp202, tmp201,
	asr	x0, x0, 63	// tmp203, tmp198,
	sub	x1, x1, x0	// D.4107, tmp202, tmp203
	adrp	x0, .LC2	// tmp205,
	add	x0, x0, :lo12:.LC2	// tmp204, tmp205,
	mov	x2, x1	//, D.4107
	mov	x1, 25856	//,
	movk	x1, 0x1dcd, lsl 16	//,,
	bl	printf	//
	mov	x1, 44032	// tmp206,
	movk	x1, 0xfc23, lsl 16	// tmp206,,
	movk	x1, 0x6, lsl 32	// tmp206,,
	ldr	x0, [x29, 80]	// tmp207, benchtime
	sdiv	x1, x1, x0	// D.4107, tmp206, tmp207
	adrp	x0, .LC3	// tmp209,
	add	x0, x0, :lo12:.LC3	// tmp208, tmp209,
	bl	printf	//
	nop
	adrp	x1, __stack_chk_guard	// tmp211,
	add	x1, x1, :lo12:__stack_chk_guard	// tmp210, tmp211,
	ldr	x2, [x29, 184]	// tmp214, D.4115
	ldr	x1, [x1]	// tmp212, __stack_chk_guard
	eor	x1, x2, x1	// tmp212, tmp214
	cmp	x1, 0	// tmp212,
	beq	.L13	//,
	bl	__stack_chk_fail	//
.L13:
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 192	//,,,
	ret
	.size	Proc0, .-Proc0
	.align	2
	.global	Proc1
	.type	Proc1, %function
Proc1:
	stp	x29, x30, [sp, -32]!	//,,,
	add	x29, sp, 0	//,,
	str	x0, [x29, 24]	// PtrParIn, PtrParIn
	ldr	x0, [x29, 24]	// tmp96, PtrParIn
	ldr	x2, [x0]	// D.4122, PtrParIn_3(D)->PtrComp
	adrp	x0, PtrGlb	// tmp98,
	add	x0, x0, :lo12:PtrGlb	// tmp97, tmp98,
	ldr	x1, [x0]	// D.4123, PtrGlb
	mov	x0, x2	// tmp99, D.4122
	ldp	x2, x3, [x1]	// tmp101, *_5
	stp	x2, x3, [x0]	// tmp101, *_4
	ldp	x2, x3, [x1, 16]	// tmp102, *_5
	stp	x2, x3, [x0, 16]	// tmp102, *_4
	ldp	x2, x3, [x1, 32]	// tmp103, *_5
	stp	x2, x3, [x0, 32]	// tmp103, *_4
	ldr	x1, [x1, 48]	// tmp104, *_5
	str	x1, [x0, 48]	// tmp104, *_4
	ldr	x0, [x29, 24]	// tmp105, PtrParIn
	mov	w1, 5	// tmp106,
	str	w1, [x0, 16]	// tmp106, PtrParIn_3(D)->IntComp
	ldr	x0, [x29, 24]	// tmp107, PtrParIn
	ldr	x0, [x0]	// D.4122, PtrParIn_3(D)->PtrComp
	ldr	x1, [x29, 24]	// tmp108, PtrParIn
	ldr	w1, [x1, 16]	// D.4124, PtrParIn_3(D)->IntComp
	str	w1, [x0, 16]	// D.4124, _8->IntComp
	ldr	x0, [x29, 24]	// tmp109, PtrParIn
	ldr	x0, [x0]	// D.4122, PtrParIn_3(D)->PtrComp
	ldr	x1, [x29, 24]	// tmp110, PtrParIn
	ldr	x1, [x1]	// D.4122, PtrParIn_3(D)->PtrComp
	str	x1, [x0]	// D.4122, _11->PtrComp
	ldr	x0, [x29, 24]	// tmp111, PtrParIn
	ldr	x0, [x0]	// D.4122, PtrParIn_3(D)->PtrComp
	ldr	x0, [x0]	// D.4122, _14->PtrComp
	bl	Proc3	//
	ldr	x0, [x29, 24]	// tmp112, PtrParIn
	ldr	x0, [x0]	// D.4122, PtrParIn_3(D)->PtrComp
	ldr	w0, [x0, 8]	// D.4125, _17->Discr
	cmp	w0, 0	// D.4125,
	bne	.L15	//,
	ldr	x0, [x29, 24]	// tmp113, PtrParIn
	ldr	x0, [x0]	// D.4122, PtrParIn_3(D)->PtrComp
	mov	w1, 6	// tmp114,
	str	w1, [x0, 16]	// tmp114, _19->IntComp
	ldr	x0, [x29, 24]	// tmp115, PtrParIn
	ldr	w2, [x0, 12]	// D.4125, PtrParIn_3(D)->EnumComp
	ldr	x0, [x29, 24]	// tmp116, PtrParIn
	ldr	x0, [x0]	// D.4122, PtrParIn_3(D)->PtrComp
	add	x0, x0, 12	// D.4126, D.4122,
	mov	x1, x0	//, D.4126
	mov	w0, w2	//, D.4125
	bl	Proc6	//
	ldr	x0, [x29, 24]	// tmp117, PtrParIn
	ldr	x0, [x0]	// D.4122, PtrParIn_3(D)->PtrComp
	adrp	x1, PtrGlb	// tmp119,
	add	x1, x1, :lo12:PtrGlb	// tmp118, tmp119,
	ldr	x1, [x1]	// D.4123, PtrGlb
	ldr	x1, [x1]	// D.4122, _26->PtrComp
	str	x1, [x0]	// D.4122, _25->PtrComp
	ldr	x0, [x29, 24]	// tmp120, PtrParIn
	ldr	x0, [x0]	// D.4122, PtrParIn_3(D)->PtrComp
	ldr	w3, [x0, 16]	// D.4124, _29->IntComp
	ldr	x0, [x29, 24]	// tmp121, PtrParIn
	ldr	x0, [x0]	// D.4122, PtrParIn_3(D)->PtrComp
	add	x0, x0, 16	// D.4127, D.4122,
	mov	x2, x0	//, D.4127
	mov	w1, 10	//,
	mov	w0, w3	//, D.4124
	bl	Proc7	//
	b	.L16	//
.L15:
	ldr	x0, [x29, 24]	// tmp122, PtrParIn
	ldr	x1, [x0]	// D.4122, PtrParIn_3(D)->PtrComp
	ldr	x0, [x29, 24]	// tmp123, PtrParIn
	ldp	x2, x3, [x1]	// tmp126, *_34
	stp	x2, x3, [x0]	// tmp126, *PtrParIn_3(D)
	ldp	x2, x3, [x1, 16]	// tmp127, *_34
	stp	x2, x3, [x0, 16]	// tmp127, *PtrParIn_3(D)
	ldp	x2, x3, [x1, 32]	// tmp128, *_34
	stp	x2, x3, [x0, 32]	// tmp128, *PtrParIn_3(D)
	ldr	x1, [x1, 48]	// tmp129, *_34
	str	x1, [x0, 48]	// tmp129, *PtrParIn_3(D)
.L16:
	nop
	ldp	x29, x30, [sp], 32	//,,,
	ret
	.size	Proc1, .-Proc1
	.align	2
	.global	Proc2
	.type	Proc2, %function
Proc2:
	sub	sp, sp, #32	//,,
	str	x0, [sp, 8]	// IntParIO, IntParIO
	ldr	x0, [sp, 8]	// tmp78, IntParIO
	ldr	w0, [x0]	// D.4128, *IntParIO_8(D)
	add	w0, w0, 10	// tmp79, D.4128,
	str	w0, [sp, 24]	// tmp79, IntLoc
.L21:
	adrp	x0, Char1Glob	// tmp81,
	add	x0, x0, :lo12:Char1Glob	// tmp80, tmp81,
	ldrb	w0, [x0]	// D.4129, Char1Glob
	cmp	w0, 65	// D.4129,
	bne	.L18	//,
	ldr	w0, [sp, 24]	// tmp83, IntLoc
	sub	w0, w0, #1	// tmp82, tmp83,
	str	w0, [sp, 24]	// tmp82, IntLoc
	adrp	x0, IntGlob	// tmp85,
	add	x0, x0, :lo12:IntGlob	// tmp84, tmp85,
	ldr	w0, [x0]	// D.4128, IntGlob
	ldr	w1, [sp, 24]	// tmp86, IntLoc
	sub	w1, w1, w0	// D.4128, tmp86, D.4128
	ldr	x0, [sp, 8]	// tmp87, IntParIO
	str	w1, [x0]	// D.4128, *IntParIO_8(D)
	str	wzr, [sp, 28]	//, EnumLoc
.L18:
	ldr	w0, [sp, 28]	// tmp88, EnumLoc
	cmp	w0, 0	// tmp88,
	beq	.L23	//,
	b	.L21	//
.L23:
	nop
	nop
	add	sp, sp, 32	//,,
	ret
	.size	Proc2, .-Proc2
	.align	2
	.global	Proc3
	.type	Proc3, %function
Proc3:
	stp	x29, x30, [sp, -32]!	//,,,
	add	x29, sp, 0	//,,
	str	x0, [x29, 24]	// PtrParOut, PtrParOut
	adrp	x0, PtrGlb	// tmp81,
	add	x0, x0, :lo12:PtrGlb	// tmp80, tmp81,
	ldr	x0, [x0]	// D.4130, PtrGlb
	cmp	x0, 0	// D.4130,
	beq	.L25	//,
	adrp	x0, PtrGlb	// tmp83,
	add	x0, x0, :lo12:PtrGlb	// tmp82, tmp83,
	ldr	x0, [x0]	// D.4130, PtrGlb
	ldr	x1, [x0]	// D.4131, _4->PtrComp
	ldr	x0, [x29, 24]	// tmp84, PtrParOut
	str	x1, [x0]	// D.4131, *PtrParOut_6(D)
	b	.L26	//
.L25:
	adrp	x0, IntGlob	// tmp86,
	add	x0, x0, :lo12:IntGlob	// tmp85, tmp86,
	mov	w1, 100	// tmp87,
	str	w1, [x0]	// tmp87, IntGlob
.L26:
	adrp	x0, IntGlob	// tmp89,
	add	x0, x0, :lo12:IntGlob	// tmp88, tmp89,
	ldr	w1, [x0]	// D.4132, IntGlob
	adrp	x0, PtrGlb	// tmp91,
	add	x0, x0, :lo12:PtrGlb	// tmp90, tmp91,
	ldr	x0, [x0]	// D.4130, PtrGlb
	add	x0, x0, 16	// D.4133, D.4130,
	mov	x2, x0	//, D.4133
	mov	w0, 10	//,
	bl	Proc7	//
	nop
	ldp	x29, x30, [sp], 32	//,,,
	ret
	.size	Proc3, .-Proc3
	.align	2
	.global	Proc4
	.type	Proc4, %function
Proc4:
	sub	sp, sp, #16	//,,
	adrp	x0, Char1Glob	// tmp78,
	add	x0, x0, :lo12:Char1Glob	// tmp77, tmp78,
	ldrb	w0, [x0]	// D.4134, Char1Glob
	cmp	w0, 65	// D.4134,
	cset	w0, eq	// tmp80,
	uxtb	w0, w0	// D.4135, tmp79
	str	w0, [sp, 12]	// D.4135, BoolLoc
	adrp	x0, BoolGlob	// tmp82,
	add	x0, x0, :lo12:BoolGlob	// tmp81, tmp82,
	ldr	w0, [x0]	// D.4136, BoolGlob
	ldr	w1, [sp, 12]	// tmp84, BoolLoc
	orr	w0, w1, w0	// tmp83, tmp84, D.4136
	str	w0, [sp, 12]	// tmp83, BoolLoc
	adrp	x0, Char2Glob	// tmp86,
	add	x0, x0, :lo12:Char2Glob	// tmp85, tmp86,
	mov	w1, 66	// tmp87,
	strb	w1, [x0]	// tmp87, Char2Glob
	nop
	add	sp, sp, 16	//,,
	ret
	.size	Proc4, .-Proc4
	.align	2
	.global	Proc5
	.type	Proc5, %function
Proc5:
	adrp	x0, Char1Glob	// tmp75,
	add	x0, x0, :lo12:Char1Glob	// tmp74, tmp75,
	mov	w1, 65	// tmp76,
	strb	w1, [x0]	// tmp76, Char1Glob
	adrp	x0, BoolGlob	// tmp78,
	add	x0, x0, :lo12:BoolGlob	// tmp77, tmp78,
	str	wzr, [x0]	//, BoolGlob
	nop
	ret
	.size	Proc5, .-Proc5
	.align	2
	.global	Proc6
	.type	Proc6, %function
Proc6:
	stp	x29, x30, [sp, -32]!	//,,,
	add	x29, sp, 0	//,,
	str	w0, [x29, 28]	// EnumParIn, EnumParIn
	str	x1, [x29, 16]	// EnumParOut, EnumParOut
	ldr	x0, [x29, 16]	// tmp76, EnumParOut
	ldr	w1, [x29, 28]	// tmp77, EnumParIn
	str	w1, [x0]	// tmp77, *EnumParOut_5(D)
	ldr	w0, [x29, 28]	//, EnumParIn
	bl	Func3	//
	cmp	w0, 0	// D.4137,
	bne	.L30	//,
	ldr	x0, [x29, 16]	// tmp78, EnumParOut
	mov	w1, 3	// tmp79,
	str	w1, [x0]	// tmp79, *EnumParOut_5(D)
.L30:
	ldr	w0, [x29, 28]	// tmp80, EnumParIn
	cmp	w0, 4	// tmp80,
	bhi	.L31	//,
	adrp	x1, .L33	// tmp82,
	add	x1, x1, :lo12:.L33	// tmp81, tmp82,
	ldr	w0, [x1,w0,uxtw #2]	// tmp93, tmp81, tmp80
	adr	x1, .Lrtx33	// tmp94
	add	x0, x1, w0, sxtw #2	// tmp93, tmp94
	br	x0	// tmp93
.Lrtx33:
	.section	.rodata
	.align	0
	.align	2
.L33:
	.word	(.L32 - .Lrtx33) / 4
	.word	(.L34 - .Lrtx33) / 4
	.word	(.L35 - .Lrtx33) / 4
	.word	(.L40 - .Lrtx33) / 4
	.word	(.L37 - .Lrtx33) / 4
	.text
.L32:
	ldr	x0, [x29, 16]	// tmp83, EnumParOut
	str	wzr, [x0]	//, *EnumParOut_5(D)
	b	.L31	//
.L34:
	adrp	x0, IntGlob	// tmp85,
	add	x0, x0, :lo12:IntGlob	// tmp84, tmp85,
	ldr	w0, [x0]	// D.4137, IntGlob
	cmp	w0, 100	// D.4137,
	ble	.L38	//,
	ldr	x0, [x29, 16]	// tmp86, EnumParOut
	str	wzr, [x0]	//, *EnumParOut_5(D)
	b	.L31	//
.L38:
	ldr	x0, [x29, 16]	// tmp87, EnumParOut
	mov	w1, 3	// tmp88,
	str	w1, [x0]	// tmp88, *EnumParOut_5(D)
	b	.L31	//
.L35:
	ldr	x0, [x29, 16]	// tmp89, EnumParOut
	mov	w1, 1	// tmp90,
	str	w1, [x0]	// tmp90, *EnumParOut_5(D)
	b	.L31	//
.L37:
	ldr	x0, [x29, 16]	// tmp91, EnumParOut
	mov	w1, 2	// tmp92,
	str	w1, [x0]	// tmp92, *EnumParOut_5(D)
	b	.L31	//
.L40:
	nop
.L31:
	nop
	ldp	x29, x30, [sp], 32	//,,,
	ret
	.size	Proc6, .-Proc6
	.align	2
	.global	Proc7
	.type	Proc7, %function
Proc7:
	sub	sp, sp, #32	//,,
	str	w0, [sp, 12]	// IntParI1, IntParI1
	str	w1, [sp, 8]	// IntParI2, IntParI2
	str	x2, [sp]	// IntParOut, IntParOut
	ldr	w0, [sp, 12]	// tmp76, IntParI1
	add	w0, w0, 2	// tmp75, tmp76,
	str	w0, [sp, 28]	// tmp75, IntLoc
	ldr	w1, [sp, 8]	// tmp77, IntParI2
	ldr	w0, [sp, 28]	// tmp78, IntLoc
	add	w1, w1, w0	// D.4138, tmp77, tmp78
	ldr	x0, [sp]	// tmp79, IntParOut
	str	w1, [x0]	// D.4138, *IntParOut_6(D)
	nop
	add	sp, sp, 32	//,,
	ret
	.size	Proc7, .-Proc7
	.align	2
	.global	Proc8
	.type	Proc8, %function
Proc8:
	sub	sp, sp, #48	//,,
	str	x0, [sp, 24]	// Array1Par, Array1Par
	str	x1, [sp, 16]	// Array2Par, Array2Par
	str	w2, [sp, 12]	// IntParI1, IntParI1
	str	w3, [sp, 8]	// IntParI2, IntParI2
	ldr	w0, [sp, 12]	// tmp108, IntParI1
	add	w0, w0, 5	// tmp107, tmp108,
	str	w0, [sp, 44]	// tmp107, IntLoc
	ldrsw	x0, [sp, 44]	// D.4139, IntLoc
	lsl	x0, x0, 2	// D.4139, D.4139,
	ldr	x1, [sp, 24]	// tmp109, Array1Par
	add	x0, x1, x0	// D.4140, tmp109, D.4139
	ldr	w1, [sp, 8]	// tmp110, IntParI2
	str	w1, [x0]	// tmp110, *_8
	ldrsw	x0, [sp, 44]	// D.4141, IntLoc
	add	x0, x0, 1	// D.4141, D.4141,
	lsl	x0, x0, 2	// D.4141, D.4141,
	ldr	x1, [sp, 24]	// tmp111, Array1Par
	add	x0, x1, x0	// D.4140, tmp111, D.4141
	ldrsw	x1, [sp, 44]	// D.4139, IntLoc
	lsl	x1, x1, 2	// D.4139, D.4139,
	ldr	x2, [sp, 24]	// tmp112, Array1Par
	add	x1, x2, x1	// D.4140, tmp112, D.4139
	ldr	w1, [x1]	// D.4142, *_18
	str	w1, [x0]	// D.4142, *_15
	ldrsw	x0, [sp, 44]	// D.4141, IntLoc
	add	x0, x0, 30	// D.4141, D.4141,
	lsl	x0, x0, 2	// D.4141, D.4141,
	ldr	x1, [sp, 24]	// tmp113, Array1Par
	add	x0, x1, x0	// D.4140, tmp113, D.4141
	ldr	w1, [sp, 44]	// tmp114, IntLoc
	str	w1, [x0]	// tmp114, *_24
	ldr	w0, [sp, 44]	// tmp115, IntLoc
	str	w0, [sp, 40]	// tmp115, IntIndex
	b	.L43	//
.L44:
	ldrsw	x1, [sp, 44]	// D.4139, IntLoc
	mov	x0, x1	// tmp116, D.4139
	lsl	x0, x0, 1	// tmp117, tmp116,
	add	x0, x0, x1	// tmp116, tmp116, D.4139
	lsl	x1, x0, 4	// tmp118, tmp116,
	add	x0, x0, x1	// tmp116, tmp116, tmp118
	lsl	x0, x0, 2	// tmp119, tmp116,
	mov	x1, x0	// D.4139, tmp116
	ldr	x0, [sp, 16]	// tmp120, Array2Par
	add	x0, x0, x1	// D.4143, tmp120, D.4139
	ldrsw	x1, [sp, 40]	// tmp121, IntIndex
	ldr	w2, [sp, 44]	// tmp122, IntLoc
	str	w2, [x0, x1, lsl 2]	// tmp122, *_31
	ldr	w0, [sp, 40]	// tmp124, IntIndex
	add	w0, w0, 1	// tmp123, tmp124,
	str	w0, [sp, 40]	// tmp123, IntIndex
.L43:
	ldr	w0, [sp, 44]	// tmp125, IntLoc
	add	w1, w0, 1	// D.4142, tmp125,
	ldr	w0, [sp, 40]	// tmp126, IntIndex
	cmp	w1, w0	// D.4142, tmp126
	bge	.L44	//,
	ldrsw	x1, [sp, 44]	// D.4139, IntLoc
	mov	x0, x1	// tmp127, D.4139
	lsl	x0, x0, 1	// tmp128, tmp127,
	add	x0, x0, x1	// tmp127, tmp127, D.4139
	lsl	x1, x0, 4	// tmp129, tmp127,
	add	x0, x0, x1	// tmp127, tmp127, tmp129
	lsl	x0, x0, 2	// tmp130, tmp127,
	mov	x1, x0	// D.4139, tmp127
	ldr	x0, [sp, 16]	// tmp131, Array2Par
	add	x0, x0, x1	// D.4143, tmp131, D.4139
	ldr	w1, [sp, 44]	// tmp132, IntLoc
	sub	w3, w1, #1	// D.4142, tmp132,
	sxtw	x1, w3	// tmp133, D.4142
	ldr	w1, [x0, x1, lsl 2]	// D.4142, *_36
	add	w2, w1, 1	// D.4142, D.4142,
	sxtw	x1, w3	// tmp134, D.4142
	str	w2, [x0, x1, lsl 2]	// D.4142, *_36
	ldrsw	x1, [sp, 44]	// D.4139, IntLoc
	mov	x0, x1	// tmp135, D.4139
	lsl	x0, x0, 1	// tmp136, tmp135,
	add	x0, x0, x1	// tmp135, tmp135, D.4139
	lsl	x1, x0, 4	// tmp137, tmp135,
	add	x0, x0, x1	// tmp135, tmp135, tmp137
	lsl	x0, x0, 2	// tmp138, tmp135,
	add	x0, x0, 4080	// D.4141, D.4139,
	ldr	x1, [sp, 16]	// tmp139, Array2Par
	add	x0, x1, x0	// D.4143, tmp139, D.4141
	ldrsw	x1, [sp, 44]	// D.4139, IntLoc
	lsl	x1, x1, 2	// D.4139, D.4139,
	ldr	x2, [sp, 24]	// tmp140, Array1Par
	add	x1, x2, x1	// D.4140, tmp140, D.4139
	ldr	w2, [x1]	// D.4142, *_47
	ldrsw	x1, [sp, 44]	// tmp141, IntLoc
	str	w2, [x0, x1, lsl 2]	// D.4142, *_44
	adrp	x0, IntGlob	// tmp143,
	add	x0, x0, :lo12:IntGlob	// tmp142, tmp143,
	mov	w1, 5	// tmp144,
	str	w1, [x0]	// tmp144, IntGlob
	nop
	add	sp, sp, 48	//,,
	ret
	.size	Proc8, .-Proc8
	.align	2
	.global	Func1
	.type	Func1, %function
Func1:
	sub	sp, sp, #32	//,,
	strb	w0, [sp, 12]	// tmp76, CharPar1
	mov	w0, w1	// tmp78, tmp77
	strb	w0, [sp, 8]	// tmp78, CharPar2
	ldrb	w0, [sp, 12]	// tmp79, CharPar1
	strb	w0, [sp, 30]	// tmp79, CharLoc1
	ldrb	w0, [sp, 30]	// tmp80, CharLoc1
	strb	w0, [sp, 31]	// tmp80, CharLoc2
	ldrb	w1, [sp, 31]	// tmp81, CharLoc2
	ldrb	w0, [sp, 8]	// tmp82, CharPar2
	cmp	w1, w0	// tmp81, tmp82
	beq	.L46	//,
	mov	w0, 0	// D.4144,
	b	.L47	//
.L46:
	mov	w0, 1	// D.4144,
.L47:
	add	sp, sp, 32	//,,
	ret
	.size	Func1, .-Func1
	.align	2
	.global	Func2
	.type	Func2, %function
Func2:
	stp	x29, x30, [sp, -48]!	//,,,
	add	x29, sp, 0	//,,
	str	x0, [x29, 24]	// StrParI1, StrParI1
	str	x1, [x29, 16]	// StrParI2, StrParI2
	mov	w0, 1	// tmp86,
	str	w0, [x29, 44]	// tmp86, IntLoc
	b	.L49	//
.L50:
	ldrsw	x0, [x29, 44]	// D.4146, IntLoc
	ldr	x1, [x29, 24]	// tmp87, StrParI1
	add	x0, x1, x0	// D.4147, tmp87, D.4146
	ldrb	w0, [x0]	// D.4148, *_11
	mov	w2, w0	// D.4149, D.4148
	ldrsw	x0, [x29, 44]	// D.4146, IntLoc
	add	x0, x0, 1	// D.4146, D.4146,
	ldr	x1, [x29, 16]	// tmp88, StrParI2
	add	x0, x1, x0	// D.4147, tmp88, D.4146
	ldrb	w0, [x0]	// D.4148, *_17
	mov	w1, w0	//, D.4149
	mov	w0, w2	//, D.4149
	bl	Func1	//
	cmp	w0, 0	// D.4150,
	bne	.L49	//,
	mov	w0, 65	// tmp89,
	strb	w0, [x29, 43]	// tmp89, CharLoc
	ldr	w0, [x29, 44]	// tmp91, IntLoc
	add	w0, w0, 1	// tmp90, tmp91,
	str	w0, [x29, 44]	// tmp90, IntLoc
.L49:
	ldr	w0, [x29, 44]	// tmp92, IntLoc
	cmp	w0, 1	// tmp92,
	ble	.L50	//,
	ldrb	w0, [x29, 43]	// tmp93, CharLoc
	cmp	w0, 86	// tmp93,
	bls	.L51	//,
	ldrb	w0, [x29, 43]	// tmp94, CharLoc
	cmp	w0, 90	// tmp94,
	bhi	.L51	//,
	mov	w0, 7	// tmp95,
	str	w0, [x29, 44]	// tmp95, IntLoc
.L51:
	ldrb	w0, [x29, 43]	// tmp96, CharLoc
	cmp	w0, 88	// tmp96,
	bne	.L52	//,
	mov	w0, 1	// D.4145,
	b	.L53	//
.L52:
	ldr	x1, [x29, 16]	//, StrParI2
	ldr	x0, [x29, 24]	//, StrParI1
	bl	strcmp	//
	cmp	w0, 0	// D.4149,
	ble	.L54	//,
	ldr	w0, [x29, 44]	// tmp98, IntLoc
	add	w0, w0, 7	// tmp97, tmp98,
	str	w0, [x29, 44]	// tmp97, IntLoc
	mov	w0, 1	// D.4145,
	b	.L53	//
.L54:
	mov	w0, 0	// D.4145,
.L53:
	ldp	x29, x30, [sp], 48	//,,,
	ret
	.size	Func2, .-Func2
	.align	2
	.global	Func3
	.type	Func3, %function
Func3:
	sub	sp, sp, #32	//,,
	str	w0, [sp, 12]	// EnumParIn, EnumParIn
	ldr	w0, [sp, 12]	// tmp75, EnumParIn
	str	w0, [sp, 28]	// tmp75, EnumLoc
	ldr	w0, [sp, 28]	// tmp76, EnumLoc
	cmp	w0, 2	// tmp76,
	bne	.L56	//,
	mov	w0, 1	// D.4151,
	b	.L57	//
.L56:
	mov	w0, 0	// D.4151,
.L57:
	add	sp, sp, 32	//,,
	ret
	.size	Func3, .-Func3
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
