	.arch armv8-a
	.file	"linpack.c"
// GNU C11 (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.11) version 5.4.0 20160609 (aarch64-linux-gnu)
//	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -imultiarch aarch64-linux-gnu ../source/linpack.c
// -mlittle-endian -mabi=lp64
// -auxbase-strip ../asm/linpack.arm_gcc.opt1.asm -O1 -fverbose-asm
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
	.global	cpu_time
	.type	cpu_time, %function
cpu_time:
	stp	x29, x30, [sp, -16]!	//,,,
	add	x29, sp, 0	//,,
	bl	clock	//
	scvtf	d1, x0	// D.6067,
	ldr	d0, .LC0	// tmp79,
	fdiv	d0, d1, d0	//, D.6067, tmp79
	ldp	x29, x30, [sp], 16	//,,,
	ret
	.size	cpu_time, .-cpu_time
	.align	3
.LC0:
	.word	0
	.word	1093567616
	.align	2
	.global	daxpy
	.type	daxpy, %function
daxpy:
	fcmp	d0, #0.0	// da
	cset	w6, eq	// tmp184,
	cmp	w0, 0	// n,
	cset	w5, le	// tmp186,
	orr	w5, w6, w5	// tmp189, tmp184, tmp186
	cbnz	w5, .L3	// tmp189,
	cmp	w2, 1	// incx,
	ccmp	w4, 1, 0, eq	// incy,,,
	beq	.L5	//,
	tbz	w2, #31, .L6	// incx,
	mov	w5, 1	// tmp194,
	sub	w5, w5, w0	// D.6095, tmp194, n
	mul	w5, w5, w2	// ix, D.6095, incx
.L6:
	mov	w6, 0	// iy,
	tbz	w4, #31, .L7	// incy,
	mov	w6, 1	// tmp196,
	sub	w6, w6, w0	// D.6095, tmp196, n
	mul	w6, w6, w4	// iy, D.6095, incy
.L7:
	cmp	w0, 0	// n,
	ble	.L3	//,
	mov	w7, 0	// i,
.L8:
	sxtw	x8, w6	// D.6092, iy
	ldr	d1, [x1, w5, sxtw 3]	// *_85, *_85
	fmul	d2, d0, d1	// D.6091, da, *_85
	ldr	d1, [x3, x8, lsl 3]	// *_81, *_81
	fadd	d1, d1, d2	// D.6091, *_81, D.6091
	str	d1, [x3, x8, lsl 3]	// D.6091, *_81
	add	w5, w5, w2	// ix, ix, incx
	add	w6, w6, w4	// iy, iy, incy
	add	w7, w7, 1	// i, i,
	cmp	w0, w7	// n, i
	bne	.L8	//,
	ret
.L5:
	negs	w2, w0	// tmp204, n
	and	w4, w0, 3	// tmp205, n,
	and	w2, w2, 3	// tmp206, tmp204,
	csneg	w4, w4, w2, mi	// i, tmp205, tmp206,
	cmp	w4, 0	// i,
	ble	.L9	//,
	mov	x2, 0	// ivtmp.40,
.L10:
	ldr	d1, [x1, x2, lsl 3]	// MEM[base: dx_26(D), index: ivtmp.40_97, step: 8, offset: 0B], MEM[base: dx_26(D), index: ivtmp.40_97, step: 8, offset: 0B]
	fmul	d2, d0, d1	// D.6091, da, MEM[base: dx_26(D), index: ivtmp.40_97, step: 8, offset: 0B]
	ldr	d1, [x3, x2, lsl 3]	// MEM[base: dy_22(D), index: ivtmp.40_97, step: 8, offset: 0B], MEM[base: dy_22(D), index: ivtmp.40_97, step: 8, offset: 0B]
	fadd	d1, d1, d2	// D.6091, MEM[base: dy_22(D), index: ivtmp.40_97, step: 8, offset: 0B], D.6091
	str	d1, [x3, x2, lsl 3]	// D.6091, MEM[base: dy_22(D), index: ivtmp.40_97, step: 8, offset: 0B]
	add	x2, x2, 1	// ivtmp.40, ivtmp.40,
	cmp	w4, w2	// i, ivtmp.40
	bgt	.L10	//,
.L9:
	cmp	w0, w4	// n, i
	ble	.L3	//,
.L14:
	sxtw	x5, w4	// D.6092, i
	lsl	x2, x5, 3	// D.6092, D.6092,
	ldr	d1, [x1, x5, lsl 3]	// *_38, *_38
	fmul	d2, d0, d1	// D.6091, da, *_38
	ldr	d1, [x3, x5, lsl 3]	// *_36, *_36
	fadd	d1, d1, d2	// D.6091, *_36, D.6091
	str	d1, [x3, x5, lsl 3]	// D.6091, *_36
	add	x5, x2, 8	// D.6094, D.6092,
	ldr	d1, [x1, x5]	// *_48, *_48
	fmul	d2, d0, d1	// D.6091, da, *_48
	ldr	d1, [x3, x5]	// *_46, *_46
	fadd	d1, d1, d2	// D.6091, *_46, D.6091
	str	d1, [x3, x5]	// D.6091, *_46
	add	x5, x2, 16	// D.6094, D.6092,
	ldr	d1, [x1, x5]	// *_58, *_58
	fmul	d2, d0, d1	// D.6091, da, *_58
	ldr	d1, [x3, x5]	// *_56, *_56
	fadd	d1, d1, d2	// D.6091, *_56, D.6091
	str	d1, [x3, x5]	// D.6091, *_56
	add	x2, x2, 24	// D.6094, D.6092,
	ldr	d1, [x1, x2]	// *_68, *_68
	fmul	d2, d0, d1	// D.6091, da, *_68
	ldr	d1, [x3, x2]	// *_66, *_66
	fadd	d1, d1, d2	// D.6091, *_66, D.6091
	str	d1, [x3, x2]	// D.6091, *_66
	add	w4, w4, 4	// i, i,
	cmp	w0, w4	// n, i
	bgt	.L14	//,
.L3:
	ret
	.size	daxpy, .-daxpy
	.align	2
	.global	ddot
	.type	ddot, %function
ddot:
	cmp	w0, 0	// n,
	ble	.L27	//,
	cmp	w2, 1	// incx,
	ccmp	w4, 1, 0, eq	// incy,,,
	beq	.L20	//,
	mov	w5, 0	// ix,
	tbz	w2, #31, .L21	// incx,
	mov	w5, 1	// tmp152,
	sub	w5, w5, w0	// D.6118, tmp152, n
	mul	w5, w5, w2	// ix, D.6118, incx
.L21:
	mov	w6, 0	// iy,
	tbz	w4, #31, .L22	// incy,
	mov	w6, 1	// tmp154,
	sub	w6, w6, w0	// D.6118, tmp154, n
	mul	w6, w6, w4	// iy, D.6118, incy
	b	.L22	//
.L23:
	ldr	d1, [x1, w5, sxtw 3]	// *_26, *_26
	ldr	d2, [x3, w6, sxtw 3]	// *_32, *_32
	fmul	d1, d1, d2	// D.6121, *_26, *_32
	fadd	d0, d0, d1	// dtemp, dtemp, D.6121
	add	w5, w5, w2	// ix, ix, incx
	add	w6, w6, w4	// iy, iy, incy
	add	w7, w7, 1	// i, i,
	cmp	w0, w7	// n, i
	bne	.L23	//,
	ret
