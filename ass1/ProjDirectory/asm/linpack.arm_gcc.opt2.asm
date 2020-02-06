	.arch armv8-a
	.file	"linpack.c"
// GNU C11 (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.11) version 5.4.0 20160609 (aarch64-linux-gnu)
//	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -imultiarch aarch64-linux-gnu ../source/linpack.c
// -mlittle-endian -mabi=lp64
// -auxbase-strip ../asm/linpack.arm_gcc.opt2.asm -O2 -fverbose-asm
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
	.type	dscal.part.2, %function
dscal.part.2:
	mov	w2, 26215	// tmp145,
	mov	x3, 0	// ivtmp.33,
	movk	w2, 0x6666, lsl 16	// tmp145,,
	smull	x2, w0, w2	// tmp144, n, tmp145
	asr	x2, x2, 33	// tmp147, tmp144,
	sub	w2, w2, w0, asr 31	// i, tmp147, n,
	add	w2, w2, w2, lsl 2	// tmp151, i, i,
	sub	w2, w0, w2	// i, n, tmp151
	cmp	w2, 0	// i,
	ble	.L6	//,
	.p2align 2
.L8:
	ldr	d1, [x1, x3, lsl 3]	// MEM[base: x_6(D), index: ivtmp.33_13, step: 8, offset: 0B], MEM[base: x_6(D), index: ivtmp.33_13, step: 8, offset: 0B]
	fmul	d1, d1, d0	// D.6187, MEM[base: x_6(D), index: ivtmp.33_13, step: 8, offset: 0B], sa
	str	d1, [x1, x3, lsl 3]	// D.6187, MEM[base: x_6(D), index: ivtmp.33_13, step: 8, offset: 0B]
	add	x3, x3, 1	// ivtmp.33, ivtmp.33,
	cmp	w2, w3	// i, ivtmp.33
	bgt	.L8	//,
.L6:
	cmp	w0, w2	// n, i
	add	x1, x1, x2, sxtw 3	// ivtmp.29, x, i,
	ble	.L12	//,
	.p2align 2
.L7:
	ldp	d5, d4, [x1]	// MEM[base: _70, offset: 0B], MEM[base: _70, offset: 8B], MEM[base: _70, offset: 0B]
	add	w2, w2, 5	// i, i,
	ldp	d3, d2, [x1, 16]	// MEM[base: _70, offset: 16B], MEM[base: _70, offset: 24B], MEM[base: _70, offset: 16B]
	add	x1, x1, 40	// ivtmp.29, ivtmp.29,
	ldr	d1, [x1, -8]	// MEM[base: _70, offset: 32B], MEM[base: _70, offset: 32B]
	cmp	w0, w2	// n, i
	fmul	d5, d5, d0	// D.6187, MEM[base: _70, offset: 0B], sa
	fmul	d4, d4, d0	// D.6187, MEM[base: _70, offset: 8B], sa
	fmul	d3, d3, d0	// D.6187, MEM[base: _70, offset: 16B], sa
	fmul	d2, d2, d0	// D.6187, MEM[base: _70, offset: 24B], sa
	fmul	d1, d1, d0	// D.6187, MEM[base: _70, offset: 32B], sa
	stp	d5, d4, [x1, -40]	// D.6187, D.6187, MEM[base: _70, offset: 0B]
	stp	d3, d2, [x1, -24]	// D.6187, D.6187, MEM[base: _70, offset: 16B]
	str	d1, [x1, -8]	// D.6187, MEM[base: _70, offset: 32B]
	bgt	.L7	//,
	ret
.L12:
	ret
	.size	dscal.part.2, .-dscal.part.2
	.align	2
	.p2align 3,,7
	.type	idamax.part.3, %function
idamax.part.3:
	ldr	d1, [x1]	// dmax, *dx_1(D)
	fcmpe	d1, #0.0	// dmax
	blt	.L27	//,
.L14:
	cmp	w0, 1	// n,
	ble	.L22	//,
	add	x1, x1, 8	// ivtmp.41, dx,
	mov	w2, 2	// ivtmp.44,
	mov	w4, 1	// value,
	b	.L19	//
	.p2align 3
.L20:
	fmov	d1, d0	// dmax, dmax
	mov	w4, w2	// value, ivtmp.44
.L18:
	cmp	w0, w3	// n, D.6201
	add	x1, x1, 8	// ivtmp.41, ivtmp.41,
	add	w2, w2, 1	// ivtmp.44, ivtmp.44,
	ble	.L25	//,
.L19:
	ldr	d0, [x1]	// dmax, MEM[base: _14, offset: 0B]
	fcmpe	d0, #0.0	// dmax
	blt	.L28	//,
	fcmpe	d0, d1	// dmax, dmax
	mov	w3, w2	// D.6201, ivtmp.44
	bgt	.L20	//,
.L26:
	mov	w3, w2	// D.6201, ivtmp.44
.L29:
	cmp	w0, w3	// n, D.6201
	add	x1, x1, 8	// ivtmp.41, ivtmp.41,
	add	w2, w2, 1	// ivtmp.44, ivtmp.44,
	bgt	.L19	//,
.L25:
	mov	w0, w4	//, value
	ret
	.p2align 3
.L28:
	fneg	d2, d0	// dmax, dmax
	mov	w3, w2	// D.6201, ivtmp.44
	fcmpe	d2, d1	// dmax, dmax
	ble	.L26	//,
	fcmpe	d0, #0.0	// dmax
	mov	w4, w2	// value, ivtmp.44
	fmov	d1, d2	// dmax, dmax
	blt	.L18	//,
	fmov	d1, d0	// dmax, dmax
	mov	w3, w2	// D.6201, ivtmp.44
	b	.L29	//
	.p2align 3
.L27:
	fneg	d1, d1	// dmax, dmax
	b	.L14	//
.L22:
	mov	w4, 1	// value,
	b	.L25	//
	.size	idamax.part.3, .-idamax.part.3
	.align	2
	.p2align 3,,7
	.global	cpu_time
	.type	cpu_time, %function
cpu_time:
	stp	x29, x30, [sp, -16]!	//,,,
	add	x29, sp, 0	//,,
	bl	clock	//
	scvtf	d1, x0	// D.6205,
	ldr	d0, .LC0	// tmp79,
	ldp	x29, x30, [sp], 16	//,,,
	fdiv	d0, d1, d0	//, D.6205, tmp79
	ret
	.size	cpu_time, .-cpu_time
	.align	3
.LC0:
	.word	0
	.word	1093567616
	.align	2
	.p2align 3,,7
	.global	daxpy
	.type	daxpy, %function
daxpy:
	cmp	w0, 0	// n,
	cset	w6, le	// tmp148,
	fcmp	d0, #0.0	// da
	cset	w5, eq	// tmp150,
	orr	w5, w6, w5	// tmp153, tmp148, tmp150
	cbnz	w5, .L32	// tmp153,
	cmp	w2, 1	// incx,
	ccmp	w4, 1, 0, eq	// incy,,,
	bne	.L52	//,
	ands	w5, w0, 3	// i, n,
	mov	x2, 0	// ivtmp.71,
	beq	.L40	//,
	.p2align 2
.L46:
	ldr	d1, [x1, x2, lsl 3]	// MEM[base: dx_20(D), index: ivtmp.71_4, step: 8, offset: 0B], MEM[base: dx_20(D), index: ivtmp.71_4, step: 8, offset: 0B]
	ldr	d2, [x3, x2, lsl 3]	// MEM[base: dy_17(D), index: ivtmp.71_4, step: 8, offset: 0B], MEM[base: dy_17(D), index: ivtmp.71_4, step: 8, offset: 0B]
	fmadd	d1, d0, d1, d2	// D.6249, da, MEM[base: dx_20(D), index: ivtmp.71_4, step: 8, offset: 0B], MEM[base: dy_17(D), index: ivtmp.71_4, step: 8, offset: 0B]
	str	d1, [x3, x2, lsl 3]	// D.6249, MEM[base: dy_17(D), index: ivtmp.71_4, step: 8, offset: 0B]
	add	x2, x2, 1	// ivtmp.71, ivtmp.71,
	cmp	w5, w2	// i, ivtmp.71
	bgt	.L46	//,
	cmp	w0, w5	// n, i
	ble	.L53	//,
