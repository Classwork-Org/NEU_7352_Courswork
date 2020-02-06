	.arch armv8-a
	.file	"linpack.c"
// GNU C11 (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.11) version 5.4.0 20160609 (aarch64-linux-gnu)
//	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -imultiarch aarch64-linux-gnu ../source/linpack.c
// -mlittle-endian -mabi=lp64
// -auxbase-strip ../asm/linpack.arm_gcc.opt3.asm -O3 -fverbose-asm
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
	.type	daxpy.part.0, %function
daxpy.part.0:
	negs	w4, w0	// tmp228, n
	and	w3, w0, 3	// tmp229, n,
	and	w4, w4, 3	// tmp230, tmp228,
	csneg	w3, w3, w4, mi	// i, tmp229, tmp230,
	cmp	w3, 0	// i,
	ble	.L6	//,
	ldr	d1, [x1]	// *dx_9(D), *dx_9(D)
	cmp	w3, 1	// i,
	ldr	d2, [x2]	// *dy_6(D), *dy_6(D)
	fmadd	d1, d0, d1, d2	// D.6254, da, *dx_9(D), *dy_6(D)
	str	d1, [x2]	// D.6254, *dy_6(D)
	beq	.L6	//,
	ldr	d1, [x1, 8]	// MEM[(double *)dx_9(D) + 8B], MEM[(double *)dx_9(D) + 8B]
	cmp	w3, 3	// i,
	ldr	d2, [x2, 8]	// MEM[(double *)dy_6(D) + 8B], MEM[(double *)dy_6(D) + 8B]
	fmadd	d1, d0, d1, d2	// D.6254, da, MEM[(double *)dx_9(D) + 8B], MEM[(double *)dy_6(D) + 8B]
	str	d1, [x2, 8]	// D.6254, MEM[(double *)dy_6(D) + 8B]
	bne	.L6	//,
	ldr	d1, [x1, 16]	// MEM[(double *)dx_9(D) + 16B], MEM[(double *)dx_9(D) + 16B]
	ldr	d2, [x2, 16]	// MEM[(double *)dy_6(D) + 16B], MEM[(double *)dy_6(D) + 16B]
	fmadd	d1, d0, d1, d2	// D.6254, da, MEM[(double *)dx_9(D) + 16B], MEM[(double *)dy_6(D) + 16B]
	str	d1, [x2, 16]	// D.6254, MEM[(double *)dy_6(D) + 16B]
.L6:
	cmp	w0, w3	// n, i
	ble	.L15	//,
	sxtw	x6, w3	// D.6259, i
	sub	w4, w0, #1	// D.6260, n,
	add	x5, x6, 8	// D.6259, D.6259,
	sub	w4, w4, w3	// D.6260, D.6260, i
	lsl	x5, x5, 3	// D.6259, D.6259,
	lsr	w4, w4, 2	// D.6260, D.6260,
	sub	x3, x5, #64	// D.6258, D.6259,
	add	x7, x1, x5	// D.6256, dx, D.6259
	add	x0, x2, x3	// D.6256, dy, D.6258
	add	x1, x1, x3	// D.6256, dx, D.6258
	cmp	x0, x7	// D.6256, D.6256
	add	x3, x2, x5	// D.6256, dy, D.6259
	cset	w7, cs	// D.6257,
	add	w5, w4, 1	// D.6260, D.6260,
	cmp	x1, x3	// D.6256, D.6256
	cset	w3, cs	// tmp250,
	cmp	w5, 1	// D.6260,
	orr	w3, w7, w3	// tmp251, D.6257, tmp250
	cset	w7, hi	// tmp253,
	tst	w7, w3	// tmp253, tmp251
	beq	.L8	//,
	dup	v0.2d, v0.d[0]	// vect_cst_.34, da
	mov	x2, x0	// ivtmp.75, ivtmp.70
	mov	w3, 0	// ivtmp.67,
	.p2align 2
.L9:
	ldr	q4, [x1, 16]	// vect__22.32, MEM[base: _77, offset: 16B]
	add	x2, x2, 32	// ivtmp.75, ivtmp.75,
	ldr	q2, [x0, 16]	// vect__20.28, MEM[base: _79, offset: 16B]
	add	w3, w3, 1	// ivtmp.67, ivtmp.67,
	ldr	q3, [x1], 32	// vect__22.31, MEM[base: _77, offset: 0B]
	cmp	w3, w5	// ivtmp.67, D.6260
	ldr	q1, [x0], 32	// vect__20.27, MEM[base: _79, offset: 0B]
	fmla	v2.2d, v4.2d, v0.2d	// vect__24.36, vect__22.32, vect_cst_.34
	fmla	v1.2d, v3.2d, v0.2d	// vect__24.36, vect__22.31, vect_cst_.34
	str	q2, [x2, -16]	// vect__24.36, MEM[base: _72, offset: 16B]
	str	q1, [x2, -32]	// vect__24.36, MEM[base: _72, offset: 0B]
	bcc	.L9	//,
	ret
	.p2align 3
.L8:
	add	x6, x6, 4	// D.6259, D.6259,
	add	x4, x6, x4, uxtw 2	// D.6259, D.6259, D.6260,
	add	x2, x2, x4, lsl 3	// D.6261, dy, D.6259,
	.p2align 2
.L11:
	ldp	d3, d2, [x0]	// MEM[base: _4, offset: 0B], MEM[base: _4, offset: 8B], MEM[base: _4, offset: 0B]
	add	x1, x1, 32	// ivtmp.65, ivtmp.65,
	ldr	d4, [x1, -32]	// MEM[base: _14, offset: 0B], MEM[base: _14, offset: 0B]
	ldp	d1, d5, [x0, 16]	// MEM[base: _4, offset: 16B], MEM[base: _4, offset: 24B], MEM[base: _4, offset: 16B]
	add	x0, x0, 32	// ivtmp.63, ivtmp.63,
	cmp	x0, x2	// ivtmp.63, D.6261
	fmadd	d4, d0, d4, d3	// D.6254, da, MEM[base: _14, offset: 0B], MEM[base: _4, offset: 0B]
	str	d4, [x0, -32]	// D.6254, MEM[base: _4, offset: 0B]
	ldr	d3, [x1, -24]	// MEM[base: _14, offset: 8B], MEM[base: _14, offset: 8B]
	fmadd	d3, d0, d3, d2	// D.6254, da, MEM[base: _14, offset: 8B], MEM[base: _4, offset: 8B]
	str	d3, [x0, -24]	// D.6254, MEM[base: _4, offset: 8B]
	ldr	d2, [x1, -16]	// MEM[base: _14, offset: 16B], MEM[base: _14, offset: 16B]
	fmadd	d2, d0, d2, d1	// D.6254, da, MEM[base: _14, offset: 16B], MEM[base: _4, offset: 16B]
	str	d2, [x0, -16]	// D.6254, MEM[base: _4, offset: 16B]
	ldr	d1, [x1, -8]	// MEM[base: _14, offset: 24B], MEM[base: _14, offset: 24B]
	fmadd	d1, d0, d1, d5	// D.6254, da, MEM[base: _14, offset: 24B], MEM[base: _4, offset: 24B]
	str	d1, [x0, -8]	// D.6254, MEM[base: _4, offset: 24B]
	bne	.L11	//,
	ret
	.p2align 3
.L15:
	ret
	.size	daxpy.part.0, .-daxpy.part.0
	.align	2
	.p2align 3,,7
	.type	ddot.part.1, %function
ddot.part.1:
	mov	w3, 26215	// tmp115,
	movk	w3, 0x6666, lsl 16	// tmp115,,
	smull	x4, w0, w3	// tmp114, n, tmp115
	asr	x4, x4, 33	// tmp117, tmp114,
	sub	w4, w4, w0, asr 31	// i, tmp117, n,
	add	w4, w4, w4, lsl 2	// tmp121, i, i,
	sub	w4, w0, w4	// i, n, tmp121
	cmp	w4, 0	// i,
	ble	.L21	//,
	ldr	d2, [x1]	// *dx_6(D), *dx_6(D)
	cmp	w4, 1	// i,
	ldr	d0, [x2]	// *dy_9(D), *dy_9(D)
	fmov	d1, xzr	// tmp124,
	fmadd	d0, d0, d2, d1	// dtemp, *dy_9(D), *dx_6(D), tmp124
	beq	.L17	//,
	ldr	d1, [x1, 8]	// MEM[(double *)dx_6(D) + 8B], MEM[(double *)dx_6(D) + 8B]
	cmp	w4, 2	// i,
	ldr	d2, [x2, 8]	// MEM[(double *)dy_9(D) + 8B], MEM[(double *)dy_9(D) + 8B]
	fmadd	d0, d2, d1, d0	// dtemp, MEM[(double *)dy_9(D) + 8B], MEM[(double *)dx_6(D) + 8B], dtemp
	beq	.L17	//,
	ldr	d1, [x1, 16]	// MEM[(double *)dx_6(D) + 16B], MEM[(double *)dx_6(D) + 16B]
	cmp	w4, 4	// i,
	ldr	d2, [x2, 16]	// MEM[(double *)dy_9(D) + 16B], MEM[(double *)dy_9(D) + 16B]
	fmadd	d0, d2, d1, d0	// dtemp, MEM[(double *)dy_9(D) + 16B], MEM[(double *)dx_6(D) + 16B], dtemp
	bne	.L17	//,
	ldr	d2, [x1, 24]	// MEM[(double *)dx_6(D) + 24B], MEM[(double *)dx_6(D) + 24B]
	ldr	d1, [x2, 24]	// MEM[(double *)dy_9(D) + 24B], MEM[(double *)dy_9(D) + 24B]
	fmadd	d0, d2, d1, d0	// dtemp, MEM[(double *)dx_6(D) + 24B], MEM[(double *)dy_9(D) + 24B], dtemp
.L17:
	cmp	w0, w4	// n, i
	ble	.L19	//,
	sbfiz	x3, x4, 3, 32	// D.6275, i,,
	add	x1, x1, x3	// ivtmp.87, dx, D.6275
	add	x2, x2, x3	// ivtmp.89, dy, D.6275
	.p2align 2