.L20:
	mov	w4, 26215	// tmp161,
	movk	w4, 0x6666, lsl 16	// tmp161,,
	smull	x4, w0, w4	// tmp160, n, tmp161
	asr	x4, x4, 33	// tmp163, tmp160,
	sub	w4, w4, w0, asr 31	// i, tmp163, n,
	add	w4, w4, w4, lsl 2	// tmp167, i, i,
	sub	w4, w0, w4	// i, n, tmp167
	cmp	w4, 0	// i,
	ble	.L30	//,
	mov	x2, 0	// ivtmp.61,
	fmov	d0, xzr	// dtemp,
.L25:
	ldr	d1, [x1, x2, lsl 3]	// MEM[base: dx_25(D), index: ivtmp.61_6, step: 8, offset: 0B], MEM[base: dx_25(D), index: ivtmp.61_6, step: 8, offset: 0B]
	ldr	d2, [x3, x2, lsl 3]	// MEM[base: dy_31(D), index: ivtmp.61_6, step: 8, offset: 0B], MEM[base: dy_31(D), index: ivtmp.61_6, step: 8, offset: 0B]
	fmul	d1, d1, d2	// D.6121, MEM[base: dx_25(D), index: ivtmp.61_6, step: 8, offset: 0B], MEM[base: dy_31(D), index: ivtmp.61_6, step: 8, offset: 0B]
	fadd	d0, d0, d1	// dtemp, dtemp, D.6121
	add	x2, x2, 1	// ivtmp.61, ivtmp.61,
	cmp	w4, w2	// i, ivtmp.61
	bgt	.L25	//,
	b	.L24	//
.L30:
	fmov	d0, xzr	// dtemp,
.L24:
	cmp	w0, w4	// n, i
	ble	.L31	//,
.L32:
	sxtw	x5, w4	// D.6119, i
	lsl	x2, x5, 3	// D.6119, D.6119,
	add	x8, x2, 8	// D.6122, D.6119,
	add	x7, x2, 16	// D.6122, D.6119,
	add	x6, x2, 24	// D.6122, D.6119,
	ldr	d1, [x1, x5, lsl 3]	// *_54, *_54
	ldr	d2, [x3, x5, lsl 3]	// *_57, *_57
	fmul	d1, d1, d2	// D.6121, *_54, *_57
	fadd	d0, d1, d0	// D.6121, D.6121, dtemp
	ldr	d1, [x1, x8]	// *_63, *_63
	ldr	d2, [x3, x8]	// *_65, *_65
	fmul	d1, d1, d2	// D.6121, *_63, *_65
	fadd	d0, d0, d1	// D.6121, D.6121, D.6121
	ldr	d1, [x1, x7]	// *_71, *_71
	ldr	d2, [x3, x7]	// *_73, *_73
	fmul	d1, d1, d2	// D.6121, *_71, *_73
	fadd	d0, d0, d1	// D.6121, D.6121, D.6121
	ldr	d1, [x1, x6]	// *_79, *_79
	ldr	d2, [x3, x6]	// *_81, *_81
	fmul	d1, d1, d2	// D.6121, *_79, *_81
	fadd	d0, d0, d1	// D.6121, D.6121, D.6121
	add	x2, x2, 32	// D.6122, D.6119,
	ldr	d1, [x1, x2]	// *_87, *_87
	ldr	d2, [x3, x2]	// *_89, *_89
	fmul	d1, d1, d2	// D.6121, *_87, *_89
	fadd	d0, d1, d0	// dtemp, D.6121, D.6121
	add	w4, w4, 5	// i, i,
	cmp	w0, w4	// n, i
	bgt	.L32	//,
	ret
.L27:
	fmov	d0, xzr	// dtemp,
	ret
.L22:
	mov	w7, 0	// i,
	fmov	d0, xzr	// dtemp,
	b	.L23	//
.L31:
	ret
	.size	ddot, .-ddot
	.align	2
	.global	dgesl
	.type	dgesl, %function
dgesl:
	stp	x29, x30, [sp, -96]!	//,,,
	add	x29, sp, 0	//,,
	stp	x19, x20, [sp, 16]	//,,
	stp	x21, x22, [sp, 32]	//,,
	stp	x23, x24, [sp, 48]	//,,
	stp	x25, x26, [sp, 64]	//,,
	stp	x27, x28, [sp, 80]	//,,
	mov	x21, x0	// a, a
	mov	w26, w1	// lda, lda
	mov	w20, w2	// n, n
	mov	x27, x3	// ipvt, ipvt
	mov	x19, x4	// b, b
	cbz	w5, .L37	// job,
	cmp	w2, 0	// n,
	bgt	.L38	//,
	b	.L39	//
.L37:
	sub	w24, w2, #1	// D.6156, n,
	cmp	w24, 0	// D.6156,
	ble	.L40	//,
	mov	w28, w1	// D.6160, lda
	mov	w23, w24	// ivtmp.81, D.6156
	mov	w25, 0	// ivtmp.80,
	mov	w22, 1	// k,
.L42:
	sxtw	x3, w22	// D.6157, k
	add	x0, x27, x3, lsl 2	// tmp207, ipvt, D.6157,
	ldr	w1, [x0, -4]	//, *_77
	sbfiz	x0, x1, 3, 32	// D.6157, l,,
	sub	x0, x0, #8	// D.6159, D.6157,
	ldr	d0, [x19, x0]	// t, *_82
	cmp	w1, w22	// l, k
	beq	.L41	//,
	lsl	x1, x3, 3	// D.6157, D.6157,
	sub	x1, x1, #8	// D.6159, D.6157,
	ldr	x2, [x19, x1]	// D.6161, *_86
	str	x2, [x19, x0]	// D.6161, *_82
	str	d0, [x19, x1]	// t, *_86
.L41:
	add	x1, x3, x25, sxtw	// D.6159, D.6157, ivtmp.80
	mov	w4, 1	//,
	add	x3, x19, x3, lsl 3	//, b, D.6157,
	mov	w2, w4	//,
	add	x1, x21, x1, lsl 3	//, a, D.6159,
	mov	w0, w23	//, ivtmp.81
	bl	daxpy	//
	add	w22, w22, 1	// k, k,
	add	w25, w25, w28	// ivtmp.80, ivtmp.80, D.6160
	subs	w23, w23, #1	// ivtmp.81, ivtmp.81,
	bne	.L42	//,
.L40:
	cmp	w20, 0	// n,
	ble	.L36	//,
	mvn	w25, w26	// D.6160, lda
	madd	w22, w26, w24, w24	// ivtmp.72, lda, D.6156, D.6156
	mul	w24, w26, w24	// ivtmp.74, lda, D.6156
	mov	w23, 1	// tmp258,
.L44:
	sbfiz	x0, x20, 3, 32	// D.6157, n,,
	sub	x0, x0, #8	// D.6159, D.6157,
	sub	w20, w20, #1	// n, n,
	ldr	d0, [x19, x0]	// *_105, *_105
	ldr	d1, [x21, w22, sxtw 3]	// *_112, *_112
	fdiv	d0, d0, d1	// D.6161, *_105, *_112
	str	d0, [x19, x0]	// D.6161, *_105
	mov	w4, w23	//, tmp258
	mov	x3, x19	//, b
	mov	w2, w23	//, tmp4
	add	x1, x21, x24, sxtw 3	//, a, ivtmp.74,
	fneg	d0, d0	//, D.6161
	mov	w0, w20	//, n
	bl	daxpy	//
	add	w22, w22, w25	// ivtmp.72, ivtmp.72, D.6160
	sub	w24, w24, w26	// ivtmp.74, ivtmp.74, lda
	cbnz	w20, .L44	// n,
	b	.L36	//