.L40:
	sub	w4, w0, #1	// D.6252, n,
	sxtw	x2, w5	// i, i
	sub	w4, w4, w5	// D.6252, D.6252, i
	add	x5, x2, 4	// D.6250, i,
	lsl	x2, x2, 3	// D.6247, i,
	lsr	w4, w4, 2	// D.6252, D.6252,
	add	x0, x3, x2	// ivtmp.67, dy, D.6247
	add	x1, x1, x2	// ivtmp.69, dx, D.6247
	add	x2, x5, x4, uxtw 2	// D.6250, D.6250, D.6252,
	add	x3, x3, x2, lsl 3	// D.6251, dy, D.6250,
	.p2align 2
.L43:
	ldp	d3, d2, [x0]	// MEM[base: _134, offset: 0B], MEM[base: _134, offset: 8B], MEM[base: _134, offset: 0B]
	add	x1, x1, 32	// ivtmp.69, ivtmp.69,
	ldr	d4, [x1, -32]	// MEM[base: _127, offset: 0B], MEM[base: _127, offset: 0B]
	ldp	d1, d5, [x0, 16]	// MEM[base: _134, offset: 16B], MEM[base: _134, offset: 24B], MEM[base: _134, offset: 16B]
	add	x0, x0, 32	// ivtmp.67, ivtmp.67,
	cmp	x0, x3	// ivtmp.67, D.6251
	fmadd	d4, d0, d4, d3	// D.6249, da, MEM[base: _127, offset: 0B], MEM[base: _134, offset: 0B]
	str	d4, [x0, -32]	// D.6249, MEM[base: _134, offset: 0B]
	ldr	d3, [x1, -24]	// MEM[base: _127, offset: 8B], MEM[base: _127, offset: 8B]
	fmadd	d3, d0, d3, d2	// D.6249, da, MEM[base: _127, offset: 8B], MEM[base: _134, offset: 8B]
	str	d3, [x0, -24]	// D.6249, MEM[base: _134, offset: 8B]
	ldr	d2, [x1, -16]	// MEM[base: _127, offset: 16B], MEM[base: _127, offset: 16B]
	fmadd	d2, d0, d2, d1	// D.6249, da, MEM[base: _127, offset: 16B], MEM[base: _134, offset: 16B]
	str	d2, [x0, -16]	// D.6249, MEM[base: _134, offset: 16B]
	ldr	d1, [x1, -8]	// MEM[base: _127, offset: 24B], MEM[base: _127, offset: 24B]
	fmadd	d1, d0, d1, d5	// D.6249, da, MEM[base: _127, offset: 24B], MEM[base: _134, offset: 24B]
	str	d1, [x0, -8]	// D.6249, MEM[base: _134, offset: 24B]
	bne	.L43	//,
.L32:
	ret
	.p2align 3
.L52:
	mov	w6, 0	// ix,
	tbnz	w2, #31, .L54	// incx,
.L35:
	mov	w5, 0	// iy,
	tbnz	w4, #31, .L55	// incy,
.L36:
	add	x1, x1, x6, sxtw 3	// ivtmp.60, dx, ix,
	add	x3, x3, x5, sxtw 3	// ivtmp.58, dy, iy,
	mov	w5, 0	// i,
	.p2align 2
.L37:
	ldr	d1, [x1]	// MEM[base: _138, offset: 0B], MEM[base: _138, offset: 0B]
	add	w5, w5, 1	// i, i,
	ldr	d2, [x3]	// MEM[base: _139, offset: 0B], MEM[base: _139, offset: 0B]
	cmp	w0, w5	// n, i
	add	x1, x1, x2, sxtw 3	// ivtmp.60, ivtmp.60, incx,
	fmadd	d1, d0, d1, d2	// D.6249, da, MEM[base: _138, offset: 0B], MEM[base: _139, offset: 0B]
	str	d1, [x3]	// D.6249, MEM[base: _139, offset: 0B]
	add	x3, x3, x4, sxtw 3	// ivtmp.58, ivtmp.58, incy,
	bgt	.L37	//,
	ret
	.p2align 3
.L55:
	mov	w5, 1	// tmp160,
	sub	w5, w5, w0	// D.6246, tmp160, n
	mul	w5, w5, w4	// iy, D.6246, incy
	b	.L36	//
	.p2align 3
.L54:
	mov	w6, 1	// tmp158,
	sub	w6, w6, w0	// D.6246, tmp158, n
	mul	w6, w6, w2	// ix, D.6246, incx
	b	.L35	//
.L53:
	ret
	.size	daxpy, .-daxpy
	.align	2
	.p2align 3,,7
	.global	ddot
	.type	ddot, %function
ddot:
	cmp	w0, 0	// n,
	ble	.L65	//,
	cmp	w2, 1	// incx,
	ccmp	w4, 1, 0, eq	// incy,,,
	beq	.L58	//,
	mov	w6, 0	// ix,
	tbnz	w2, #31, .L72	// incx,
.L59:
	mov	w5, 0	// iy,
	tbnz	w4, #31, .L73	// incy,
.L60:
	fmov	d0, xzr	// dtemp,
	add	x1, x1, x6, sxtw 3	// ivtmp.87, dx, ix,
	add	x3, x3, x5, sxtw 3	// ivtmp.89, dy, iy,
	mov	w5, 0	// i,
	.p2align 2
.L61:
	ldr	d2, [x1]	// MEM[base: _191, offset: 0B], MEM[base: _191, offset: 0B]
	add	w5, w5, 1	// i, i,
	ldr	d1, [x3]	// MEM[base: _190, offset: 0B], MEM[base: _190, offset: 0B]
	cmp	w0, w5	// n, i
	add	x1, x1, x2, sxtw 3	// ivtmp.87, ivtmp.87, incx,
	add	x3, x3, x4, sxtw 3	// ivtmp.89, ivtmp.89, incy,
	fmadd	d0, d2, d1, d0	// dtemp, MEM[base: _191, offset: 0B], MEM[base: _190, offset: 0B], dtemp
	bne	.L61	//,
	ret
	.p2align 3
.L58:
	mov	w4, 26215	// tmp154,
	fmov	d0, xzr	// dtemp,
	movk	w4, 0x6666, lsl 16	// tmp154,,
	smull	x4, w0, w4	// tmp153, n, tmp154
	asr	x4, x4, 33	// tmp156, tmp153,
	sub	w4, w4, w0, asr 31	// i, tmp156, n,
	add	w4, w4, w4, lsl 2	// tmp160, i, i,
	subs	w4, w0, w4	// i, n, tmp160
	beq	.L62	//,
	mov	x2, 0	// ivtmp.100,
	.p2align 2
.L63:
	ldr	d2, [x1, x2, lsl 3]	// MEM[base: dx_21(D), index: ivtmp.100_51, step: 8, offset: 0B], MEM[base: dx_21(D), index: ivtmp.100_51, step: 8, offset: 0B]
	ldr	d1, [x3, x2, lsl 3]	// MEM[base: dy_27(D), index: ivtmp.100_51, step: 8, offset: 0B], MEM[base: dy_27(D), index: ivtmp.100_51, step: 8, offset: 0B]
	add	x2, x2, 1	// ivtmp.100, ivtmp.100,
	cmp	w4, w2	// i, ivtmp.100
	fmadd	d0, d2, d1, d0	// dtemp, MEM[base: dx_21(D), index: ivtmp.100_51, step: 8, offset: 0B], MEM[base: dy_27(D), index: ivtmp.100_51, step: 8, offset: 0B], dtemp
	bgt	.L63	//,
	cmp	w0, w4	// n, i
	ble	.L74	//,
.L62:
	sbfiz	x2, x4, 3, 32	// D.6296, i,,
	add	x1, x1, x2	// ivtmp.96, dx, D.6296
	add	x3, x3, x2	// ivtmp.98, dy, D.6296
	.p2align 2