.L20:
	ldp	d1, d4, [x1]	// MEM[base: _156, offset: 0B], MEM[base: _156, offset: 8B], MEM[base: _156, offset: 0B]
	add	w4, w4, 5	// i, i,
	ldp	d5, d16, [x2]	// MEM[base: _151, offset: 0B], MEM[base: _151, offset: 8B], MEM[base: _151, offset: 0B]
	cmp	w0, w4	// n, i
	ldp	d3, d2, [x1, 16]	// MEM[base: _156, offset: 16B], MEM[base: _156, offset: 24B], MEM[base: _156, offset: 16B]
	add	x1, x1, 40	// ivtmp.87, ivtmp.87,
	ldp	d7, d6, [x2, 16]	// MEM[base: _151, offset: 16B], MEM[base: _151, offset: 24B], MEM[base: _151, offset: 16B]
	fmadd	d0, d1, d5, d0	// D.6272, MEM[base: _156, offset: 0B], MEM[base: _151, offset: 0B], dtemp
	ldr	d1, [x1, -8]	// MEM[base: _156, offset: 32B], MEM[base: _156, offset: 32B]
	fmadd	d0, d4, d16, d0	// D.6272, MEM[base: _156, offset: 8B], MEM[base: _151, offset: 8B], D.6272
	ldr	d5, [x2, 32]	// MEM[base: _151, offset: 32B], MEM[base: _151, offset: 32B]
	add	x2, x2, 40	// ivtmp.89, ivtmp.89,
	fmadd	d0, d3, d7, d0	// D.6272, MEM[base: _156, offset: 16B], MEM[base: _151, offset: 16B], D.6272
	fmadd	d0, d2, d6, d0	// D.6272, MEM[base: _156, offset: 24B], MEM[base: _151, offset: 24B], D.6272
	fmadd	d0, d1, d5, d0	// dtemp, MEM[base: _156, offset: 32B], MEM[base: _151, offset: 32B], D.6272
	bgt	.L20	//,
.L19:
	ret
.L21:
	fmov	d0, xzr	// dtemp,
	b	.L17	//
	.size	ddot.part.1, .-ddot.part.1
	.align	2
	.p2align 3,,7
	.global	cpu_time
	.type	cpu_time, %function
cpu_time:
	stp	x29, x30, [sp, -16]!	//,,,
	add	x29, sp, 0	//,,
	bl	clock	//
	scvtf	d1, x0	// D.6279,
	ldr	d0, .LC0	// tmp79,
	ldp	x29, x30, [sp], 16	//,,,
	fdiv	d0, d1, d0	//, D.6279, tmp79
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
	fmov	d2, d0	// da, da
	cset	w7, le	// tmp108,
	fcmp	d0, #0.0	// da
	mov	w5, w0	// n, n
	mov	x8, x1	// dx, dx
	cset	w6, eq	// tmp110,
	orr	w6, w7, w6	// tmp113, tmp108, tmp110
	cbnz	w6, .L31	// tmp113,
	cmp	w2, 1	// incx,
	ccmp	w4, 1, 0, eq	// incy,,,
	beq	.L34	//,
	mov	w1, 0	// ix,
	tbnz	w2, #31, .L42	// incx,
.L35:
	mov	w0, 0	// iy,
	tbnz	w4, #31, .L43	// incy,
.L36:
	add	x1, x8, x1, sxtw 3	// ivtmp.105, dx, ix,
	add	x3, x3, x0, sxtw 3	// ivtmp.103, dy, iy,
	mov	w0, 0	// i,
	.p2align 2
.L37:
	ldr	d0, [x1]	// MEM[base: _61, offset: 0B], MEM[base: _61, offset: 0B]
	add	w0, w0, 1	// i, i,
	ldr	d1, [x3]	// MEM[base: _62, offset: 0B], MEM[base: _62, offset: 0B]
	cmp	w5, w0	// n, i
	add	x1, x1, x2, sxtw 3	// ivtmp.105, ivtmp.105, incx,
	fmadd	d0, d2, d0, d1	// D.6297, da, MEM[base: _61, offset: 0B], MEM[base: _62, offset: 0B]
	str	d0, [x3]	// D.6297, MEM[base: _62, offset: 0B]
	add	x3, x3, x4, sxtw 3	// ivtmp.103, ivtmp.103, incy,
	bgt	.L37	//,
	ret
	.p2align 3
.L31:
	ret
	.p2align 3
.L34:
	mov	x2, x3	//, dy
	b	daxpy.part.0	//
	.p2align 3
.L43:
	mov	w0, 1	// tmp120,
	sub	w0, w0, w5	// D.6296, tmp120, n
	mul	w0, w0, w4	// iy, D.6296, incy
	b	.L36	//
	.p2align 3
.L42:
	mov	w1, 1	// tmp118,
	sub	w1, w1, w0	// D.6296, tmp118, n
	mul	w1, w1, w2	// ix, D.6296, incx
	b	.L35	//
	.size	daxpy, .-daxpy
	.align	2
	.p2align 3,,7
	.global	ddot
	.type	ddot, %function
ddot:
	cmp	w0, 0	// n,
	mov	w5, w0	// n, n
	mov	x6, x1	// dx, dx
	ble	.L50	//,
	cmp	w2, 1	// incx,
	ccmp	w4, 1, 0, eq	// incy,,,
	beq	.L46	//,
	mov	w1, 0	// ix,
	tbnz	w2, #31, .L54	// incx,
.L47:
	mov	w0, 0	// iy,
	tbnz	w4, #31, .L55	// incy,
.L48:
	fmov	d0, xzr	// dtemp,
	add	x1, x6, x1, sxtw 3	// ivtmp.118, dx, ix,
	add	x3, x3, x0, sxtw 3	// ivtmp.120, dy, iy,
	mov	w0, 0	// i,
	.p2align 2
.L49:
	ldr	d2, [x1]	// MEM[base: _70, offset: 0B], MEM[base: _70, offset: 0B]
	add	w0, w0, 1	// i, i,
	ldr	d1, [x3]	// MEM[base: _69, offset: 0B], MEM[base: _69, offset: 0B]
	cmp	w5, w0	// n, i
	add	x1, x1, x2, sxtw 3	// ivtmp.118, ivtmp.118, incx,
	add	x3, x3, x4, sxtw 3	// ivtmp.120, ivtmp.120, incy,
	fmadd	d0, d2, d1, d0	// dtemp, MEM[base: _70, offset: 0B], MEM[base: _69, offset: 0B], dtemp
	bne	.L49	//,
	ret
	.p2align 3
.L46:
	mov	x2, x3	//, dy
	b	ddot.part.1	//
	.p2align 3
.L50:
	fmov	d0, xzr	// dtemp,
	ret
	.p2align 3
.L55:
	mov	w0, 1	// tmp110,
	sub	w0, w0, w5	// D.6317, tmp110, n
	mul	w0, w0, w4	// iy, D.6317, incy
	b	.L48	//
	.p2align 3
.L54:
	mov	w1, 1	// tmp108,
	sub	w1, w1, w0	// D.6317, tmp108, n
	mul	w1, w1, w2	// ix, D.6317, incx
	b	.L47	//
	.size	ddot, .-ddot
	.align	2
	.p2align 3,,7
	.global	dgefa
	.type	dgefa, %function
dgefa:
	stp	x29, x30, [sp, -112]!	//,,,
	cmp	w2, 1	// n,
	mov	w11, w2	// n, n
	mov	w15, w1	// lda, lda
	add	x29, sp, 0	//,,
	stp	x25, x26, [sp, 64]	//,,
	mov	x25, x0	// a, a
	stp	x19, x20, [sp, 16]	//,,
	stp	x21, x22, [sp, 32]	//,,
	stp	x23, x24, [sp, 48]	//,,
	stp	x27, x28, [sp, 80]	//,,
	str	x3, [x29, 104]	// ipvt, %sfp
	ble	.L114	//,
	sxtw	x18, w1	// D.6451, lda
	mov	x23, 1	// ivtmp.203,
	add	x18, x18, 1	// D.6451, D.6451,
	mov	x27, x3	// ivtmp.206, ipvt
	add	w19, w1, 1	// D.6444, lda,
	add	x9, x0, 8	// ivtmp.200, a,
	mov	w26, w1	// ivtmp.201, lda
	fmov	d6, -1.0e+0	// tmp425,
	lsl	x20, x18, 3	// D.6451, D.6451,
	mov	x13, x23	// ivtmp.196, ivtmp.203
	sub	x12, x20, #8	// D.6451, D.6451,
	mov	w28, 0	// ivtmp.205,
	mov	w14, 2	// ivtmp.195,
	mov	w21, 0	// n,
	.p2align 2
.L88:
	ldr	d1, [x9, -8]	// dmax, MEM[base: _360, offset: -8B]
	mov	w5, w13	// n, ivtmp.196
	sub	w6, w26, w15	// D.6444, ivtmp.201, lda
	fcmpe	d1, #0.0	// dmax
	blt	.L115	//,
.L59:
	sub	w10, w11, w13	// D.6450, n, ivtmp.196
	mov	x1, x9	// ivtmp.186, ivtmp.200
	mov	w0, 2	// ivtmp.189,
	mov	w4, 1	// value,
	b	.L63	//
	.p2align 3
.L90:
	fmov	d1, d0	// dmax, dmax
	mov	w4, w0	// value, ivtmp.189
.L62:
	cmp	w2, w10	// D.6444, D.6450
	add	x1, x1, 8	// ivtmp.186, ivtmp.186,
	add	w0, w0, 1	// ivtmp.189, ivtmp.189,
	bgt	.L116	//,
.L63:
	ldr	d0, [x1]	// dmax, MEM[base: _94, offset: 0B]
	fcmpe	d0, #0.0	// dmax
	blt	.L117	//,
	fcmpe	d0, d1	// dmax, dmax
	mov	w2, w0	// D.6444, ivtmp.189
	bgt	.L90	//,
.L112:
	mov	w2, w0	// D.6444, ivtmp.189
.L118:
	cmp	w2, w10	// D.6444, D.6450
	add	x1, x1, 8	// ivtmp.186, ivtmp.186,
	add	w0, w0, 1	// ivtmp.189, ivtmp.189,
	ble	.L63	//,
.L116:
	add	w4, w4, w5	// D.6444, value, n
	sub	w2, w4, #2	// D.6444, D.6444,
	sub	w4, w4, #1	// l, D.6444,
	add	w0, w2, w6	// D.6444, D.6444, D.6444
	sxtw	x0, w0	// D.6444, D.6444
	ldr	d0, [x25, x0, lsl 3]	// D.6447, *_36
	str	w4, [x27]	// l, MEM[base: _378, offset: 0B]
	fcmp	d0, #0.0	// D.6447
	bne	.L64	//,
	mov	w0, w14	// D.6444, ivtmp.195
	mov	w21, w5	// n, n
.L65:
	cmp	w11, w0	// n, D.6444
	add	w14, w14, 1	// ivtmp.195, ivtmp.195,
	add	x13, x13, 1	// ivtmp.196, ivtmp.196,
	add	x9, x9, x20	// ivtmp.200, ivtmp.200, D.6451
	add	w26, w26, w15	// ivtmp.201, ivtmp.201, lda
	add	x23, x23, x18	// ivtmp.203, ivtmp.203, D.6451
	add	w28, w28, w19	// ivtmp.205, ivtmp.205, D.6444
	add	x27, x27, 4	// ivtmp.206, ivtmp.206,
	bgt	.L88	//,
	ldr	x1, [x29, 104]	// ipvt, %sfp
