	.arch armv8-a
	.file	"drystone.c"
// GNU C11 (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.11) version 5.4.0 20160609 (aarch64-linux-gnu)
//	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -imultiarch aarch64-linux-gnu ../source/drystone.c
// -mlittle-endian -mabi=lp64
// -auxbase-strip ../asm/drystone.arm_gcc.opt2.asm -O2 -fverbose-asm
// -fstack-protector-strong -Wformat -Wformat-security
// options enabled:  -faggressive-loop-optimizations -falign-labels
// -fauto-inc-dec -fbranch-count-reg -fcaller-saves
// -fchkp-check-incomplete-type -fchkp-check-read -fchkp-check-write
// -fchkp-instrument-calls -fchkp-narrow-bounds -fchkp-optimize
// -fchkp-store-bounds -fchkp-use-static-bounds
// -fchkp-use-static-const-bounds -fchkp-use-wrappers
// -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
// -fcrossjumping -fcse-follow-jumps -fdefer-pop
// -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
// -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
// -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
// -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability
// -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
// -findirect-inlining -finline -finline-atomics
// -finline-functions-called-once -finline-small-functions -fipa-cp
// -fipa-cp-alignment -fipa-icf -fipa-icf-functions -fipa-icf-variables
// -fipa-profile -fipa-pure-const -fipa-ra -fipa-reference -fipa-sra
// -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
// -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
// -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
// -fmath-errno -fmerge-constants -fmerge-debug-strings
// -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
// -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2 -fplt
// -fprefetch-loop-arrays -free -freg-struct-return -freorder-blocks
// -freorder-functions -frerun-cse-after-loop
// -fsched-critical-path-heuristic -fsched-dep-count-heuristic
// -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
// -fsched-pressure -fsched-rank-heuristic -fsched-spec
// -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
// -fschedule-insns -fschedule-insns2 -fsection-anchors
// -fsemantic-interposition -fshow-column -fshrink-wrap -fsigned-zeros
// -fsplit-ivs-in-unroller -fsplit-wide-types -fssa-phiopt
// -fstack-protector-strong -fstdarg-opt -fstrict-aliasing
// -fstrict-overflow -fstrict-volatile-bitfields -fsync-libcalls
// -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
// -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
// -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
// -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
// -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
// -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
// -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr
// -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
// -ftree-vrp -funit-at-a-time -fverbose-asm -fzero-initialized-in-bss
// -mfix-cortex-a53-835769 -mfix-cortex-a53-843419 -mglibc -mlittle-endian
// -momit-leaf-frame-pointer -mpc-relative-literal-loads

	.text
	.align	2
	.p2align 3,,7
	.global	Proc2
	.type	Proc2, %function