.L64:
	ldp	d1, d4, [x1]	// MEM[base: _187, offset: 0B], MEM[base: _187, offset: 8B], MEM[base: _187, offset: 0B]
	add	w4, w4, 5	// i, i,
	ldp	d5, d16, [x3]	// MEM[base: _182, offset: 0B], MEM[base: _182, offset: 8B], MEM[base: _182, offset: 0B]
	cmp	w0, w4	// n, i
	ldp	d3, d2, [x1, 16]	// MEM[base: _187, offset: 16B], MEM[base: _187, offset: 24B], MEM[base: _187, offset: 16B]
	add	x1, x1, 40	// ivtmp.96, ivtmp.96,
	ldp	d7, d6, [x3, 16]	// MEM[base: _182, offset: 16B], MEM[base: _182, offset: 24B], MEM[base: _182, offset: 16B]
	fmadd	d0, d1, d5, d0	// D.6298, MEM[base: _187, offset: 0B], MEM[base: _182, offset: 0B], dtemp
	ldr	d1, [x1, -8]	// MEM[base: _187, offset: 32B], MEM[base: _187, offset: 32B]
	fmadd	d0, d4, d16, d0	// D.6298, MEM[base: _187, offset: 8B], MEM[base: _182, offset: 8B], D.6298
	ldr	d5, [x3, 32]	// MEM[base: _182, offset: 32B], MEM[base: _182, offset: 32B]
	add	x3, x3, 40	// ivtmp.98, ivtmp.98,
	fmadd	d0, d3, d7, d0	// D.6298, MEM[base: _187, offset: 16B], MEM[base: _182, offset: 16B], D.6298
	fmadd	d0, d2, d6, d0	// D.6298, MEM[base: _187, offset: 24B], MEM[base: _182, offset: 24B], D.6298
	fmadd	d0, d1, d5, d0	// dtemp, MEM[base: _187, offset: 32B], MEM[base: _182, offset: 32B], D.6298
	bgt	.L64	//,
	ret
	.p2align 3
.L65:
	fmov	d0, xzr	// dtemp,
	ret
	.p2align 3
.L73:
	mov	w5, 1	// tmp142,
	sub	w5, w5, w0	// D.6295, tmp142, n
	mul	w5, w5, w4	// iy, D.6295, incy
	b	.L60	//
	.p2align 3
.L72:
	mov	w6, 1	// tmp140,
	sub	w6, w6, w0	// D.6295, tmp140, n
	mul	w6, w6, w2	// ix, D.6295, incx
	b	.L59	//
.L74:
	ret
	.size	ddot, .-ddot
	.align	2
	.p2align 3,,7
	.global	dgefa
	.type	dgefa, %function
dgefa:
	stp	x29, x30, [sp, -128]!	//,,,
	cmp	w2, 1	// n,
	mov	w11, w2	// n, n
	mov	w14, w1	// lda, lda
	add	x29, sp, 0	//,,
	stp	x27, x28, [sp, 80]	//,,
	mov	x28, x0	// a, a
	stp	x19, x20, [sp, 16]	//,,
	stp	x21, x22, [sp, 32]	//,,
	stp	x23, x24, [sp, 48]	//,,
	stp	x25, x26, [sp, 64]	//,,
	str	x3, [x29, 104]	// ipvt, %sfp
	ble	.L90	//,
	sxtw	x27, w1	// D.6336, lda
	mov	x22, x0	// ivtmp.122, a
	add	x27, x27, 1	// D.6336, D.6336,
	add	w26, w1, 1	// D.6332, lda,
	mov	w25, w1	// ivtmp.132, lda
	fmov	d6, -1.0e+0	// tmp246,
	mov	x12, 1	// ivtmp.134,
	mov	w24, 0	// ivtmp.131,
	lsl	x0, x27, 3	// D.6336, D.6336,
	mov	w21, 2	// ivtmp.128,
	sub	x20, x0, #8	// D.6336, D.6336,
	mov	w19, 0	// ivtmp.127,
	str	x0, [x29, 120]	// D.6336, %sfp
	add	w0, w2, 1	// D.6331, n,
	mov	x27, x28	// a, a
	ldr	x23, [x29, 104]	// ivtmp.125, %sfp
	str	wzr, [x29, 112]	//, %sfp
	str	w0, [x29, 116]	// D.6331, %sfp
	b	.L84	//
	.p2align 3
.L92:
	mov	w0, w21	// D.6332, ivtmp.128
	add	w19, w14, w19	// ivtmp.127, lda, ivtmp.127
	str	w12, [x29, 112]	// ivtmp.134, %sfp
.L79:
	cmp	w11, w0	// n, D.6332
	ldr	x0, [x29, 120]	// D.6336, %sfp
	add	x23, x23, 4	// ivtmp.125, ivtmp.125,
	add	w21, w21, 1	// ivtmp.128, ivtmp.128,
	add	w24, w24, w26	// ivtmp.131, ivtmp.131, D.6332
	add	w25, w25, w26	// ivtmp.132, ivtmp.132, D.6332
	add	x12, x12, 1	// ivtmp.134, ivtmp.134,
	add	x22, x22, x0	// ivtmp.122, ivtmp.122, D.6336
	ble	.L91	//,
.L84:
	ldr	w0, [x29, 116]	//, %sfp
	mov	x1, x22	//, ivtmp.122
	mov	w15, w12	// n, ivtmp.134
	sub	w13, w11, w12	// D.6332, n, ivtmp.134
	sub	w0, w0, w12	//, D.6331, ivtmp.134
	bl	idamax.part.3	//
	add	w0, w0, w12	// D.6332,, ivtmp.134
	sub	w9, w0, #2	// D.6332, D.6332,
	sub	w10, w0, #1	// l, D.6332,
	add	w0, w19, w9	// D.6332, ivtmp.127, D.6332
	sxtw	x0, w0	// D.6332, D.6332
	ldr	d0, [x27, x0, lsl 3]	// D.6335, *_36
	str	w10, [x23]	// l, MEM[base: _143, offset: 0B]
	fcmp	d0, #0.0	// D.6335
	beq	.L92	//,
	cmp	w10, w12	// l, ivtmp.134
	beq	.L93	//,
	sxtw	x1, w24	// D.6332, ivtmp.131
	ldr	x2, [x27, x1, lsl 3]	// D.6335, *_42
	str	x2, [x27, x0, lsl 3]	// D.6335, *_36
	str	d0, [x27, x1, lsl 3]	// D.6335, *_42
.L81:
	fdiv	d0, d6, d0	//, tmp246, D.6335
	add	x18, x22, 8	// D.6333, ivtmp.122,
	mov	x1, x18	//, D.6333
	mov	w0, w13	//, D.6332
	bl	dscal.part.2	//
	cmp	w11, w21	// n, ivtmp.128
	add	w19, w14, w19	// ivtmp.127, lda, ivtmp.127
	blt	.L86	//,
	add	x7, x12, x19, sxtw	// D.6336, ivtmp.134, ivtmp.127
	sxtw	x9, w9	// D.6336, D.6332
	mov	w28, w25	// ivtmp.115, ivtmp.132
	mov	w8, w21	// j, ivtmp.128
	sub	x9, x9, x12	// D.6336, D.6336, ivtmp.134
	add	x7, x27, x7, lsl 3	// ivtmp.113, a, D.6336,
	.p2align 2
.L83:
	cmp	w10, w15	// l, n
	mov	w4, 1	//,
	sxtw	x5, w28	// D.6332, ivtmp.115
	mov	x3, x7	//, ivtmp.113
	mov	w2, w4	//,
	mov	x1, x18	//, D.6333
	mov	w0, w13	//, D.6332
	add	w8, w8, w4	// j, j, tmp2
	ldr	d0, [x7, x9, lsl 3]	// t, MEM[base: _110, index: _104, step: 8, offset: 0B]
	add	w28, w28, w14	// ivtmp.115, ivtmp.115, lda
	beq	.L82	//,
	ldr	x6, [x27, x5, lsl 3]	// D.6335, *_65
	str	x6, [x7, x9, lsl 3]	// D.6335, MEM[base: _110, index: _104, step: 8, offset: 0B]
	str	d0, [x27, x5, lsl 3]	// t, *_65
.L82:
	add	x7, x7, x20	// ivtmp.113, ivtmp.113, D.6336
	bl	daxpy	//
	cmp	w11, w8	// n, j
	bge	.L83	//,
