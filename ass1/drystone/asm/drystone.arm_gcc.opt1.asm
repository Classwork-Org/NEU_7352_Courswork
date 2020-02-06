	.arch armv8-a
	.file	"drystone.c"
// GNU C11 (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.11) version 5.4.0 20160609 (aarch64-linux-gnu)
//	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -imultiarch aarch64-linux-gnu ../source/drystone.c
// -mlittle-endian -mabi=lp64
// -auxbase-strip ../asm/drystone.arm_gcc.opt1.asm -O1 -fverbose-asm
// -fstack-protector-strong -Wformat -Wformat-security
// options enabled:  -faggressive-loop-optimizations -fauto-inc-dec
// -fbranch-count-reg -fchkp-check-incomplete-type -fchkp-check-read
// -fchkp-check-write -fchkp-instrument-calls -fchkp-narrow-bounds
// -fchkp-optimize -fchkp-store-bounds -fchkp-use-static-bounds
// -fchkp-use-static-const-bounds -fchkp-use-wrappers
// -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
// -fdefer-pop -fdelete-null-pointer-checks -fdwarf2-cfi-asm
// -fearly-inlining -feliminate-unused-debug-types -fforward-propagate
// -ffunction-cse -fgcse-lm -fgnu-runtime -fgnu-unique
// -fguess-branch-probability -fident -fif-conversion -fif-conversion2
// -finline -finline-atomics -finline-functions-called-once -fipa-profile
// -fipa-pure-const -fipa-reference -fira-hoist-pressure
// -fira-share-save-slots -fira-share-spill-slots -fivopts
// -fkeep-static-consts -fleading-underscore -flifetime-dse
// -flto-odr-type-merging -fmath-errno -fmerge-constants
// -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
// -fpeephole -fplt -fprefetch-loop-arrays -freg-struct-return
// -fsched-critical-path-heuristic -fsched-dep-count-heuristic
// -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
// -fsched-pressure -fsched-rank-heuristic -fsched-spec
// -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
// -fsection-anchors -fsemantic-interposition -fshow-column -fshrink-wrap
// -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types -fssa-phiopt
// -fstack-protector-strong -fstdarg-opt -fstrict-volatile-bitfields
// -fsync-libcalls -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
// -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
// -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
// -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
// -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
// -ftree-parallelize-loops= -ftree-phiprop -ftree-pta -ftree-reassoc
// -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra -ftree-ter
// -funit-at-a-time -fverbose-asm -fzero-initialized-in-bss
// -mfix-cortex-a53-835769 -mfix-cortex-a53-843419 -mglibc -mlittle-endian
// -momit-leaf-frame-pointer -mpc-relative-literal-loads

	.text
	.align	2
	.global	Proc2
	.type	Proc2, %function