.L58:
	sub	w0, w11, #1	// D.6444, n,
	add	x23, x1, x11, sxtw 2	// D.6451, ipvt, n,,
	ldp	x27, x28, [sp, 80]	//,,
	mul	w19, w0, w19	// D.6444, D.6444, D.6444
	ldr	d0, [x25, w19, sxtw 3]	// *_86, *_86
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x25, x26, [sp, 64]	//,,
	fcmp	d0, #0.0	// *_86
	str	w11, [x23, -4]	// n, *_79
	ldp	x23, x24, [sp, 48]	//,,
	csel	w11, w11, w21, eq	// n, n, n,
	mov	w0, w11	//, n
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x29, x30, [sp], 112	//,,,
	ret
	.p2align 3
.L117:
	fneg	d2, d0	// dmax, dmax
	mov	w2, w0	// D.6444, ivtmp.189
	fcmpe	d2, d1	// dmax, dmax
	ble	.L112	//,
	fcmpe	d0, #0.0	// dmax
	mov	w4, w0	// value, ivtmp.189
	fmov	d1, d2	// dmax, dmax
	blt	.L62	//,
	fmov	d1, d0	// dmax, dmax
	mov	w2, w0	// D.6444, ivtmp.189
	b	.L118	//
	.p2align 3
.L64:
	cmp	w4, w5	// l, n
	beq	.L119	//,
	sxtw	x1, w28	// D.6444, ivtmp.205
	ldr	x6, [x25, x1, lsl 3]	// D.6447, *_42
	str	x6, [x25, x0, lsl 3]	// D.6447, *_36
	str	d0, [x25, x1, lsl 3]	// D.6447, *_42
.L67:
	fdiv	d0, d6, d0	// t, tmp425, D.6447
	mov	w0, 26215	// tmp431,
	movk	w0, 0x6666, lsl 16	// tmp431,,
	smull	x0, w10, w0	// tmp330, D.6450, tmp431
	asr	x0, x0, 33	// tmp333, tmp330,
	sub	w0, w0, w10, asr 31	// i, tmp333, D.6450,
	add	w0, w0, w0, lsl 2	// tmp337, i, i,
	subs	w0, w10, w0	// i, D.6450, tmp337
	beq	.L78	//,
	ubfx	x1, x9, 3, 1	// D.6450, ivtmp.200,,
	cmp	w1, w0	// D.6450, i
	csel	w1, w1, w0, ls	// prologue_after_cost_adjust.146, D.6450, i,
	cmp	w0, 4	// i,
	beq	.L120	//,
	mov	w1, w0	// prologue_after_cost_adjust.146, i
.L71:
	ldr	d1, [x9]	// MEM[base: _360, offset: 0B], MEM[base: _360, offset: 0B]
	cmp	w1, 1	// prologue_after_cost_adjust.146,
	fmul	d1, d1, d0	// D.6447, MEM[base: _360, offset: 0B], t
	str	d1, [x9]	// D.6447, MEM[base: _360, offset: 0B]
	beq	.L95	//,
	ldr	d1, [x9, 8]	// MEM[base: _360, offset: 8B], MEM[base: _360, offset: 8B]
	cmp	w1, 3	// prologue_after_cost_adjust.146,
	fmul	d1, d1, d0	// D.6447, MEM[base: _360, offset: 8B], t
	str	d1, [x9, 8]	// D.6447, MEM[base: _360, offset: 8B]
	bne	.L96	//,
	ldr	d1, [x9, 16]	// MEM[base: _360, offset: 16B], MEM[base: _360, offset: 16B]
	mov	w6, w1	// i, prologue_after_cost_adjust.146
	fmul	d1, d1, d0	// D.6447, MEM[base: _360, offset: 16B], t
	str	d1, [x9, 16]	// D.6447, MEM[base: _360, offset: 16B]
.L73:
	cmp	w1, w0	// prologue_after_cost_adjust.146, i
	beq	.L78	//,
.L72:
	sub	w7, w0, w1	// niters.148, i, prologue_after_cost_adjust.146
	uxtw	x1, w1	// prolog_loop_adjusted_niters.147, prologue_after_cost_adjust.146
	sub	w16, w7, #2	// D.6450, niters.148,
	cmp	w7, 1	// niters.148,
	lsr	w16, w16, 1	// D.6450, D.6450,
	add	w16, w16, 1	// bnd.149, D.6450,
	lsl	w8, w16, 1	// ratio_mult_vf.150, bnd.149,
	beq	.L75	//,
	add	x1, x1, x23	// D.6451, prolog_loop_adjusted_niters.147, ivtmp.203
	cmp	w16, 1	// bnd.149,
	dup	v3.2d, v0.d[0]	// tmp352, t
	lsl	x1, x1, 3	// D.6451, D.6451,
	ldr	q2, [x25, x1]	// MEM[(double *)vectp.153_329], MEM[(double *)vectp.153_329]
	fmul	v2.2d, v2.2d, v3.2d	// vect__117.155, MEM[(double *)vectp.153_329], tmp352
	str	q2, [x25, x1]	// vect__117.155, MEM[(double *)vectp.153_329]
	add	x1, x25, x1	// vectp.153, a, D.6451
	beq	.L76	//,
	ldr	q1, [x1, 16]	// MEM[(double *)vectp.153_329 + 16B], MEM[(double *)vectp.153_329 + 16B]
	fmul	v1.2d, v1.2d, v3.2d	// vect__117.155, MEM[(double *)vectp.153_329 + 16B], tmp352
	str	q1, [x1, 16]	// vect__117.155, MEM[(double *)vectp.153_329 + 16B]
.L76:
	cmp	w7, w8	// niters.148, ratio_mult_vf.150
	add	w6, w6, w8	// i, i, ratio_mult_vf.150
	beq	.L78	//,
.L75:
	sxtw	x1, w6	// i, i
	ldr	d1, [x9, x1, lsl 3]	// *_314, *_314
	fmul	d1, d1, d0	// D.6447, *_314, t
	str	d1, [x9, x1, lsl 3]	// D.6447, *_314
.L78:
	cmp	w0, w10	// i, D.6450
	bge	.L70	//,
	sub	w1, w10, #1	// D.6450, D.6450,
	mov	w3, 52429	// tmp432,
	sub	w1, w1, w0	// D.6450, D.6450, i
	movk	w3, 0xcccc, lsl 16	// tmp432,,
	cmp	w1, 4	// D.6450,
	umull	x1, w1, w3	// tmp363, D.6450, tmp432
	lsr	x1, x1, 32	// tmp365, tmp363,
	lsr	w1, w1, 2	// D.6450, tmp365,
	sub	w6, w1, #1	// D.6450, D.6450,
	add	w1, w1, 1	// niters.124, D.6450,
	lsr	w6, w6, 1	// D.6450, D.6450,
	add	w6, w6, 1	// bnd.125, D.6450,
	lsl	w8, w6, 1	// ratio_mult_vf.126, bnd.125,
	bls	.L80	//,
	add	x7, x23, x0, sxtw	// D.6451, ivtmp.203, i
	mov	w17, 0	// ivtmp.176,
	dup	v1.2d, v0.d[0]	// vect_cst_.136, t
	add	x7, x25, x7, lsl 3	// ivtmp.180, a, D.6451,
	mov	x16, x7	// ivtmp.183, ivtmp.180
.L81:
	ldr	q7, [x7, 16]	// vect__123.131, MEM[base: _64, offset: 16B]
	add	w17, w17, 1	// ivtmp.176, ivtmp.176,
	ldr	q5, [x7, 32]	// vect__123.132, MEM[base: _64, offset: 32B]
	cmp	w17, w6	// ivtmp.176, bnd.125
	ldr	q4, [x7, 48]	// vect__123.133, MEM[base: _64, offset: 48B]
	add	x16, x16, 80	// ivtmp.183, ivtmp.183,
	ldr	q3, [x7, 64]	// vect__123.134, MEM[base: _64, offset: 64B]
	ldr	q2, [x7], 80	// vect__123.130, MEM[base: _64, offset: 0B]
	fmul	v7.2d, v7.2d, v1.2d	// vect__124.135, vect__123.131, vect_cst_.136
	fmul	v5.2d, v5.2d, v1.2d	// vect__124.135, vect__123.132, vect_cst_.136
	fmul	v4.2d, v4.2d, v1.2d	// vect__124.135, vect__123.133, vect_cst_.136
	fmul	v3.2d, v3.2d, v1.2d	// vect__124.135, vect__123.134, vect_cst_.136
	fmul	v2.2d, v2.2d, v1.2d	// vect__124.135, vect__123.130, vect_cst_.136
	str	q7, [x16, -64]	// vect__124.135, MEM[base: _300, offset: 16B]
	str	q5, [x16, -48]	// vect__124.135, MEM[base: _300, offset: 32B]
	str	q4, [x16, -32]	// vect__124.135, MEM[base: _300, offset: 48B]
	str	q3, [x16, -16]	// vect__124.135, MEM[base: _300, offset: 64B]
	str	q2, [x16, -80]	// vect__124.135, MEM[base: _300, offset: 0B]
	bcc	.L81	//,
	cmp	w8, w1	// ratio_mult_vf.126, niters.124
	add	w8, w8, w8, lsl 2	// D.6444, ratio_mult_vf.126, ratio_mult_vf.126,
	add	w0, w0, w8	// i, i, D.6444
	beq	.L70	//,
.L80:
	sxtw	x0, w0	// i, i
	ldr	d1, [x9, x0, lsl 3]	// *_215, *_215
	lsl	x1, x0, 3	// D.6445, i,
	add	x7, x1, 8	// D.6451, D.6445,
	add	x6, x1, 16	// D.6451, D.6445,
	fmul	d1, d1, d0	// D.6447, *_215, t
	str	d1, [x9, x0, lsl 3]	// D.6447, *_215
	add	x0, x1, 24	// D.6451, D.6445,
	ldr	d1, [x9, x7]	// *_209, *_209
	add	x1, x1, 32	// D.6451, D.6445,
	fmul	d1, d1, d0	// D.6447, *_209, t
	str	d1, [x9, x7]	// D.6447, *_209
	ldr	d1, [x9, x6]	// *_203, *_203
	fmul	d1, d1, d0	// D.6447, *_203, t
	str	d1, [x9, x6]	// D.6447, *_203
	ldr	d1, [x9, x0]	// *_197, *_197
	fmul	d1, d1, d0	// D.6447, *_197, t
	str	d1, [x9, x0]	// D.6447, *_197
	ldr	d1, [x9, x1]	// *_191, *_191
	fmul	d0, d1, d0	// D.6447, *_191, t
	str	d0, [x9, x1]	// D.6447, *_191
.L70:
	cmp	w11, w14	// n, ivtmp.195
	blt	.L113	//,
	cmp	w4, w5	// l, n
	beq	.L121	//,
	add	x8, x13, x26, sxtw	// D.6451, ivtmp.196, ivtmp.201
	sxtw	x2, w2	// D.6451, D.6444
	mov	w22, w14	// j, ivtmp.195
	sub	x24, x2, x13	// D.6451, D.6451, ivtmp.196
	add	x8, x25, x8, lsl 3	// ivtmp.175, a, D.6451,
	.p2align 2