.L38:
	mov	w28, w1	// D.6160, lda
	add	w25, w1, 1	// D.6160, lda,
	mov	w24, 0	// ivtmp.98,
	mov	w23, 0	// ivtmp.97,
	mov	w22, 1	// k,
.L45:
	mov	w4, 1	//,
	mov	x3, x19	//, b
	mov	w2, w4	//,
	add	x1, x21, x23, sxtw 3	//, a, ivtmp.97,
	sub	w0, w22, #1	//, k,
	bl	ddot	//
	sbfiz	x0, x22, 3, 32	// D.6157, k,,
	sub	x0, x0, #8	// D.6159, D.6157,
	ldr	d1, [x19, x0]	// *_31, *_31
	fsub	d0, d1, d0	// D.6161, *_31,
	ldr	d1, [x21, w24, sxtw 3]	// *_38, *_38
	fdiv	d0, d0, d1	// D.6161, D.6161, *_38
	str	d0, [x19, x0]	// D.6161, *_31
	add	w22, w22, 1	// k, k,
	add	w23, w23, w28	// ivtmp.97, ivtmp.97, D.6160
	add	w24, w24, w25	// ivtmp.98, ivtmp.98, D.6160
	cmp	w20, w22	// n, k
	bge	.L45	//,
.L39:
	sub	w23, w20, #1	// k, n,
	cmp	w23, 0	// k,
	ble	.L36	//,
	sub	w20, w20, #2	// D.6156, n,
	mul	w20, w20, w26	// ivtmp.90, D.6156, lda
	mov	w25, 1	// ivtmp.92,
.L47:
	sxtw	x22, w23	// D.6157, k
	lsl	x3, x22, 3	// D.6157, D.6157,
	sub	x24, x3, #8	// D.6159, D.6157,
	sub	w28, w23, #1	// k, k,
	add	x1, x22, x20, sxtw	// D.6159, D.6157, ivtmp.90
	mov	w4, 1	//,
	add	x3, x19, x3	//, b, D.6157
	mov	w2, w4	//,
	add	x1, x21, x1, lsl 3	//, a, D.6159,
	mov	w0, w25	//, ivtmp.92
	bl	ddot	//
	ldr	d1, [x19, x24]	// *_48, *_48
	fadd	d0, d0, d1	// D.6161,, *_48
	str	d0, [x19, x24]	// D.6161, *_48
	add	x22, x27, x22, lsl 2	// tmp253, ipvt, D.6157,
	ldr	w0, [x22, -4]	//, *_64
	cmp	w0, w23	// l, k
	beq	.L46	//,
	sbfiz	x0, x0, 3, 32	// D.6157, l,,
	sub	x0, x0, #8	// D.6159, D.6157,
	ldr	x1, [x19, x0]	// t, *_69
	str	d0, [x19, x0]	// D.6161, *_69
	str	x1, [x19, x24]	// t, *_48
.L46:
	sub	w20, w20, w26	// ivtmp.90, ivtmp.90, lda
	add	w25, w25, 1	// ivtmp.92, ivtmp.92,
	mov	w23, w28	// k, k
	cbnz	w28, .L47	// k,
.L36:
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x23, x24, [sp, 48]	//,,
	ldp	x25, x26, [sp, 64]	//,,
	ldp	x27, x28, [sp, 80]	//,,
	ldp	x29, x30, [sp], 96	//,,,
	ret
	.size	dgesl, .-dgesl
	.align	2
	.global	dscal
	.type	dscal, %function
dscal:
	cmp	w0, 0	// n,
	ble	.L53	//,
	cmp	w2, 1	// incx,
	bne	.L55	//,
	mov	w3, 26215	// tmp122,
	movk	w3, 0x6666, lsl 16	// tmp122,,
	smull	x3, w0, w3	// tmp121, n, tmp122
	asr	x3, x3, 33	// tmp124, tmp121,
	sub	w3, w3, w0, asr 31	// i, tmp124, n,
	add	w3, w3, w3, lsl 2	// tmp128, i, i,
	sub	w3, w0, w3	// i, n, tmp128
	cmp	w3, 0	// i,
	ble	.L56	//,
	mov	x2, 0	// ivtmp.106,
.L57:
	ldr	d1, [x1, x2, lsl 3]	// MEM[base: x_15(D), index: ivtmp.106_72, step: 8, offset: 0B], MEM[base: x_15(D), index: ivtmp.106_72, step: 8, offset: 0B]
	fmul	d1, d1, d0	// D.6180, MEM[base: x_15(D), index: ivtmp.106_72, step: 8, offset: 0B], sa
	str	d1, [x1, x2, lsl 3]	// D.6180, MEM[base: x_15(D), index: ivtmp.106_72, step: 8, offset: 0B]
	add	x2, x2, 1	// ivtmp.106, ivtmp.106,
	cmp	w3, w2	// i, ivtmp.106
	bgt	.L57	//,
.L56:
	cmp	w0, w3	// n, i
	ble	.L53	//,
.L62:
	sxtw	x4, w3	// D.6181, i
	lsl	x2, x4, 3	// D.6181, D.6181,
	ldr	d1, [x1, x4, lsl 3]	// *_26, *_26
	fmul	d1, d1, d0	// D.6180, *_26, sa
	str	d1, [x1, x4, lsl 3]	// D.6180, *_26
	add	x4, x2, 8	// D.6183, D.6181,
	ldr	d1, [x1, x4]	// *_33, *_33
	fmul	d1, d1, d0	// D.6180, *_33, sa
	str	d1, [x1, x4]	// D.6180, *_33
	add	x4, x2, 16	// D.6183, D.6181,
	ldr	d1, [x1, x4]	// *_40, *_40
	fmul	d1, d1, d0	// D.6180, *_40, sa
	str	d1, [x1, x4]	// D.6180, *_40
	add	x4, x2, 24	// D.6183, D.6181,
	ldr	d1, [x1, x4]	// *_46, *_46
	fmul	d1, d1, d0	// D.6180, *_46, sa
	str	d1, [x1, x4]	// D.6180, *_46
	add	x2, x2, 32	// D.6183, D.6181,
	ldr	d1, [x1, x2]	// *_52, *_52
	fmul	d1, d1, d0	// D.6180, *_52, sa
	str	d1, [x1, x2]	// D.6180, *_52
	add	w3, w3, 5	// i, i,
	cmp	w0, w3	// n, i
	bgt	.L62	//,
	ret
.L55:
	mov	w3, 0	// ix,
	tbz	w2, #31, .L59	// incx,
	mov	w3, 1	// tmp147,
	sub	w3, w3, w0	// D.6184, tmp147, n
	mul	w3, w3, w2	// ix, D.6184, incx
	b	.L59	//
.L60:
	sxtw	x5, w3	// D.6181, ix
	ldr	d1, [x1, x5, lsl 3]	// *_62, *_62
	fmul	d1, d1, d0	// D.6180, *_62, sa
	str	d1, [x1, x5, lsl 3]	// D.6180, *_62
	add	w3, w3, w2	// ix, ix, incx
	add	w4, w4, 1	// i, i,
	cmp	w0, w4	// n, i
	bne	.L60	//,
	ret
