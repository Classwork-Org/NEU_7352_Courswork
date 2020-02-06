	.arch armv8-a
	.file	"drystone.c"
// GNU C11 (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.11) version 5.4.0 20160609 (aarch64-linux-gnu)
//	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -imultiarch aarch64-linux-gnu ../source/drystone.c
// -mlittle-endian -mabi=lp64
// -auxbase-strip ../asm/drystone.arm_gcc.opt3.asm -O3 -fverbose-asm
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
// -fgcse-after-reload -fgcse-lm -fgnu-runtime -fgnu-unique
// -fguess-branch-probability -fhoist-adjacent-loads -fident
// -fif-conversion -fif-conversion2 -findirect-inlining -finline
// -finline-atomics -finline-functions -finline-functions-called-once
// -finline-small-functions -fipa-cp -fipa-cp-alignment -fipa-cp-clone
// -fipa-icf -fipa-icf-functions -fipa-icf-variables -fipa-profile
// -fipa-pure-const -fipa-ra -fipa-reference -fipa-sra -fira-hoist-pressure
// -fira-share-save-slots -fira-share-spill-slots
// -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
// -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
// -fmath-errno -fmerge-constants -fmerge-debug-strings
// -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
// -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2 -fplt
// -fpredictive-commoning -fprefetch-loop-arrays -free -freg-struct-return
// -freorder-blocks -freorder-functions -frerun-cse-after-loop
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
// -ftree-loop-distribute-patterns -ftree-loop-if-convert -ftree-loop-im
// -ftree-loop-ivcanon -ftree-loop-optimize -ftree-loop-vectorize
// -ftree-parallelize-loops= -ftree-partial-pre -ftree-phiprop -ftree-pre
// -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
// -ftree-slp-vectorize -ftree-slsr -ftree-sra -ftree-switch-conversion
// -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time
// -funswitch-loops -fverbose-asm -fzero-initialized-in-bss
// -mfix-cortex-a53-835769 -mfix-cortex-a53-843419 -mglibc -mlittle-endian
// -momit-leaf-frame-pointer -mpc-relative-literal-loads

	.text
	.align	2
	.p2align 3,,7
	.global	Proc0
	.type	Proc0, %function