.L87:
	ldr	d1, [x8, x24, lsl 3]	// t, MEM[base: _130, index: _122, step: 8, offset: 0B]
	mov	x2, x8	//, ivtmp.175
	ldr	x6, [x8, -8]	// D.6447, MEM[base: _130, offset: -8B]
	add	w22, w22, 1	// j, j,
	mov	x1, x9	//, ivtmp.200
	mov	w0, w10	//, D.6450
	str	x6, [x8, x24, lsl 3]	// D.6447, MEM[base: _130, index: _122, step: 8, offset: 0B]
	fcmp	d1, #0.0	// t
	fmov	d0, d1	//, t
	str	d1, [x8, -8]	// t, MEM[base: _130, offset: -8B]
	add	x8, x8, x12	// ivtmp.175, ivtmp.175, D.6451
	beq	.L86	//,
	bl	daxpy.part.0	//
.L86:
	cmp	w11, w22	// n, j
	bge	.L87	//,
.L113:
	mov	w0, w14	// D.6444, ivtmp.195
	b	.L65	//
	.p2align 3
.L115:
	fneg	d1, d1	// dmax, dmax
	b	.L59	//
	.p2align 3
.L120:
	mov	w6, 0	// i,
	cbz	w1, .L72	// prologue_after_cost_adjust.146,
	b	.L71	//
	.p2align 3
.L119:
	ldr	d0, [x25, w28, sxtw 3]	// D.6447, *_257
	b	.L67	//
	.p2align 3
.L121:
	add	x8, x13, x26, sxtw	// D.6451, ivtmp.196, ivtmp.201
	sxtw	x2, w2	// D.6451, D.6444
	sub	x24, x2, x13	// D.6451, D.6451, ivtmp.196
	mov	w22, w14	// j, ivtmp.195
	add	x8, x25, x8, lsl 3	// ivtmp.166, a, D.6451,
	.p2align 2
.L85:
	ldr	d1, [x8, x24, lsl 3]	// t, MEM[base: _303, index: _302, step: 8, offset: 0B]
	mov	x2, x8	//, ivtmp.166
	add	w22, w22, 1	// j, j,
	mov	x1, x9	//, ivtmp.200
	mov	w0, w10	//, D.6450
	add	x8, x8, x12	// ivtmp.166, ivtmp.166, D.6451
	fcmp	d1, #0.0	// t
	fmov	d0, d1	//, t
	beq	.L84	//,
	bl	daxpy.part.0	//
.L84:
	cmp	w11, w22	// n, j
	bge	.L85	//,
	mov	w0, w14	// D.6444, ivtmp.195
	b	.L65	//
	.p2align 3
.L96:
	mov	w6, 2	// i,
	b	.L73	//
	.p2align 3
.L95:
	mov	w6, w1	// i, prologue_after_cost_adjust.146
	b	.L73	//
.L114:
	add	w19, w1, 1	// D.6444, lda,
	mov	w21, 0	// n,
	mov	x1, x3	// ipvt, ipvt
	b	.L58	//
	.size	dgefa, .-dgefa
	.align	2
	.p2align 3,,7
	.global	dgesl
	.type	dgesl, %function
dgesl:
	stp	x29, x30, [sp, -48]!	//,,,
	mov	x15, x0	// a, a
	mov	w13, w1	// lda, lda
	mov	w12, w2	// n, n
	add	x29, sp, 0	//,,
	stp	x19, x20, [sp, 16]	//,,
	mov	x14, x4	// b, b
	str	x21, [sp, 32]	//,
	mov	x20, x3	// ipvt, ipvt
	cbz	w5, .L123	// job,
	cmp	w2, 0	// n,
	ble	.L136	//,
	fmov	d0, xzr	// t,
	add	w9, w1, 1	// D.6548, lda,
	mov	x6, x4	// ivtmp.258, b
	mov	x8, x0	// ivtmp.260, a
	mov	w7, w1	// ivtmp.262, lda
	mov	w5, 1	// ivtmp.257,
	.p2align 2
.L127:
	ldr	d1, [x6]	// MEM[base: _159, offset: 0B], MEM[base: _159, offset: 0B]
	cmp	w5, w12	// ivtmp.257, n
	ldr	d2, [x8]	// MEM[base: _158, offset: 0B], MEM[base: _158, offset: 0B]
	mov	x2, x14	//, b
	add	x1, x15, x7, sxtw 3	//, a, ivtmp.262,
	mov	w0, w5	//, ivtmp.257
	fsub	d0, d1, d0	// D.6551, MEM[base: _159, offset: 0B], t
	fdiv	d0, d0, d2	// D.6551, D.6551, MEM[base: _158, offset: 0B]
	str	d0, [x6]	// D.6551, MEM[base: _159, offset: 0B]
	beq	.L136	//,
	cmp	w5, 0	// ivtmp.257,
	ble	.L140	//,
	bl	ddot.part.1	//
.L134:
	add	w5, w5, 1	// ivtmp.257, ivtmp.257,
	add	x6, x6, 8	// ivtmp.258, ivtmp.258,
	add	x8, x8, x9, sxtw 3	// ivtmp.260, ivtmp.260, D.6548,
	add	w7, w7, w13	// ivtmp.262, ivtmp.262, lda
	b	.L127	//
	.p2align 3
.L136:
	sub	w7, w12, #1	// k, n,
	cmp	w7, 0	// k,
	ble	.L122	//,
	sub	w6, w12, #2	// D.6548, n,
	mov	x8, -4	// tmp259,
	sxtw	x9, w7	// ivtmp.252, k
	mov	w10, 1	// ivtmp.245,
	add	x8, x8, x7, sxtw 2	// D.6552, tmp259, k,
	mov	x12, -8	// tmp272,
	add	x5, x14, x9, lsl 3	// ivtmp.244, b, ivtmp.252,
	add	x8, x20, x8	// ivtmp.247, ipvt, D.6552
	mul	w6, w6, w13	// ivtmp.250, D.6548, lda
	.p2align 2
.L138:
	add	x1, x9, x6, sxtw	// D.6552, ivtmp.252, ivtmp.250
	mov	w0, w10	//, ivtmp.245
	sub	w11, w7, #1	// k, k,
	mov	x2, x5	//, ivtmp.244
	add	x1, x15, x1, lsl 3	//, a, D.6552,
	add	w10, w10, 1	// ivtmp.245, ivtmp.245,
	sub	w6, w6, w13	// ivtmp.250, ivtmp.250, lda
	sub	x9, x9, #1	// ivtmp.252, ivtmp.252,
	bl	ddot.part.1	//
	ldr	d1, [x5, -8]	// MEM[base: _172, offset: -8B], MEM[base: _172, offset: -8B]
	ldr	w0, [x8]	//, MEM[base: _170, offset: 0B]
	sub	x8, x8, #4	// ivtmp.247, ivtmp.247,
	cmp	w0, w7	// l, k
	mov	w7, w11	// k, k
	fadd	d0, d0, d1	// D.6551,, MEM[base: _172, offset: -8B]
	add	x0, x12, x0, sxtw 3	// D.6552, tmp272, l,
	str	d0, [x5, -8]	// D.6551, MEM[base: _172, offset: -8B]
	beq	.L137	//,
	ldr	x1, [x14, x0]	// t, *_68
	str	d0, [x14, x0]	// D.6551, *_68
	str	x1, [x5, -8]	// t, MEM[base: _172, offset: -8B]
.L137:
	sub	x5, x5, #8	// ivtmp.244, ivtmp.244,
	cbnz	w7, .L138	// k,
.L122:
	ldp	x19, x20, [sp, 16]	//,,
	ldr	x21, [sp, 32]	//,
	ldp	x29, x30, [sp], 48	//,,,
	ret
	.p2align 3
.L123:
	cmp	w2, 1	// n,
	ble	.L148	//,
	sub	w11, w2, #1	// n, n,
	mov	x10, 1	// ivtmp.231,
	mov	w9, w11	// ivtmp.232, n
	mov	w19, 0	// ivtmp.230,
	mov	x18, 8	// ivtmp.228,
	mov	x8, 0	// ivtmp.223,
	mov	x21, -8	// tmp230,
	.p2align 2
.L132:
	ldr	w5, [x20, x8, lsl 2]	//, MEM[base: ipvt_62(D), index: ivtmp.223_106, step: 4, offset: 0B]
	add	x1, x10, x19, sxtw	// D.6552, ivtmp.231, ivtmp.230
	add	x2, x14, x18	//, b, ivtmp.228
	mov	w0, w9	//, ivtmp.232
	cmp	w5, w10	// l, ivtmp.231
	add	x1, x15, x1, lsl 3	//, a, D.6552,
	add	x5, x21, x5, sxtw 3	// D.6552, tmp230, l,
	add	x18, x18, 8	// ivtmp.228, ivtmp.228,
	add	w19, w19, w13	// ivtmp.230, ivtmp.230, lda
	add	x10, x10, 1	// ivtmp.231, ivtmp.231,
	ldr	d1, [x14, x5]	// t, *_80
	beq	.L130	//,
	ldr	x3, [x14, x8, lsl 3]	// D.6551, MEM[base: b_22(D), index: ivtmp.223_106, step: 8, offset: 0B]
	str	x3, [x14, x5]	// D.6551, *_80
	str	d1, [x14, x8, lsl 3]	// t, MEM[base: b_22(D), index: ivtmp.223_106, step: 8, offset: 0B]
.L130:
	fcmp	d1, #0.0	// t
	add	x8, x8, 1	// ivtmp.223, ivtmp.223,
	fmov	d0, d1	//, t
	beq	.L131	//,
	bl	daxpy.part.0	//
.L131:
	subs	w9, w9, #1	// ivtmp.232, ivtmp.232,
	bne	.L132	//,
.L129:
	add	w0, w13, 1	// D.6548, lda,
	add	x8, x14, x12, sxtw 3	// ivtmp.217, b, n,
	neg	w12, w0	// D.6548, D.6548
	mul	w10, w11, w13	// ivtmp.220, n, lda
	mul	w0, w0, w11	// D.6548, D.6548, n
	add	x9, x15, x0, sxtw 3	// ivtmp.218, a, D.6548,
	.p2align 2
.L139:
	ldr	d0, [x8, -8]	// MEM[base: _221, offset: -8B], MEM[base: _221, offset: -8B]
	mov	x2, x14	//, b
	ldr	d1, [x9]	// MEM[base: _219, offset: 0B], MEM[base: _219, offset: 0B]
	add	x1, x15, x10, sxtw 3	//, a, ivtmp.220,
	mov	w0, w11	//, n
	fdiv	d0, d0, d1	// D.6551, MEM[base: _221, offset: -8B], MEM[base: _219, offset: 0B]
	str	d0, [x8, -8]	// D.6551, MEM[base: _221, offset: -8B]
	fneg	d0, d0	// t, D.6551
	cbz	w11, .L122	// n,
	fcmp	d0, #0.0	// t
	beq	.L133	//,
	bl	daxpy.part.0	//
.L133:
	sub	x8, x8, #8	// ivtmp.217, ivtmp.217,
	add	x9, x9, x12, sxtw 3	// ivtmp.218, ivtmp.218, D.6548,
	sub	w10, w10, w13	// ivtmp.220, ivtmp.220, lda
	sub	w11, w11, #1	// n, n,
	b	.L139	//
	.p2align 3