.L59:
	mov	w4, 0	// i,
	b	.L60	//
.L53:
	ret
	.size	dscal, .-dscal
	.align	2
	.global	idamax
	.type	idamax, %function
idamax:
	cmp	w0, 0	// n,
	ccmp	w2, wzr, 4, gt	// incx,,,
	ble	.L79	//,
	cmp	w0, 1	// n,
	beq	.L80	//,
	cmp	w2, 1	// incx,
	bne	.L68	//,
	ldr	d1, [x1]	// dmax, *dx_22(D)
	fcmpe	d1, #0.0	// dmax
	bge	.L69	//,
	fneg	d1, d1	// dmax, dmax
.L69:
	cmp	w0, 1	// n,
	ble	.L81	//,
	add	x1, x1, 8	// ivtmp.121, dx,
	add	w5, w0, 1	// D.6210, n,
	mov	w2, 2	// ivtmp.119,
	mov	w0, 1	// value,
.L73:
	ldr	d0, [x1]	// dmax, MEM[base: _29, offset: 0B]
	fcmpe	d0, #0.0	// dmax
	bge	.L70	//,
	fneg	d0, d0	// dmax, dmax
.L70:
	fcmpe	d0, d1	// dmax, dmax
	ble	.L71	//,
	mov	w0, w2	// value, ivtmp.119
	fmov	d1, d0	// dmax, dmax
.L71:
	add	w2, w2, 1	// ivtmp.119, ivtmp.119,
	add	x1, x1, 8	// ivtmp.121, ivtmp.121,
	cmp	w2, w5	// ivtmp.119, D.6210
	bne	.L73	//,
	ret
.L68:
	ldr	d1, [x1]	// dmax, *dx_22(D)
	fcmpe	d1, #0.0	// dmax
	bge	.L74	//,
	fneg	d1, d1	// dmax, dmax
.L74:
	cmp	w0, 1	// n,
	ble	.L82	//,
	add	w5, w0, 1	// D.6210, n,
	mov	w4, w2	// incx, incx
	mov	w3, 2	// ivtmp.128,
	mov	w0, 1	// value,
.L78:
	ldr	d0, [x1, w4, sxtw 3]	// dmax, *_36
	fcmpe	d0, #0.0	// dmax
	bge	.L75	//,
	fneg	d0, d0	// dmax, dmax
.L75:
	fcmpe	d0, d1	// dmax, dmax
	ble	.L76	//,
	mov	w0, w3	// value, ivtmp.128
	fmov	d1, d0	// dmax, dmax
.L76:
	add	w4, w4, w2	// incx, incx, incx
	add	w3, w3, 1	// ivtmp.128, ivtmp.128,
	cmp	w3, w5	// ivtmp.128, D.6210
	bne	.L78	//,
	ret
.L79:
	mov	w0, 0	// D.6208,
	ret
.L80:
	mov	w0, 1	// D.6208,
	ret
.L81:
	mov	w0, 1	// D.6208,
	ret
.L82:
	mov	w0, 1	// D.6208,
	ret
	.size	idamax, .-idamax
	.align	2
	.global	dgefa
	.type	dgefa, %function
dgefa:
	stp	x29, x30, [sp, -176]!	//,,,
	add	x29, sp, 0	//,,
	stp	x19, x20, [sp, 16]	//,,
	stp	x21, x22, [sp, 32]	//,,
	stp	x23, x24, [sp, 48]	//,,
	stp	x25, x26, [sp, 64]	//,,
	stp	x27, x28, [sp, 80]	//,,
	str	d8, [sp, 96]	//,
	mov	x20, x0	// a, a
	str	w1, [x29, 116]	// lda, %sfp
	mov	w26, w2	// n, n
	str	x3, [x29, 128]	// ipvt, %sfp
	sub	w0, w2, #1	// D.6236, n,
	str	w0, [x29, 120]	// D.6236, %sfp
	cmp	w0, 0	// D.6236,
	ble	.L95	//,
	mov	w28, w1	// D.6242, lda
	str	w0, [x29, 152]	// D.6236, %sfp
	add	w0, w1, 1	// D.6242, lda,
	str	w0, [x29, 136]	// D.6242, %sfp
	str	wzr, [x29, 140]	//, %sfp
	str	wzr, [x29, 156]	//, %sfp
	str	xzr, [x29, 144]	//, %sfp
	str	wzr, [x29, 124]	//, %sfp
	fmov	d8, -1.0e+0	// tmp216,
.L93:
	ldr	x0, [x29, 144]	// ivtmp.144, %sfp
	str	w0, [x29, 168]	// tmp236, %sfp
	add	w22, w0, 1	// n, tmp237,
	ldr	w1, [x29, 152]	//, %sfp
	str	w1, [x29, 172]	// ivtmp.150, %sfp
	sxtw	x23, w22	// D.6237, n
	ldr	w21, [x29, 156]	//, %sfp
	add	x19, x23, x21, sxtw	// D.6237, D.6237, ivtmp.147
	lsl	x19, x19, 3	// D.6237, D.6237,
	sub	x1, x19, #8	// D.6237, D.6237,
	mov	w2, 1	//,
	add	x1, x20, x1	//, a, D.6237
	sub	w0, w26, w0	//, n, tmp240
	bl	idamax	//
	add	w25, w0, w22	// D.6236,, n
	sub	w24, w25, #1	// l, D.6236,
	ldr	x0, [x29, 128]	// ipvt, %sfp
	add	x0, x0, x23, lsl 2	// tmp178, ipvt, D.6237,
	str	w24, [x0, -4]	// l, *_32
	sub	w27, w25, #2	// D.6236, D.6236,
	add	w0, w21, w27	// D.6236, ivtmp.147, D.6236
	sxtw	x0, w0	// D.6239, D.6236
	ldr	d0, [x20, x0, lsl 3]	// D.6241, *_38
	fcmp	d0, #0.0	// D.6241
	beq	.L96	//,
	cmp	w24, w22	// l, n
	beq	.L90	//,
	ldrsw	x1, [x29, 140]	// D.6239, %sfp
	ldr	x2, [x20, x1, lsl 3]	// D.6241, *_44
	str	x2, [x20, x0, lsl 3]	// D.6241, *_38
	str	d0, [x20, x1, lsl 3]	// D.6241, *_44
.L90:
	add	x0, x20, x19	// D.6238, a, D.6237
	str	x0, [x29, 160]	// D.6238, %sfp
	ldr	w1, [x29, 140]	//, %sfp
	ldr	d0, [x20, w1, sxtw 3]	// *_52, *_52
	mov	w2, 1	//,
	mov	x1, x0	//, D.6238
	fdiv	d0, d8, d0	//, tmp216, *_52
	ldr	w0, [x29, 172]	//, %sfp
	bl	dscal	//
	ldr	w0, [x29, 168]	//, %sfp
	add	w21, w0, 2	// j, D.6242,
	cmp	w26, w21	// n, j
	blt	.L89	//,
	ldr	w1, [x29, 156]	//, %sfp
	add	w19, w1, w28	// D.6242, ivtmp.147, D.6242
	add	w19, w19, w27	// ivtmp.136, D.6242, D.6236
	mov	w1, 2	// tmp247,
	sub	w27, w1, w25	// D.6242, tmp247, D.6236
	str	w21, [x29, 168]	// D.6242, %sfp