.L86:
	mov	w0, w21	// D.6332, ivtmp.128
	b	.L79	//
	.p2align 3
.L93:
	ldr	d0, [x27, w24, sxtw 3]	// D.6335, *_158
	b	.L81	//
	.p2align 3
.L91:
	mov	x28, x27	// a, a
.L77:
	sub	w1, w11, #1	// D.6332, n,
	ldr	x0, [x29, 104]	// ipvt, %sfp
	ldp	x19, x20, [sp, 16]	//,,
	mul	w26, w1, w26	// D.6332, D.6332, D.6332
	add	x0, x0, x11, sxtw 2	// D.6336, ipvt, n,,
	ldp	x21, x22, [sp, 32]	//,,
	ldr	d0, [x28, w26, sxtw 3]	// *_86, *_86
	ldp	x23, x24, [sp, 48]	//,,
	ldp	x25, x26, [sp, 64]	//,,
	fcmp	d0, #0.0	// *_86
	ldp	x27, x28, [sp, 80]	//,,
	str	w11, [x0, -4]	// n, *_79
	ldr	w0, [x29, 112]	//, %sfp
	ldp	x29, x30, [sp], 128	//,,,
	csel	w0, w11, w0, eq	//, n, n,
	ret
.L90:
	add	w26, w1, 1	// D.6332, lda,
	str	wzr, [x29, 112]	//, %sfp
	b	.L77	//
	.size	dgefa, .-dgefa
	.align	2
	.p2align 3,,7
	.global	dgesl
	.type	dgesl, %function
dgesl:
	stp	x29, x30, [sp, -32]!	//,,,
	mov	x12, x0	// a, a
	mov	w15, w1	// lda, lda
	mov	w10, w2	// n, n
	add	x29, sp, 0	//,,
	stp	x19, x20, [sp, 16]	//,,
	mov	x18, x3	// ipvt, ipvt
	mov	x7, x4	// b, b
	cbz	w5, .L95	// job,
	cmp	w2, 0	// n,
	ble	.L115	//,
	sub	w11, w2, #1	//, n,
	sbfiz	x19, x1, 3, 32	// D.6399, lda,,
	mov	x8, x11	//,
	mov	x14, x0	// ivtmp.189, a
	add	x20, x19, 8	// D.6399, D.6399,
	add	x11, x11, 1	// D.6401, D.6401,
	mov	x13, x0	// ivtmp.185, a
	mov	x9, 0	// ivtmp.182,
	.p2align 2
.L104:
	mov	w4, 1	//,
	mov	x1, x13	//, ivtmp.185
	mov	w0, w9	//, ivtmp.182
	mov	x3, x7	//, b
	mov	w2, w4	//,
	add	x13, x13, x19	// ivtmp.185, ivtmp.185, D.6399
	bl	ddot	//
	ldr	d1, [x7, x9, lsl 3]	// MEM[base: b_22(D), index: ivtmp.182_51, step: 8, offset: 0B], MEM[base: b_22(D), index: ivtmp.182_51, step: 8, offset: 0B]
	ldr	d2, [x14]	// MEM[base: _143, offset: 0B], MEM[base: _143, offset: 0B]
	add	x14, x14, x20	// ivtmp.189, ivtmp.189, D.6399
	fsub	d0, d1, d0	// D.6398, MEM[base: b_22(D), index: ivtmp.182_51, step: 8, offset: 0B],
	fdiv	d0, d0, d2	// D.6398, D.6398, MEM[base: _143, offset: 0B]
	str	d0, [x7, x9, lsl 3]	// D.6398, MEM[base: b_22(D), index: ivtmp.182_51, step: 8, offset: 0B]
	add	x9, x9, 1	// ivtmp.182, ivtmp.182,
	cmp	x9, x11	// ivtmp.182, D.6401
	bne	.L104	//,
.L105:
	cmp	w8, 0	// k,
	ble	.L94	//,
	sub	w2, w10, #2	// D.6396, n,
	sxtw	x10, w8	// k, k
	mov	x1, x10	// k, k
	mov	x11, -4	// tmp238,
	add	x9, x7, x10, lsl 3	// ivtmp.173, b, k,
	mov	x14, -8	// tmp228,
	mul	w10, w2, w15	// D.6396, D.6396, lda
	neg	w0, w15	// D.6396, lda
	add	x11, x11, x8, sxtw 2	// D.6400, tmp238, k,
	mov	w13, 1	// ivtmp.174,
	add	x10, x1, x10, sxtw	// D.6400, k, D.6396
	add	x15, x14, x0, sxtw 3	// D.6400, tmp228, D.6396,
	add	x11, x18, x11	// ivtmp.177, ipvt, D.6400
	add	x10, x12, x10, lsl 3	// ivtmp.175, a, D.6400,
	.p2align 2
.L107:
	mov	w4, 1	//,
	mov	x1, x10	//, ivtmp.175
	mov	w0, w13	//, ivtmp.174
	sub	w12, w8, #1	// k, k,
	mov	x3, x9	//, ivtmp.173
	mov	w2, w4	//,
	add	w13, w13, w4	// ivtmp.174, ivtmp.174, tmp2
	add	x10, x10, x15	// ivtmp.175, ivtmp.175, D.6400
	bl	ddot	//
	ldr	d1, [x9, -8]	// MEM[base: _146, offset: -8B], MEM[base: _146, offset: -8B]
	ldr	w1, [x11]	//, MEM[base: _145, offset: 0B]
	sub	x11, x11, #4	// ivtmp.177, ivtmp.177,
	cmp	w1, w8	// l, k
	mov	w8, w12	// k, k
	fadd	d0, d0, d1	// D.6398,, MEM[base: _146, offset: -8B]
	add	x1, x14, x1, sxtw 3	// D.6400, tmp248, l,
	str	d0, [x9, -8]	// D.6398, MEM[base: _146, offset: -8B]
	beq	.L106	//,
	ldr	x0, [x7, x1]	// t, *_68
	str	d0, [x7, x1]	// D.6398, *_68
	str	x0, [x9, -8]	// t, MEM[base: _146, offset: -8B]
.L106:
	sub	x9, x9, #8	// ivtmp.173, ivtmp.173,
	cbnz	w8, .L107	// k,
.L94:
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x29, x30, [sp], 32	//,,,
	ret
	.p2align 3
.L95:
	cmp	w2, 1	// n,
	ble	.L116	//,
	sxtw	x19, w1	// D.6400, lda
	sub	w8, w2, #1	// n, n,
	add	x19, x19, 1	// D.6400, D.6400,
	mov	w11, w8	// ivtmp.158, n
	add	x14, x0, 8	// ivtmp.161, a,
	mov	x13, 8	// ivtmp.156,
	mov	x9, 0	// ivtmp.151,
	mov	x20, -8	// tmp201,
	lsl	x19, x19, 3	// D.6400, D.6400,
	.p2align 2
.L102:
	ldr	w5, [x18, x9, lsl 2]	//, MEM[base: ipvt_62(D), index: ivtmp.151_106, step: 4, offset: 0B]
	mov	w4, 1	//,
	add	w6, w9, w4	// D.6402, ivtmp.151, tmp2
	add	x3, x7, x13	//, b, ivtmp.156
	cmp	w5, w6	// l, D.6402
	mov	x1, x14	//, ivtmp.161
	add	x5, x20, x5, sxtw 3	// D.6400, tmp201, l,
	mov	w0, w11	//, ivtmp.158
	mov	w2, w4	//,
	add	x13, x13, 8	// ivtmp.156, ivtmp.156,
	add	x14, x14, x19	// ivtmp.161, ivtmp.161, D.6400
	ldr	d0, [x7, x5]	// t, *_80
	beq	.L101	//,
	ldr	x6, [x7, x9, lsl 3]	// D.6398, MEM[base: b_22(D), index: ivtmp.151_106, step: 8, offset: 0B]
	str	x6, [x7, x5]	// D.6398, *_80
	str	d0, [x7, x9, lsl 3]	// t, MEM[base: b_22(D), index: ivtmp.151_106, step: 8, offset: 0B]