.L140:
	fmov	d0, xzr	// t,
	b	.L134	//
.L148:
	cmp	w2, 0	// n,
	ble	.L122	//,
	sub	w11, w2, #1	// n, n,
	b	.L129	//
	.size	dgesl, .-dgesl
	.align	2
	.p2align 3,,7
	.global	dscal
	.type	dscal, %function
dscal:
	cmp	w0, 0	// n,
	ble	.L149	//,
	cmp	w2, 1	// incx,
	beq	.L183	//,
	mov	w3, 0	// ix,
	tbnz	w2, #31, .L184	// incx,
.L164:
	add	x1, x1, x3, sxtw 3	// ivtmp.315, x, ix,
	mov	w3, 0	// i,
	.p2align 2
.L165:
	ldr	d1, [x1]	// MEM[base: _152, offset: 0B], MEM[base: _152, offset: 0B]
	add	w3, w3, 1	// i, i,
	cmp	w0, w3	// n, i
	fmul	d1, d1, d0	// D.6617, MEM[base: _152, offset: 0B], sa
	str	d1, [x1]	// D.6617, MEM[base: _152, offset: 0B]
	add	x1, x1, x2, sxtw 3	// ivtmp.315, ivtmp.315, incx,
	bne	.L165	//,
.L149:
	ret
	.p2align 3
.L183:
	mov	w2, 26215	// tmp184,
	movk	w2, 0x6666, lsl 16	// tmp184,,
	smull	x2, w0, w2	// tmp183, n, tmp184
	asr	x2, x2, 33	// tmp186, tmp183,
	sub	w2, w2, w0, asr 31	// i, tmp186, n,
	add	w2, w2, w2, lsl 2	// tmp190, i, i,
	subs	w2, w0, w2	// i, n, tmp190
	beq	.L152	//,
	ubfx	x3, x1, 3, 1	// D.6620, x,,
	cmp	w3, w2	// D.6620, i
	csel	w3, w3, w2, ls	// prologue_after_cost_adjust.288, D.6620, i,
	cmp	w2, 4	// i,
	beq	.L185	//,
	mov	w3, w2	// prologue_after_cost_adjust.288, i
.L153:
	ldr	d1, [x1]	// *x_9(D), *x_9(D)
	cmp	w3, 1	// prologue_after_cost_adjust.288,
	fmul	d1, d1, d0	// D.6617, *x_9(D), sa
	str	d1, [x1]	// D.6617, *x_9(D)
	beq	.L168	//,
	ldr	d1, [x1, 8]	// MEM[(double *)x_9(D) + 8B], MEM[(double *)x_9(D) + 8B]
	cmp	w3, 3	// prologue_after_cost_adjust.288,
	fmul	d1, d1, d0	// D.6617, MEM[(double *)x_9(D) + 8B], sa
	str	d1, [x1, 8]	// D.6617, MEM[(double *)x_9(D) + 8B]
	bne	.L169	//,
	ldr	d1, [x1, 16]	// MEM[(double *)x_9(D) + 16B], MEM[(double *)x_9(D) + 16B]
	mov	w4, w3	// i, prologue_after_cost_adjust.288
	fmul	d1, d1, d0	// D.6617, MEM[(double *)x_9(D) + 16B], sa
	str	d1, [x1, 16]	// D.6617, MEM[(double *)x_9(D) + 16B]
.L155:
	cmp	w2, w3	// i, prologue_after_cost_adjust.288
	beq	.L156	//,
.L154:
	sub	w6, w2, w3	// niters.290, i, prologue_after_cost_adjust.288
	sub	w5, w6, #2	// D.6620, niters.290,
	cmp	w6, 1	// niters.290,
	lsr	w5, w5, 1	// D.6620, D.6620,
	add	w5, w5, 1	// bnd.291, D.6620,
	lsl	w7, w5, 1	// ratio_mult_vf.292, bnd.291,
	beq	.L157	//,
	ubfiz	x3, x3, 3, 32	// D.6621, prologue_after_cost_adjust.288,,
	cmp	w5, 1	// bnd.291,
	dup	v3.2d, v0.d[0]	// tmp205, sa
	add	x5, x1, x3	// vectp_x.295, x, D.6621
	ldr	q2, [x1, x3]	// MEM[(double *)vectp_x.295_211], MEM[(double *)vectp_x.295_211]
	fmul	v2.2d, v2.2d, v3.2d	// vect__29.297, MEM[(double *)vectp_x.295_211], tmp205
	str	q2, [x1, x3]	// vect__29.297, MEM[(double *)vectp_x.295_211]
	beq	.L158	//,
	ldr	q1, [x5, 16]	// MEM[(double *)vectp_x.295_211 + 16B], MEM[(double *)vectp_x.295_211 + 16B]
	fmul	v1.2d, v1.2d, v3.2d	// vect__29.297, MEM[(double *)vectp_x.295_211 + 16B], tmp205
	str	q1, [x5, 16]	// vect__29.297, MEM[(double *)vectp_x.295_211 + 16B]
.L158:
	cmp	w6, w7	// niters.290, ratio_mult_vf.292
	add	w4, w4, w7	// i, i, ratio_mult_vf.292
	beq	.L156	//,
.L157:
	sxtw	x4, w4	// i, i
	ldr	d1, [x1, x4, lsl 3]	// *_196, *_196
	fmul	d1, d1, d0	// D.6617, *_196, sa
	str	d1, [x1, x4, lsl 3]	// D.6617, *_196
.L156:
	cmp	w0, w2	// n, i
	ble	.L149	//,
.L152:
	sub	w0, w0, #1	// D.6620, n,
	mov	w3, 52429	// tmp217,
	sub	w0, w0, w2	// D.6620, D.6620, i
	movk	w3, 0xcccc, lsl 16	// tmp217,,
	cmp	w0, 4	// D.6620,
	umull	x0, w0, w3	// tmp216, D.6620, tmp217
	lsr	x0, x0, 32	// tmp218, tmp216,
	lsr	w0, w0, 2	// D.6620, tmp218,
	sub	w3, w0, #1	// D.6620, D.6620,
	add	w0, w0, 1	// niters.266, D.6620,
	lsr	w3, w3, 1	// D.6620, D.6620,
	add	w3, w3, 1	// bnd.267, D.6620,
	lsl	w4, w3, 1	// ratio_mult_vf.268, bnd.267,
	bls	.L161	//,
	dup	v1.2d, v0.d[0]	// vect_cst_.278, sa
	add	x5, x1, x2, sxtw 3	// ivtmp.307, x, i,
	mov	x6, x5	// ivtmp.306, ivtmp.307
	mov	w7, 0	// ivtmp.301,
.L162:
	ldr	q6, [x6, 16]	// vect__35.273, MEM[base: _33, offset: 16B]
	add	x5, x5, 80	// ivtmp.307, ivtmp.307,
	ldr	q5, [x6, 32]	// vect__35.274, MEM[base: _33, offset: 32B]
	add	w7, w7, 1	// ivtmp.301, ivtmp.301,
	ldr	q4, [x6, 48]	// vect__35.275, MEM[base: _33, offset: 48B]
	cmp	w7, w3	// ivtmp.301, bnd.267
	ldr	q3, [x6, 64]	// vect__35.276, MEM[base: _33, offset: 64B]
	ldr	q2, [x6], 80	// vect__35.272, MEM[base: _33, offset: 0B]
	fmul	v6.2d, v6.2d, v1.2d	// vect__36.277, vect__35.273, vect_cst_.278
	fmul	v5.2d, v5.2d, v1.2d	// vect__36.277, vect__35.274, vect_cst_.278
	fmul	v4.2d, v4.2d, v1.2d	// vect__36.277, vect__35.275, vect_cst_.278
	fmul	v3.2d, v3.2d, v1.2d	// vect__36.277, vect__35.276, vect_cst_.278
	fmul	v2.2d, v2.2d, v1.2d	// vect__36.277, vect__35.272, vect_cst_.278
	str	q6, [x5, -64]	// vect__36.277, MEM[base: _57, offset: 16B]
	str	q5, [x5, -48]	// vect__36.277, MEM[base: _57, offset: 32B]
	str	q4, [x5, -32]	// vect__36.277, MEM[base: _57, offset: 48B]
	str	q3, [x5, -16]	// vect__36.277, MEM[base: _57, offset: 64B]
	str	q2, [x5, -80]	// vect__36.277, MEM[base: _57, offset: 0B]
	bcc	.L162	//,
	cmp	w0, w4	// niters.266, ratio_mult_vf.268
	add	w4, w4, w4, lsl 2	// D.6616, ratio_mult_vf.268, ratio_mult_vf.268,
	add	w2, w2, w4	// i, i, D.6616
	beq	.L149	//,
.L161:
	sxtw	x2, w2	// i, i
	ldr	d1, [x1, x2, lsl 3]	// *_114, *_114
	lsl	x0, x2, 3	// D.6622, i,
	add	x5, x0, 8	// D.6621, D.6622,
	add	x4, x0, 16	// D.6621, D.6622,
	add	x3, x0, 24	// D.6621, D.6622,
	add	x0, x0, 32	// D.6621, D.6622,
	fmul	d1, d1, d0	// D.6617, *_114, sa
	str	d1, [x1, x2, lsl 3]	// D.6617, *_114
	ldr	d1, [x1, x5]	// *_101, *_101
	fmul	d1, d1, d0	// D.6617, *_101, sa
	str	d1, [x1, x5]	// D.6617, *_101
	ldr	d1, [x1, x4]	// *_95, *_95
	fmul	d1, d1, d0	// D.6617, *_95, sa
	str	d1, [x1, x4]	// D.6617, *_95
	ldr	d1, [x1, x3]	// *_89, *_89
	fmul	d1, d1, d0	// D.6617, *_89, sa
	str	d1, [x1, x3]	// D.6617, *_89
	ldr	d1, [x1, x0]	// *_83, *_83
	fmul	d0, d1, d0	// D.6617, *_83, sa
	str	d0, [x1, x0]	// D.6617, *_83
	ret
	.p2align 3
.L184:
	mov	w3, 1	// tmp258,
	sub	w3, w3, w0	// D.6616, tmp258, n
	mul	w3, w3, w2	// ix, D.6616, incx
	b	.L164	//
	.p2align 3
.L185:
	mov	w4, 0	// i,
	cbz	w3, .L154	// prologue_after_cost_adjust.288,
	b	.L153	//
	.p2align 3
.L168:
	mov	w4, w3	// i, prologue_after_cost_adjust.288
	b	.L155	//
.L169:
	mov	w4, 2	// i,
	b	.L155	//
	.size	dscal, .-dscal
	.align	2
	.p2align 3,,7
	.global	idamax
	.type	idamax, %function