Proc0:
	stp	x29, x30, [sp, -288]!	//,,,
	adrp	x1, __stack_chk_guard	// tmp262,
	add	x1, x1, :lo12:__stack_chk_guard	// tmp108, tmp262,
	add	x29, sp, 0	//,,
	add	x0, x29, 184	// tmp261,,
	ldr	x2, [x1]	// tmp259, __stack_chk_guard
	str	x2, [x29, 280]	// tmp259, D.4516
	mov	x2,0	// tmp259
	stp	x19, x20, [sp, 16]	//,,
	adrp	x20, PtrGlb	// tmp226,
	stp	x21, x22, [sp, 32]	//,,
	mov	w21, 2	// tmp119,
	stp	x23, x24, [sp, 48]	//,,
	adrp	x23, Char1Glob	// tmp227,
	stp	x25, x26, [sp, 64]	//,,
	mov	w19, 25856	// D.4515,
	stp	x27, x28, [sp, 80]	//,,
	bl	times	//
	add	x0, x29, 184	// tmp263,,
	ldr	x22, [x29, 184]	// starttime, tms.tms_utime
	add	x24, x29, 248	// tmp232,,
	movk	w19, 0x1dcd, lsl 16	// D.4515,,
	bl	times	//
	ldr	x1, [x29, 184]	// tms.tms_utime, tms.tms_utime
	mov	x0, 56	//,
	sub	x1, x1, x22	// nulltime, tms.tms_utime, starttime
	str	x1, [x29, 104]	// nulltime, %sfp
	bl	malloc	//
	mov	x22, x0	// tmp113,
	adrp	x1, PtrGlbNext	// tmp115,
	mov	x0, 56	//,
	str	x22, [x1, #:lo12:PtrGlbNext]	// tmp113, PtrGlbNext
	bl	malloc	//
	adrp	x1, .LC0	// tmp123,
	add	x2, x0, 20	// tmp121, tmp116,
	add	x1, x1, :lo12:.LC0	// tmp122, tmp123,
	mov	w3, 40	// tmp120,
	str	x22, [x0]	// tmp113, MEM[(struct RecordType *)_16].PtrComp
	adrp	x22, Char2Glob	// tmp228,
	stp	wzr, w21, [x0, 8]	//, tmp119, MEM[(struct RecordType *)_16].Discr
	ldr	x4, [x1, 16]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	str	w3, [x0, 16]	// tmp120, MEM[(struct RecordType *)_16].IntComp
	str	x4, [x2, 16]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)_16 + 20B]
	ldr	x3, [x1, 23]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	ldp	x4, x5, [x1]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	str	x0, [x20, #:lo12:PtrGlb]	// tmp116, PtrGlb
	add	x0, x29, 184	// tmp265,,
	stp	x4, x5, [x2]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)_16 + 20B]
	str	x3, [x2, 23]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)_16 + 20B]
	str	w21, [x29, 116]	// tmp119, %sfp
	adrp	x21, IntGlob	// tmp233,
	bl	times	//
	ldrb	w28, [x29, 217]	// MEM[(char *)&String1Loc + 1B], MEM[(char *)&String1Loc + 1B]
	ldr	x1, [x29, 184]	// starttime, tms.tms_utime
	adrp	x0, .LC1	// tmp237,
	add	x0, x0, :lo12:.LC1	// tmp138, tmp237,
	adrp	x2, Array2Glob	// tmp235,
	str	x1, [x29, 96]	// starttime, %sfp
	add	x1, x23, :lo12:Char1Glob	// tmp130, tmp227,
	str	x1, [x29, 168]	// tmp130, %sfp
	add	x1, x22, :lo12:Char2Glob	// tmp135, tmp228,
	str	x1, [x29, 160]	// tmp135, %sfp
	add	x1, x21, :lo12:IntGlob	// tmp245, tmp233,
	str	x1, [x29, 120]	// tmp245, %sfp
	add	x25, x2, :lo12:Array2Glob	// tmp244, tmp235,
	ldr	x1, [x0, 16]	// tmp143,
	adrp	x8, BoolGlob	// tmp231,
	add	x27, x8, :lo12:BoolGlob	// tmp133, tmp231,
	adrp	x4, Array1Glob	// tmp234,
	str	x1, [x29, 136]	// tmp143, %sfp
	add	x26, x4, :lo12:Array1Glob	// tmp241, tmp234,
	ldr	x1, [x0, 23]	// tmp144,
	mov	w23, 7	// tmp242,
	mov	w22, 8	// tmp243,
	mov	w21, 5	// tmp246,
	str	x1, [x29, 128]	// tmp144, %sfp
	ldp	x0, x1, [x0]	// tmp142,
	stp	x0, x1, [x29, 144]	// tmp142, %sfp
	mov	x0, x25	// tmp244, tmp244
	mov	x25, x27	// tmp133, tmp133
	mov	x27, x0	// tmp244, tmp244
	.p2align 2
.L12:
	ldr	x0, [x29, 136]	// tmp143, %sfp
	mov	w1, 65	// tmp275,
	cmp	w28, 82	// MEM[(char *)&String1Loc + 1B],
	str	wzr, [x25]	//, BoolGlob
	str	x0, [x24, 16]	// tmp143, MEM[(char * {ref-all})&String2Loc]
	ldr	x0, [x29, 168]	// tmp130, %sfp
	strb	w1, [x0]	// tmp275, Char1Glob
	mov	w1, 66	// tmp277,
	ldr	x0, [x29, 160]	// tmp135, %sfp
	strb	w1, [x0]	// tmp277, Char2Glob
	ldr	x0, [x29, 128]	// tmp144, %sfp
	str	x0, [x24, 23]	// tmp144, MEM[(char * {ref-all})&String2Loc]
	ldp	x0, x1, [x29, 144]	// tmp142, %sfp
	stp	x0, x1, [x24]	// tmp142, MEM[(char * {ref-all})&String2Loc]
	bne	.L2	//,
.L3:
	b	.L3	//
	.p2align 3