.L101:
	add	x9, x9, 1	// ivtmp.151, ivtmp.151,
	bl	daxpy	//
	subs	w11, w11, #1	// ivtmp.158, ivtmp.158,
	bne	.L102	//,
.L100:
	add	w0, w15, 1	// D.6396, lda,
	mul	w11, w15, w8	// D.6396, lda, n
	neg	w14, w0	// D.6396, D.6396
	add	x13, x7, x10, sxtw 3	// ivtmp.145, b, n,
	add	x11, x12, x11, sxtw 3	// ivtmp.148, a, D.6396,
	neg	w10, w15	// D.6396, lda
	mul	w0, w8, w0	// D.6396, n, D.6396
	add	x9, x12, x0, sxtw 3	// ivtmp.146, a, D.6396,
	b	.L103	//
	.p2align 3
.L117:
	sub	w8, w8, #1	// n, n,
.L103:
	ldr	d0, [x9]	// MEM[base: _177, offset: 0B], MEM[base: _177, offset: 0B]
	mov	w4, 1	//,
	ldr	d1, [x13, -8]	// MEM[base: _178, offset: -8B], MEM[base: _178, offset: -8B]
	mov	x1, x11	//, ivtmp.148
	mov	w0, w8	//, n
	mov	x3, x7	//, b
	mov	w2, w4	//,
	add	x11, x11, x10, sxtw 3	// ivtmp.148, ivtmp.148, D.6396,
	add	x9, x9, x14, sxtw 3	// ivtmp.146, ivtmp.146, D.6396,
	fdiv	d1, d1, d0	// D.6398, MEM[base: _178, offset: -8B], MEM[base: _177, offset: 0B]
	fneg	d0, d1	//, D.6398
	str	d1, [x13, -8]!	// D.6398, MEM[base: _178, offset: -8B]
	bl	daxpy	//
	cbnz	w8, .L117	// n,
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x29, x30, [sp], 32	//,,,
	ret
.L115:
	sub	w8, w2, #1	// n, n,
	b	.L105	//
.L116:
	cmp	w2, 0	// n,
	ble	.L94	//,
	sub	w8, w2, #1	// n, n,
	b	.L100	//
	.size	dgesl, .-dgesl
	.align	2
	.p2align 3,,7
	.global	dscal
	.type	dscal, %function
dscal:
	cmp	w0, 0	// n,
	mov	w3, w0	// n, n
	fmov	d1, d0	// sa, sa
	mov	x4, x1	// x, x
	ble	.L118	//,
	cmp	w2, 1	// incx,
	beq	.L127	//,
	mov	w1, 0	// ix,
	tbnz	w2, #31, .L128	// incx,
.L122:
	add	x1, x4, x1, sxtw 3	// ivtmp.199, x, ix,
	mov	w0, 0	// i,
	.p2align 2
.L123:
	ldr	d0, [x1]	// MEM[base: _23, offset: 0B], MEM[base: _23, offset: 0B]
	add	w0, w0, 1	// i, i,
	cmp	w3, w0	// n, i
	fmul	d0, d0, d1	// D.6416, MEM[base: _23, offset: 0B], sa
	str	d0, [x1]	// D.6416, MEM[base: _23, offset: 0B]
	add	x1, x1, x2, sxtw 3	// ivtmp.199, ivtmp.199, incx,
	bne	.L123	//,
.L118:
	ret
	.p2align 3
.L127:
	b	dscal.part.2	//
	.p2align 3
.L128:
	mov	w1, 1	// tmp90,
	sub	w1, w1, w0	// D.6415, tmp90, n
	mul	w1, w1, w2	// ix, D.6415, incx
	b	.L122	//
	.size	dscal, .-dscal
	.align	2
	.p2align 3,,7
	.global	idamax
	.type	idamax, %function
idamax:
	cmp	w0, 0	// n,
	mov	w5, w0	// n, n
	ccmp	w2, wzr, 4, gt	// incx,,,
	mov	x4, x1	// dx, dx
	ble	.L139	//,
	cmp	w0, 1	// n,
	beq	.L140	//,
	cmp	w2, 1	// incx,
	beq	.L145	//,
	ldr	d1, [x1]	// dmax, *dx_16(D)
	fcmpe	d1, #0.0	// dmax
	blt	.L146	//,
.L132:
	sbfiz	x2, x2, 3, 32	// D.6430, incx,,
	mov	w3, 2	// ivtmp.210,
	add	x1, x4, x2	// ivtmp.208, dx, D.6430
	mov	w0, 1	// value,
	b	.L136	//
	.p2align 3
.L137:
	fmov	d1, d0	// dmax, dmax
	mov	w0, w3	// value, ivtmp.210
.L135:
	cmp	w5, w4	// n, D.6431
	add	x1, x1, x2	// ivtmp.208, ivtmp.208, D.6430
	add	w3, w3, 1	// ivtmp.210, ivtmp.210,
	ble	.L147	//,
.L136:
	ldr	d0, [x1]	// dmax, MEM[base: _8, offset: 0B]
	fcmpe	d0, #0.0	// dmax
	blt	.L148	//,
	fcmpe	d0, d1	// dmax, dmax
	mov	w4, w3	// D.6431, ivtmp.210
	bgt	.L137	//,
.L144:
	mov	w4, w3	// D.6431, ivtmp.210
.L149:
	cmp	w5, w4	// n, D.6431
	add	x1, x1, x2	// ivtmp.208, ivtmp.208, D.6430
	add	w3, w3, 1	// ivtmp.210, ivtmp.210,
	bgt	.L136	//,
.L147:
	ret
	.p2align 3
.L148:
	fneg	d2, d0	// dmax, dmax
	mov	w4, w3	// D.6431, ivtmp.210
	fcmpe	d2, d1	// dmax, dmax
	ble	.L144	//,
	fcmpe	d0, #0.0	// dmax
	mov	w0, w3	// value, ivtmp.210
	fmov	d1, d2	// dmax, dmax
	blt	.L135	//,
	fmov	d1, d0	// dmax, dmax
	mov	w4, w3	// D.6431, ivtmp.210
	b	.L149	//
	.p2align 3
.L139:
	mov	w0, 0	// D.6431,
	ret
	.p2align 3
.L140:
	ret
	.p2align 3
.L145:
	b	idamax.part.3	//
	.p2align 3
.L146:
	fneg	d1, d1	// dmax, dmax
	b	.L132	//
	.size	idamax, .-idamax
	.align	2
	.p2align 3,,7
	.global	r8_abs
	.type	r8_abs, %function
r8_abs:
	fcmpe	d0, #0.0	// x
	blt	.L152	//,
	ret
	.p2align 3
.L152:
	fneg	d0, d0	// x, x
	ret
	.size	r8_abs, .-r8_abs
	.align	2
	.p2align 3,,7
	.global	r8_epsilon
	.type	r8_epsilon, %function
r8_epsilon:
	fmov	d0, 1.0e+0	// r,
	fmov	d1, 5.0e-1	// tmp79,
	mov	w0, 53	// D.6444,
	.p2align 2
.L154:
	subs	w0, w0, #1	// D.6444, D.6444,
	fmul	d0, d0, d1	// r, r, tmp79
	bne	.L154	//,
	fadd	d0, d0, d0	//, r, r
	ret
	.size	r8_epsilon, .-r8_epsilon
	.align	2
	.p2align 3,,7
	.global	r8_max
	.type	r8_max, %function
r8_max:
	fcmpe	d1, d0	// y, x
	fcsel	d0, d0, d1, mi	//, x, y,
	ret
	.size	r8_max, .-r8_max
	.align	2
	.p2align 3,,7
	.global	r8_random
	.type	r8_random, %function