idamax:
	cmp	w0, 0	// n,
	ccmp	w2, wzr, 4, gt	// incx,,,
	ble	.L203	//,
	cmp	w0, 1	// n,
	beq	.L209	//,
	cmp	w2, 1	// incx,
	ldr	d1, [x1]	// dmax, *dx_16(D)
	beq	.L213	//,
	fcmpe	d1, #0.0	// dmax
	blt	.L214	//,
.L194:
	sbfiz	x2, x2, 3, 32	// D.6663, incx,,
	mov	w3, 2	// ivtmp.332,
	add	x1, x1, x2	// ivtmp.330, dx, D.6663
	mov	w5, 1	// value,
	b	.L198	//
	.p2align 3
.L201:
	fmov	d1, d0	// dmax, dmax
	mov	w5, w3	// value, ivtmp.332
.L197:
	cmp	w0, w4	// n, D.6661
	add	x1, x1, x2	// ivtmp.330, ivtmp.330, D.6663
	add	w3, w3, 1	// ivtmp.332, ivtmp.332,
	ble	.L211	//,
.L198:
	ldr	d0, [x1]	// dmax, MEM[base: _53, offset: 0B]
	fcmpe	d0, #0.0	// dmax
	blt	.L215	//,
	fcmpe	d0, d1	// dmax, dmax
	mov	w4, w3	// D.6661, ivtmp.332
	bgt	.L201	//,
.L210:
	mov	w4, w3	// D.6661, ivtmp.332
.L216:
	cmp	w0, w4	// n, D.6661
	add	x1, x1, x2	// ivtmp.330, ivtmp.330, D.6663
	add	w3, w3, 1	// ivtmp.332, ivtmp.332,
	bgt	.L198	//,
.L211:
	mov	w0, w5	// D.6661, value
	ret
	.p2align 3
.L209:
	ret
	.p2align 3
.L215:
	fneg	d2, d0	// dmax, dmax
	mov	w4, w3	// D.6661, ivtmp.332
	fcmpe	d2, d1	// dmax, dmax
	ble	.L210	//,
	fcmpe	d0, #0.0	// dmax
	mov	w5, w3	// value, ivtmp.332
	fmov	d1, d2	// dmax, dmax
	blt	.L197	//,
	fmov	d1, d0	// dmax, dmax
	mov	w4, w3	// D.6661, ivtmp.332
	b	.L216	//
	.p2align 3
.L203:
	mov	w0, 0	// D.6661,
	ret
	.p2align 3
.L213:
	fcmpe	d1, #0.0	// dmax
	blt	.L217	//,
.L189:
	add	x1, x1, 8	// ivtmp.321, dx,
	mov	w2, 2	// ivtmp.324,
	mov	w5, 1	// value,
	b	.L193	//
	.p2align 3
.L190:
	fcmpe	d0, d1	// dmax, dmax
	ble	.L192	//,
	fmov	d1, d0	// dmax, dmax
	mov	w5, w2	// value, ivtmp.324
	mov	w3, w2	// D.6661, ivtmp.324
.L192:
	cmp	w0, w3	// n, D.6661
	add	x1, x1, 8	// ivtmp.321, ivtmp.321,
	add	w2, w2, 1	// ivtmp.324, ivtmp.324,
	ble	.L211	//,
.L193:
	ldr	d0, [x1]	// dmax, MEM[base: _6, offset: 0B]
	mov	w3, w2	// D.6661, ivtmp.324
	fcmpe	d0, #0.0	// dmax
	bge	.L190	//,
	fneg	d2, d0	// dmax, dmax
	fcmpe	d2, d1	// dmax, dmax
	ble	.L192	//,
	fcmpe	d0, #0.0	// dmax
	mov	w5, w2	// value, ivtmp.324
	fmov	d1, d2	// dmax, dmax
	blt	.L192	//,
	fmov	d1, d0	// dmax, dmax
	b	.L192	//
	.p2align 3
.L214:
	fneg	d1, d1	// dmax, dmax
	b	.L194	//
	.p2align 3
.L217:
	fneg	d1, d1	// dmax, dmax
	b	.L189	//
	.size	idamax, .-idamax
	.align	2
	.p2align 3,,7
	.global	r8_abs
	.type	r8_abs, %function
r8_abs:
	fcmpe	d0, #0.0	// x
	blt	.L220	//,
	ret
	.p2align 3
.L220:
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
	mov	w0, 53	// D.6674,
	.p2align 2
.L222:
	subs	w0, w0, #1	// D.6674, D.6674,
	fmul	d0, d0, d1	// r, r, tmp79
	bne	.L222	//,
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
	mov	w6, 2549	// tmp138,
	ldp	w5, w4, [x0, 4]	//,, MEM[(int *)iseed_1(D) + 4B]
	mov	w7, 2508	// tmp146,
	mov	w8, 322	// tmp157,
	ldr	d2, .LC1	// tmp180,
	mul	w1, w3, w6	// it4, D.6688, tmp138
	mov	w9, 494	// tmp172,
	cmp	w1, 0	// it4,
	add	w2, w1, 4095	// tmp140, it4,
	csel	w2, w2, w1, lt	// it4, tmp140, it4,
	asr	w2, w2, 12	// tmp141, it4,
	sub	w1, w1, w2, lsl 12	// it4, it4, tmp141,
	madd	w2, w4, w6, w2	// D.6688, D.6688, tmp138, tmp141
	madd	w2, w3, w7, w2	// it3, D.6688, tmp146, D.6688
	scvtf	d1, w1	// D.6689, it4
	str	w1, [x0, 12]	// it4, MEM[(int *)iseed_1(D) + 12B]
	cmp	w2, 0	// it3,
	add	w1, w2, 4095	// tmp148, it3,
	csel	w1, w1, w2, lt	// it3, tmp148, it3,
	asr	w1, w1, 12	// tmp149, it3,
	sub	w2, w2, w1, lsl 12	// it3, it3, tmp149,
	madd	w1, w5, w6, w1	// D.6688, D.6688, tmp138, tmp149
	madd	w1, w4, w7, w1	// D.6688, D.6688, tmp146, D.6688
	scvtf	d0, w2	// D.6689, it3
	madd	w1, w3, w8, w1	// it2, D.6688, tmp157, D.6688
	str	w2, [x0, 8]	// it3, MEM[(int *)iseed_1(D) + 8B]
	fmadd	d1, d1, d2, d0	// D.6689, D.6689, tmp180, D.6689
	cmp	w1, 0	// it2,
	add	w2, w1, 4095	// tmp159, it2,
	csel	w2, w2, w1, lt	// it2, tmp159, it2,
	asr	w2, w2, 12	// tmp160, it2,
	sub	w1, w1, w2, lsl 12	// it2, it2, tmp160,
	scvtf	d0, w1	// D.6689, it2
	str	w1, [x0, 4]	// it2, MEM[(int *)iseed_1(D) + 4B]
	fmadd	d1, d1, d2, d0	// D.6689, D.6689, tmp180, D.6689
	ldr	w1, [x0]	//, *iseed_1(D)
	madd	w2, w1, w6, w2	// D.6688, *iseed_1(D), tmp138, tmp160
	madd	w5, w5, w7, w2	// D.6688, D.6688, tmp146, D.6688
	madd	w4, w4, w8, w5	// D.6688, D.6688, tmp157, D.6688
	madd	w3, w3, w9, w4	// it1, D.6688, tmp172, D.6688
	negs	w1, w3	// tmp173, it1
	and	w3, w3, 4095	// tmp174, it1,
	and	w1, w1, 4095	// tmp175, tmp173,
	csneg	w3, w3, w1, mi	// it1, tmp174, tmp175,
	scvtf	d0, w3	// D.6689, it1
	fmadd	d0, d1, d2, d0	// D.6689, D.6689, tmp180, D.6689
	str	w3, [x0]	// it1, *iseed_1(D)
	fmul	d0, d0, d2	//, D.6689, tmp180
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
	stp	x29, x30, [sp, -32]!	//,,,
	add	x29, sp, 0	//,,
	stp	x19, x20, [sp, 16]	//,,
	mov	w19, w0	// lda, lda
	mul	w0, w0, w1	// D.6718, lda, n
	mov	w20, w1	// n, n
	sbfiz	x0, x0, 3, 32	//, D.6718,,
	bl	malloc	//
	cmp	w20, 0	// n,
	ble	.L229	//,
	mov	w1, 1	// init$0,
	sub	w13, w20, #1	// D.6723, n,
	ldr	d1, .LC2	// tmp205,
	mov	x12, x0	// ivtmp.362, a
	add	w16, w20, w1	// D.6718, n,
	mov	w15, w1	// j, init$0
	add	x13, x13, 1	// D.6723, D.6723,
	fmov	d3, -5.0e-1	// tmp199,
	mov	w6, 1325	// init$3,
	mov	w4, 3	// init$2,
	mov	w3, 2	// init$1,
	mov	w9, 2549	// tmp149,
	mov	w10, 2508	// tmp157,
	mov	w11, 322	// tmp168,
	mov	w14, 494	// tmp182,
	.p2align 2
.L231:
	mov	w8, w6	// init$3, init$3
	mov	w17, w4	// init$2, init$2
	mov	w18, w3	// init$1, init$1
	mov	x7, 0	// ivtmp.353,
	.p2align 2
.L230:
	mul	w6, w6, w9	// it4, init$3, tmp149
	cmp	w6, 0	// it4,
	add	w2, w6, 4095	// tmp151, it4,
	csel	w2, w2, w6, lt	// it4, tmp151, it4,
	asr	w2, w2, 12	// tmp152, it4,
	madd	w4, w4, w9, w2	// D.6718, init$2, tmp149, tmp152
	sub	w6, w6, w2, lsl 12	// init$3, it4, tmp152,
	madd	w5, w8, w10, w4	// it3, init$3, tmp157, D.6718
	scvtf	d0, w6	// D.6722, init$3
	cmp	w5, 0	// it3,
	add	w4, w5, 4095	// tmp159, it3,
	csel	w4, w4, w5, lt	// it3, tmp159, it3,
	asr	w4, w4, 12	// tmp160, it3,
	madd	w3, w3, w9, w4	// D.6718, init$1, tmp149, tmp160
	sub	w4, w5, w4, lsl 12	// init$2, it3, tmp160,
	madd	w3, w17, w10, w3	// D.6718, init$2, tmp157, D.6718
	scvtf	d2, w4	// D.6722, init$2
	madd	w3, w8, w11, w3	// it2, init$3, tmp168, D.6718
	fmadd	d0, d0, d1, d2	// D.6722, D.6722, tmp205, D.6722
	cmp	w3, 0	// it2,
	add	w2, w3, 4095	// tmp170, it2,
	csel	w2, w2, w3, lt	// it2, tmp170, it2,
	asr	w2, w2, 12	// tmp171, it2,
	sub	w3, w3, w2, lsl 12	// init$1, it2, tmp171,
	madd	w1, w1, w9, w2	// D.6718, init$0, tmp149, tmp171
	scvtf	d2, w3	// D.6722, init$1
	madd	w1, w18, w10, w1	// D.6718, init$1, tmp157, D.6718
	fmadd	d0, d0, d1, d2	// D.6722, D.6722, tmp205, D.6722
	madd	w1, w17, w11, w1	// D.6718, init$2, tmp168, D.6718
	madd	w1, w8, w14, w1	// it1, init$3, tmp182, D.6718
	mov	w18, w3	// init$1, init$1
	mov	w17, w4	// init$2, init$2
	mov	w8, w6	// init$3, init$3
	negs	w2, w1	// tmp184, it1
	and	w1, w1, 4095	// tmp185, it1,
	and	w2, w2, 4095	// tmp186, tmp184,
	csneg	w1, w1, w2, mi	// init$0, tmp185, tmp186,
	scvtf	d2, w1	// D.6722, init$0
	fmadd	d0, d0, d1, d2	// D.6722, D.6722, tmp205, D.6722
	fmadd	d0, d0, d1, d3	// D.6722, D.6722, tmp205, tmp199
	str	d0, [x12, x7, lsl 3]	// D.6722, MEM[base: _256, index: ivtmp.353_86, step: 8, offset: 0B]
	add	x7, x7, 1	// ivtmp.353, ivtmp.353,
	cmp	x13, x7	// D.6723, ivtmp.353
	bne	.L230	//,
	add	w15, w15, 1	// j, j,
	add	x12, x12, x19, sxtw 3	// ivtmp.362, ivtmp.362, lda,
	cmp	w15, w16	// j, D.6718
	bne	.L231	//,