.L92:
	add	w3, w27, w19	// D.6236, D.6242, ivtmp.136
	sxtw	x1, w19	// D.6239, ivtmp.136
	ldr	d0, [x20, x1, lsl 3]	// t, *_63
	cmp	w24, w22	// l, n
	beq	.L91	//,
	sub	w0, w19, w25	// D.6242, ivtmp.136, D.6236
	ldr	w2, [x29, 168]	//, %sfp
	add	w0, w2, w0	// D.6242, D.6242, D.6242
	sxtw	x0, w0	// D.6239, D.6242
	ldr	x2, [x20, x0, lsl 3]	// D.6241, *_68
	str	x2, [x20, x1, lsl 3]	// D.6241, *_63
	str	d0, [x20, x0, lsl 3]	// t, *_68
.L91:
	add	x3, x23, x3, sxtw	// D.6237, D.6237, D.6236
	mov	w4, 1	//,
	add	x3, x20, x3, lsl 3	//, a, D.6237,
	mov	w2, w4	//,
	ldr	x1, [x29, 160]	//, %sfp
	ldr	w0, [x29, 172]	//, %sfp
	bl	daxpy	//
	add	w21, w21, 1	// j, j,
	add	w19, w19, w28	// ivtmp.136, ivtmp.136, D.6242
	cmp	w26, w21	// n, j
	bge	.L92	//,
	b	.L89	//
.L96:
	str	w22, [x29, 124]	// n, %sfp
.L89:
	ldr	x0, [x29, 144]	// ivtmp.144, %sfp
	add	x0, x0, 1	// ivtmp.144, ivtmp.144,
	str	x0, [x29, 144]	// ivtmp.144, %sfp
	ldr	w0, [x29, 156]	//, %sfp
	add	w0, w0, w28	// ivtmp.147, ivtmp.147, D.6242
	str	w0, [x29, 156]	// ivtmp.147, %sfp
	ldr	w0, [x29, 140]	//, %sfp
	ldr	w1, [x29, 136]	//, %sfp
	add	w0, w0, w1	// ivtmp.151, ivtmp.151, D.6242
	str	w0, [x29, 140]	// ivtmp.151, %sfp
	ldr	w0, [x29, 152]	//, %sfp
	subs	w0, w0, #1	// ivtmp.150, ivtmp.150,
	str	w0, [x29, 152]	// ivtmp.150, %sfp
	bne	.L93	//,
	b	.L88	//
.L95:
	str	wzr, [x29, 124]	//, %sfp
.L88:
	ldr	x0, [x29, 128]	// ipvt, %sfp
	add	x0, x0, x26, sxtw 2	// tmp206, ipvt, n,
	str	w26, [x0, -4]	// n, *_82
	ldr	w0, [x29, 116]	//, %sfp
	ldr	w1, [x29, 120]	//, %sfp
	madd	w0, w0, w1, w1	// D.6236, lda, D.6236, D.6236
	ldr	d0, [x20, w0, sxtw 3]	// *_88, *_88
	fcmp	d0, #0.0	// *_88
	ldr	w0, [x29, 124]	//, %sfp
	csel	w0, w0, w26, ne	//, n, n,
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x23, x24, [sp, 48]	//,,
	ldp	x25, x26, [sp, 64]	//,,
	ldp	x27, x28, [sp, 80]	//,,
	ldr	d8, [sp, 96]	//,
	ldp	x29, x30, [sp], 176	//,,,
	ret
	.size	dgefa, .-dgefa
	.align	2
	.global	r8_abs
	.type	r8_abs, %function
r8_abs:
	fcmpe	d0, #0.0	// x
	bge	.L101	//,
	fneg	d0, d0	// x, x
.L101:
	ret
	.size	r8_abs, .-r8_abs
	.align	2
	.global	r8_epsilon
	.type	r8_epsilon, %function
r8_epsilon:
	mov	w0, 53	// D.6255,
	fmov	d0, 1.0e+0	// r,
	fmov	d1, 5.0e-1	// tmp79,
.L103:
	fmul	d0, d0, d1	// r, r, tmp79
	subs	w0, w0, #1	// D.6255, D.6255,
	bne	.L103	//,
	fadd	d0, d0, d0	//, r, r
	ret
	.size	r8_epsilon, .-r8_epsilon
	.align	2
	.global	r8_max
	.type	r8_max, %function
r8_max:
	fcmpe	d1, d0	// y, x
	fcsel	d0, d0, d1, mi	//, x, y,
	ret
	.size	r8_max, .-r8_max
	.align	2
	.global	r8_random
	.type	r8_random, %function
r8_random:
	ldr	w3, [x0, 12]	//, MEM[(int *)iseed_1(D) + 12B]
	mov	w7, 2549	// tmp119,
	mul	w1, w3, w7	// it4, D.6263, tmp119
	add	w2, w1, 4095	// tmp121, it4,
	cmp	w1, 0	// it4,
	csel	w2, w2, w1, lt	// it4, tmp121, it4,
	asr	w2, w2, 12	// tmp122, it4,
	sub	w8, w1, w2, lsl 12	// it4, it4, tmp122,
	ldr	w5, [x0, 8]	//, MEM[(int *)iseed_1(D) + 8B]
	madd	w2, w5, w7, w2	// D.6263, D.6263, tmp119, tmp122
	mov	w10, 2508	// tmp127,
	madd	w2, w3, w10, w2	// it3, D.6263, tmp127, D.6263
	add	w1, w2, 4095	// tmp129, it3,
	cmp	w2, 0	// it3,
	csel	w1, w1, w2, lt	// it3, tmp129, it3,
	asr	w1, w1, 12	// tmp130, it3,
	sub	w2, w2, w1, lsl 12	// it3, it3, tmp130,
	ldr	w6, [x0, 4]	//, MEM[(int *)iseed_1(D) + 4B]
	madd	w1, w6, w7, w1	// D.6263, D.6263, tmp119, tmp130
	madd	w1, w5, w10, w1	// D.6263, D.6263, tmp127, D.6263
	mov	w11, 322	// tmp138,
	madd	w1, w3, w11, w1	// it2, D.6263, tmp138, D.6263
	add	w4, w1, 4095	// tmp140, it2,
	cmp	w1, 0	// it2,
	csel	w4, w4, w1, lt	// it2, tmp140, it2,
	asr	w4, w4, 12	// tmp141, it2,
	sub	w1, w1, w4, lsl 12	// it2, it2, tmp141,
	ldr	w9, [x0]	//, *iseed_1(D)
	madd	w4, w9, w7, w4	// D.6263, *iseed_1(D), tmp119, tmp141
	madd	w6, w6, w10, w4	// D.6263, D.6263, tmp127, D.6263
	madd	w5, w5, w11, w6	// D.6263, D.6263, tmp138, D.6263
	mov	w4, 494	// tmp153,
	madd	w3, w3, w4, w5	// it1, D.6263, tmp153, D.6263
	negs	w4, w3	// tmp154, it1
	and	w3, w3, 4095	// tmp155, it1,
	and	w4, w4, 4095	// tmp156, tmp154,
	csneg	w3, w3, w4, mi	// it1, tmp155, tmp156,
	str	w3, [x0]	// it1, *iseed_1(D)
	str	w1, [x0, 4]	// it2, MEM[(int *)iseed_1(D) + 4B]
	str	w2, [x0, 8]	// it3, MEM[(int *)iseed_1(D) + 8B]
	str	w8, [x0, 12]	// it4, MEM[(int *)iseed_1(D) + 12B]
	scvtf	d1, w8	// D.6264, it4
	ldr	d0, .LC1	// tmp160,
	fmul	d2, d1, d0	// D.6264, D.6264, tmp160
	scvtf	d1, w2	// D.6264, it3
	fadd	d1, d2, d1	// D.6264, D.6264, D.6264
	fmul	d2, d1, d0	// D.6264, D.6264, tmp160
	scvtf	d1, w1	// D.6264, it2
	fadd	d1, d2, d1	// D.6264, D.6264, D.6264
	fmul	d1, d1, d0	// D.6264, D.6264, tmp160
	scvtf	d2, w3	// D.6264, it1
	fadd	d1, d1, d2	// D.6264, D.6264, D.6264
	fmul	d0, d1, d0	//, D.6264, tmp160
	ret
	.size	r8_random, .-r8_random
	.align	3