r8_random:
	ldr	w3, [x0, 12]	//, MEM[(int *)iseed_1(D) + 12B]
	mov	w6, 2549	// tmp116,
	ldp	w5, w4, [x0, 4]	//,, MEM[(int *)iseed_1(D) + 4B]
	mov	w7, 2508	// tmp124,
	mov	w8, 322	// tmp135,
	ldr	d2, .LC1	// tmp158,
	mul	w1, w3, w6	// it4, D.6449, tmp116
	mov	w9, 494	// tmp150,
	cmp	w1, 0	// it4,
	add	w2, w1, 4095	// tmp118, it4,
	csel	w2, w2, w1, lt	// it4, tmp118, it4,
	asr	w2, w2, 12	// tmp119, it4,
	sub	w1, w1, w2, lsl 12	// it4, it4, tmp119,
	madd	w2, w4, w6, w2	// D.6449, D.6449, tmp116, tmp119
	madd	w2, w3, w7, w2	// it3, D.6449, tmp124, D.6449
	scvtf	d1, w1	// D.6450, it4
	str	w1, [x0, 12]	// it4, MEM[(int *)iseed_1(D) + 12B]
	cmp	w2, 0	// it3,
	add	w1, w2, 4095	// tmp126, it3,
	csel	w1, w1, w2, lt	// it3, tmp126, it3,
	asr	w1, w1, 12	// tmp127, it3,
	sub	w2, w2, w1, lsl 12	// it3, it3, tmp127,
	madd	w1, w5, w6, w1	// D.6449, D.6449, tmp116, tmp127
	madd	w1, w4, w7, w1	// D.6449, D.6449, tmp124, D.6449
	scvtf	d0, w2	// D.6450, it3
	madd	w1, w3, w8, w1	// it2, D.6449, tmp135, D.6449
	str	w2, [x0, 8]	// it3, MEM[(int *)iseed_1(D) + 8B]
	fmadd	d1, d1, d2, d0	// D.6450, D.6450, tmp158, D.6450
	cmp	w1, 0	// it2,
	add	w2, w1, 4095	// tmp137, it2,
	csel	w2, w2, w1, lt	// it2, tmp137, it2,
	asr	w2, w2, 12	// tmp138, it2,
	sub	w1, w1, w2, lsl 12	// it2, it2, tmp138,
	scvtf	d0, w1	// D.6450, it2
	str	w1, [x0, 4]	// it2, MEM[(int *)iseed_1(D) + 4B]
	fmadd	d1, d1, d2, d0	// D.6450, D.6450, tmp158, D.6450
	ldr	w1, [x0]	//, *iseed_1(D)
	madd	w2, w1, w6, w2	// D.6449, *iseed_1(D), tmp116, tmp138
	madd	w5, w5, w7, w2	// D.6449, D.6449, tmp124, D.6449
	madd	w4, w4, w8, w5	// D.6449, D.6449, tmp135, D.6449
	madd	w3, w3, w9, w4	// it1, D.6449, tmp150, D.6449
	negs	w1, w3	// tmp151, it1
	and	w3, w3, 4095	// tmp152, it1,
	and	w1, w1, 4095	// tmp153, tmp151,
	csneg	w3, w3, w1, mi	// it1, tmp152, tmp153,
	scvtf	d0, w3	// D.6450, it1
	fmadd	d0, d1, d2, d0	// D.6450, D.6450, tmp158, D.6450
	str	w3, [x0]	// it1, *iseed_1(D)
	fmul	d0, d0, d2	//, D.6450, tmp158
	ret
	.size	r8_random, .-r8_random
	.align	3
.LC1:
	.word	0
	.word	1060110336
	.align	2
	.p2align 3,,7
	.global	r8mat_gen
	.type	r8mat_gen, %function
r8mat_gen:
	stp	x29, x30, [sp, -80]!	//,,,
	mov	w3, 2	// tmp94,
	mov	w2, 3	// tmp95,
	add	x29, sp, 0	//,,
	stp	x21, x22, [sp, 32]	//,,
	mov	w21, w0	// lda, lda
	adrp	x22, __stack_chk_guard	// tmp109,
	mul	w0, w0, w1	// D.6467, lda, n
	add	x4, x22, :lo12:__stack_chk_guard	// tmp91, tmp109,
	stp	x19, x20, [sp, 16]	//,,
	sbfiz	x0, x0, 3, 32	//, D.6467,,
	ldr	x5, [x4]	// tmp111, __stack_chk_guard
	str	x5, [x29, 72]	// tmp111, D.6471
	mov	x5,0	// tmp111
	mov	w19, w1	// n, n
	mov	w20, 1	// tmp93,
	mov	w1, 1325	// tmp96,
	stp	w20, w3, [x29, 56]	// tmp93, tmp94, init
	stp	w2, w1, [x29, 64]	// tmp95, tmp96, init
	bl	malloc	//
	cmp	w19, 0	// n,
	mov	x14, x0	// a,
	ble	.L161	//,
	mov	x13, x0	// ivtmp.236, a
	mov	w12, w20	// j, tmp93
	fmov	d3, 5.0e-1	// tmp102,
	.p2align 2
.L163:
	mov	x11, x13	// ivtmp.230, ivtmp.236
	mov	w10, 1	// i,
	.p2align 2
.L162:
	add	w10, w10, 1	// i, i,
	add	x0, x29, 56	// tmp113,,
	bl	r8_random	//
	fsub	d0, d0, d3	// D.6469,, tmp102
	cmp	w19, w10	// n, i
	str	d0, [x11], 8	// D.6469, MEM[base: _33, offset: 0B]
	bge	.L162	//,
	add	w12, w12, 1	// j, j,
	add	x13, x13, x21, sxtw 3	// ivtmp.236, ivtmp.236, lda,
	cmp	w19, w12	// n, j
	bge	.L163	//,
.L161:
	add	x22, x22, :lo12:__stack_chk_guard	// tmp106, tmp109,
	mov	x0, x14	//, a
	ldr	x2, [x29, 72]	// tmp112, D.6471
	ldr	x1, [x22]	// tmp108, __stack_chk_guard
	eor	x1, x2, x1	// tmp108, tmp112
	cbnz	x1, .L168	// tmp108,
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x29, x30, [sp], 80	//,,,
	ret
.L168:
	bl	__stack_chk_fail	//
	.size	r8mat_gen, .-r8mat_gen
	.align	2
	.p2align 3,,7
	.global	timestamp
	.type	timestamp, %function
timestamp:
	stp	x29, x30, [sp, -48]!	//,,,
	mov	x0, 0	//,
	add	x29, sp, 0	//,,
	stp	x19, x20, [sp, 16]	//,,
	adrp	x19, __stack_chk_guard	// tmp76,
	add	x19, x19, :lo12:__stack_chk_guard	// tmp75, tmp76,
	adrp	x20, .LANCHOR0	// tmp81,
	ldr	x1, [x19]	// tmp87, __stack_chk_guard
	str	x1, [x29, 40]	// tmp87, D.6477
	mov	x1,0	// tmp87
	add	x20, x20, :lo12:.LANCHOR0	// tmp80, tmp81,
	bl	time	//
	add	x1, x29, 48	// tmp77,,
	str	x0, [x1, -16]!	//, now
	mov	x0, x1	//, tmp77
	bl	localtime	//
	mov	x3, x0	//,
	adrp	x2, .LC2	// tmp79,
	mov	x0, x20	//, tmp80
	add	x2, x2, :lo12:.LC2	//, tmp79,
	mov	x1, 40	//,
	bl	strftime	//
	mov	x0, x20	//, tmp80
	bl	puts	//
	ldr	x1, [x29, 40]	// tmp88, D.6477
	ldr	x0, [x19]	// tmp86, __stack_chk_guard
	eor	x0, x1, x0	// tmp86, tmp88
	cbnz	x0, .L172	// tmp86,
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x29, x30, [sp], 48	//,,,
	ret