.L229:
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x29, x30, [sp], 32	//,,,
	ret
	.size	r8mat_gen, .-r8mat_gen
	.align	3
.LC2:
	.word	0
	.word	1060110336
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
	str	x1, [x29, 40]	// tmp87, D.6728
	mov	x1,0	// tmp87
	add	x20, x20, :lo12:.LANCHOR0	// tmp80, tmp81,
	bl	time	//
	add	x1, x29, 48	// tmp77,,
	str	x0, [x1, -16]!	//, now
	mov	x0, x1	//, tmp77
	bl	localtime	//
	mov	x3, x0	//,
	adrp	x2, .LC3	// tmp79,
	mov	x0, x20	//, tmp80
	add	x2, x2, :lo12:.LC3	//, tmp79,
	mov	x1, 40	//,
	bl	strftime	//
	mov	x0, x20	//, tmp80
	bl	puts	//
	ldr	x1, [x29, 40]	// tmp88, D.6728
	ldr	x0, [x19]	// tmp86, __stack_chk_guard
	eor	x0, x1, x0	// tmp86, tmp88
	cbnz	x0, .L238	// tmp86,
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x29, x30, [sp], 48	//,,,
	ret
.L238:
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
	stp	x21, x22, [sp, 32]	//,,
	adrp	x22, .LC4	// tmp342,
	stp	x25, x26, [sp, 64]	//,,
	stp	x23, x24, [sp, 48]	//,,
	stp	x27, x28, [sp, 80]	//,,
	bl	timestamp	//
	fmov	d8, xzr	// a_max,
	mov	w0, 10	//,
	bl	putchar	//
	add	x0, x22, :lo12:.LC4	//, tmp342,
	bl	puts	//
	adrp	x0, .LC5	// tmp229,
	add	x0, x0, :lo12:.LC5	//, tmp229,
	bl	puts	//
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC6	// tmp231,
	add	x0, x0, :lo12:.LC6	//, tmp231,
	bl	puts	//
	adrp	x0, .LC7	// tmp233,
	add	x0, x0, :lo12:.LC7	//, tmp233,
	bl	puts	//
	adrp	x0, .LC8	// tmp235,
	add	x0, x0, :lo12:.LC8	//, tmp235,
	bl	puts	//
	adrp	x1, .LC9	// tmp237,
	mov	w2, 1000	//,
	add	x1, x1, :lo12:.LC9	//, tmp237,
	mov	w0, 1	//,
	bl	__printf_chk	//
	adrp	x1, .LC10	// tmp239,
	mov	w2, 1001	//,
	add	x1, x1, :lo12:.LC10	//, tmp239,
	mov	w0, 1	//,
	bl	__printf_chk	//
	mov	w1, 1000	//,
	mov	w0, 1001	//,
	bl	r8mat_gen	//
	mov	x23, x0	// a,
	mov	x0, 8000	//,
	bl	malloc	//
	mov	x19, x0	// b,
	mov	x0, 4000	//,
	bl	malloc	//
	mov	x21, x0	// ipvt,
	mov	x0, 8000	//,
	bl	malloc	//
	mov	x20, x0	// resid,
	mov	x0, 8000	//,
	bl	malloc	//
	mov	x26, x0	// rhs,
	mov	x0, 8000	//,
	bl	malloc	//
	mov	x25, x0	// x,
	add	x3, x23, 8007680	// ivtmp.516, a,
	mov	x2, x23	// ivtmp.537, a
	add	x3, x3, 320	// ivtmp.516, ivtmp.516,
	mov	x5, 8000	// tmp250,
	mov	x4, 8008	// tmp249,
	.p2align 2
.L240:
	add	x1, x2, x5	// D.6916, ivtmp.537, tmp250
	mov	x0, x2	// ivtmp.529, ivtmp.537
	.p2align 2
.L241:
	ldr	d0, [x0], 8	// a_max, MEM[base: _317, offset: 0B]
	fcmpe	d0, d8	// a_max, a_max
	fcsel	d8, d8, d0, mi	// a_max, a_max, a_max,
	cmp	x0, x1	// ivtmp.529, D.6916
	bne	.L241	//,
	add	x2, x2, x4	// ivtmp.537, ivtmp.537, tmp249
	cmp	x2, x3	// ivtmp.537, ivtmp.516
	bne	.L240	//,
	ubfx	x24, x25, 3, 1	// prolog_loop_niters.418, x,,
	cbz	w24, .L262	// prolog_loop_niters.418,
	fmov	d0, 1.0e+0	// tmp254,
	mov	w2, 1	// i,
	mov	x1, 1	// prolog_loop_adjusted_niters.419,
	mov	w5, 999	// niters.420,
	mov	w6, 499	// bnd.421,
	mov	w4, 998	// ratio_mult_vf.422,
	str	d0, [x25]	// tmp254, *x_44
.L243:
	fmov	v0.2d, 1.0e+0	// tmp257
	add	x1, x25, x1, lsl 3	// vectp_x.427, x, prolog_loop_adjusted_niters.419,
	mov	x0, 0	// ivtmp.518,
.L244:
	lsl	x7, x0, 4	// D.6917, ivtmp.518,
	add	x0, x0, 1	// ivtmp.518, ivtmp.518,
	cmp	w6, w0	// bnd.421, ivtmp.518
	str	q0, [x1, x7]	// tmp257, MEM[base: vectp_x.427_331, index: _246, offset: 0B]
	bhi	.L244	//,
	cmp	w4, w5	// ratio_mult_vf.422, niters.420
	add	w2, w4, w2	// tmp.423, ratio_mult_vf.422, i
	beq	.L245	//,
	fmov	d0, 1.0e+0	// tmp260,
	str	d0, [x25, w2, sxtw 3]	// tmp260, *_350
.L245:
	mov	x1, 8000	//,
	mov	x5, -12608	// tmp262,
	mov	x27, x19	// ivtmp.439, b
	add	x28, x19, x1	// D.6916, b,
	mov	x2, x19	// ivtmp.513, b
	movk	x5, 0xff85, lsl 16	// tmp262,,
	mov	x4, 8008	// tmp267,
	.p2align 2
.L247:
	fmov	d0, xzr	// D.6922,
	add	x0, x3, x5	// ivtmp.503, ivtmp.516, tmp262
	mov	x1, x25	// ivtmp.505, x
	str	d0, [x2]	//, MEM[base: _377, offset: 0B]
	.p2align 2
.L246:
	ldr	d2, [x0]	// MEM[base: _143, offset: 0B], MEM[base: _143, offset: 0B]
	add	x0, x0, x4	// ivtmp.503, ivtmp.503, tmp267
	ldr	d1, [x1], 8	// MEM[base: _244, offset: 0B], MEM[base: _244, offset: 0B]
	cmp	x0, x3	// ivtmp.503, ivtmp.516
	fmadd	d0, d2, d1, d0	// D.6922, MEM[base: _143, offset: 0B], MEM[base: _244, offset: 0B], D.6922
	str	d0, [x2]	// D.6922, MEM[base: _377, offset: 0B]
	bne	.L246	//,
	add	x2, x2, 8	// ivtmp.513, ivtmp.513,
	add	x3, x0, 8	// ivtmp.516, ivtmp.503,
	cmp	x2, x28	// ivtmp.513, D.6916
	bne	.L247	//,
	bl	clock	//
	scvtf	d10, x0	// D.6922,
	ldr	d9, .LC11	// tmp341,
	mov	x3, x21	//, ipvt
	mov	x0, x23	//, a
	mov	w2, 1000	//,
	mov	w1, 1001	//,
	fdiv	d10, d10, d9	// t1, D.6922, tmp341
	bl	dgefa	//
	cbnz	w0, .L280	//,
	bl	clock	//
	scvtf	d0, x0	// D.6922,
	fdiv	d0, d0, d9	// t2, D.6922, tmp341
	fsub	d10, d0, d10	// D.6922, t2, t1
	bl	clock	//
	mov	x6, x0	// D.6923,
	mov	x4, x19	//, b
	mov	x3, x21	//, ipvt
	mov	x0, x23	//, a
	mov	w5, 0	//,
	mov	w2, 1000	//,
	mov	w1, 1001	//,
	str	x6, [x29, 168]	// D.6923, %sfp
	bl	dgesl	//
	bl	clock	//
	scvtf	d11, x0	// D.6922,
	ldr	x6, [x29, 168]	// D.6923, %sfp
	mov	x0, x23	//, a
	scvtf	d0, x6	// D.6922, D.6923
	fdiv	d11, d11, d9	// t2, D.6922, tmp341
	fdiv	d0, d0, d9	// t1, D.6922, tmp341
	fsub	d11, d11, d0	// D.6922, t2, t1
	bl	free	//
	fadd	d12, d10, d11	// total, D.6922, D.6922
	mov	w1, 1000	//,
	mov	w0, 1001	//,
	bl	r8mat_gen	//
	mov	x23, x0	// a,
	cbz	w24, .L263	// prolog_loop_niters.418,
	fmov	d0, 1.0e+0	// tmp285,
	mov	w0, 1	// i,
	mov	x1, 1	// prolog_loop_adjusted_niters.408,
	mov	w4, 999	// niters.409,
	mov	w5, 499	// bnd.410,
	mov	w3, 998	// ratio_mult_vf.411,
	str	d0, [x25]	// tmp285, *x_44
.L250:
	fmov	v0.2d, 1.0e+0	// tmp288
	add	x2, x25, x1, lsl 3	// vectp_x.416, x, prolog_loop_adjusted_niters.408,
	mov	x1, 0	// ivtmp.492,