.L2:
	mov	x1, x24	//, tmp232
	add	x0, x29, 216	// tmp287,,
	bl	strcmp	//
	cmp	w0, 0	//,
	ldr	x6, [x20, #:lo12:PtrGlb]	// D.4511, PtrGlb
	cset	w0, le	// D.4513,
	ldr	x1, [x29, 120]	// tmp245, %sfp
	ldr	x7, [x6]	// D.4512, _34->PtrComp
	str	w0, [x25]	// D.4513, BoolGlob
	ldr	w0, [x27, 1660]	//, Array2Glob
	str	w22, [x26, 152]	// tmp243, MEM[(int *)&Array1Glob + 152B]
	add	w0, w0, 1	// D.4510, Array2Glob,
	str	w22, [x27, 1664]	// tmp243, Array2Glob
	str	w0, [x27, 1660]	// D.4510, Array2Glob
	str	w22, [x27, 1668]	// tmp243, Array2Glob
	str	w23, [x27, 5744]	// tmp242, Array2Glob
	stp	w23, w23, [x26, 32]	// tmp242, tmp242, MEM[(int *)&Array1Glob + 32B]
	str	w21, [x1]	// tmp246, IntGlob
	ldp	x0, x1, [x6]	// *_34, *_34
	stp	x0, x1, [x7]	// *_34, *_71
	ldp	x0, x1, [x6, 16]	// *_34, *_34
	ldr	x8, [x6]	// D.4512, _34->PtrComp
	stp	x0, x1, [x7, 16]	// *_34, *_71
	ldp	x0, x1, [x6, 32]	// *_34, *_34
	stp	x0, x1, [x7, 32]	// *_34, *_71
	ldr	x0, [x6, 48]	// *_34, *_34
	str	x0, [x7, 48]	// *_34, *_71
	str	w21, [x6, 16]	// tmp246, _34->IntComp
	str	x8, [x8]	// D.4512, _73->PtrComp
	str	w21, [x8, 16]	// tmp246, _73->IntComp
	ldr	x0, [x6]	// D.4512, _34->PtrComp
	ldr	x1, [x0]	// D.4512, _74->PtrComp
	str	x0, [x1]	// D.4512, MEM[(struct RecordType * *)_75]
	mov	w1, 17	// tmp289,
	ldr	x0, [x20, #:lo12:PtrGlb]	// D.4511, PtrGlb
	ldr	x7, [x6]	// D.4512, _34->PtrComp
	str	w1, [x0, 16]	// tmp289, MEM[(OneToFifty *)_78 + 16B]
	ldr	w1, [x7, 8]	//, _80->Discr
	cbz	w1, .L26	// _80->Discr,
	ldp	x0, x1, [x7]	// *_80, *_80
	stp	x0, x1, [x6]	// *_80, *_34
	ldp	x0, x1, [x7, 16]	// *_80, *_80
	stp	x0, x1, [x6, 16]	// *_80, *_34
	ldp	x0, x1, [x7, 32]	// *_80, *_80
	stp	x0, x1, [x6, 32]	// *_80, *_34
	ldr	x0, [x7, 48]	// *_80, *_80
	str	x0, [x6, 48]	// *_80, *_34
.L9:
	subs	w19, w19, #1	// D.4515, D.4515,
	bne	.L12	//,
	add	x0, x29, 184	// tmp283,,
	bl	times	//
	ldr	x19, [x29, 184]	// tms.tms_utime, tms.tms_utime
	ldr	x0, [x29, 96]	// starttime, %sfp
	mov	x3, -8608480567731124088	// tmp162,
	movk	x3, 0x8889, lsl 0	// tmp162,,
	adrp	x1, .LC2	// tmp168,
	sub	x19, x19, x0	// D.4506, tms.tms_utime, starttime
	ldr	x0, [x29, 104]	// nulltime, %sfp
	add	x1, x1, :lo12:.LC2	//, tmp168,
	mov	x2, 25856	//,
	sub	x19, x19, x0	// benchtime, D.4506, nulltime
	movk	x2, 0x1dcd, lsl 16	//,,
	mov	w0, 1	//,
	smulh	x3, x19, x3	// tmp161, benchtime, tmp162
	add	x3, x3, x19	// tmp163, tmp161, benchtime
	asr	x3, x3, 5	// tmp164, tmp163,
	sub	x3, x3, x19, asr 63	//, tmp164, benchtime,
	bl	__printf_chk	//
	mov	x2, 44032	// tmp171,
	adrp	x1, .LC3	// tmp173,
	movk	x2, 0xfc23, lsl 16	// tmp171,,
	add	x1, x1, :lo12:.LC3	//, tmp173,
	movk	x2, 0x6, lsl 32	// tmp171,,
	mov	w0, 1	//,
	sdiv	x2, x2, x19	//, tmp171, benchtime
	bl	__printf_chk	//
	adrp	x0, __stack_chk_guard	// tmp286,
	add	x0, x0, :lo12:__stack_chk_guard	// tmp223, tmp286,
	ldr	x2, [x29, 280]	// tmp260, D.4516
	ldr	x1, [x0]	// tmp225, __stack_chk_guard
	eor	x1, x2, x1	// tmp225, tmp260
	cbnz	x1, .L27	// tmp225,
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x23, x24, [sp, 48]	//,,
	ldp	x25, x26, [sp, 64]	//,,
	ldp	x27, x28, [sp, 80]	//,,
	ldp	x29, x30, [sp], 288	//,,,
	ret
	.p2align 3
.L26:
	mov	w1, 6	// tmp280,
	str	w1, [x7, 16]	// tmp280, _80->IntComp
	ldr	w1, [x6, 12]	//, _34->EnumComp
	cmp	w1, 2	// D.4514,
	beq	.L28	//,
	mov	w2, 3	// tmp290,
	str	w2, [x7, 12]	// tmp290, MEM[(Enumeration *)_80 + 12B]
	cbz	w1, .L6	// D.4514,
	cmp	w1, 4	// D.4514,
	bne	.L7	//,
	ldr	w1, [x29, 116]	//, %sfp
	str	w1, [x7, 12]	// tmp250, MEM[(Enumeration *)_80 + 12B]
.L7:
	ldr	x0, [x0]	// D.4512, _78->PtrComp
	str	x0, [x7]	// D.4512, _80->PtrComp
	ldr	x1, [x6]	// D.4512, _34->PtrComp
	ldr	w0, [x1, 16]	//, _87->IntComp
	add	w0, w0, 12	// D.4510, _87->IntComp,
	str	w0, [x1, 16]	// D.4510, MEM[(OneToFifty *)_87 + 16B]
	b	.L9	//
	.p2align 3
.L28:
	mov	w1, 1	// tmp281,
	str	w1, [x7, 12]	// tmp281, MEM[(Enumeration *)_80 + 12B]
	b	.L7	//
	.p2align 3
.L6:
	str	wzr, [x7, 12]	//, MEM[(Enumeration *)_80 + 12B]
	b	.L7	//
.L27:
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
	.global	Proc1
	.type	Proc1, %function
Proc1:
	adrp	x4, PtrGlb	// tmp92,
	ldr	x2, [x0]	// D.4549, PtrParIn_3(D)->PtrComp
	adrp	x3, IntGlob	// tmp103,
	mov	w5, 5	// tmp99,
	ldr	x1, [x4, #:lo12:PtrGlb]	// D.4550, PtrGlb
	ldr	w8, [x3, #:lo12:IntGlob]	//, IntGlob
	add	w9, w8, 12	// D.4552, D.4552,
	ldp	x6, x7, [x1]	// *_5, *_5
	stp	x6, x7, [x2]	// *_5, *_4
	ldp	x6, x7, [x1, 16]	// *_5, *_5
	ldr	x3, [x0]	// D.4549, PtrParIn_3(D)->PtrComp
	stp	x6, x7, [x2, 16]	// *_5, *_4
	ldp	x6, x7, [x1, 32]	// *_5, *_5
	stp	x6, x7, [x2, 32]	// *_5, *_4
	ldr	x6, [x1, 48]	// *_5, *_5
	str	x6, [x2, 48]	// *_5, *_4
	str	w5, [x0, 16]	// tmp99, PtrParIn_3(D)->IntComp
	str	x3, [x3]	// D.4549, _8->PtrComp
	str	w5, [x3, 16]	// tmp99, _8->IntComp
	ldr	x3, [x0]	// PtrParIn_3(D)->PtrComp, PtrParIn_3(D)->PtrComp
	ldr	x2, [x1]	// D.4549, _5->PtrComp
	ldr	x1, [x3]	// D.4549, _11->PtrComp
	str	x2, [x1]	// D.4549, MEM[(struct RecordType * *)_12]
	ldr	x1, [x0]	// D.4549, PtrParIn_3(D)->PtrComp
	ldr	x2, [x4, #:lo12:PtrGlb]	// D.4550, PtrGlb
	ldr	w3, [x1, 8]	//, _13->Discr
	str	w9, [x2, 16]	// D.4552, MEM[(OneToFifty *)_29 + 16B]
	cbz	w3, .L40	// _13->Discr,
	ldp	x2, x3, [x1]	// *_13, *_13
	stp	x2, x3, [x0]	// *_13, *PtrParIn_3(D)
	ldp	x2, x3, [x1, 16]	// *_13, *_13
	stp	x2, x3, [x0, 16]	// *_13, *PtrParIn_3(D)
	ldp	x2, x3, [x1, 32]	// *_13, *_13
	stp	x2, x3, [x0, 32]	// *_13, *PtrParIn_3(D)
	ldr	x1, [x1, 48]	// *_13, *_13
	str	x1, [x0, 48]	// *_13, *PtrParIn_3(D)
	ret
	.p2align 3
.L40:
	ldr	w3, [x0, 12]	//, PtrParIn_3(D)->EnumComp
	mov	w4, 6	// tmp108,
	cmp	w3, 2	// D.4551,
	str	w4, [x1, 16]	// tmp108, _13->IntComp
	beq	.L33	//,
	mov	w4, 3	// tmp109,
	cmp	w3, 1	// D.4551,
	str	w4, [x1, 12]	// tmp109, MEM[(Enumeration *)_13 + 12B]
	beq	.L35	//,
	cbz	w3, .L39	// D.4551,
	cmp	w3, 4	// D.4551,
	bne	.L34	//,
	mov	w3, 2	// tmp111,
	str	w3, [x1, 12]	// tmp111, MEM[(Enumeration *)_13 + 12B]
	b	.L34	//
	.p2align 3
.L33:
	mov	w3, 1	// tmp110,
	str	w3, [x1, 12]	// tmp110, MEM[(Enumeration *)_13 + 12B]
.L34:
	ldr	x2, [x2]	// D.4549, _29->PtrComp
	str	x2, [x1]	// D.4549, _13->PtrComp
	ldr	x1, [x0]	// D.4549, PtrParIn_3(D)->PtrComp
	ldr	w0, [x1, 16]	//, _23->IntComp
	add	w0, w0, 12	// D.4552, _23->IntComp,
	str	w0, [x1, 16]	// D.4552, MEM[(OneToFifty *)_23 + 16B]
	ret
	.p2align 3
.L35:
	cmp	w8, 100	// D.4552,
	ble	.L34	//,
.L39:
	str	wzr, [x1, 12]	//, MEM[(Enumeration *)_13 + 12B]
	b	.L34	//
	.size	Proc1, .-Proc1
	.align	2
	.p2align 3,,7
	.global	Proc2
	.type	Proc2, %function
Proc2:
	adrp	x1, Char1Glob	// tmp81,
	ldrb	w1, [x1, #:lo12:Char1Glob]	// Char1Glob, Char1Glob
	cmp	w1, 65	// Char1Glob,
	beq	.L43	//,
	ret
	.p2align 3
.L43:
	adrp	x2, IntGlob	// tmp86,
	ldr	w1, [x0]	//, *IntParIO_3(D)
	add	w1, w1, 9	// IntLoc, *IntParIO_3(D),
	ldr	w2, [x2, #:lo12:IntGlob]	//, IntGlob
	sub	w1, w1, w2	// D.4555, IntLoc, IntGlob
	str	w1, [x0]	// D.4555, *IntParIO_3(D)
	ret
	.size	Proc2, .-Proc2
	.align	2
	.p2align 3,,7
	.global	Proc3
	.type	Proc3, %function
Proc3:
	adrp	x3, PtrGlb	// tmp80,
	ldr	x1, [x3, #:lo12:PtrGlb]	// D.4561, PtrGlb
	cbz	x1, .L45	// D.4561,
	adrp	x2, IntGlob	// tmp84,
	ldr	x1, [x1]	// D.4559, _3->PtrComp
	ldr	w2, [x2, #:lo12:IntGlob]	//, IntGlob
	str	x1, [x0]	// D.4559, *PtrParOut_5(D)
	add	w2, w2, 12	// D.4560, IntGlob,
	ldr	x1, [x3, #:lo12:PtrGlb]	// D.4561, PtrGlb
	str	w2, [x1, 16]	// D.4560, MEM[(OneToFifty *)_16 + 16B]
	ret
	.p2align 3
.L45:
	adrp	x0, IntGlob	// tmp87,
	mov	w3, 100	// tmp88,
	mov	w2, 112	// D.4560,
	str	w3, [x0, #:lo12:IntGlob]	// tmp88, IntGlob
	str	w2, [x1, 16]	// D.4560, MEM[(OneToFifty *)_16 + 16B]
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
	beq	.L50	//,
	mov	w2, 3	// tmp77,
	cmp	w0, 1	// EnumParIn,
	str	w2, [x1]	// tmp77, *EnumParOut_3(D)
	beq	.L52	//,
	cbz	w0, .L55	// EnumParIn,
	cmp	w0, 4	// EnumParIn,
	bne	.L56	//,
	mov	w0, 2	// tmp82,
	str	w0, [x1]	// tmp82, *EnumParOut_3(D)
.L51:
	ret
	.p2align 3
.L52:
	adrp	x0, IntGlob	// tmp79,
	ldr	w0, [x0, #:lo12:IntGlob]	//, IntGlob
	cmp	w0, 100	// IntGlob,
	ble	.L51	//,
.L55:
	str	wzr, [x1]	//, *EnumParOut_3(D)
	ret
	.p2align 3
.L50:
	mov	w0, 1	// tmp81,
	str	w0, [x1]	// tmp81, *EnumParOut_3(D)
	ret
	.p2align 3
.L56:
	ret
	.size	Proc6, .-Proc6
	.align	2
	.p2align 3,,7
	.global	Proc7
	.type	Proc7, %function
Proc7:
	add	w3, w0, 2	// IntLoc, IntParI1,
	mov	w0, w4	//, <retval>
	add	w1, w3, w1	// D.4583, IntLoc, IntParI2
	str	w1, [x2]	// D.4583, *IntParOut_6(D)
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
	sbfiz	x2, x2, 2, 32	// D.4589, IntParI1,,
	sxtw	x7, w5	// IntIndex, IntIndex
	smull	x4, w5, w4	// D.4587, IntIndex, tmp102
	add	x8, x6, x7, lsl 2	// D.4588, Array1Par, IntIndex,
	str	w3, [x6, x7, lsl 2]	// IntParI2, *_8
	str	w3, [x8, 4]	// IntParI2, *_14
	add	x3, x4, x2	// D.4587, D.4587, D.4589
	add	x3, x1, x3	// D.4586, Array2Par, D.4587
	str	w5, [x8, 120]	// IntIndex, *_18
	add	x4, x4, 4080	// D.4589, D.4587,
	adrp	x8, IntGlob	// tmp110,
	add	x1, x1, x4	// tmp107, Array2Par, D.4589
	ldr	w4, [x3, 16]	//, MEM[(int[51] *)_40 + 16B]
	add	x1, x1, x2	// tmp108, tmp107, D.4589
	str	w5, [x3, 24]	// IntIndex, MEM[(int[51] *)_40 + 24B]
	add	w2, w4, 1	// D.4590, MEM[(int[51] *)_40 + 16B],
	mov	w4, 5	// tmp111,
	stp	w2, w5, [x3, 16]	// D.4590, IntIndex, MEM[(int[51] *)_40 + 16B]
	ldr	w2, [x6, x7, lsl 2]	//, *_8
	str	w4, [x8, #:lo12:IntGlob]	// tmp111, IntGlob
	str	w2, [x1, 20]	// D.4590, MEM[(int[51] *)_50 + 20B]
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
	ldrb	w3, [x1, 2]	// MEM[(char *)StrParI2_11(D) + 2B], MEM[(char *)StrParI2_11(D) + 2B]
	ldrb	w2, [x0, 1]	// MEM[(char *)StrParI1_6(D) + 1B], MEM[(char *)StrParI1_6(D) + 1B]
	cmp	w3, w2	// MEM[(char *)StrParI2_11(D) + 2B], MEM[(char *)StrParI1_6(D) + 1B]
	bne	.L61	//,
.L63:
	b	.L63	//
	.p2align 3
.L61:
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