.L172:
	bl	__stack_chk_fail	//
	.size	timestamp, .-timestamp
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 3,,7
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -176]!	//,,,
	add	x29, sp, 0	//,,
	stp	d8, d9, [sp, 96]	//,,
	stp	d10, d11, [sp, 112]	//,,
	stp	d12, d13, [sp, 128]	//,,
	stp	d14, d15, [sp, 144]	//,,
	stp	x19, x20, [sp, 16]	//,,
	adrp	x20, .LC3	// tmp299,
	stp	x21, x22, [sp, 32]	//,,
	stp	x23, x24, [sp, 48]	//,,
	stp	x25, x26, [sp, 64]	//,,
	stp	x27, x28, [sp, 80]	//,,
	bl	timestamp	//
	fmov	d8, xzr	// a_max,
	mov	w0, 10	//,
	bl	putchar	//
	add	x0, x20, :lo12:.LC3	//, tmp299,
	bl	puts	//
	adrp	x0, .LC4	// tmp204,
	add	x0, x0, :lo12:.LC4	//, tmp204,
	bl	puts	//
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC5	// tmp206,
	add	x0, x0, :lo12:.LC5	//, tmp206,
	bl	puts	//
	adrp	x0, .LC6	// tmp208,
	add	x0, x0, :lo12:.LC6	//, tmp208,
	bl	puts	//
	adrp	x0, .LC7	// tmp210,
	add	x0, x0, :lo12:.LC7	//, tmp210,
	bl	puts	//
	adrp	x1, .LC8	// tmp212,
	mov	w2, 1000	//,
	add	x1, x1, :lo12:.LC8	//, tmp212,
	mov	w0, 1	//,
	bl	__printf_chk	//
	adrp	x1, .LC9	// tmp214,
	mov	w2, 1001	//,
	add	x1, x1, :lo12:.LC9	//, tmp214,
	mov	w0, 1	//,
	bl	__printf_chk	//
	mov	w1, 1000	//,
	mov	w0, 1001	//,
	bl	r8mat_gen	//
	mov	x21, x0	// a,
	mov	x0, 8000	//,
	bl	malloc	//
	mov	x23, x0	// b,
	mov	x0, 4000	//,
	bl	malloc	//
	mov	x19, x0	// ipvt,
	mov	x0, 8000	//,
	bl	malloc	//
	mov	x25, x0	// resid,
	mov	x0, 8000	//,
	bl	malloc	//
	mov	x24, x0	// rhs,
	mov	x0, 8000	//,
	bl	malloc	//
	mov	x22, x0	// x,
	add	x4, x21, 8015872	// D.6614, a,
	mov	x3, 8000	//,
	add	x4, x4, 128	// D.6614, D.6614,
	add	x1, x21, x3	// ivtmp.358, a,
	mov	x2, 8008	// tmp224,
	mov	x3, -8000	// tmp225,
	.p2align 2
.L174:
	add	x0, x1, x3	// ivtmp.350, ivtmp.358, tmp225
	.p2align 2
.L177:
	ldr	d0, [x0], 8	// a_max, MEM[base: _57, offset: 0B]
	fcmpe	d0, d8	// a_max, a_max
	fcsel	d8, d8, d0, mi	// a_max, a_max, a_max,
	cmp	x0, x1	// ivtmp.350, ivtmp.358
	bne	.L177	//,
	add	x1, x0, x2	// ivtmp.358, ivtmp.350, tmp224
	cmp	x1, x4	// ivtmp.358, D.6614
	bne	.L174	//,
	mov	x2, 8000	//,
	mov	x0, x22	// ivtmp.342, x
	add	x28, x22, x2	// D.6614, x,
	fmov	d0, 1.0e+0	// tmp227,
	.p2align 2
.L179:
	str	d0, [x0], 8	// tmp227, MEM[base: _324, offset: 0B]
	cmp	x0, x28	// ivtmp.342, D.6614
	bne	.L179	//,
	add	x3, x21, 8007680	// ivtmp.335, a,
	mov	x1, 8000	//,
	mov	x5, -12608	// tmp230,
	mov	x26, x23	// ivtmp.257, b
	add	x3, x3, 320	// ivtmp.335, ivtmp.335,
	add	x27, x23, x1	// D.6614, b,
	mov	x2, x23	// ivtmp.332, b
	movk	x5, 0xff85, lsl 16	// tmp230,,
	mov	x4, 8008	// tmp235,
	.p2align 2
.L181:
	fmov	d0, xzr	// D.6613,
	add	x0, x3, x5	// ivtmp.322, ivtmp.335, tmp230
	mov	x1, x22	// ivtmp.324, x
	str	d0, [x2]	//, MEM[base: _304, offset: 0B]
	.p2align 2
.L180:
	ldr	d2, [x0]	// MEM[base: _152, offset: 0B], MEM[base: _152, offset: 0B]
	add	x0, x0, x4	// ivtmp.322, ivtmp.322, tmp235
	ldr	d1, [x1], 8	// MEM[base: _149, offset: 0B], MEM[base: _149, offset: 0B]
	cmp	x3, x0	// ivtmp.335, ivtmp.322
	fmadd	d0, d2, d1, d0	// D.6613, MEM[base: _152, offset: 0B], MEM[base: _149, offset: 0B], D.6613
	str	d0, [x2]	// D.6613, MEM[base: _304, offset: 0B]
	bne	.L180	//,
	add	x2, x2, 8	// ivtmp.332, ivtmp.332,
	add	x3, x3, 8	// ivtmp.335, ivtmp.335,
	cmp	x2, x27	// ivtmp.332, D.6614
	bne	.L181	//,
	bl	clock	//
	scvtf	d10, x0	// D.6613,
	ldr	d9, .LC10	// tmp298,
	mov	x3, x19	//, ipvt
	mov	x0, x21	//, a
	mov	w2, 1000	//,
	mov	w1, 1001	//,
	fdiv	d10, d10, d9	// t1, D.6613, tmp298
	bl	dgefa	//
	cbnz	w0, .L219	//,
	bl	clock	//
	scvtf	d0, x0	// D.6613,
	fdiv	d0, d0, d9	// t2, D.6613, tmp298
	fsub	d10, d0, d10	// D.6613, t2, t1
	bl	clock	//
	mov	x6, x0	// D.6615,
	mov	x4, x23	//, b
	mov	x3, x19	//, ipvt
	mov	x0, x21	//, a
	mov	w5, 0	//,
	mov	w2, 1000	//,
	mov	w1, 1001	//,
	str	x6, [x29, 168]	// D.6615, %sfp
	bl	dgesl	//
	bl	clock	//
	scvtf	d11, x0	// D.6613,
	ldr	x6, [x29, 168]	// D.6615, %sfp
	mov	x0, x21	//, a
	scvtf	d0, x6	// D.6613, D.6615
	fdiv	d11, d11, d9	// t2, D.6613, tmp298
	fdiv	d0, d0, d9	// t1, D.6613, tmp298
	fsub	d11, d11, d0	// D.6613, t2, t1
	bl	free	//
	fadd	d12, d10, d11	// total, D.6613, D.6613
	mov	w1, 1000	//,
	mov	w0, 1001	//,
	bl	r8mat_gen	//
	mov	x21, x0	// a,
	fmov	d0, 1.0e+0	// tmp253,
	mov	x0, x22	// ivtmp.314, x
.L184:
	str	d0, [x0], 8	// tmp253, MEM[base: _106, offset: 0B]
	cmp	x0, x28	// ivtmp.314, D.6614
	bne	.L184	//,
	add	x2, x21, 8007680	// ivtmp.307, a,
	mov	x0, 8000	//,
	mov	x5, -12608	// tmp256,
	mov	x4, x24	// ivtmp.304, rhs
	add	x2, x2, 320	// ivtmp.307, ivtmp.307,
	add	x6, x24, x0	// D.6614, rhs,
	movk	x5, 0xff85, lsl 16	// tmp256,,
	mov	x3, 8008	// tmp261,
.L186:
	fmov	d0, xzr	// D.6613,
	add	x0, x2, x5	// ivtmp.294, ivtmp.307, tmp256
	mov	x1, x22	// ivtmp.296, x
	.p2align 2
.L185:
	ldr	d2, [x0]	// MEM[base: _262, offset: 0B], MEM[base: _262, offset: 0B]
	add	x0, x0, x3	// ivtmp.294, ivtmp.294, tmp261
	ldr	d1, [x1], 8	// MEM[base: _156, offset: 0B], MEM[base: _156, offset: 0B]
	cmp	x2, x0	// ivtmp.307, ivtmp.294
	fmadd	d0, d2, d1, d0	// D.6613, MEM[base: _262, offset: 0B], MEM[base: _156, offset: 0B], D.6613
	bne	.L185	//,
	str	d0, [x4], 8	// D.6613, MEM[base: _310, offset: 0B]
	cmp	x4, x6	// ivtmp.304, D.6614
	add	x2, x2, 8	// ivtmp.307, ivtmp.307,
	bne	.L186	//,
	mov	x6, 12608	// tmp264,
	mov	x4, 0	// ivtmp.284,
	movk	x6, 0x7a, lsl 16	// tmp264,,
	mov	x3, 8008	// tmp269,
	mov	x5, 8000	// tmp270,