.L251:
	lsl	x6, x1, 4	// D.6917, ivtmp.492,
	add	x1, x1, 1	// ivtmp.492, ivtmp.492,
	cmp	w5, w1	// bnd.410, ivtmp.492
	str	q0, [x2, x6]	// tmp288, MEM[base: vectp_x.416_12, index: _307, offset: 0B]
	bhi	.L251	//,
	cmp	w3, w4	// ratio_mult_vf.411, niters.409
	add	w0, w3, w0	// tmp.412, ratio_mult_vf.411, i
	beq	.L252	//,
	fmov	d0, 1.0e+0	// tmp291,
	str	d0, [x25, w0, sxtw 3]	// tmp291, *_29
.L252:
	mov	x0, 8000	//,
	mov	x6, 12608	// tmp293,
	mov	x5, x26	// ivtmp.487, rhs
	mov	x4, x23	// ivtmp.489, a
	add	x7, x26, x0	// D.6916, rhs,
	movk	x6, 0x7a, lsl 16	// tmp293,,
	mov	x3, 8008	// tmp299,
.L254:
	movi	v0.2d, 0	// vect__123.401
	add	x2, x4, x6	// D.6916, ivtmp.489, tmp293
	mov	x1, x25	// ivtmp.480, x
	mov	x0, x4	// ivtmp.476, ivtmp.489
	.p2align 2
.L253:
	ldr	q1, [x0]	// vect__117.395, MEM[base: _324, offset: 0B]
	add	x0, x0, x3	// ivtmp.476, ivtmp.476, tmp299
	ld1r	{v2.2d}, [x1], 8	// vect_cst_.399, MEM[base: _308, offset: 0B]
	cmp	x2, x0	// D.6916, ivtmp.476
	fmla	v0.2d, v2.2d, v1.2d	// vect__123.401, vect_cst_.399, vect__117.395
	bne	.L253	//,
	str	q0, [x5], 16	// vect__123.401, MEM[base: _125, offset: 0B]
	cmp	x7, x5	// D.6916, ivtmp.487
	add	x4, x4, 16	// ivtmp.489, ivtmp.489,
	bne	.L254	//,
	mov	x6, 12608	// tmp302,
	mov	x4, 0	// ivtmp.464,
	movk	x6, 0x7a, lsl 16	// tmp302,,
	mov	x3, 8008	// tmp308,
	mov	x5, 8000	// tmp309,
.L256:
	ldr	q0, [x26, x4]	// vect__131.374, MEM[base: rhs_42, index: ivtmp.464_277, offset: 0B]
	add	x2, x4, x6	// D.6917, ivtmp.464, tmp302
	add	x0, x23, x4	// ivtmp.456, a, ivtmp.464
	add	x2, x23, x2	// D.6916, a, D.6917
	mov	x1, x19	// ivtmp.458, b
	fneg	v0.2d, v0.2d	// vect__146.386, vect__131.374
	.p2align 2
.L255:
	ldr	q1, [x0]	// vect__140.380, MEM[base: _124, offset: 0B]
	add	x0, x0, x3	// ivtmp.456, ivtmp.456, tmp308
	ld1r	{v2.2d}, [x1], 8	// vect_cst_.384, MEM[base: _159, offset: 0B]
	cmp	x0, x2	// ivtmp.456, D.6916
	fmla	v0.2d, v2.2d, v1.2d	// vect__146.386, vect_cst_.384, vect__140.380
	bne	.L255	//,
	str	q0, [x20, x4]	// vect__146.386, MEM[base: resid_40, index: ivtmp.464_277, offset: 0B]
	add	x4, x4, 16	// ivtmp.464, ivtmp.464,
	cmp	x4, x5	// ivtmp.464, tmp309
	bne	.L256	//,
	fmov	d14, xzr	// resid_max,
	add	x4, x20, x4	// D.6916, resid, ivtmp.464
	mov	x0, x20	// ivtmp.447, resid
.L257:
	ldr	d0, [x0], 8	// resid_max, MEM[base: _403, offset: 0B]
	fcmpe	d0, #0.0	// resid_max
	fneg	d2, d0	// resid_max, resid_max
	fcsel	d0, d0, d2, ge	// tmp311, resid_max, resid_max,
	fcmpe	d0, d14	// tmp311, resid_max
	fcsel	d14, d14, d0, mi	// resid_max, resid_max, tmp311,
	cmp	x0, x4	// ivtmp.447, D.6916
	bne	.L257	//,
	fmov	d3, xzr	// b_max,
.L258:
	ldr	d0, [x27], 8	// b_max, MEM[base: _392, offset: 0B]
	fcmpe	d0, #0.0	// b_max
	fneg	d2, d0	// b_max, b_max
	fcsel	d0, d0, d2, ge	// tmp313, b_max, b_max,
	fcmpe	d3, d0	// b_max, tmp313
	fcsel	d3, d3, d0, gt	// b_max, b_max, tmp313,
	cmp	x28, x27	// D.6916, ivtmp.439
	bne	.L258	//,
	fmov	d2, 1.0e+0	// r,
	fmov	d0, 5.0e-1	// tmp315,
	mov	w0, 53	// D.6925,
.L259:
	subs	w0, w0, #1	// D.6925, D.6925,
	fmul	d2, d2, d0	// r, r, tmp315
	bne	.L259	//,
	ldr	d0, .LC15	// tmp317,
	fcmpe	d12, #0.0	// total
	fadd	d15, d2, d2	// eps, r, r
	fdiv	d0, d14, d0	// D.6922, resid_max, tmp317
	fdiv	d8, d0, d8	// D.6922, D.6922, a_max
	fdiv	d3, d8, d3	// D.6922, D.6922, b_max
	fdiv	d8, d3, d15	// residn, D.6922, eps
	ble	.L278	//,
	fmul	d9, d12, d9	// D.6922, total, tmp341
	ldr	d0, .LC16	// tmp322,
	fmov	d13, 2.0e+0	// tmp323,
	fdiv	d9, d0, d9	// time$3, tmp322, D.6922
	fdiv	d13, d13, d9	// D.6922, tmp323, time$3
.L260:
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC17	// tmp325,
	add	x0, x0, :lo12:.LC17	//, tmp325,
	bl	puts	//
	mov	w0, 10	//,
	bl	putchar	//
	fmov	d2, d15	//, eps
	fmov	d1, d14	//, resid_max
	fmov	d0, d8	//, residn
	ldr	d3, [x19]	//, *b_36
	adrp	x1, .LC18	// tmp329,
	ldr	d4, [x19, 7992]	//, MEM[(double *)b_36 + 7992B]
	add	x1, x1, :lo12:.LC18	//, tmp329,
	mov	w0, 1	//,
	bl	__printf_chk	//
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC19	// tmp331,
	add	x0, x0, :lo12:.LC19	//, tmp331,
	bl	puts	//
	mov	w0, 10	//,
	bl	putchar	//
	fmov	d4, d13	//, D.6922
	ldr	d5, .LC20	// tmp333,
	fmov	d3, d9	//, time$3
	fmov	d2, d12	//, total
	fmov	d1, d11	//, D.6922
	fmov	d0, d10	//, D.6922
	adrp	x1, .LC21	// tmp335,
	add	x1, x1, :lo12:.LC21	//, tmp335,
	mov	w0, 1	//,
	fdiv	d5, d12, d5	//, total, tmp333
	bl	__printf_chk	//
	mov	x0, x23	//, a
	bl	free	//
	mov	x0, x19	//, b
	bl	free	//
	mov	x0, x21	//, ipvt
	bl	free	//
	mov	x0, x20	//, resid
	bl	free	//
	mov	x0, x26	//, rhs
	bl	free	//
	mov	x0, x25	//, x
	bl	free	//
	mov	w0, 10	//,
	bl	putchar	//
	add	x0, x22, :lo12:.LC4	//, tmp342,
	bl	puts	//
	adrp	x0, .LC22	// tmp339,
	add	x0, x0, :lo12:.LC22	//, tmp339,
	bl	puts	//
	mov	w0, 10	//,
	bl	putchar	//
	bl	timestamp	//
	mov	w0, 0	// D.6918,
	b	.L249	//
.L262:
	mov	w5, 1000	// niters.420,
	mov	w2, 0	// i,
	mov	w4, w5	// ratio_mult_vf.422, niters.420
	mov	x1, 0	// prolog_loop_adjusted_niters.419,
	mov	w6, 500	// bnd.421,
	b	.L243	//
.L263:
	mov	w4, 1000	// niters.409,
	mov	w0, 0	// i,
	mov	w3, w4	// ratio_mult_vf.411, niters.409
	mov	x1, 0	// prolog_loop_adjusted_niters.408,
	mov	w5, 500	// bnd.410,
	b	.L250	//
.L280:
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC12	// tmp271,
	add	x0, x0, :lo12:.LC12	//, tmp271,
	bl	puts	//
	adrp	x0, .LC13	// tmp273,
	add	x0, x0, :lo12:.LC13	//, tmp273,
	bl	puts	//
	adrp	x0, .LC14	// tmp275,
	add	x0, x0, :lo12:.LC14	//, tmp275,
	bl	puts	//
	mov	w0, 1	// D.6918,
.L249:
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
.L278:
	fmov	d13, -2.0e+0	// D.6922,
	fmov	d9, -1.0e+0	// time$3,
	b	.L260	//
	.size	main, .-main
	.align	3
.LC11:
	.word	0
	.word	1093567616
	.align	3
.LC15:
	.word	0
	.word	1083129856
	.align	3
.LC16:
	.word	2505397589
	.word	1103359365
	.align	3
.LC20:
	.word	824633721
	.word	1068280840
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC3:
	.string	"%d %B %Y %I:%M:%S %p"
	.zero	3
.LC4:
	.string	"LINPACK_BENCH"
	.zero	2
.LC5:
	.string	"  C version"
	.zero	4
.LC6:
	.string	"  The LINPACK benchmark."
	.zero	7
.LC7:
	.string	"  Language: C"
	.zero	2
.LC8:
	.string	"  Datatype: Double precision real"
	.zero	6
.LC9:
	.string	"  Matrix order N               = %d\n"
	.zero	3
.LC10:
	.string	"  Leading matrix dimension LDA = %d\n"
	.zero	3
.LC12:
	.string	"LINPACK_BENCH - Fatal error!"
	.zero	3
.LC13:
	.string	"  The matrix A is apparently singular."
	.zero	1
.LC14:
	.string	"  Abnormal end of execution."
	.zero	3
.LC17:
	.string	"     Norm. Resid      Resid           MACHEP         X[1]          X[N]"
.LC18:
	.string	"  %14f  %14f  %14e  %14f  %14f\n"
.LC19:
	.string	"      Factor     Solve      Total     MFLOPS       Unit      Cray-Ratio"
.LC21:
	.string	"  %9f  %9f  %9f  %9f  %9f  %9f\n"
.LC22:
	.string	"  Normal end of execution."
	.bss
	.align	4
.LANCHOR0 = . + 0
	.type	time_buffer.5533, %object
	.size	time_buffer.5533, 40
time_buffer.5533:
	.zero	40
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