Proc2:
	adrp	x1, Char1Glob	// tmp81,
	ldrb	w1, [x1, #:lo12:Char1Glob]	// Char1Glob, Char1Glob
	cmp	w1, 65	// Char1Glob,
	bne	.L2	//,
	ldr	w1, [x0]	//, *IntParIO_3(D)
	add	w1, w1, 9	// IntLoc, *IntParIO_3(D),
	adrp	x2, IntGlob	// tmp86,
	ldr	w2, [x2, #:lo12:IntGlob]	//, IntGlob
	sub	w1, w1, w2	// D.4406, IntLoc, IntGlob
	str	w1, [x0]	// D.4406, *IntParIO_3(D)
.L2:
	ret
	.size	Proc2, .-Proc2
	.align	2
	.global	Proc3
	.type	Proc3, %function
Proc3:
	adrp	x1, PtrGlb	// tmp81,
	ldr	x1, [x1, #:lo12:PtrGlb]	// D.4414, PtrGlb
	cbz	x1, .L4	// D.4414,
	ldr	x1, [x1]	// D.4415, _3->PtrComp
	str	x1, [x0]	// D.4415, *PtrParOut_5(D)
	b	.L5	//
.L4:
	mov	w1, 100	// tmp84,
	adrp	x0, IntGlob	// tmp83,
	str	w1, [x0, #:lo12:IntGlob]	// tmp84, IntGlob
.L5:
	adrp	x0, PtrGlb	// tmp87,
	ldr	x1, [x0, #:lo12:PtrGlb]	// PtrGlb, PtrGlb
	adrp	x0, IntGlob	// tmp89,
	ldr	w0, [x0, #:lo12:IntGlob]	//, IntGlob
	add	w0, w0, 12	// D.4416, IntGlob,
	str	w0, [x1, 16]	// D.4416, MEM[(OneToFifty *)_9 + 16B]
	ret
	.size	Proc3, .-Proc3
	.align	2
	.global	Proc4
	.type	Proc4, %function
Proc4:
	mov	w1, 66	// tmp76,
	adrp	x0, Char2Glob	// tmp75,
	strb	w1, [x0, #:lo12:Char2Glob]	// tmp76, Char2Glob
	ret
	.size	Proc4, .-Proc4
	.align	2
	.global	Proc5
	.type	Proc5, %function
Proc5:
	mov	w1, 65	// tmp76,
	adrp	x0, Char1Glob	// tmp75,
	strb	w1, [x0, #:lo12:Char1Glob]	// tmp76, Char1Glob
	adrp	x0, BoolGlob	// tmp78,
	str	wzr, [x0, #:lo12:BoolGlob]	//, BoolGlob
	ret
	.size	Proc5, .-Proc5
	.align	2
	.global	Proc6
	.type	Proc6, %function
Proc6:
	cmp	w0, 2	// EnumParIn,
	beq	.L9	//,
	mov	w2, 3	// tmp77,
	str	w2, [x1]	// tmp77, *EnumParOut_4(D)
	cmp	w0, 4	// EnumParIn,
	bhi	.L10	//,
	adrp	x2, .L12	// tmp79,
	add	x2, x2, :lo12:.L12	// tmp78, tmp79,
	ldrb	w0, [x2,w0,uxtw]	// tmp86, tmp78, EnumParIn
	adr	x2, .Lrtx12	// tmp87
	add	x0, x2, w0, sxtb #2	// tmp86, tmp87
	br	x0	// tmp86
.Lrtx12:
	.section	.rodata
	.align	0
	.align	2
.L12:
	.byte	(.L11 - .Lrtx12) / 4
	.byte	(.L13 - .Lrtx12) / 4
	.byte	(.L9 - .Lrtx12) / 4
	.byte	(.L10 - .Lrtx12) / 4
	.byte	(.L14 - .Lrtx12) / 4
	.text
.L11:
	str	wzr, [x1]	//, *EnumParOut_4(D)
	ret
.L13:
	adrp	x0, IntGlob	// tmp81,
	ldr	w0, [x0, #:lo12:IntGlob]	//, IntGlob
	cmp	w0, 100	// IntGlob,
	ble	.L15	//,
	str	wzr, [x1]	//, *EnumParOut_4(D)
	ret
.L15:
	mov	w0, 3	// tmp83,
	str	w0, [x1]	// tmp83, *EnumParOut_4(D)
	ret
.L9:
	mov	w0, 1	// tmp84,
	str	w0, [x1]	// tmp84, *EnumParOut_4(D)
	ret
.L14:
	mov	w0, 2	// tmp85,
	str	w0, [x1]	// tmp85, *EnumParOut_4(D)
.L10:
	ret
	.size	Proc6, .-Proc6
	.align	2
	.global	Proc1
	.type	Proc1, %function
Proc1:
	stp	x29, x30, [sp, -32]!	//,,,
	add	x29, sp, 0	//,,
	str	x19, [sp, 16]	//,
	mov	x19, x0	// PtrParIn, PtrParIn
	ldr	x0, [x0]	// D.4435, PtrParIn_3(D)->PtrComp
	adrp	x1, PtrGlb	// tmp93,
	ldr	x1, [x1, #:lo12:PtrGlb]	// D.4436, PtrGlb
	ldp	x2, x3, [x1]	// *_5, *_5
	stp	x2, x3, [x0]	// *_5, *_4
	ldp	x2, x3, [x1, 16]	// *_5, *_5
	stp	x2, x3, [x0, 16]	// *_5, *_4
	ldp	x2, x3, [x1, 32]	// *_5, *_5
	stp	x2, x3, [x0, 32]	// *_5, *_4
	ldr	x1, [x1, 48]	// *_5, *_5
	str	x1, [x0, 48]	// *_5, *_4
	mov	w0, 5	// tmp100,
	str	w0, [x19, 16]	// tmp100, PtrParIn_3(D)->IntComp
	ldr	x1, [x19]	// D.4435, PtrParIn_3(D)->PtrComp
	str	w0, [x1, 16]	// tmp100, _8->IntComp
	ldr	x0, [x19]	// D.4435, PtrParIn_3(D)->PtrComp
	str	x0, [x0]	// D.4435, _10->PtrComp
	ldr	x0, [x19]	// PtrParIn_3(D)->PtrComp, PtrParIn_3(D)->PtrComp
	ldr	x0, [x0]	//, _12->PtrComp
	bl	Proc3	//
	ldr	x0, [x19]	// D.4435, PtrParIn_3(D)->PtrComp
	ldr	w1, [x0, 8]	//, _15->Discr
	cbnz	w1, .L17	// _15->Discr,
	mov	w1, 6	// tmp105,
	str	w1, [x0, 16]	// tmp105, _15->IntComp
	ldr	x1, [x19]	// PtrParIn_3(D)->PtrComp, PtrParIn_3(D)->PtrComp
	add	x1, x1, 12	//, PtrParIn_3(D)->PtrComp,
	ldr	w0, [x19, 12]	//, PtrParIn_3(D)->EnumComp
	bl	Proc6	//
	ldr	x0, [x19]	// D.4435, PtrParIn_3(D)->PtrComp
	adrp	x1, PtrGlb	// tmp111,
	ldr	x1, [x1, #:lo12:PtrGlb]	// PtrGlb, PtrGlb
	ldr	x1, [x1]	// D.4435, _23->PtrComp
	str	x1, [x0]	// D.4435, _22->PtrComp
	ldr	x1, [x19]	// D.4435, PtrParIn_3(D)->PtrComp
	ldr	w0, [x1, 16]	//, _26->IntComp
	add	w0, w0, 12	// D.4439, _26->IntComp,
	str	w0, [x1, 16]	// D.4439, MEM[(OneToFifty *)_26 + 16B]
	b	.L18	//
.L17:
	ldp	x2, x3, [x0]	// *_15, *_15
	stp	x2, x3, [x19]	// *_15, *PtrParIn_3(D)
	ldp	x2, x3, [x0, 16]	// *_15, *_15
	stp	x2, x3, [x19, 16]	// *_15, *PtrParIn_3(D)
	ldp	x2, x3, [x0, 32]	// *_15, *_15
	stp	x2, x3, [x19, 32]	// *_15, *PtrParIn_3(D)
	ldr	x0, [x0, 48]	// *_15, *_15
	str	x0, [x19, 48]	// *_15, *PtrParIn_3(D)
.L18:
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 32	//,,,
	ret
	.size	Proc1, .-Proc1
	.align	2
	.global	Proc7
	.type	Proc7, %function
Proc7:
	add	w0, w0, 2	// IntLoc, IntParI1,
	add	w1, w0, w1	// D.4448, IntLoc, IntParI2
	str	w1, [x2]	// D.4448, *IntParOut_6(D)
	ret
	.size	Proc7, .-Proc7
	.align	2
	.global	Proc8
	.type	Proc8, %function
Proc8:
	add	w4, w2, 5	// IntIndex, IntParI1,
	sxtw	x7, w4	// D.4458, IntIndex
	add	x5, x0, x7, lsl 2	// D.4459, Array1Par, D.4458,
	str	w3, [x0, x7, lsl 2]	// IntParI2, *_8
	str	w3, [x5, 4]	// IntParI2, *_14
	str	w4, [x5, 120]	// IntIndex, *_18
	add	w6, w2, 6	// D.4460, IntParI1,
	cmp	w4, w6	// IntIndex, D.4460
	bgt	.L22	//,
	add	x5, x7, x7, lsl 1	// tmp109, D.4458, D.4458,
	add	x5, x5, x5, lsl 4	// D.4458, tmp109, tmp109,
	add	x5, x1, x5, lsl 2	// D.4457, Array2Par, D.4458,
	mov	w3, w4	// IntIndex, IntIndex
.L23:
	str	w4, [x5, w3, sxtw 2]	// IntIndex, *_23
	add	w3, w3, 1	// IntIndex, IntIndex,
	cmp	w3, w6	// IntIndex, D.4460
	ble	.L23	//,
.L22:
	add	x3, x7, x7, lsl 1	// tmp116, D.4458, D.4458,
	add	x3, x3, x3, lsl 4	// tmp118, tmp116, tmp116,
	lsl	x3, x3, 2	// tmp119, tmp118,
	add	x2, x3, x2, sxtw 2	// D.4458, tmp119, IntParI1,
	add	x2, x1, x2	// D.4457, Array2Par, D.4458
	ldr	w5, [x2, 16]	//, MEM[(int[51] *)_2 + 16B]
	add	w5, w5, 1	// D.4460, MEM[(int[51] *)_2 + 16B],
	str	w5, [x2, 16]	// D.4460, MEM[(int[51] *)_2 + 16B]
	ldr	w2, [x0, x7, lsl 2]	//, *_8
	add	x0, x1, x3	// tmp126, Array2Par, tmp119
	add	x0, x0, 4080	// tmp129, tmp126,
	str	w2, [x0, w4, sxtw 2]	// D.4460, *_33
	mov	w1, 5	// tmp133,
	adrp	x0, IntGlob	// tmp132,
	str	w1, [x0, #:lo12:IntGlob]	// tmp133, IntGlob
	ret
	.size	Proc8, .-Proc8
	.align	2
	.global	Func1
	.type	Func1, %function
Func1:
	uxtb	w1, w1	// CharPar2, CharPar2
	cmp	w1, w0, uxtb	// CharPar2, CharPar1
	cset	w0, eq	//,
	ret
	.size	Func1, .-Func1
	.align	2
	.global	Func2
	.type	Func2, %function
Func2:
	ldrb	w3, [x0, 1]	// MEM[(char *)StrParI1_6(D) + 1B], MEM[(char *)StrParI1_6(D) + 1B]
	ldrb	w2, [x1, 2]	// MEM[(char *)StrParI2_12(D) + 2B], MEM[(char *)StrParI2_12(D) + 2B]
	cmp	w3, w2	// MEM[(char *)StrParI1_6(D) + 1B], MEM[(char *)StrParI2_12(D) + 2B]
	bne	.L27	//,
.L29:
	b	.L29	//
.L27:
	stp	x29, x30, [sp, -16]!	//,,,
	add	x29, sp, 0	//,,
	bl	strcmp	//
	cmp	w0, 0	//,
	cset	w0, gt	//,
	ldp	x29, x30, [sp], 16	//,,,
	ret
	.size	Func2, .-Func2
	.align	2
	.global	Proc0
	.type	Proc0, %function
Proc0:
	stp	x29, x30, [sp, -192]!	//,,,
	add	x29, sp, 0	//,,
	stp	x19, x20, [sp, 16]	//,,
	stp	x21, x22, [sp, 32]	//,,
	stp	x23, x24, [sp, 48]	//,,
	str	x25, [sp, 64]	//,
	adrp	x0, __stack_chk_guard	// tmp111,
	ldr	x1, [x0, #:lo12:__stack_chk_guard]	// tmp193, __stack_chk_guard
	str	x1, [x29, 184]	// tmp193, D.4516
	mov	x1,0	// tmp193
	add	x0, x29, 88	//,,
	bl	times	//
	ldr	x25, [x29, 88]	// starttime, tms.tms_utime
	mov	w0, 25856	// D.4514,
	movk	w0, 0x1dcd, lsl 16	// D.4514,,
.L32:
	subs	w0, w0, #1	// D.4514, D.4514,
	bne	.L32	//,
	add	x0, x29, 88	// tmp195,,
	bl	times	//
	ldr	x19, [x29, 88]	// tms.tms_utime, tms.tms_utime
	sub	x25, x19, x25	// nulltime, tms.tms_utime, starttime
	mov	x0, 56	//,
	bl	malloc	//
	mov	x19, x0	// tmp115,
	adrp	x0, PtrGlbNext	// tmp117,
	str	x19, [x0, #:lo12:PtrGlbNext]	// tmp115, PtrGlbNext
	mov	x0, 56	//,
	bl	malloc	//
	adrp	x1, PtrGlb	// tmp120,
	str	x0, [x1, #:lo12:PtrGlb]	// tmp118, PtrGlb
	str	x19, [x0]	// tmp115, MEM[(struct RecordType *)_19].PtrComp
	str	wzr, [x0, 8]	//, MEM[(struct RecordType *)_19].Discr
	mov	w1, 2	// tmp121,
	str	w1, [x0, 12]	// tmp121, MEM[(struct RecordType *)_19].EnumComp
	mov	w1, 40	// tmp122,
	str	w1, [x0, 16]	// tmp122, MEM[(struct RecordType *)_19].IntComp
	add	x0, x0, 20	// tmp123, tmp118,
	adrp	x1, .LC0	// tmp125,
	add	x1, x1, :lo12:.LC0	// tmp124, tmp125,
	ldp	x2, x3, [x1]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	stp	x2, x3, [x0]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)_19 + 20B]
	ldr	x2, [x1, 16]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	str	x2, [x0, 16]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)_19 + 20B]
	ldr	x1, [x1, 23]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	str	x1, [x0, 23]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)_19 + 20B]
	add	x0, x29, 88	// tmp196,,
	bl	times	//
	ldr	x24, [x29, 88]	// starttime, tms.tms_utime
	mov	w23, 25856	// D.4514,
	movk	w23, 0x1dcd, lsl 16	// D.4514,,
	adrp	x20, Char2Glob	// tmp133,
	add	x20, x20, :lo12:Char2Glob	// tmp132, tmp133,
	adrp	x22, .LC1	// tmp137,
	add	x22, x22, :lo12:.LC1	// tmp136, tmp137,
	add	x21, x29, 152	// tmp138,,
.L36:
	bl	Proc5	//
	mov	w0, 66	// tmp134,
	strb	w0, [x20]	// tmp134, Char2Glob
	mov	w0, 2	// tmp135,
	str	w0, [x29, 80]	// tmp135, IntLoc1
	ldp	x0, x1, [x22]	// tmp140,
	stp	x0, x1, [x21]	// tmp140, MEM[(char * {ref-all})&String2Loc]
	ldr	x0, [x22, 16]	// tmp141,
	str	x0, [x21, 16]	// tmp141, MEM[(char * {ref-all})&String2Loc]
	ldr	x0, [x22, 23]	// tmp142,
	str	x0, [x21, 23]	// tmp142, MEM[(char * {ref-all})&String2Loc]
	mov	w0, 1	// tmp143,
	str	w0, [x29, 84]	// tmp143, EnumLoc
	mov	x1, x21	//, tmp138
	add	x0, x29, 120	//,,
	bl	Func2	//
	cmp	w0, 0	//,
	cset	w1, eq	// D.4511,
	adrp	x0, BoolGlob	// tmp147,
	str	w1, [x0, #:lo12:BoolGlob]	// D.4511, BoolGlob
	mov	w2, 3	// tmp150,
	str	w2, [x29, 80]	// tmp150, IntLoc1
	mov	w3, 7	//,
	adrp	x1, Array2Glob	// tmp152,
	add	x1, x1, :lo12:Array2Glob	//, tmp152,
	adrp	x0, Array1Glob	// tmp154,
	add	x0, x0, :lo12:Array1Glob	//, tmp154,
	bl	Proc8	//
	adrp	x0, PtrGlb	// tmp156,
	ldr	x0, [x0, #:lo12:PtrGlb]	//, PtrGlb
	bl	Proc1	//
	ldrb	w0, [x20]	// Char2Glob, Char2Glob
	cmp	w0, 64	// Char2Glob,
	bls	.L33	//,
	mov	w19, 65	// CharIndex,
.L35:
	cmp	w19, 67	// CharIndex,
	cset	w1, eq	// D.4511,
	ldr	w0, [x29, 84]	//, EnumLoc
	cmp	w1, w0	// D.4511, EnumLoc
	bne	.L34	//,
	add	x1, x29, 84	// tmp197,,
	mov	w0, 0	//,
	bl	Proc6	//
.L34:
	add	w19, w19, 1	// tmp165, CharIndex,
	uxtb	w19, w19	// CharIndex, tmp165
	ldrb	w0, [x20]	// Char2Glob, Char2Glob
	cmp	w0, w19	// Char2Glob, CharIndex
	bcs	.L35	//,
.L33:
	add	x0, x29, 80	//,,
	bl	Proc2	//
	subs	w23, w23, #1	// D.4514, D.4514,
	bne	.L36	//,
	add	x0, x29, 88	//,,
	bl	times	//
	ldr	x0, [x29, 88]	// tms.tms_utime, tms.tms_utime
	sub	x0, x0, x24	// D.4507, tms.tms_utime, starttime
	sub	x19, x0, x25	// benchtime, D.4507, nulltime
	mov	x0, -8608480567731124088	// tmp175,
	movk	x0, 0x8889, lsl 0	// tmp175,,
	smulh	x0, x19, x0	// tmp174, benchtime, tmp175
	add	x3, x0, x19	// tmp176, tmp174, benchtime
	asr	x3, x3, 5	// tmp177, tmp176,
	sub	x3, x3, x19, asr 63	//, tmp177, benchtime,
	mov	x2, 25856	//,
	movk	x2, 0x1dcd, lsl 16	//,,
	adrp	x1, .LC2	// tmp181,
	add	x1, x1, :lo12:.LC2	//, tmp181,
	mov	w0, 1	//,
	bl	__printf_chk	//
	mov	x2, 44032	// tmp184,
	movk	x2, 0xfc23, lsl 16	// tmp184,,
	movk	x2, 0x6, lsl 32	// tmp184,,
	sdiv	x2, x2, x19	//, tmp184, benchtime
	adrp	x1, .LC3	// tmp186,
	add	x1, x1, :lo12:.LC3	//, tmp186,
	mov	w0, 1	//,
	bl	__printf_chk	//
	adrp	x1, __stack_chk_guard	// tmp188,
	ldr	x2, [x29, 184]	// tmp194, D.4516
	ldr	x1, [x1, #:lo12:__stack_chk_guard]	// tmp189, __stack_chk_guard
	eor	x1, x2, x1	// tmp189, tmp194
	cbz	x1, .L37	// tmp189,
	bl	__stack_chk_fail	//
.L37:
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x23, x24, [sp, 48]	//,,
	ldr	x25, [sp, 64]	//,
	ldp	x29, x30, [sp], 192	//,,,
	ret
	.size	Proc0, .-Proc0
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -16]!	//,,,
	add	x29, sp, 0	//,,
	bl	Proc0	//
	mov	w0, 0	//,
	ldp	x29, x30, [sp], 16	//,,,
	ret
	.size	main, .-main
	.align	2
	.global	Func3
	.type	Func3, %function
Func3:
	cmp	w0, 2	// EnumParIn,
	cset	w0, eq	//,
	ret
	.size	Func3, .-Func3
	.comm	PtrGlbNext,8,8
	.comm	PtrGlb,8,8
	.comm	Array2Glob,10404,8
	.comm	Array1Glob,204,8
	.comm	Char2Glob,1,1
	.comm	Char1Glob,1,1
	.comm	BoolGlob,4,4
	.comm	IntGlob,4,4
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"DHRYSTONE PROGRAM, SOME STRING"
	.zero	1
.LC2:
	.string	"Dhrystone time for %ld passes = %ld\n"
	.zero	3
.LC3:
	.string	"This machine benchmarks at %ld dhrystones/second\n"
	.zero	6
.LC1:
	.string	"DHRYSTONE PROGRAM, 2'ND STRING"
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