.L188:
	ldr	d0, [x24, x4]	// MEM[base: rhs_42, index: ivtmp.284_277, offset: 0B], MEM[base: rhs_42, index: ivtmp.284_277, offset: 0B]
	add	x2, x4, x6	// D.6616, ivtmp.284, tmp264
	add	x0, x21, x4	// ivtmp.273, a, ivtmp.284
	add	x2, x21, x2	// D.6614, a, D.6616
	mov	x1, x23	// ivtmp.275, b
	fneg	d0, d0	// D.6613, MEM[base: rhs_42, index: ivtmp.284_277, offset: 0B]
	.p2align 2
.L187:
	ldr	d2, [x0]	// MEM[base: _289, offset: 0B], MEM[base: _289, offset: 0B]
	add	x0, x0, x3	// ivtmp.273, ivtmp.273, tmp269
	ldr	d1, [x1], 8	// MEM[base: _279, offset: 0B], MEM[base: _279, offset: 0B]
	cmp	x2, x0	// D.6614, ivtmp.273
	fmadd	d0, d2, d1, d0	// D.6613, MEM[base: _289, offset: 0B], MEM[base: _279, offset: 0B], D.6613
	bne	.L187	//,
	str	d0, [x25, x4]	// D.6613, MEM[base: resid_40, index: ivtmp.284_277, offset: 0B]
	add	x4, x4, 8	// ivtmp.284, ivtmp.284,
	cmp	x4, x5	// ivtmp.284, tmp270
	bne	.L188	//,
	fmov	d14, xzr	// resid_max,
	add	x4, x25, x4	// D.6614, resid, ivtmp.284
	mov	x0, x25	// ivtmp.265, resid
	b	.L192	//
.L189:
	fcmpe	d0, d14	// resid_max, resid_max
	fcsel	d14, d14, d0, mi	// resid_max, resid_max, resid_max,
	cmp	x0, x4	// ivtmp.265, D.6614
	beq	.L220	//,
.L192:
	ldr	d0, [x0]	// resid_max, MEM[base: _319, offset: 0B]
	add	x0, x0, 8	// ivtmp.265, ivtmp.265,
	fcmpe	d0, #0.0	// resid_max
	bge	.L189	//,
	fneg	d0, d0	// resid_max, resid_max
	fcmpe	d0, d14	// resid_max, resid_max
	fcsel	d14, d14, d0, mi	// resid_max, resid_max, resid_max,
	cmp	x0, x4	// ivtmp.265, D.6614
	bne	.L192	//,
.L220:
	fmov	d3, xzr	// b_max,
	b	.L196	//
.L193:
	fcmpe	d3, d0	// b_max, b_max
	fcsel	d3, d3, d0, gt	// b_max, b_max, b_max,
	cmp	x27, x26	// D.6614, ivtmp.257
	beq	.L221	//,
.L196:
	ldr	d0, [x26]	// b_max, MEM[base: _293, offset: 0B]
	add	x26, x26, 8	// ivtmp.257, ivtmp.257,
	fcmpe	d0, #0.0	// b_max
	bge	.L193	//,
	fneg	d0, d0	// b_max, b_max
	fcmpe	d3, d0	// b_max, b_max
	fcsel	d3, d3, d0, gt	// b_max, b_max, b_max,
	cmp	x27, x26	// D.6614, ivtmp.257
	bne	.L196	//,
.L221:
	fmov	d2, 1.0e+0	// r,
	fmov	d0, 5.0e-1	// tmp272,
	mov	w0, 53	// D.6617,
.L197:
	subs	w0, w0, #1	// D.6617, D.6617,
	fmul	d2, d2, d0	// r, r, tmp272
	bne	.L197	//,
	ldr	d0, .LC14	// tmp274,
	fcmpe	d12, #0.0	// total
	fadd	d15, d2, d2	// eps, r, r
	fdiv	d0, d14, d0	// D.6613, resid_max, tmp274
	fdiv	d8, d0, d8	// D.6613, D.6613, a_max
	fdiv	d3, d8, d3	// D.6613, D.6613, b_max
	fdiv	d8, d3, d15	// residn, D.6613, eps
	ble	.L217	//,
	fmul	d9, d12, d9	// D.6613, total, tmp298
	ldr	d0, .LC15	// tmp279,
	fmov	d13, 2.0e+0	// tmp280,
	fdiv	d9, d0, d9	// time$3, tmp279, D.6613
	fdiv	d13, d13, d9	// D.6613, tmp280, time$3
.L198:
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC16	// tmp282,
	add	x0, x0, :lo12:.LC16	//, tmp282,
	bl	puts	//
	mov	w0, 10	//,
	bl	putchar	//
	fmov	d2, d15	//, eps
	fmov	d1, d14	//, resid_max
	fmov	d0, d8	//, residn
	ldr	d3, [x23]	//, *b_36
	adrp	x1, .LC17	// tmp286,
	ldr	d4, [x23, 7992]	//, MEM[(double *)b_36 + 7992B]
	add	x1, x1, :lo12:.LC17	//, tmp286,
	mov	w0, 1	//,
	bl	__printf_chk	//
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC18	// tmp288,
	add	x0, x0, :lo12:.LC18	//, tmp288,
	bl	puts	//
	mov	w0, 10	//,
	bl	putchar	//
	fmov	d4, d13	//, D.6613
	ldr	d5, .LC19	// tmp290,
	fmov	d3, d9	//, time$3
	fmov	d2, d12	//, total
	fmov	d1, d11	//, D.6613
	fmov	d0, d10	//, D.6613
	adrp	x1, .LC20	// tmp292,
	add	x1, x1, :lo12:.LC20	//, tmp292,
	mov	w0, 1	//,
	fdiv	d5, d12, d5	//, total, tmp290
	bl	__printf_chk	//
	mov	x0, x21	//, a
	bl	free	//
	mov	x0, x23	//, b
	bl	free	//
	mov	x0, x19	//, ipvt
	bl	free	//
	mov	x0, x25	//, resid
	bl	free	//
	mov	x0, x24	//, rhs
	bl	free	//
	mov	x0, x22	//, x
	bl	free	//
	mov	w0, 10	//,
	bl	putchar	//
	add	x0, x20, :lo12:.LC3	//, tmp299,
	bl	puts	//
	adrp	x0, .LC21	// tmp296,
	add	x0, x0, :lo12:.LC21	//, tmp296,
	bl	puts	//
	mov	w0, 10	//,
	bl	putchar	//
	bl	timestamp	//
	mov	w0, 0	// D.6610,
.L183:
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x23, x24, [sp, 48]	//,,
	ldp	x25, x26, [sp, 64]	//,,
	ldp	x27, x28, [sp, 80]	//,,
	ldp	d8, d9, [sp, 96]	//,,
	ldp	d10, d11, [sp, 112]	//,,
	ldp	d12, d13, [sp, 128]	//,,
	ldp	d14, d15, [sp, 144]	//,,
	ldp	x29, x30, [sp], 176	//,,,
	ret
.L219:
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC11	// tmp239,
	add	x0, x0, :lo12:.LC11	//, tmp239,
	bl	puts	//
	adrp	x0, .LC12	// tmp241,
	add	x0, x0, :lo12:.LC12	//, tmp241,
	bl	puts	//
	adrp	x0, .LC13	// tmp243,
	add	x0, x0, :lo12:.LC13	//, tmp243,
	bl	puts	//
	mov	w0, 1	// D.6610,
	b	.L183	//
.L217:
	fmov	d13, -2.0e+0	// D.6613,
	fmov	d9, -1.0e+0	// time$3,
	b	.L198	//
	.size	main, .-main
	.align	3
.LC10:
	.word	0
	.word	1093567616
	.align	3
.LC14:
	.word	0
	.word	1083129856
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
.LC11:
	.string	"LINPACK_BENCH - Fatal error!"
	.zero	3
.LC12:
	.string	"  The matrix A is apparently singular."
	.zero	1
.LC13:
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