.LC1:
	.word	0
	.word	1060110336
	.align	2
	.global	r8mat_gen
	.type	r8mat_gen, %function
r8mat_gen:
	stp	x29, x30, [sp, -128]!	//,,,
	add	x29, sp, 0	//,,
	stp	x19, x20, [sp, 16]	//,,
	stp	x21, x22, [sp, 32]	//,,
	stp	x23, x24, [sp, 48]	//,,
	stp	x25, x26, [sp, 64]	//,,
	str	d8, [sp, 80]	//,
	mov	w26, w0	// lda, lda
	mov	w21, w1	// n, n
	adrp	x0, __stack_chk_guard	// tmp97,
	ldr	x1, [x0, #:lo12:__stack_chk_guard]	// tmp117, __stack_chk_guard
	str	x1, [x29, 120]	// tmp117, D.6282
	mov	x1,0	// tmp117
	mov	w0, 1	// tmp98,
	str	w0, [x29, 104]	// tmp98, init
	mov	w0, 2	// tmp99,
	str	w0, [x29, 108]	// tmp99, init
	mov	w0, 3	// tmp100,
	str	w0, [x29, 112]	// tmp100, init
	mov	w0, 1325	// tmp101,
	str	w0, [x29, 116]	// tmp101, init
	mul	w0, w26, w21	// D.6278, lda, n
	sbfiz	x0, x0, 3, 32	//, D.6278,,
	bl	malloc	//
	mov	x23, x0	// a,
	cmp	w21, 0	// n,
	ble	.L109	//,
	mov	w25, 0	// ivtmp.172,
	mov	w24, 1	// j,
	fmov	d8, 5.0e-1	// tmp112,
	b	.L110	//
.L111:
	add	w20, w22, w19	// D.6277, D.6277, i
	sxtw	x20, w20	// D.6279, D.6277
	add	x0, x29, 104	// tmp119,,
	bl	r8_random	//
	fsub	d0, d0, d8	// D.6281,, tmp112
	str	d0, [x23, x20, lsl 3]	// D.6281, *_24
	add	w19, w19, 1	// i, i,
	cmp	w21, w19	// n, i
	bge	.L111	//,
	add	w24, w24, 1	// j, j,
	add	w25, w25, w26	// ivtmp.172, ivtmp.172, D.6277
	cmp	w21, w24	// n, j
	blt	.L109	//,
.L110:
	mov	w19, 1	// i,
	sub	w22, w25, #1	// D.6277, ivtmp.172,
	b	.L111	//
.L109:
	mov	x0, x23	//, a
	adrp	x1, __stack_chk_guard	// tmp115,
	ldr	x2, [x29, 120]	// tmp118, D.6282
	ldr	x1, [x1, #:lo12:__stack_chk_guard]	// tmp116, __stack_chk_guard
	eor	x1, x2, x1	// tmp116, tmp118
	cbz	x1, .L112	// tmp116,
	bl	__stack_chk_fail	//
.L112:
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x23, x24, [sp, 48]	//,,
	ldp	x25, x26, [sp, 64]	//,,
	ldr	d8, [sp, 80]	//,
	ldp	x29, x30, [sp], 128	//,,,
	ret
	.size	r8mat_gen, .-r8mat_gen
	.align	2
	.global	timestamp
	.type	timestamp, %function
timestamp:
	stp	x29, x30, [sp, -48]!	//,,,
	add	x29, sp, 0	//,,
	stp	x19, x20, [sp, 16]	//,,
	adrp	x19, __stack_chk_guard	// tmp76,
	add	x19, x19, :lo12:__stack_chk_guard	// tmp75, tmp76,
	ldr	x0, [x19]	// tmp87, __stack_chk_guard
	str	x0, [x29, 40]	// tmp87, D.6287
	mov	x0,0	// tmp87
	bl	time	//
	add	x1, x29, 48	// tmp77,,
	str	x0, [x1, -16]!	//, now
	mov	x0, x1	//, tmp77
	bl	localtime	//
	adrp	x20, .LANCHOR0	// tmp81,
	add	x20, x20, :lo12:.LANCHOR0	// tmp80, tmp81,
	mov	x3, x0	//,
	adrp	x2, .LC2	// tmp79,
	add	x2, x2, :lo12:.LC2	//, tmp79,
	mov	x1, 40	//,
	mov	x0, x20	//, tmp80
	bl	strftime	//
	mov	x0, x20	//, tmp80
	bl	puts	//
	ldr	x1, [x29, 40]	// tmp88, D.6287
	ldr	x0, [x19]	// tmp86, __stack_chk_guard
	eor	x0, x1, x0	// tmp86, tmp88
	cbz	x0, .L116	// tmp86,
	bl	__stack_chk_fail	//
.L116:
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x29, x30, [sp], 48	//,,,
	ret
	.size	timestamp, .-timestamp
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -144]!	//,,,
	add	x29, sp, 0	//,,
	stp	x19, x20, [sp, 16]	//,,
	stp	x21, x22, [sp, 32]	//,,
	stp	x23, x24, [sp, 48]	//,,
	stp	x25, x26, [sp, 64]	//,,
	str	x27, [sp, 80]	//,
	stp	d8, d9, [sp, 88]	//,,
	stp	d10, d11, [sp, 104]	//,,
	stp	d12, d13, [sp, 120]	//,,
	str	d14, [sp, 136]	//,
	bl	timestamp	//
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC3	// tmp220,
	add	x0, x0, :lo12:.LC3	//, tmp220,
	bl	puts	//
	adrp	x0, .LC4	// tmp222,
	add	x0, x0, :lo12:.LC4	//, tmp222,
	bl	puts	//
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC5	// tmp224,
	add	x0, x0, :lo12:.LC5	//, tmp224,
	bl	puts	//
	adrp	x0, .LC6	// tmp226,
	add	x0, x0, :lo12:.LC6	//, tmp226,
	bl	puts	//
	adrp	x0, .LC7	// tmp228,
	add	x0, x0, :lo12:.LC7	//, tmp228,
	bl	puts	//
	mov	w2, 1000	//,
	adrp	x1, .LC8	// tmp230,
	add	x1, x1, :lo12:.LC8	//, tmp230,
	mov	w0, 1	//,
	bl	__printf_chk	//
	mov	w2, 1001	//,
	adrp	x1, .LC9	// tmp232,
	add	x1, x1, :lo12:.LC9	//, tmp232,
	mov	w0, 1	//,
	bl	__printf_chk	//
	mov	w1, 1000	//,
	mov	w0, 1001	//,
	bl	r8mat_gen	//
	mov	x19, x0	// a,
	mov	x0, 8000	//,
	bl	malloc	//
	mov	x24, x0	// b,
	mov	x0, 4000	//,
	bl	malloc	//
	mov	x27, x0	// ipvt,
	mov	x0, 8000	//,
	bl	malloc	//
	mov	x22, x0	// resid,
	mov	x0, 8000	//,
	bl	malloc	//
	mov	x23, x0	// rhs,
	mov	x0, 8000	//,
	bl	malloc	//
	mov	x25, x0	// x,
	mov	w1, 1000	// ivtmp.282,
	fmov	d8, xzr	// a_max,
	mov	w2, 18960	// tmp239,
	movk	w2, 0xf, lsl 16	// tmp239,,
	b	.L119	//
.L121:
	ldr	d0, [x19, w0, sxtw 3]	// a_max, *_58
	fcmpe	d0, d8	// a_max, a_max
	fcsel	d8, d8, d0, mi	// a_max, a_max, a_max,
	add	w0, w0, 1	// ivtmp.275, ivtmp.275,
	cmp	w0, w1	// ivtmp.275, ivtmp.282
	bne	.L121	//,
	add	w1, w1, 1001	// ivtmp.282, ivtmp.282,
	cmp	w1, w2	// ivtmp.282, tmp239
	beq	.L122	//,
.L119:
	sub	w0, w1, #1000	// ivtmp.275, ivtmp.282,
	b	.L121	//
.L122:
	mov	x21, x25	// ivtmp.267, x
	add	x26, x25, 4096	// D.6419, x,
	add	x26, x26, 3904	// D.6419, D.6419,
	mov	x0, x25	// ivtmp.267, x
	fmov	d0, 1.0e+0	// tmp241,
.L123:
	str	d0, [x0], 8	// tmp241, MEM[base: _147, offset: 0B]
	cmp	x26, x0	// D.6419, ivtmp.267
	bne	.L123	//,
	mov	x20, x24	// ivtmp.185, b
	mov	x5, x24	// ivtmp.258, b
	mov	w4, 0	// i,
	mov	w6, 17960	// tmp242,
	movk	w6, 0xf, lsl 16	// tmp242,,
.L125:
	mov	x2, x5	// D.6417, ivtmp.258
	str	xzr, [x5]	//, MEM[base: _87, offset: 0B]
	mov	w0, w4	// ivtmp.248, i
	add	w3, w4, w6	// D.6423, i, tmp242
	mov	x1, x21	// ivtmp.250, ivtmp.267
.L124:
	ldr	d0, [x19, w0, sxtw 3]	// *_78, *_78
	ldr	d1, [x1], 8	// MEM[base: _3, offset: 0B], MEM[base: _3, offset: 0B]
	fmul	d1, d0, d1	// D.6422, *_78, MEM[base: _3, offset: 0B]
	ldr	d0, [x2]	// MEM[base: _87, offset: 0B], MEM[base: _87, offset: 0B]
	fadd	d0, d0, d1	// D.6422, MEM[base: _87, offset: 0B], D.6422
	str	d0, [x2]	// D.6422, MEM[base: _87, offset: 0B]
	add	w0, w0, 1001	// ivtmp.248, ivtmp.248,
	cmp	w3, w0	// D.6423, ivtmp.248
	bne	.L124	//,
	add	w4, w4, 1	// i, i,
	add	x5, x5, 8	// ivtmp.258, ivtmp.258,
	cmp	w4, 1000	// i,
	bne	.L125	//,
	bl	cpu_time	//
	fmov	d9, d0	// t1,
	mov	x3, x27	//, ipvt
	mov	w2, 1000	//,
	mov	w1, 1001	//,
	mov	x0, x19	//, a
	bl	dgefa	//
	cbz	w0, .L126	//,
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC10	// tmp250,
	add	x0, x0, :lo12:.LC10	//, tmp250,
	bl	puts	//
	adrp	x0, .LC11	// tmp252,
	add	x0, x0, :lo12:.LC11	//, tmp252,
	bl	puts	//
	adrp	x0, .LC12	// tmp254,
	add	x0, x0, :lo12:.LC12	//, tmp254,
	bl	puts	//
	mov	w0, 1	// D.6418,
	b	.L127	//
.L126:
	bl	cpu_time	//
	fsub	d9, d0, d9	// D.6422,, t1
	bl	cpu_time	//
	fmov	d10, d0	// t1,
	mov	w5, 0	//,
	mov	x4, x24	//, b
	mov	x3, x27	//, ipvt
	mov	w2, 1000	//,
	mov	w1, 1001	//,
	mov	x0, x19	//, a
	bl	dgesl	//
	bl	cpu_time	//
	fsub	d10, d0, d10	// D.6422,, t1
	fadd	d11, d9, d10	// total, D.6422, D.6422
	mov	x0, x19	//, a
	bl	free	//
	mov	w1, 1000	//,
	mov	w0, 1001	//,
	bl	r8mat_gen	//
	mov	x19, x0	// a,
	mov	x0, x25	// ivtmp.240, x
	fmov	d0, 1.0e+0	// tmp255,
.L128:
	str	d0, [x0], 8	// tmp255, MEM[base: _268, offset: 0B]
	cmp	x26, x0	// D.6419, ivtmp.240
	bne	.L128	//,
	mov	x4, x23	// ivtmp.231, rhs
	mov	w3, 0	// i,
	mov	w6, 17960	// tmp256,
	movk	w6, 0xf, lsl 16	// tmp256,,
.L130:
	mov	x5, x4	// D.6417, ivtmp.231
	mov	w0, w3	// ivtmp.221, i
	add	w2, w3, w6	// D.6423, i, tmp256
	mov	x1, x21	// ivtmp.223, ivtmp.267
	fmov	d1, xzr	// D__lsm.177,
.L129:
	ldr	d0, [x19, w0, sxtw 3]	// *_120, *_120
	ldr	d2, [x1], 8	// MEM[base: _133, offset: 0B], MEM[base: _133, offset: 0B]
	fmul	d0, d0, d2	// D.6422, *_120, MEM[base: _133, offset: 0B]
	fadd	d1, d1, d0	// D__lsm.177, D__lsm.177, D.6422
	add	w0, w0, 1001	// ivtmp.221, ivtmp.221,
	cmp	w2, w0	// D.6423, ivtmp.221
	bne	.L129	//,
	str	d1, [x5]	// D__lsm.177, MEM[base: _129, offset: 0B]
	add	w3, w3, 1	// i, i,
	add	x4, x4, 8	// ivtmp.231, ivtmp.231,
	cmp	w3, 1000	// i,
	bne	.L130	//,
	mov	x3, 0	// ivtmp.212,
	mov	w4, 0	// i,
	mov	w6, 17960	// tmp262,
	movk	w6, 0xf, lsl 16	// tmp262,,
	mov	x5, 8000	// tmp267,
.L132:
	ldr	d1, [x23, x3]	// MEM[base: rhs_51, index: ivtmp.212_256, offset: 0B], MEM[base: rhs_51, index: ivtmp.212_256, offset: 0B]
	fneg	d1, d1	// D__lsm.175, MEM[base: rhs_51, index: ivtmp.212_256, offset: 0B]
	mov	w0, w4	// ivtmp.201, i
	add	w2, w4, w6	// D.6423, i, tmp262
	mov	x1, x20	// ivtmp.203, ivtmp.185
.L131:
	ldr	d0, [x19, w0, sxtw 3]	// *_143, *_143
	ldr	d2, [x1], 8	// MEM[base: _115, offset: 0B], MEM[base: _115, offset: 0B]
	fmul	d0, d0, d2	// D.6422, *_143, MEM[base: _115, offset: 0B]
	fadd	d1, d1, d0	// D__lsm.175, D__lsm.175, D.6422
	add	w0, w0, 1001	// ivtmp.201, ivtmp.201,
	cmp	w2, w0	// D.6423, ivtmp.201
	bne	.L131	//,
	str	d1, [x22, x3]	// D__lsm.175, MEM[base: resid_49, index: ivtmp.212_256, offset: 0B]
	add	w4, w4, 1	// i, i,
	add	x3, x3, 8	// ivtmp.212, ivtmp.212,
	cmp	x3, x5	// ivtmp.212, tmp267
	bne	.L132	//,
	mov	x0, x22	// ivtmp.193, resid
	add	x1, x22, 4096	// D.6419, resid,
	add	x1, x1, 3904	// D.6419, D.6419,
	fmov	d12, xzr	// resid_max,
.L135:
	ldr	d0, [x0]	// resid_max, MEM[base: _128, offset: 0B]
	fcmpe	d0, #0.0	// resid_max
	bge	.L133	//,
	fneg	d0, d0	// resid_max, resid_max
.L133:
	fcmpe	d0, d12	// resid_max, resid_max
	fcsel	d12, d12, d0, mi	// resid_max, resid_max, resid_max,
	add	x0, x0, 8	// ivtmp.193, ivtmp.193,
	cmp	x0, x1	// ivtmp.193, D.6419
	bne	.L135	//,
	add	x0, x24, 4096	// D.6419, b,
	add	x0, x0, 3904	// D.6419, D.6419,
	fmov	d13, xzr	// b_max,
.L138:
	ldr	d0, [x20]	// b_max, MEM[base: _40, offset: 0B]
	fcmpe	d0, #0.0	// b_max
	bge	.L136	//,
	fneg	d0, d0	// b_max, b_max
.L136:
	fcmpe	d0, d13	// b_max, b_max
	fcsel	d13, d13, d0, mi	// b_max, b_max, b_max,
	add	x20, x20, 8	// ivtmp.185, ivtmp.185,
	cmp	x20, x0	// ivtmp.185, D.6419
	bne	.L138	//,
	bl	r8_epsilon	//
	fmov	d14, d0	// eps,
	ldr	d0, .LC13	// tmp271,
	fdiv	d0, d12, d0	// D.6422, resid_max, tmp271
	fdiv	d8, d0, d8	// D.6422, D.6422, a_max
	fdiv	d8, d8, d13	// D.6422, D.6422, b_max
	fdiv	d8, d8, d14	// residn, D.6422, eps
	fcmpe	d11, #0.0	// total
	ble	.L154	//,
	ldr	d13, .LC14	// tmp275,
	fmul	d0, d11, d13	// D.6422, total, tmp275
	ldr	d13, .LC15	// tmp276,
	fdiv	d13, d13, d0	// time$3, tmp276, D.6422
	b	.L139	//
.L154:
	fmov	d13, -1.0e+0	// time$3,
.L139:
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC16	// tmp278,
	add	x0, x0, :lo12:.LC16	//, tmp278,
	bl	puts	//
	mov	w0, 10	//,
	bl	putchar	//
	ldr	d4, [x24, 7992]	//, MEM[(double *)b_45 + 7992B]
	ldr	d3, [x24]	//, *b_45
	fmov	d2, d14	//, eps
	fmov	d1, d12	//, resid_max
	fmov	d0, d8	//, residn
	adrp	x1, .LC17	// tmp282,
	add	x1, x1, :lo12:.LC17	//, tmp282,
	mov	w0, 1	//,
	bl	__printf_chk	//
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC18	// tmp284,
	add	x0, x0, :lo12:.LC18	//, tmp284,
	bl	puts	//
	mov	w0, 10	//,
	bl	putchar	//
	ldr	d5, .LC19	// tmp286,
	fdiv	d5, d11, d5	//, total, tmp286
	fmov	d4, 2.0e+0	// tmp288,
	fdiv	d4, d4, d13	//, tmp288, time$3
	fmov	d3, d13	//, time$3
	fmov	d2, d11	//, total
	fmov	d1, d10	//, D.6422
	fmov	d0, d9	//, D.6422
	adrp	x1, .LC20	// tmp290,
	add	x1, x1, :lo12:.LC20	//, tmp290,
	mov	w0, 1	//,
	bl	__printf_chk	//
	mov	x0, x19	//, a
	bl	free	//
	mov	x0, x24	//, b
	bl	free	//
	mov	x0, x27	//, ipvt
	bl	free	//
	mov	x0, x22	//, resid
	bl	free	//
	mov	x0, x23	//, rhs
	bl	free	//
	mov	x0, x25	//, x
	bl	free	//
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC3	// tmp292,
	add	x0, x0, :lo12:.LC3	//, tmp292,
	bl	puts	//
	adrp	x0, .LC21	// tmp294,
	add	x0, x0, :lo12:.LC21	//, tmp294,
	bl	puts	//
	mov	w0, 10	//,
	bl	putchar	//
	bl	timestamp	//
	mov	w0, 0	// D.6418,
.L127:
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x23, x24, [sp, 48]	//,,
	ldp	x25, x26, [sp, 64]	//,,
	ldr	x27, [sp, 80]	//,
	ldp	d8, d9, [sp, 88]	//,,
	ldp	d10, d11, [sp, 104]	//,,
	ldp	d12, d13, [sp, 120]	//,,
	ldr	d14, [sp, 136]	//,
	ldp	x29, x30, [sp], 144	//,,,
	ret
	.size	main, .-main
	.align	3
.LC13:
	.word	0
	.word	1083129856
	.align	3
.LC14:
	.word	0
	.word	1093567616
	.align	3
.LC15:
	.word	2505397589
	.word	1103359365
	.align	3
.LC19:
	.word	824633721
	.word	1068280840
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC2:
	.string	"%d %B %Y %I:%M:%S %p"
	.zero	3
.LC3:
	.string	"LINPACK_BENCH"
	.zero	2
.LC4:
	.string	"  C version"
	.zero	4
.LC5:
	.string	"  The LINPACK benchmark."
	.zero	7
.LC6:
	.string	"  Language: C"
	.zero	2
.LC7:
	.string	"  Datatype: Double precision real"
	.zero	6
.LC8:
	.string	"  Matrix order N               = %d\n"
	.zero	3
.LC9:
	.string	"  Leading matrix dimension LDA = %d\n"
	.zero	3
.LC10:
	.string	"LINPACK_BENCH - Fatal error!"
	.zero	3
.LC11:
	.string	"  The matrix A is apparently singular."
	.zero	1
.LC12:
	.string	"  Abnormal end of execution."
	.zero	3
.LC16:
	.string	"     Norm. Resid      Resid           MACHEP         X[1]          X[N]"
.LC17:
	.string	"  %14f  %14f  %14e  %14f  %14f\n"
.LC18:
	.string	"      Factor     Solve      Total     MFLOPS       Unit      Cray-Ratio"
.LC20:
	.string	"  %9f  %9f  %9f  %9f  %9f  %9f\n"
.LC21:
	.string	"  Normal end of execution."
	.bss
	.align	3
.LANCHOR0 = . + 0
	.type	time_buffer.5533, %object
	.size	time_buffer.5533, 40
time_buffer.5533:
	.zero	40
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