Proc2:
	adrp	x1, Char1Glob	// tmp81,
	ldrb	w1, [x1, #:lo12:Char1Glob]	// Char1Glob, Char1Glob
	cmp	w1, 65	// Char1Glob,
	beq	.L4	//,
	ret
	.p2align 3
.L4:
	adrp	x2, IntGlob	// tmp86,
	ldr	w1, [x0]	//, *IntParIO_3(D)
	add	w1, w1, 9	// IntLoc, *IntParIO_3(D),
	ldr	w2, [x2, #:lo12:IntGlob]	//, IntGlob
	sub	w1, w1, w2	// D.4453, IntLoc, IntGlob
	str	w1, [x0]	// D.4453, *IntParIO_3(D)
	ret
	.size	Proc2, .-Proc2
	.align	2
	.p2align 3,,7
	.global	Proc3
	.type	Proc3, %function
Proc3:
	adrp	x3, PtrGlb	// tmp80,
	ldr	x1, [x3, #:lo12:PtrGlb]	// D.4459, PtrGlb
	cbz	x1, .L6	// D.4459,
	adrp	x2, IntGlob	// tmp84,
	ldr	x1, [x1]	// D.4457, _3->PtrComp
	ldr	w2, [x2, #:lo12:IntGlob]	//, IntGlob
	str	x1, [x0]	// D.4457, *PtrParOut_5(D)
	add	w2, w2, 12	// D.4458, IntGlob,
	ldr	x1, [x3, #:lo12:PtrGlb]	// D.4459, PtrGlb
	str	w2, [x1, 16]	// D.4458, MEM[(OneToFifty *)_16 + 16B]
	ret
	.p2align 3
.L6:
	adrp	x0, IntGlob	// tmp87,
	mov	w3, 100	// tmp88,
	mov	w2, 112	// D.4458,
	str	w3, [x0, #:lo12:IntGlob]	// tmp88, IntGlob
	str	w2, [x1, 16]	// D.4458, MEM[(OneToFifty *)_16 + 16B]
	ret
	.size	Proc3, .-Proc3
	.align	2
	.p2align 3,,7
	.global	Proc4
	.type	Proc4, %function
Proc4:
	adrp	x1, Char2Glob	// tmp75,
	mov	w2, 66	// tmp76,
	strb	w2, [x1, #:lo12:Char2Glob]	// tmp76, Char2Glob
	ret
	.size	Proc4, .-Proc4
	.align	2
	.p2align 3,,7
	.global	Proc5
	.type	Proc5, %function
Proc5:
	adrp	x2, Char1Glob	// tmp75,
	adrp	x1, BoolGlob	// tmp78,
	mov	w3, 65	// tmp76,
	strb	w3, [x2, #:lo12:Char1Glob]	// tmp76, Char1Glob
	str	wzr, [x1, #:lo12:BoolGlob]	//, BoolGlob
	ret
	.size	Proc5, .-Proc5
	.align	2
	.p2align 3,,7
	.global	Proc6
	.type	Proc6, %function
Proc6:
	cmp	w0, 2	// EnumParIn,
	beq	.L11	//,
	mov	w2, 3	// tmp77,
	cmp	w0, 1	// EnumParIn,
	str	w2, [x1]	// tmp77, *EnumParOut_3(D)
	beq	.L13	//,
	cbz	w0, .L16	// EnumParIn,
	cmp	w0, 4	// EnumParIn,
	bne	.L17	//,
	mov	w0, 2	// tmp82,
	str	w0, [x1]	// tmp82, *EnumParOut_3(D)
.L12:
	ret
	.p2align 3
.L13:
	adrp	x0, IntGlob	// tmp79,
	ldr	w0, [x0, #:lo12:IntGlob]	//, IntGlob
	cmp	w0, 100	// IntGlob,
	ble	.L12	//,
.L16:
	str	wzr, [x1]	//, *EnumParOut_3(D)
	ret
	.p2align 3
.L11:
	mov	w0, 1	// tmp81,
	str	w0, [x1]	// tmp81, *EnumParOut_3(D)
	ret
	.p2align 3
.L17:
	ret
	.size	Proc6, .-Proc6
	.align	2
	.p2align 3,,7
	.global	Proc1
	.type	Proc1, %function
Proc1:
	adrp	x5, PtrGlb	// tmp95,
	ldr	x2, [x0]	// D.4481, PtrParIn_3(D)->PtrComp
	adrp	x3, IntGlob	// tmp109,
	mov	w8, 5	// tmp102,
	ldr	x1, [x5, #:lo12:PtrGlb]	// D.4482, PtrGlb
	ldr	w3, [x3, #:lo12:IntGlob]	//, IntGlob
	add	w3, w3, 12	// D.4485, IntGlob,
	ldp	x6, x7, [x1]	// *_5, *_5
	stp	x6, x7, [x2]	// *_5, *_4
	ldp	x6, x7, [x1, 16]	// *_5, *_5
	ldr	x4, [x0]	// D.4481, PtrParIn_3(D)->PtrComp
	stp	x6, x7, [x2, 16]	// *_5, *_4
	ldp	x6, x7, [x1, 32]	// *_5, *_5
	stp	x6, x7, [x2, 32]	// *_5, *_4
	ldr	x6, [x1, 48]	// *_5, *_5
	str	x6, [x2, 48]	// *_5, *_4
	str	w8, [x0, 16]	// tmp102, PtrParIn_3(D)->IntComp
	str	x4, [x4]	// D.4481, _8->PtrComp
	str	w8, [x4, 16]	// tmp102, _8->IntComp
	ldr	x4, [x0]	// PtrParIn_3(D)->PtrComp, PtrParIn_3(D)->PtrComp
	ldr	x2, [x1]	// D.4481, _5->PtrComp
	ldr	x1, [x4]	// D.4481, _11->PtrComp
	str	x2, [x1]	// D.4481, MEM[(struct RecordType * *)_12]
	ldr	x2, [x0]	// D.4481, PtrParIn_3(D)->PtrComp
	ldr	x4, [x5, #:lo12:PtrGlb]	// PtrGlb, PtrGlb
	ldr	w1, [x2, 8]	//, _13->Discr
	str	w3, [x4, 16]	// D.4485, MEM[(OneToFifty *)_29 + 16B]
	cbz	w1, .L23	// _13->Discr,
	ldp	x4, x5, [x2]	// *_13, *_13
	stp	x4, x5, [x0]	// *_13, *PtrParIn_3(D)
	ldp	x4, x5, [x2, 16]	// *_13, *_13
	stp	x4, x5, [x0, 16]	// *_13, *PtrParIn_3(D)
	ldp	x4, x5, [x2, 32]	// *_13, *_13
	stp	x4, x5, [x0, 32]	// *_13, *PtrParIn_3(D)
	ldr	x1, [x2, 48]	// *_13, *_13
	str	x1, [x0, 48]	// *_13, *PtrParIn_3(D)
	ret
	.p2align 3
.L23:
	stp	x29, x30, [sp, -16]!	//,,,
	mov	x3, x0	// PtrParIn, PtrParIn
	mov	w4, 6	// tmp113,
	add	x1, x2, 12	//, D.4481,
	add	x29, sp, 0	//,,
	ldr	w0, [x0, 12]	//, PtrParIn_3(D)->EnumComp
	str	w4, [x2, 16]	// tmp113, _13->IntComp
	bl	Proc6	//
	ldr	x1, [x5, #:lo12:PtrGlb]	// PtrGlb, PtrGlb
	ldr	x0, [x3]	// D.4481, PtrParIn_3(D)->PtrComp
	ldr	x1, [x1]	// D.4481, _20->PtrComp
	str	x1, [x0]	// D.4481, _19->PtrComp
	ldr	x1, [x3]	// D.4481, PtrParIn_3(D)->PtrComp
	ldr	w0, [x1, 16]	//, _23->IntComp
	add	w0, w0, 12	// D.4485, _23->IntComp,
	str	w0, [x1, 16]	// D.4485, MEM[(OneToFifty *)_23 + 16B]
	ldp	x29, x30, [sp], 16	//,,,
	ret
	.size	Proc1, .-Proc1
	.align	2
	.p2align 3,,7
	.global	Proc7
	.type	Proc7, %function
Proc7:
	add	w3, w0, 2	// IntLoc, IntParI1,
	mov	w0, w4	//, <retval>
	add	w1, w3, w1	// D.4488, IntLoc, IntParI2
	str	w1, [x2]	// D.4488, *IntParOut_6(D)
	ret
	.size	Proc7, .-Proc7
	.align	2
	.p2align 3,,7
	.global	Proc8
	.type	Proc8, %function
Proc8:
	add	w5, w2, 5	// IntIndex, IntParI1,
	mov	x6, x0	// Array1Par, Array1Par
	mov	w4, 204	// tmp102,
	sbfiz	x2, x2, 2, 32	// D.4494, IntParI1,,
	sxtw	x7, w5	// IntIndex, IntIndex
	smull	x4, w5, w4	// D.4492, IntIndex, tmp102
	add	x8, x6, x7, lsl 2	// D.4493, Array1Par, IntIndex,
	str	w3, [x6, x7, lsl 2]	// IntParI2, *_8
	str	w3, [x8, 4]	// IntParI2, *_14
	add	x3, x4, x2	// D.4492, D.4492, D.4494
	add	x3, x1, x3	// D.4491, Array2Par, D.4492
	str	w5, [x8, 120]	// IntIndex, *_18
	add	x4, x4, 4080	// D.4494, D.4492,
	adrp	x8, IntGlob	// tmp110,
	add	x1, x1, x4	// tmp107, Array2Par, D.4494
	ldr	w4, [x3, 16]	//, MEM[(int[51] *)_40 + 16B]
	add	x1, x1, x2	// tmp108, tmp107, D.4494
	str	w5, [x3, 24]	// IntIndex, MEM[(int[51] *)_40 + 24B]
	add	w2, w4, 1	// D.4495, MEM[(int[51] *)_40 + 16B],
	mov	w4, 5	// tmp111,
	stp	w2, w5, [x3, 16]	// D.4495, IntIndex, MEM[(int[51] *)_40 + 16B]
	ldr	w2, [x6, x7, lsl 2]	//, *_8
	str	w4, [x8, #:lo12:IntGlob]	// tmp111, IntGlob
	str	w2, [x1, 20]	// D.4495, MEM[(int[51] *)_51 + 20B]
	ret
	.size	Proc8, .-Proc8
	.align	2
	.p2align 3,,7
	.global	Func1
	.type	Func1, %function
Func1:
	uxtb	w1, w1	// CharPar2, CharPar2
	cmp	w1, w0, uxtb	// CharPar2, CharPar1
	cset	w0, eq	//,
	ret
	.size	Func1, .-Func1
	.align	2
	.p2align 3,,7
	.global	Func2
	.type	Func2, %function
Func2:
	ldrb	w3, [x0, 1]	// D.4505, MEM[(char *)StrParI1_6(D) + 1B]
	ldrb	w2, [x1, 2]	// D.4505, MEM[(char *)StrParI2_11(D) + 2B]
.L28:
	cmp	w2, w3	// D.4505, D.4505
	beq	.L28	//,
	stp	x29, x30, [sp, -16]!	//,,,
	add	x29, sp, 0	//,,
	bl	strcmp	//
	cmp	w0, 0	//,
	cset	w0, gt	//,
	ldp	x29, x30, [sp], 16	//,,,
	ret
	.size	Func2, .-Func2
	.align	2
	.p2align 3,,7
	.global	Proc0
	.type	Proc0, %function
Proc0:
	stp	x29, x30, [sp, -240]!	//,,,
	adrp	x1, __stack_chk_guard	// tmp187,
	add	x1, x1, :lo12:__stack_chk_guard	// tmp99, tmp187,
	add	x29, sp, 0	//,,
	add	x0, x29, 136	// tmp186,,
	ldr	x2, [x1]	// tmp184, __stack_chk_guard
	str	x2, [x29, 232]	// tmp184, D.4533
	mov	x2,0	// tmp184
	stp	x19, x20, [sp, 16]	//,,
	mov	w19, 25856	// D.4525,
	stp	x21, x22, [sp, 32]	//,,
	adrp	x22, PtrGlb	// tmp175,
	stp	x23, x24, [sp, 48]	//,,
	adrp	x21, Char1Glob	// tmp177,
	stp	x25, x26, [sp, 64]	//,,
	add	x23, x29, 200	// tmp176,,
	stp	x27, x28, [sp, 80]	//,,
	bl	times	//
	add	x0, x29, 136	// tmp188,,
	ldr	x20, [x29, 136]	// starttime, tms.tms_utime
	movk	w19, 0x1dcd, lsl 16	// D.4525,,
	adrp	x26, Array2Glob	// tmp180,
	bl	times	//
	ldr	x1, [x29, 136]	// tms.tms_utime, tms.tms_utime
	mov	x0, 56	//,
	sub	x1, x1, x20	// nulltime, tms.tms_utime, starttime
	str	x1, [x29, 112]	// nulltime, %sfp
	bl	malloc	//
	mov	x20, x0	// tmp104,
	adrp	x1, PtrGlbNext	// tmp106,
	mov	x0, 56	//,
	str	x20, [x1, #:lo12:PtrGlbNext]	// tmp104, PtrGlbNext
	bl	malloc	//
	adrp	x1, .LC0	// tmp114,
	mov	w5, 40	// tmp111,
	add	x1, x1, :lo12:.LC0	// tmp113, tmp114,
	add	x2, x0, 20	// tmp112, tmp107,
	mov	w3, 2	// tmp110,
	str	w5, [x0, 16]	// tmp111, MEM[(struct RecordType *)_16].IntComp
	str	x20, [x0]	// tmp104, MEM[(struct RecordType *)_16].PtrComp
	adrp	x20, BoolGlob	// tmp173,
	ldr	x5, [x1, 16]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	stp	wzr, w3, [x0, 8]	//, tmp110, MEM[(struct RecordType *)_16].Discr
	ldp	x6, x7, [x1]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	str	x0, [x22, #:lo12:PtrGlb]	// tmp107, PtrGlb
	ldr	x3, [x1, 23]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	add	x0, x29, 136	// tmp190,,
	str	x5, [x2, 16]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)_16 + 20B]
	stp	x6, x7, [x2]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)_16 + 20B]
	str	x3, [x2, 23]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)_16 + 20B]
	bl	times	//
	adrp	x0, .LC1	// tmp179,
	ldr	x1, [x29, 136]	// starttime, tms.tms_utime
	add	x0, x0, :lo12:.LC1	// tmp129, tmp179,
	str	x1, [x29, 104]	// starttime, %sfp
	add	x1, x21, :lo12:Char1Glob	// tmp121, tmp177,
	str	x1, [x29, 120]	// tmp121, %sfp
	adrp	x21, Char2Glob	// tmp178,
	ldp	x24, x25, [x0]	// tmp133,
	ldr	x28, [x0, 16]	// tmp134,
	ldr	x27, [x0, 23]	// tmp135,
	.p2align 2
.L34:
	ldr	x3, [x29, 120]	// tmp121, %sfp
	mov	x1, x23	//, tmp176
	add	x0, x29, 168	// tmp193,,
	mov	w4, 65	// tmp195,
	mov	w2, 66	// tmp128,
	str	x28, [x23, 16]	// tmp134, MEM[(char * {ref-all})&String2Loc]
	str	wzr, [x20, #:lo12:BoolGlob]	//, BoolGlob
	strb	w4, [x3]	// tmp195, Char1Glob
	strb	w2, [x21, #:lo12:Char2Glob]	// tmp128, Char2Glob
	stp	x24, x25, [x23]	// tmp133, MEM[(char * {ref-all})&String2Loc]
	str	x27, [x23, 23]	// tmp135, MEM[(char * {ref-all})&String2Loc]
	bl	Func2	//
	cmp	w0, 0	//,
	adrp	x0, Array1Glob	// tmp196,
	cset	w6, eq	// D.4530,
	add	x1, x26, :lo12:Array2Glob	//, tmp180,
	add	x0, x0, :lo12:Array1Glob	//, tmp196,
	mov	w3, 7	//,
	mov	w2, 3	//,
	str	w6, [x20, #:lo12:BoolGlob]	// D.4530, BoolGlob
	bl	Proc8	//
	ldr	x0, [x22, #:lo12:PtrGlb]	//, PtrGlb
	bl	Proc1	//
	ldrb	w1, [x21, #:lo12:Char2Glob]	// D.4531, Char2Glob
	cmp	w1, 64	// D.4531,
	bls	.L32	//,
	mov	w0, 65	// CharIndex,
	.p2align 2
.L33:
	add	w0, w0, 1	// tmp151, CharIndex,
	uxtb	w0, w0	// CharIndex, tmp151
	cmp	w1, w0	// D.4531, CharIndex
	bcs	.L33	//,
.L32:
	subs	w19, w19, #1	// D.4525, D.4525,
	bne	.L34	//,
	add	x0, x29, 136	// tmp197,,
	bl	times	//
	ldr	x19, [x29, 136]	// tms.tms_utime, tms.tms_utime
	ldr	x0, [x29, 104]	// starttime, %sfp
	mov	x3, -8608480567731124088	// tmp157,
	movk	x3, 0x8889, lsl 0	// tmp157,,
	adrp	x1, .LC2	// tmp163,
	sub	x19, x19, x0	// D.4526, tms.tms_utime, starttime
	ldr	x0, [x29, 112]	// nulltime, %sfp
	add	x1, x1, :lo12:.LC2	//, tmp163,
	mov	x2, 25856	//,
	sub	x19, x19, x0	// benchtime, D.4526, nulltime
	movk	x2, 0x1dcd, lsl 16	//,,
	mov	w0, 1	//,
	smulh	x3, x19, x3	// tmp156, benchtime, tmp157
	add	x3, x3, x19	// tmp158, tmp156, benchtime
	asr	x3, x3, 5	// tmp159, tmp158,
	sub	x3, x3, x19, asr 63	//, tmp159, benchtime,
	bl	__printf_chk	//
	mov	x2, 44032	// tmp166,
	adrp	x1, .LC3	// tmp168,
	movk	x2, 0xfc23, lsl 16	// tmp166,,
	add	x1, x1, :lo12:.LC3	//, tmp168,
	movk	x2, 0x6, lsl 32	// tmp166,,
	mov	w0, 1	//,
	sdiv	x2, x2, x19	//, tmp166, benchtime
	bl	__printf_chk	//
	adrp	x0, __stack_chk_guard	// tmp200,
	add	x0, x0, :lo12:__stack_chk_guard	// tmp169, tmp200,
	ldr	x2, [x29, 232]	// tmp185, D.4533
	ldr	x1, [x0]	// tmp171, __stack_chk_guard
	eor	x1, x2, x1	// tmp171, tmp185
	cbnz	x1, .L39	// tmp171,
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x23, x24, [sp, 48]	//,,
	ldp	x25, x26, [sp, 64]	//,,
	ldp	x27, x28, [sp, 80]	//,,
	ldp	x29, x30, [sp], 240	//,,,
	ret
.L39:
	bl	__stack_chk_fail	//
	.size	Proc0, .-Proc0
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 3,,7
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
	.text
	.align	2
	.p2align 3,,7
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
