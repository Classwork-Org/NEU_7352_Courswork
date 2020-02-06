	.arch armv8-a
	.file	"linpack.c"
// GNU C11 (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.11) version 5.4.0 20160609 (aarch64-linux-gnu)
//	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -imultiarch aarch64-linux-gnu ../source/linpack.c
// -mlittle-endian -mabi=lp64
// -auxbase-strip ../asm/linpack.arm_gcc.opt0.asm -O0 -fverbose-asm
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

	.section	.rodata
	.align	3
.LC1:
	.string	"LINPACK_BENCH"
	.align	3
.LC2:
	.string	"  C version"
	.align	3
.LC3:
	.string	"  The LINPACK benchmark."
	.align	3
.LC4:
	.string	"  Language: C"
	.align	3
.LC5:
	.string	"  Datatype: Double precision real"
	.align	3
.LC6:
	.string	"  Matrix order N               = %d\n"
	.align	3
.LC7:
	.string	"  Leading matrix dimension LDA = %d\n"
	.align	3
.LC9:
	.string	"LINPACK_BENCH - Fatal error!"
	.align	3
.LC10:
	.string	"  The matrix A is apparently singular."
	.align	3
.LC11:
	.string	"  Abnormal end of execution."
	.align	3
.LC14:
	.string	"     Norm. Resid      Resid           MACHEP         X[1]          X[N]"
	.align	3
.LC15:
	.string	"  %14f  %14f  %14e  %14f  %14f\n"
	.align	3
.LC16:
	.string	"      Factor     Solve      Total     MFLOPS       Unit      Cray-Ratio"
	.align	3
.LC17:
	.string	"  %9f  %9f  %9f  %9f  %9f  %9f\n"
	.align	3
.LC18:
	.string	"  Normal end of execution."
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -224]!	//,,,
	add	x29, sp, 0	//,,
	adrp	x0, __stack_chk_guard	// tmp190,
	add	x0, x0, :lo12:__stack_chk_guard	// tmp189, tmp190,
	ldr	x1, [x0]	// tmp328, __stack_chk_guard
	str	x1, [x29, 216]	// tmp328, D.6014
	mov	x1,0	// tmp328
	ldr	x0, .LC0	// tmp191,
	str	x0, [x29, 64]	// tmp191, cray
	bl	timestamp	//
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC1	// tmp193,
	add	x0, x0, :lo12:.LC1	// tmp192, tmp193,
	bl	puts	//
	adrp	x0, .LC2	// tmp195,
	add	x0, x0, :lo12:.LC2	// tmp194, tmp195,
	bl	puts	//
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC3	// tmp197,
	add	x0, x0, :lo12:.LC3	// tmp196, tmp197,
	bl	puts	//
	adrp	x0, .LC4	// tmp199,
	add	x0, x0, :lo12:.LC4	// tmp198, tmp199,
	bl	puts	//
	adrp	x0, .LC5	// tmp201,
	add	x0, x0, :lo12:.LC5	// tmp200, tmp201,
	bl	puts	//
	adrp	x0, .LC6	// tmp203,
	add	x0, x0, :lo12:.LC6	// tmp202, tmp203,
	mov	w1, 1000	//,
	bl	printf	//
	adrp	x0, .LC7	// tmp205,
	add	x0, x0, :lo12:.LC7	// tmp204, tmp205,
	mov	w1, 1001	//,
	bl	printf	//
	ldr	x0, .LC8	// tmp206,
	str	x0, [x29, 72]	// tmp206, ops
	mov	w1, 1000	//,
	mov	w0, 1001	//,
	bl	r8mat_gen	//
	str	x0, [x29, 80]	//, a
	mov	x0, 8000	//,
	bl	malloc	//
	str	x0, [x29, 88]	// tmp207, b
	mov	x0, 4000	//,
	bl	malloc	//
	str	x0, [x29, 96]	// tmp208, ipvt
	mov	x0, 8000	//,
	bl	malloc	//
	str	x0, [x29, 104]	// tmp209, resid
	mov	x0, 8000	//,
	bl	malloc	//
	str	x0, [x29, 112]	// tmp210, rhs
	mov	x0, 8000	//,
	bl	malloc	//
	str	x0, [x29, 120]	// tmp211, x
	str	xzr, [x29, 40]	//, a_max
	str	wzr, [x29, 28]	//, j
	b	.L2	//
.L5:
	str	wzr, [x29, 24]	//, i
	b	.L3	//
.L4:
	ldr	w1, [x29, 28]	// tmp212, j
	mov	w0, 1001	// tmp213,
	mul	w1, w1, w0	// D.6010, tmp212, tmp213
	ldr	w0, [x29, 24]	// tmp214, i
	add	w0, w1, w0	// D.6010, D.6010, tmp214
	sxtw	x0, w0	// D.6011, D.6010
	lsl	x0, x0, 3	// D.6011, D.6011,
	ldr	x1, [x29, 80]	// tmp215, a
	add	x0, x1, x0	// D.6012, tmp215, D.6011
	ldr	d0, [x0]	// D.6013, *_64
	fmov	d1, d0	//, D.6013
	ldr	d0, [x29, 40]	//, a_max
	bl	r8_max	//
	str	d0, [x29, 40]	//, a_max
	ldr	w0, [x29, 24]	// tmp217, i
	add	w0, w0, 1	// tmp216, tmp217,
	str	w0, [x29, 24]	// tmp216, i
.L3:
	ldr	w0, [x29, 24]	// tmp218, i
	cmp	w0, 999	// tmp218,
	ble	.L4	//,
	ldr	w0, [x29, 28]	// tmp220, j
	add	w0, w0, 1	// tmp219, tmp220,
	str	w0, [x29, 28]	// tmp219, j
.L2:
	ldr	w0, [x29, 28]	// tmp221, j
	cmp	w0, 999	// tmp221,
	ble	.L5	//,
	str	wzr, [x29, 24]	//, i
	b	.L6	//
.L7:
	ldrsw	x0, [x29, 24]	// D.6011, i
	lsl	x0, x0, 3	// D.6011, D.6011,
	ldr	x1, [x29, 120]	// tmp222, x
	add	x0, x1, x0	// D.6012, tmp222, D.6011
	fmov	d0, 1.0e+0	// tmp223,
	str	d0, [x0]	// tmp223, *_73
	ldr	w0, [x29, 24]	// tmp225, i
	add	w0, w0, 1	// tmp224, tmp225,
	str	w0, [x29, 24]	// tmp224, i
.L6:
	ldr	w0, [x29, 24]	// tmp226, i
	cmp	w0, 999	// tmp226,
	ble	.L7	//,
	str	wzr, [x29, 24]	//, i
	b	.L8	//
.L11:
	ldrsw	x0, [x29, 24]	// D.6011, i
	lsl	x0, x0, 3	// D.6011, D.6011,
	ldr	x1, [x29, 88]	// tmp227, b
	add	x0, x1, x0	// D.6012, tmp227, D.6011
	str	xzr, [x0]	//, *_79
	str	wzr, [x29, 28]	//, j
	b	.L9	//
.L10:
	ldrsw	x0, [x29, 24]	// D.6011, i
	lsl	x0, x0, 3	// D.6011, D.6011,
	ldr	x1, [x29, 88]	// tmp228, b
	add	x0, x1, x0	// D.6012, tmp228, D.6011
	ldrsw	x1, [x29, 24]	// D.6011, i
	lsl	x1, x1, 3	// D.6011, D.6011,
	ldr	x2, [x29, 88]	// tmp229, b
	add	x1, x2, x1	// D.6012, tmp229, D.6011
	ldr	d1, [x1]	// D.6013, *_87
	ldr	w2, [x29, 28]	// tmp230, j
	mov	w1, 1001	// tmp231,
	mul	w2, w2, w1	// D.6010, tmp230, tmp231
	ldr	w1, [x29, 24]	// tmp232, i
	add	w1, w2, w1	// D.6010, D.6010, tmp232
	sxtw	x1, w1	// D.6011, D.6010
	lsl	x1, x1, 3	// D.6011, D.6011,
	ldr	x2, [x29, 80]	// tmp233, a
	add	x1, x2, x1	// D.6012, tmp233, D.6011
	ldr	d2, [x1]	// D.6013, *_93
	ldrsw	x1, [x29, 28]	// D.6011, j
	lsl	x1, x1, 3	// D.6011, D.6011,
	ldr	x2, [x29, 120]	// tmp234, x
	add	x1, x2, x1	// D.6012, tmp234, D.6011
	ldr	d0, [x1]	// D.6013, *_97
	fmul	d0, d2, d0	// D.6013, D.6013, D.6013
	fadd	d0, d1, d0	// D.6013, D.6013, D.6013
	str	d0, [x0]	// D.6013, *_84
	ldr	w0, [x29, 28]	// tmp236, j
	add	w0, w0, 1	// tmp235, tmp236,
	str	w0, [x29, 28]	// tmp235, j
.L9:
	ldr	w0, [x29, 28]	// tmp237, j
	cmp	w0, 999	// tmp237,
	ble	.L10	//,
	ldr	w0, [x29, 24]	// tmp239, i
	add	w0, w0, 1	// tmp238, tmp239,
	str	w0, [x29, 24]	// tmp238, i
.L8:
	ldr	w0, [x29, 24]	// tmp240, i
	cmp	w0, 999	// tmp240,
	ble	.L11	//,
	bl	cpu_time	//
	str	d0, [x29, 128]	//, t1
	ldr	x3, [x29, 96]	//, ipvt
	mov	w2, 1000	//,
	mov	w1, 1001	//,
	ldr	x0, [x29, 80]	//, a
	bl	dgefa	//
	str	w0, [x29, 32]	//, info
	ldr	w0, [x29, 32]	// tmp241, info
	cmp	w0, 0	// tmp241,
	beq	.L12	//,
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC9	// tmp243,
	add	x0, x0, :lo12:.LC9	// tmp242, tmp243,
	bl	puts	//
	adrp	x0, .LC10	// tmp245,
	add	x0, x0, :lo12:.LC10	// tmp244, tmp245,
	bl	puts	//
	adrp	x0, .LC11	// tmp247,
	add	x0, x0, :lo12:.LC11	// tmp246, tmp247,
	bl	puts	//
	mov	w0, 1	// D.6010,
	b	.L31	//
.L12:
	bl	cpu_time	//
	str	d0, [x29, 136]	//, t2
	ldr	d1, [x29, 136]	// tmp248, t2
	ldr	d0, [x29, 128]	// tmp249, t1
	fsub	d0, d1, d0	// D.6013, tmp248, tmp249
	str	d0, [x29, 168]	// D.6013, time
	bl	cpu_time	//
	str	d0, [x29, 128]	//, t1
	str	wzr, [x29, 36]	//, job
	ldr	w5, [x29, 36]	//, job
	ldr	x4, [x29, 88]	//, b
	ldr	x3, [x29, 96]	//, ipvt
	mov	w2, 1000	//,
	mov	w1, 1001	//,
	ldr	x0, [x29, 80]	//, a
	bl	dgesl	//
	bl	cpu_time	//
	str	d0, [x29, 136]	//, t2
	ldr	d1, [x29, 136]	// tmp250, t2
	ldr	d0, [x29, 128]	// tmp251, t1
	fsub	d0, d1, d0	// D.6013, tmp250, tmp251
	str	d0, [x29, 176]	// D.6013, time
	ldr	d1, [x29, 168]	// D.6013, time
	ldr	d0, [x29, 176]	// D.6013, time
	fadd	d0, d1, d0	// tmp252, D.6013, D.6013
	str	d0, [x29, 144]	// tmp252, total
	ldr	x0, [x29, 80]	//, a
	bl	free	//
	mov	w1, 1000	//,
	mov	w0, 1001	//,
	bl	r8mat_gen	//
	str	x0, [x29, 80]	//, a
	str	wzr, [x29, 24]	//, i
	b	.L14	//
.L15:
	ldrsw	x0, [x29, 24]	// D.6011, i
	lsl	x0, x0, 3	// D.6011, D.6011,
	ldr	x1, [x29, 120]	// tmp253, x
	add	x0, x1, x0	// D.6012, tmp253, D.6011
	fmov	d0, 1.0e+0	// tmp254,
	str	d0, [x0]	// tmp254, *_134
	ldr	w0, [x29, 24]	// tmp256, i
	add	w0, w0, 1	// tmp255, tmp256,
	str	w0, [x29, 24]	// tmp255, i
.L14:
	ldr	w0, [x29, 24]	// tmp257, i
	cmp	w0, 999	// tmp257,
	ble	.L15	//,
	str	wzr, [x29, 24]	//, i
	b	.L16	//
.L19:
	ldrsw	x0, [x29, 24]	// D.6011, i
	lsl	x0, x0, 3	// D.6011, D.6011,
	ldr	x1, [x29, 112]	// tmp258, rhs
	add	x0, x1, x0	// D.6012, tmp258, D.6011
	str	xzr, [x0]	//, *_140
	str	wzr, [x29, 28]	//, j
	b	.L17	//
.L18:
	ldrsw	x0, [x29, 24]	// D.6011, i
	lsl	x0, x0, 3	// D.6011, D.6011,
	ldr	x1, [x29, 112]	// tmp259, rhs
	add	x0, x1, x0	// D.6012, tmp259, D.6011
	ldrsw	x1, [x29, 24]	// D.6011, i
	lsl	x1, x1, 3	// D.6011, D.6011,
	ldr	x2, [x29, 112]	// tmp260, rhs
	add	x1, x2, x1	// D.6012, tmp260, D.6011
	ldr	d1, [x1]	// D.6013, *_148
	ldr	w2, [x29, 28]	// tmp261, j
	mov	w1, 1001	// tmp262,
	mul	w2, w2, w1	// D.6010, tmp261, tmp262
	ldr	w1, [x29, 24]	// tmp263, i
	add	w1, w2, w1	// D.6010, D.6010, tmp263
	sxtw	x1, w1	// D.6011, D.6010
	lsl	x1, x1, 3	// D.6011, D.6011,
	ldr	x2, [x29, 80]	// tmp264, a
	add	x1, x2, x1	// D.6012, tmp264, D.6011
	ldr	d2, [x1]	// D.6013, *_154
	ldrsw	x1, [x29, 28]	// D.6011, j
	lsl	x1, x1, 3	// D.6011, D.6011,
	ldr	x2, [x29, 120]	// tmp265, x
	add	x1, x2, x1	// D.6012, tmp265, D.6011
	ldr	d0, [x1]	// D.6013, *_158
	fmul	d0, d2, d0	// D.6013, D.6013, D.6013
	fadd	d0, d1, d0	// D.6013, D.6013, D.6013
	str	d0, [x0]	// D.6013, *_145
	ldr	w0, [x29, 28]	// tmp267, j
	add	w0, w0, 1	// tmp266, tmp267,
	str	w0, [x29, 28]	// tmp266, j
.L17:
	ldr	w0, [x29, 28]	// tmp268, j
	cmp	w0, 999	// tmp268,
	ble	.L18	//,
	ldr	w0, [x29, 24]	// tmp270, i
	add	w0, w0, 1	// tmp269, tmp270,
	str	w0, [x29, 24]	// tmp269, i
.L16:
	ldr	w0, [x29, 24]	// tmp271, i
	cmp	w0, 999	// tmp271,
	ble	.L19	//,
	str	wzr, [x29, 24]	//, i
	b	.L20	//
.L23:
	ldrsw	x0, [x29, 24]	// D.6011, i
	lsl	x0, x0, 3	// D.6011, D.6011,
	ldr	x1, [x29, 104]	// tmp272, resid
	add	x0, x1, x0	// D.6012, tmp272, D.6011
	ldrsw	x1, [x29, 24]	// D.6011, i
	lsl	x1, x1, 3	// D.6011, D.6011,
	ldr	x2, [x29, 112]	// tmp273, rhs
	add	x1, x2, x1	// D.6012, tmp273, D.6011
	ldr	d0, [x1]	// D.6013, *_171
	fneg	d0, d0	// D.6013, D.6013
	str	d0, [x0]	// D.6013, *_168
	str	wzr, [x29, 28]	//, j
	b	.L21	//
.L22:
	ldrsw	x0, [x29, 24]	// D.6011, i
	lsl	x0, x0, 3	// D.6011, D.6011,
	ldr	x1, [x29, 104]	// tmp274, resid
	add	x0, x1, x0	// D.6012, tmp274, D.6011
	ldrsw	x1, [x29, 24]	// D.6011, i
	lsl	x1, x1, 3	// D.6011, D.6011,
	ldr	x2, [x29, 104]	// tmp275, resid
	add	x1, x2, x1	// D.6012, tmp275, D.6011
	ldr	d1, [x1]	// D.6013, *_181
	ldr	w2, [x29, 28]	// tmp276, j
	mov	w1, 1001	// tmp277,
	mul	w2, w2, w1	// D.6010, tmp276, tmp277
	ldr	w1, [x29, 24]	// tmp278, i
	add	w1, w2, w1	// D.6010, D.6010, tmp278
	sxtw	x1, w1	// D.6011, D.6010
	lsl	x1, x1, 3	// D.6011, D.6011,
	ldr	x2, [x29, 80]	// tmp279, a
	add	x1, x2, x1	// D.6012, tmp279, D.6011
	ldr	d2, [x1]	// D.6013, *_187
	ldrsw	x1, [x29, 28]	// D.6011, j
	lsl	x1, x1, 3	// D.6011, D.6011,
	ldr	x2, [x29, 88]	// tmp280, b
	add	x1, x2, x1	// D.6012, tmp280, D.6011
	ldr	d0, [x1]	// D.6013, *_191
	fmul	d0, d2, d0	// D.6013, D.6013, D.6013
	fadd	d0, d1, d0	// D.6013, D.6013, D.6013
	str	d0, [x0]	// D.6013, *_178
	ldr	w0, [x29, 28]	// tmp282, j
	add	w0, w0, 1	// tmp281, tmp282,
	str	w0, [x29, 28]	// tmp281, j
.L21:
	ldr	w0, [x29, 28]	// tmp283, j
	cmp	w0, 999	// tmp283,
	ble	.L22	//,
	ldr	w0, [x29, 24]	// tmp285, i
	add	w0, w0, 1	// tmp284, tmp285,
	str	w0, [x29, 24]	// tmp284, i
.L20:
	ldr	w0, [x29, 24]	// tmp286, i
	cmp	w0, 999	// tmp286,
	ble	.L23	//,
	str	xzr, [x29, 56]	//, resid_max
	str	wzr, [x29, 24]	//, i
	b	.L24	//
.L25:
	ldrsw	x0, [x29, 24]	// D.6011, i
	lsl	x0, x0, 3	// D.6011, D.6011,
	ldr	x1, [x29, 104]	// tmp287, resid
	add	x0, x1, x0	// D.6012, tmp287, D.6011
	ldr	d0, [x0]	// D.6013, *_202
	bl	r8_abs	//
	fmov	d1, d0	//, D.6013
	ldr	d0, [x29, 56]	//, resid_max
	bl	r8_max	//
	str	d0, [x29, 56]	//, resid_max
	ldr	w0, [x29, 24]	// tmp289, i
	add	w0, w0, 1	// tmp288, tmp289,
	str	w0, [x29, 24]	// tmp288, i
.L24:
	ldr	w0, [x29, 24]	// tmp290, i
	cmp	w0, 999	// tmp290,
	ble	.L25	//,
	str	xzr, [x29, 48]	//, b_max
	str	wzr, [x29, 24]	//, i
	b	.L26	//
.L27:
	ldrsw	x0, [x29, 24]	// D.6011, i
	lsl	x0, x0, 3	// D.6011, D.6011,
	ldr	x1, [x29, 88]	// tmp291, b
	add	x0, x1, x0	// D.6012, tmp291, D.6011
	ldr	d0, [x0]	// D.6013, *_213
	bl	r8_abs	//
	fmov	d1, d0	//, D.6013
	ldr	d0, [x29, 48]	//, b_max
	bl	r8_max	//
	str	d0, [x29, 48]	//, b_max
	ldr	w0, [x29, 24]	// tmp293, i
	add	w0, w0, 1	// tmp292, tmp293,
	str	w0, [x29, 24]	// tmp292, i
.L26:
	ldr	w0, [x29, 24]	// tmp294, i
	cmp	w0, 999	// tmp294,
	ble	.L27	//,
	bl	r8_epsilon	//
	str	d0, [x29, 152]	//, eps
	ldr	d1, [x29, 56]	// tmp295, resid_max
	ldr	d0, .LC12	// tmp296,
	fdiv	d1, d1, d0	// D.6013, tmp295, tmp296
	ldr	d0, [x29, 40]	// tmp297, a_max
	fdiv	d1, d1, d0	// D.6013, D.6013, tmp297
	ldr	d0, [x29, 48]	// tmp298, b_max
	fdiv	d1, d1, d0	// D.6013, D.6013, tmp298
	ldr	d0, [x29, 152]	// tmp300, eps
	fdiv	d0, d1, d0	// tmp299, D.6013, tmp300
	str	d0, [x29, 160]	// tmp299, residn
	ldr	x0, [x29, 144]	// tmp301, total
	str	x0, [x29, 184]	// tmp301, time
	ldr	d0, [x29, 144]	// tmp302, total
	fcmpe	d0, #0.0	// tmp302
	ble	.L34	//,
	ldr	d1, [x29, 144]	// tmp303, total
	ldr	d0, .LC13	// tmp304,
	fmul	d0, d1, d0	// D.6013, tmp303, tmp304
	ldr	d1, [x29, 72]	// tmp305, ops
	fdiv	d0, d1, d0	// D.6013, tmp305, D.6013
	str	d0, [x29, 192]	// D.6013, time
	b	.L30	//
.L34:
	fmov	d0, -1.0e+0	// tmp306,
	str	d0, [x29, 192]	// tmp306, time
.L30:
	ldr	d0, [x29, 192]	// D.6013, time
	fmov	d1, 2.0e+0	// tmp307,
	fdiv	d0, d1, d0	// D.6013, tmp307, D.6013
	str	d0, [x29, 200]	// D.6013, time
	ldr	d1, [x29, 144]	// tmp308, total
	ldr	d0, [x29, 64]	// tmp309, cray
	fdiv	d0, d1, d0	// D.6013, tmp308, tmp309
	str	d0, [x29, 208]	// D.6013, time
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC14	// tmp311,
	add	x0, x0, :lo12:.LC14	// tmp310, tmp311,
	bl	puts	//
	mov	w0, 10	//,
	bl	putchar	//
	ldr	x0, [x29, 88]	// tmp312, b
	ldr	d0, [x0]	// D.6013, *b_48
	ldr	x0, [x29, 88]	// tmp313, b
	add	x0, x0, 4096	// D.6012, tmp313,
	add	x0, x0, 3896	// D.6012, D.6012,
	ldr	d1, [x0]	// D.6013, *_240
	adrp	x0, .LC15	// tmp315,
	add	x0, x0, :lo12:.LC15	// tmp314, tmp315,
	fmov	d4, d1	//, D.6013
	fmov	d3, d0	//, D.6013
	ldr	d2, [x29, 152]	//, eps
	ldr	d1, [x29, 56]	//, resid_max
	ldr	d0, [x29, 160]	//, residn
	bl	printf	//
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC16	// tmp317,
	add	x0, x0, :lo12:.LC16	// tmp316, tmp317,
	bl	puts	//
	mov	w0, 10	//,
	bl	putchar	//
	ldr	d0, [x29, 168]	// D.6013, time
	ldr	d1, [x29, 176]	// D.6013, time
	ldr	d2, [x29, 184]	// D.6013, time
	ldr	d3, [x29, 192]	// D.6013, time
	ldr	d4, [x29, 200]	// D.6013, time
	ldr	d5, [x29, 208]	// D.6013, time
	adrp	x0, .LC17	// tmp319,
	add	x0, x0, :lo12:.LC17	// tmp318, tmp319,
	bl	printf	//
	ldr	x0, [x29, 80]	//, a
	bl	free	//
	ldr	x0, [x29, 88]	//, b
	bl	free	//
	ldr	x0, [x29, 96]	//, ipvt
	bl	free	//
	ldr	x0, [x29, 104]	//, resid
	bl	free	//
	ldr	x0, [x29, 112]	//, rhs
	bl	free	//
	ldr	x0, [x29, 120]	//, x
	bl	free	//
	mov	w0, 10	//,
	bl	putchar	//
	adrp	x0, .LC1	// tmp321,
	add	x0, x0, :lo12:.LC1	// tmp320, tmp321,
	bl	puts	//
	adrp	x0, .LC18	// tmp323,
	add	x0, x0, :lo12:.LC18	// tmp322, tmp323,
	bl	puts	//
	mov	w0, 10	//,
	bl	putchar	//
	bl	timestamp	//
	mov	w0, 0	// D.6010,
.L31:
	adrp	x1, __stack_chk_guard	// tmp326,
	add	x1, x1, :lo12:__stack_chk_guard	// tmp325, tmp326,
	ldr	x2, [x29, 216]	// tmp329, D.6014
	ldr	x1, [x1]	// tmp327, __stack_chk_guard
	eor	x1, x2, x1	// tmp327, tmp329
	cmp	x1, 0	// tmp327,
	beq	.L32	//,
	bl	__stack_chk_fail	//
.L32:
	ldp	x29, x30, [sp], 224	//,,,
	ret
	.size	main, .-main
	.align	3
.LC0:
	.word	824633721
	.word	1068280840
	.align	3
.LC8:
	.word	2505397589
	.word	1103359365
	.align	3
.LC12:
	.word	0
	.word	1083129856
	.align	3
.LC13:
	.word	0
	.word	1093567616
	.align	2
	.global	cpu_time
	.type	cpu_time, %function
cpu_time:
	stp	x29, x30, [sp, -32]!	//,,,
	add	x29, sp, 0	//,,
	bl	clock	//
	scvtf	d1, x0	// D.6033, D.6032
	ldr	d0, .LC19	// tmp78,
	fdiv	d0, d1, d0	// tmp77, D.6033, tmp78
	str	d0, [x29, 24]	// tmp77, value
	ldr	x0, [x29, 24]	// D.6033, value
	fmov	d0, x0	// <retval>, D.6033
	ldp	x29, x30, [sp], 32	//,,,
	ret
	.size	cpu_time, .-cpu_time
	.align	3
.LC19:
	.word	0
	.word	1093567616
	.align	2
	.global	daxpy
	.type	daxpy, %function
daxpy:
	sub	sp, sp, #64	//,,
	str	w0, [sp, 44]	// n, n
	str	d0, [sp, 32]	// da, da
	str	x1, [sp, 24]	// dx, dx
	str	w2, [sp, 40]	// incx, incx
	str	x3, [sp, 16]	// dy, dy
	str	w4, [sp, 12]	// incy, incy
	ldr	w0, [sp, 44]	// tmp162, n
	cmp	w0, 0	// tmp162,
	ble	.L54	//,
	ldr	d0, [sp, 32]	// tmp163, da
	fcmp	d0, #0.0	// tmp163
	beq	.L55	//,
	ldr	w0, [sp, 40]	// tmp164, incx
	cmp	w0, 1	// tmp164,
	bne	.L41	//,
	ldr	w0, [sp, 12]	// tmp165, incy
	cmp	w0, 1	// tmp165,
	beq	.L42	//,
.L41:
	ldr	w0, [sp, 40]	// tmp166, incx
	cmp	w0, 0	// tmp166,
	blt	.L43	//,
	str	wzr, [sp, 52]	//, ix
	b	.L44	//
.L43:
	mov	w1, 1	// tmp167,
	ldr	w0, [sp, 44]	// tmp168, n
	sub	w1, w1, w0	// D.6038, tmp167, tmp168
	ldr	w0, [sp, 40]	// tmp170, incx
	mul	w0, w1, w0	// tmp169, D.6038, tmp170
	str	w0, [sp, 52]	// tmp169, ix
.L44:
	ldr	w0, [sp, 12]	// tmp171, incy
	cmp	w0, 0	// tmp171,
	blt	.L45	//,
	str	wzr, [sp, 56]	//, iy
	b	.L46	//
.L45:
	mov	w1, 1	// tmp172,
	ldr	w0, [sp, 44]	// tmp173, n
	sub	w1, w1, w0	// D.6038, tmp172, tmp173
	ldr	w0, [sp, 12]	// tmp175, incy
	mul	w0, w1, w0	// tmp174, D.6038, tmp175
	str	w0, [sp, 56]	// tmp174, iy
.L46:
	str	wzr, [sp, 48]	//, i
	b	.L47	//
.L48:
	ldrsw	x0, [sp, 56]	// D.6034, iy
	lsl	x0, x0, 3	// D.6034, D.6034,
	ldr	x1, [sp, 16]	// tmp176, dy
	add	x0, x1, x0	// D.6035, tmp176, D.6034
	ldrsw	x1, [sp, 56]	// D.6034, iy
	lsl	x1, x1, 3	// D.6034, D.6034,
	ldr	x2, [sp, 16]	// tmp177, dy
	add	x1, x2, x1	// D.6035, tmp177, D.6034
	ldr	d1, [x1]	// D.6036, *_116
	ldrsw	x1, [sp, 52]	// D.6034, ix
	lsl	x1, x1, 3	// D.6034, D.6034,
	ldr	x2, [sp, 24]	// tmp178, dx
	add	x1, x2, x1	// D.6035, tmp178, D.6034
	ldr	d2, [x1]	// D.6036, *_120
	ldr	d0, [sp, 32]	// tmp179, da
	fmul	d0, d2, d0	// D.6036, D.6036, tmp179
	fadd	d0, d1, d0	// D.6036, D.6036, D.6036
	str	d0, [x0]	// D.6036, *_113
	ldr	w1, [sp, 52]	// tmp181, ix
	ldr	w0, [sp, 40]	// tmp182, incx
	add	w0, w1, w0	// tmp180, tmp181, tmp182
	str	w0, [sp, 52]	// tmp180, ix
	ldr	w1, [sp, 56]	// tmp184, iy
	ldr	w0, [sp, 12]	// tmp185, incy
	add	w0, w1, w0	// tmp183, tmp184, tmp185
	str	w0, [sp, 56]	// tmp183, iy
	ldr	w0, [sp, 48]	// tmp187, i
	add	w0, w0, 1	// tmp186, tmp187,
	str	w0, [sp, 48]	// tmp186, i
.L47:
	ldr	w1, [sp, 48]	// tmp188, i
	ldr	w0, [sp, 44]	// tmp189, n
	cmp	w1, w0	// tmp188, tmp189
	blt	.L48	//,
	b	.L49	//
.L42:
	ldr	w0, [sp, 44]	// tmp191, n
	negs	w1, w0	// tmp193, tmp191
	and	w0, w0, 3	// tmp194, tmp191,
	and	w1, w1, 3	// tmp195, tmp193,
	csneg	w0, w0, w1, mi	// tmp192, tmp194, tmp195,
	str	w0, [sp, 60]	// tmp192, m
	str	wzr, [sp, 48]	//, i
	b	.L50	//
.L51:
	ldrsw	x0, [sp, 48]	// D.6034, i
	lsl	x0, x0, 3	// D.6034, D.6034,
	ldr	x1, [sp, 16]	// tmp196, dy
	add	x0, x1, x0	// D.6035, tmp196, D.6034
	ldrsw	x1, [sp, 48]	// D.6034, i
	lsl	x1, x1, 3	// D.6034, D.6034,
	ldr	x2, [sp, 16]	// tmp197, dy
	add	x1, x2, x1	// D.6035, tmp197, D.6034
	ldr	d1, [x1]	// D.6036, *_26
	ldrsw	x1, [sp, 48]	// D.6034, i
	lsl	x1, x1, 3	// D.6034, D.6034,
	ldr	x2, [sp, 24]	// tmp198, dx
	add	x1, x2, x1	// D.6035, tmp198, D.6034
	ldr	d2, [x1]	// D.6036, *_31
	ldr	d0, [sp, 32]	// tmp199, da
	fmul	d0, d2, d0	// D.6036, D.6036, tmp199
	fadd	d0, d1, d0	// D.6036, D.6036, D.6036
	str	d0, [x0]	// D.6036, *_23
	ldr	w0, [sp, 48]	// tmp201, i
	add	w0, w0, 1	// tmp200, tmp201,
	str	w0, [sp, 48]	// tmp200, i
.L50:
	ldr	w1, [sp, 48]	// tmp202, i
	ldr	w0, [sp, 60]	// tmp203, m
	cmp	w1, w0	// tmp202, tmp203
	blt	.L51	//,
	ldr	w0, [sp, 60]	// tmp204, m
	str	w0, [sp, 48]	// tmp204, i
	b	.L52	//
.L53:
	ldrsw	x0, [sp, 48]	// D.6034, i
	lsl	x0, x0, 3	// D.6034, D.6034,
	ldr	x1, [sp, 16]	// tmp205, dy
	add	x0, x1, x0	// D.6035, tmp205, D.6034
	ldrsw	x1, [sp, 48]	// D.6034, i
	lsl	x1, x1, 3	// D.6034, D.6034,
	ldr	x2, [sp, 16]	// tmp206, dy
	add	x1, x2, x1	// D.6035, tmp206, D.6034
	ldr	d1, [x1]	// D.6036, *_43
	ldrsw	x1, [sp, 48]	// D.6034, i
	lsl	x1, x1, 3	// D.6034, D.6034,
	ldr	x2, [sp, 24]	// tmp207, dx
	add	x1, x2, x1	// D.6035, tmp207, D.6034
	ldr	d2, [x1]	// D.6036, *_47
	ldr	d0, [sp, 32]	// tmp208, da
	fmul	d0, d2, d0	// D.6036, D.6036, tmp208
	fadd	d0, d1, d0	// D.6036, D.6036, D.6036
	str	d0, [x0]	// D.6036, *_40
	ldrsw	x0, [sp, 48]	// D.6037, i
	add	x0, x0, 1	// D.6037, D.6037,
	lsl	x0, x0, 3	// D.6037, D.6037,
	ldr	x1, [sp, 16]	// tmp209, dy
	add	x0, x1, x0	// D.6035, tmp209, D.6037
	ldrsw	x1, [sp, 48]	// D.6037, i
	add	x1, x1, 1	// D.6037, D.6037,
	lsl	x1, x1, 3	// D.6037, D.6037,
	ldr	x2, [sp, 16]	// tmp210, dy
	add	x1, x2, x1	// D.6035, tmp210, D.6037
	ldr	d1, [x1]	// D.6036, *_59
	ldrsw	x1, [sp, 48]	// D.6037, i
	add	x1, x1, 1	// D.6037, D.6037,
	lsl	x1, x1, 3	// D.6037, D.6037,
	ldr	x2, [sp, 24]	// tmp211, dx
	add	x1, x2, x1	// D.6035, tmp211, D.6037
	ldr	d2, [x1]	// D.6036, *_64
	ldr	d0, [sp, 32]	// tmp212, da
	fmul	d0, d2, d0	// D.6036, D.6036, tmp212
	fadd	d0, d1, d0	// D.6036, D.6036, D.6036
	str	d0, [x0]	// D.6036, *_55
	ldrsw	x0, [sp, 48]	// D.6037, i
	add	x0, x0, 2	// D.6037, D.6037,
	lsl	x0, x0, 3	// D.6037, D.6037,
	ldr	x1, [sp, 16]	// tmp213, dy
	add	x0, x1, x0	// D.6035, tmp213, D.6037
	ldrsw	x1, [sp, 48]	// D.6037, i
	add	x1, x1, 2	// D.6037, D.6037,
	lsl	x1, x1, 3	// D.6037, D.6037,
	ldr	x2, [sp, 16]	// tmp214, dy
	add	x1, x2, x1	// D.6035, tmp214, D.6037
	ldr	d1, [x1]	// D.6036, *_76
	ldrsw	x1, [sp, 48]	// D.6037, i
	add	x1, x1, 2	// D.6037, D.6037,
	lsl	x1, x1, 3	// D.6037, D.6037,
	ldr	x2, [sp, 24]	// tmp215, dx
	add	x1, x2, x1	// D.6035, tmp215, D.6037
	ldr	d2, [x1]	// D.6036, *_81
	ldr	d0, [sp, 32]	// tmp216, da
	fmul	d0, d2, d0	// D.6036, D.6036, tmp216
	fadd	d0, d1, d0	// D.6036, D.6036, D.6036
	str	d0, [x0]	// D.6036, *_72
	ldrsw	x0, [sp, 48]	// D.6037, i
	add	x0, x0, 3	// D.6037, D.6037,
	lsl	x0, x0, 3	// D.6037, D.6037,
	ldr	x1, [sp, 16]	// tmp217, dy
	add	x0, x1, x0	// D.6035, tmp217, D.6037
	ldrsw	x1, [sp, 48]	// D.6037, i
	add	x1, x1, 3	// D.6037, D.6037,
	lsl	x1, x1, 3	// D.6037, D.6037,
	ldr	x2, [sp, 16]	// tmp218, dy
	add	x1, x2, x1	// D.6035, tmp218, D.6037
	ldr	d1, [x1]	// D.6036, *_93
	ldrsw	x1, [sp, 48]	// D.6037, i
	add	x1, x1, 3	// D.6037, D.6037,
	lsl	x1, x1, 3	// D.6037, D.6037,
	ldr	x2, [sp, 24]	// tmp219, dx
	add	x1, x2, x1	// D.6035, tmp219, D.6037
	ldr	d2, [x1]	// D.6036, *_98
	ldr	d0, [sp, 32]	// tmp220, da
	fmul	d0, d2, d0	// D.6036, D.6036, tmp220
	fadd	d0, d1, d0	// D.6036, D.6036, D.6036
	str	d0, [x0]	// D.6036, *_89
	ldr	w0, [sp, 48]	// tmp222, i
	add	w0, w0, 4	// tmp221, tmp222,
	str	w0, [sp, 48]	// tmp221, i
.L52:
	ldr	w1, [sp, 48]	// tmp223, i
	ldr	w0, [sp, 44]	// tmp224, n
	cmp	w1, w0	// tmp223, tmp224
	blt	.L53	//,
.L49:
	nop
	b	.L37	//
.L54:
	nop
	b	.L37	//
.L55:
	nop
.L37:
	add	sp, sp, 64	//,,
	ret
	.size	daxpy, .-daxpy
	.align	2
	.global	ddot
	.type	ddot, %function
ddot:
	sub	sp, sp, #64	//,,
	str	w0, [sp, 28]	// n, n
	str	x1, [sp, 16]	// dx, dx
	str	w2, [sp, 24]	// incx, incx
	str	x3, [sp, 8]	// dy, dy
	str	w4, [sp, 4]	// incy, incy
	str	xzr, [sp, 56]	//, dtemp
	ldr	w0, [sp, 28]	// tmp152, n
	cmp	w0, 0	// tmp152,
	bgt	.L57	//,
	ldr	x0, [sp, 56]	// D.6039, dtemp
	b	.L58	//
.L57:
	ldr	w0, [sp, 24]	// tmp153, incx
	cmp	w0, 1	// tmp153,
	bne	.L59	//,
	ldr	w0, [sp, 4]	// tmp154, incy
	cmp	w0, 1	// tmp154,
	beq	.L60	//,
.L59:
	ldr	w0, [sp, 24]	// tmp155, incx
	cmp	w0, 0	// tmp155,
	blt	.L61	//,
	str	wzr, [sp, 44]	//, ix
	b	.L62	//
.L61:
	mov	w1, 1	// tmp156,
	ldr	w0, [sp, 28]	// tmp157, n
	sub	w1, w1, w0	// D.6043, tmp156, tmp157
	ldr	w0, [sp, 24]	// tmp159, incx
	mul	w0, w1, w0	// tmp158, D.6043, tmp159
	str	w0, [sp, 44]	// tmp158, ix
.L62:
	ldr	w0, [sp, 4]	// tmp160, incy
	cmp	w0, 0	// tmp160,
	blt	.L63	//,
	str	wzr, [sp, 48]	//, iy
	b	.L64	//
.L63:
	mov	w1, 1	// tmp161,
	ldr	w0, [sp, 28]	// tmp162, n
	sub	w1, w1, w0	// D.6043, tmp161, tmp162
	ldr	w0, [sp, 4]	// tmp164, incy
	mul	w0, w1, w0	// tmp163, D.6043, tmp164
	str	w0, [sp, 48]	// tmp163, iy
.L64:
	str	wzr, [sp, 40]	//, i
	b	.L65	//
.L66:
	ldrsw	x0, [sp, 44]	// D.6040, ix
	lsl	x0, x0, 3	// D.6040, D.6040,
	ldr	x1, [sp, 16]	// tmp165, dx
	add	x0, x1, x0	// D.6041, tmp165, D.6040
	ldr	d1, [x0]	// D.6039, *_103
	ldrsw	x0, [sp, 48]	// D.6040, iy
	lsl	x0, x0, 3	// D.6040, D.6040,
	ldr	x1, [sp, 8]	// tmp166, dy
	add	x0, x1, x0	// D.6041, tmp166, D.6040
	ldr	d0, [x0]	// D.6039, *_107
	fmul	d0, d1, d0	// D.6039, D.6039, D.6039
	ldr	d1, [sp, 56]	// tmp168, dtemp
	fadd	d0, d1, d0	// tmp167, tmp168, D.6039
	str	d0, [sp, 56]	// tmp167, dtemp
	ldr	w1, [sp, 44]	// tmp170, ix
	ldr	w0, [sp, 24]	// tmp171, incx
	add	w0, w1, w0	// tmp169, tmp170, tmp171
	str	w0, [sp, 44]	// tmp169, ix
	ldr	w1, [sp, 48]	// tmp173, iy
	ldr	w0, [sp, 4]	// tmp174, incy
	add	w0, w1, w0	// tmp172, tmp173, tmp174
	str	w0, [sp, 48]	// tmp172, iy
	ldr	w0, [sp, 40]	// tmp176, i
	add	w0, w0, 1	// tmp175, tmp176,
	str	w0, [sp, 40]	// tmp175, i
.L65:
	ldr	w1, [sp, 40]	// tmp177, i
	ldr	w0, [sp, 28]	// tmp178, n
	cmp	w1, w0	// tmp177, tmp178
	blt	.L66	//,
	b	.L67	//
.L60:
	ldr	w1, [sp, 28]	// tmp180, n
	mov	w0, 26215	// tmp182,
	movk	w0, 0x6666, lsl 16	// tmp182,,
	smull	x0, w1, w0	// tmp181, tmp180, tmp182
	lsr	x0, x0, 32	// tmp183, tmp181,
	asr	w2, w0, 1	// tmp184, tmp183,
	asr	w0, w1, 31	// tmp185, tmp180,
	sub	w2, w2, w0	// tmp179, tmp184, tmp185
	mov	w0, w2	// tmp186, tmp179
	lsl	w0, w0, 2	// tmp187, tmp186,
	add	w0, w0, w2	// tmp186, tmp186, tmp179
	sub	w0, w1, w0	// tmp188, tmp180, tmp186
	str	w0, [sp, 52]	// tmp188, m
	str	wzr, [sp, 40]	//, i
	b	.L68	//
.L69:
	ldrsw	x0, [sp, 40]	// D.6040, i
	lsl	x0, x0, 3	// D.6040, D.6040,
	ldr	x1, [sp, 16]	// tmp189, dx
	add	x0, x1, x0	// D.6041, tmp189, D.6040
	ldr	d1, [x0]	// D.6039, *_23
	ldrsw	x0, [sp, 40]	// D.6040, i
	lsl	x0, x0, 3	// D.6040, D.6040,
	ldr	x1, [sp, 8]	// tmp190, dy
	add	x0, x1, x0	// D.6041, tmp190, D.6040
	ldr	d0, [x0]	// D.6039, *_29
	fmul	d0, d1, d0	// D.6039, D.6039, D.6039
	ldr	d1, [sp, 56]	// tmp192, dtemp
	fadd	d0, d1, d0	// tmp191, tmp192, D.6039
	str	d0, [sp, 56]	// tmp191, dtemp
	ldr	w0, [sp, 40]	// tmp194, i
	add	w0, w0, 1	// tmp193, tmp194,
	str	w0, [sp, 40]	// tmp193, i
.L68:
	ldr	w1, [sp, 40]	// tmp195, i
	ldr	w0, [sp, 52]	// tmp196, m
	cmp	w1, w0	// tmp195, tmp196
	blt	.L69	//,
	ldr	w0, [sp, 52]	// tmp197, m
	str	w0, [sp, 40]	// tmp197, i
	b	.L70	//
.L71:
	ldrsw	x0, [sp, 40]	// D.6040, i
	lsl	x0, x0, 3	// D.6040, D.6040,
	ldr	x1, [sp, 16]	// tmp198, dx
	add	x0, x1, x0	// D.6041, tmp198, D.6040
	ldr	d1, [x0]	// D.6039, *_37
	ldrsw	x0, [sp, 40]	// D.6040, i
	lsl	x0, x0, 3	// D.6040, D.6040,
	ldr	x1, [sp, 8]	// tmp199, dy
	add	x0, x1, x0	// D.6041, tmp199, D.6040
	ldr	d0, [x0]	// D.6039, *_41
	fmul	d1, d1, d0	// D.6039, D.6039, D.6039
	ldr	d0, [sp, 56]	// tmp200, dtemp
	fadd	d1, d1, d0	// D.6039, D.6039, tmp200
	ldrsw	x0, [sp, 40]	// D.6042, i
	add	x0, x0, 1	// D.6042, D.6042,
	lsl	x0, x0, 3	// D.6042, D.6042,
	ldr	x1, [sp, 16]	// tmp201, dx
	add	x0, x1, x0	// D.6041, tmp201, D.6042
	ldr	d2, [x0]	// D.6039, *_48
	ldrsw	x0, [sp, 40]	// D.6042, i
	add	x0, x0, 1	// D.6042, D.6042,
	lsl	x0, x0, 3	// D.6042, D.6042,
	ldr	x1, [sp, 8]	// tmp202, dy
	add	x0, x1, x0	// D.6041, tmp202, D.6042
	ldr	d0, [x0]	// D.6039, *_53
	fmul	d0, d2, d0	// D.6039, D.6039, D.6039
	fadd	d1, d1, d0	// D.6039, D.6039, D.6039
	ldrsw	x0, [sp, 40]	// D.6042, i
	add	x0, x0, 2	// D.6042, D.6042,
	lsl	x0, x0, 3	// D.6042, D.6042,
	ldr	x1, [sp, 16]	// tmp203, dx
	add	x0, x1, x0	// D.6041, tmp203, D.6042
	ldr	d2, [x0]	// D.6039, *_60
	ldrsw	x0, [sp, 40]	// D.6042, i
	add	x0, x0, 2	// D.6042, D.6042,
	lsl	x0, x0, 3	// D.6042, D.6042,
	ldr	x1, [sp, 8]	// tmp204, dy
	add	x0, x1, x0	// D.6041, tmp204, D.6042
	ldr	d0, [x0]	// D.6039, *_65
	fmul	d0, d2, d0	// D.6039, D.6039, D.6039
	fadd	d1, d1, d0	// D.6039, D.6039, D.6039
	ldrsw	x0, [sp, 40]	// D.6042, i
	add	x0, x0, 3	// D.6042, D.6042,
	lsl	x0, x0, 3	// D.6042, D.6042,
	ldr	x1, [sp, 16]	// tmp205, dx
	add	x0, x1, x0	// D.6041, tmp205, D.6042
	ldr	d2, [x0]	// D.6039, *_72
	ldrsw	x0, [sp, 40]	// D.6042, i
	add	x0, x0, 3	// D.6042, D.6042,
	lsl	x0, x0, 3	// D.6042, D.6042,
	ldr	x1, [sp, 8]	// tmp206, dy
	add	x0, x1, x0	// D.6041, tmp206, D.6042
	ldr	d0, [x0]	// D.6039, *_77
	fmul	d0, d2, d0	// D.6039, D.6039, D.6039
	fadd	d1, d1, d0	// D.6039, D.6039, D.6039
	ldrsw	x0, [sp, 40]	// D.6042, i
	add	x0, x0, 4	// D.6042, D.6042,
	lsl	x0, x0, 3	// D.6042, D.6042,
	ldr	x1, [sp, 16]	// tmp207, dx
	add	x0, x1, x0	// D.6041, tmp207, D.6042
	ldr	d2, [x0]	// D.6039, *_84
	ldrsw	x0, [sp, 40]	// D.6042, i
	add	x0, x0, 4	// D.6042, D.6042,
	lsl	x0, x0, 3	// D.6042, D.6042,
	ldr	x1, [sp, 8]	// tmp208, dy
	add	x0, x1, x0	// D.6041, tmp208, D.6042
	ldr	d0, [x0]	// D.6039, *_89
	fmul	d0, d2, d0	// D.6039, D.6039, D.6039
	fadd	d0, d1, d0	// tmp209, D.6039, D.6039
	str	d0, [sp, 56]	// tmp209, dtemp
	ldr	w0, [sp, 40]	// tmp211, i
	add	w0, w0, 5	// tmp210, tmp211,
	str	w0, [sp, 40]	// tmp210, i
.L70:
	ldr	w1, [sp, 40]	// tmp212, i
	ldr	w0, [sp, 28]	// tmp213, n
	cmp	w1, w0	// tmp212, tmp213
	blt	.L71	//,
.L67:
	ldr	x0, [sp, 56]	// D.6039, dtemp
.L58:
	fmov	d0, x0	// <retval>, D.6039
	add	sp, sp, 64	//,,
	ret
	.size	ddot, .-ddot
	.align	2
	.global	dgefa
	.type	dgefa, %function
dgefa:
	stp	x29, x30, [sp, -80]!	//,,,
	add	x29, sp, 0	//,,
	str	x0, [x29, 40]	// a, a
	str	w1, [x29, 36]	// lda, lda
	str	w2, [x29, 32]	// n, n
	str	x3, [x29, 24]	// ipvt, ipvt
	str	wzr, [x29, 56]	//, info
	mov	w0, 1	// tmp197,
	str	w0, [x29, 64]	// tmp197, k
	b	.L73	//
.L80:
	ldr	w1, [x29, 32]	// tmp198, n
	ldr	w0, [x29, 64]	// tmp199, k
	sub	w0, w1, w0	// D.6044, tmp198, tmp199
	add	w3, w0, 1	// D.6044, D.6044,
	ldrsw	x1, [x29, 64]	// D.6045, k
	ldr	w0, [x29, 64]	// tmp200, k
	sub	w2, w0, #1	// D.6044, tmp200,
	ldr	w0, [x29, 36]	// tmp201, lda
	mul	w0, w2, w0	// D.6044, D.6044, tmp201
	sxtw	x0, w0	// D.6045, D.6044
	add	x0, x1, x0	// D.6045, D.6045, D.6045
	lsl	x0, x0, 3	// D.6045, D.6045,
	sub	x0, x0, #8	// D.6045, D.6045,
	ldr	x1, [x29, 40]	// tmp202, a
	add	x0, x1, x0	// D.6046, tmp202, D.6045
	mov	w2, 1	//,
	mov	x1, x0	//, D.6046
	mov	w0, w3	//, D.6044
	bl	idamax	//
	mov	w1, w0	// D.6044,
	ldr	w0, [x29, 64]	// tmp203, k
	add	w0, w1, w0	// D.6044, D.6044, tmp203
	sub	w0, w0, #1	// tmp204, D.6044,
	str	w0, [x29, 68]	// tmp204, l
	ldrsw	x0, [x29, 64]	// D.6047, k
	lsl	x0, x0, 2	// D.6047, D.6047,
	sub	x0, x0, #4	// D.6045, D.6047,
	ldr	x1, [x29, 24]	// tmp205, ipvt
	add	x0, x1, x0	// D.6048, tmp205, D.6045
	ldr	w1, [x29, 68]	// tmp206, l
	str	w1, [x0]	// tmp206, *_36
	ldr	w0, [x29, 68]	// tmp207, l
	sub	w1, w0, #1	// D.6044, tmp207,
	ldr	w0, [x29, 64]	// tmp208, k
	sub	w2, w0, #1	// D.6044, tmp208,
	ldr	w0, [x29, 36]	// tmp209, lda
	mul	w0, w2, w0	// D.6044, D.6044, tmp209
	add	w0, w1, w0	// D.6044, D.6044, D.6044
	sxtw	x0, w0	// D.6047, D.6044
	lsl	x0, x0, 3	// D.6047, D.6047,
	ldr	x1, [x29, 40]	// tmp210, a
	add	x0, x1, x0	// D.6046, tmp210, D.6047
	ldr	d0, [x0]	// D.6049, *_44
	fcmp	d0, #0.0	// D.6049
	bne	.L74	//,
	ldr	w0, [x29, 64]	// tmp211, k
	str	w0, [x29, 56]	// tmp211, info
	b	.L75	//
.L74:
	ldr	w1, [x29, 68]	// tmp212, l
	ldr	w0, [x29, 64]	// tmp213, k
	cmp	w1, w0	// tmp212, tmp213
	beq	.L76	//,
	ldr	w0, [x29, 68]	// tmp214, l
	sub	w1, w0, #1	// D.6044, tmp214,
	ldr	w0, [x29, 64]	// tmp215, k
	sub	w2, w0, #1	// D.6044, tmp215,
	ldr	w0, [x29, 36]	// tmp216, lda
	mul	w0, w2, w0	// D.6044, D.6044, tmp216
	add	w0, w1, w0	// D.6044, D.6044, D.6044
	sxtw	x0, w0	// D.6047, D.6044
	lsl	x0, x0, 3	// D.6047, D.6047,
	ldr	x1, [x29, 40]	// tmp217, a
	add	x0, x1, x0	// D.6046, tmp217, D.6047
	ldr	x0, [x0]	// tmp218, *_53
	str	x0, [x29, 72]	// tmp218, t
	ldr	w0, [x29, 68]	// tmp219, l
	sub	w1, w0, #1	// D.6044, tmp219,
	ldr	w0, [x29, 64]	// tmp220, k
	sub	w2, w0, #1	// D.6044, tmp220,
	ldr	w0, [x29, 36]	// tmp221, lda
	mul	w0, w2, w0	// D.6044, D.6044, tmp221
	add	w0, w1, w0	// D.6044, D.6044, D.6044
	sxtw	x0, w0	// D.6047, D.6044
	lsl	x0, x0, 3	// D.6047, D.6047,
	ldr	x1, [x29, 40]	// tmp222, a
	add	x0, x1, x0	// D.6046, tmp222, D.6047
	ldr	w1, [x29, 36]	// tmp223, lda
	add	w2, w1, 1	// D.6044, tmp223,
	ldr	w1, [x29, 64]	// tmp224, k
	sub	w1, w1, #1	// D.6044, tmp224,
	mul	w1, w2, w1	// D.6044, D.6044, D.6044
	sxtw	x1, w1	// D.6047, D.6044
	lsl	x1, x1, 3	// D.6047, D.6047,
	ldr	x2, [x29, 40]	// tmp225, a
	add	x1, x2, x1	// D.6046, tmp225, D.6047
	ldr	x1, [x1]	// D.6049, *_67
	str	x1, [x0]	// D.6049, *_61
	ldr	w0, [x29, 36]	// tmp226, lda
	add	w1, w0, 1	// D.6044, tmp226,
	ldr	w0, [x29, 64]	// tmp227, k
	sub	w0, w0, #1	// D.6044, tmp227,
	mul	w0, w1, w0	// D.6044, D.6044, D.6044
	sxtw	x0, w0	// D.6047, D.6044
	lsl	x0, x0, 3	// D.6047, D.6047,
	ldr	x1, [x29, 40]	// tmp228, a
	add	x0, x1, x0	// D.6046, tmp228, D.6047
	ldr	x1, [x29, 72]	// tmp229, t
	str	x1, [x0]	// tmp229, *_75
.L76:
	ldr	w0, [x29, 36]	// tmp230, lda
	add	w1, w0, 1	// D.6044, tmp230,
	ldr	w0, [x29, 64]	// tmp231, k
	sub	w0, w0, #1	// D.6044, tmp231,
	mul	w0, w1, w0	// D.6044, D.6044, D.6044
	sxtw	x0, w0	// D.6047, D.6044
	lsl	x0, x0, 3	// D.6047, D.6047,
	ldr	x1, [x29, 40]	// tmp232, a
	add	x0, x1, x0	// D.6046, tmp232, D.6047
	ldr	d0, [x0]	// D.6049, *_82
	fmov	d1, -1.0e+0	// tmp234,
	fdiv	d0, d1, d0	// tmp233, tmp234, D.6049
	str	d0, [x29, 72]	// tmp233, t
	ldr	w1, [x29, 32]	// tmp235, n
	ldr	w0, [x29, 64]	// tmp236, k
	sub	w3, w1, w0	// D.6044, tmp235, tmp236
	ldrsw	x1, [x29, 64]	// D.6045, k
	ldr	w0, [x29, 64]	// tmp237, k
	sub	w2, w0, #1	// D.6044, tmp237,
	ldr	w0, [x29, 36]	// tmp238, lda
	mul	w0, w2, w0	// D.6044, D.6044, tmp238
	sxtw	x0, w0	// D.6045, D.6044
	add	x0, x1, x0	// D.6045, D.6045, D.6045
	lsl	x0, x0, 3	// D.6045, D.6045,
	ldr	x1, [x29, 40]	// tmp239, a
	add	x0, x1, x0	// D.6046, tmp239, D.6045
	mov	w2, 1	//,
	mov	x1, x0	//, D.6046
	ldr	d0, [x29, 72]	//, t
	mov	w0, w3	//, D.6044
	bl	dscal	//
	ldr	w0, [x29, 64]	// tmp241, k
	add	w0, w0, 1	// tmp240, tmp241,
	str	w0, [x29, 60]	// tmp240, j
	b	.L77	//
.L79:
	ldr	w0, [x29, 68]	// tmp242, l
	sub	w1, w0, #1	// D.6044, tmp242,
	ldr	w0, [x29, 60]	// tmp243, j
	sub	w2, w0, #1	// D.6044, tmp243,
	ldr	w0, [x29, 36]	// tmp244, lda
	mul	w0, w2, w0	// D.6044, D.6044, tmp244
	add	w0, w1, w0	// D.6044, D.6044, D.6044
	sxtw	x0, w0	// D.6047, D.6044
	lsl	x0, x0, 3	// D.6047, D.6047,
	ldr	x1, [x29, 40]	// tmp245, a
	add	x0, x1, x0	// D.6046, tmp245, D.6047
	ldr	x0, [x0]	// tmp246, *_101
	str	x0, [x29, 72]	// tmp246, t
	ldr	w1, [x29, 68]	// tmp247, l
	ldr	w0, [x29, 64]	// tmp248, k
	cmp	w1, w0	// tmp247, tmp248
	beq	.L78	//,
	ldr	w0, [x29, 68]	// tmp249, l
	sub	w1, w0, #1	// D.6044, tmp249,
	ldr	w0, [x29, 60]	// tmp250, j
	sub	w2, w0, #1	// D.6044, tmp250,
	ldr	w0, [x29, 36]	// tmp251, lda
	mul	w0, w2, w0	// D.6044, D.6044, tmp251
	add	w0, w1, w0	// D.6044, D.6044, D.6044
	sxtw	x0, w0	// D.6047, D.6044
	lsl	x0, x0, 3	// D.6047, D.6047,
	ldr	x1, [x29, 40]	// tmp252, a
	add	x0, x1, x0	// D.6046, tmp252, D.6047
	ldr	w1, [x29, 64]	// tmp253, k
	sub	w2, w1, #1	// D.6044, tmp253,
	ldr	w1, [x29, 60]	// tmp254, j
	sub	w3, w1, #1	// D.6044, tmp254,
	ldr	w1, [x29, 36]	// tmp255, lda
	mul	w1, w3, w1	// D.6044, D.6044, tmp255
	add	w1, w2, w1	// D.6044, D.6044, D.6044
	sxtw	x1, w1	// D.6047, D.6044
	lsl	x1, x1, 3	// D.6047, D.6047,
	ldr	x2, [x29, 40]	// tmp256, a
	add	x1, x2, x1	// D.6046, tmp256, D.6047
	ldr	x1, [x1]	// D.6049, *_116
	str	x1, [x0]	// D.6049, *_109
	ldr	w0, [x29, 64]	// tmp257, k
	sub	w1, w0, #1	// D.6044, tmp257,
	ldr	w0, [x29, 60]	// tmp258, j
	sub	w2, w0, #1	// D.6044, tmp258,
	ldr	w0, [x29, 36]	// tmp259, lda
	mul	w0, w2, w0	// D.6044, D.6044, tmp259
	add	w0, w1, w0	// D.6044, D.6044, D.6044
	sxtw	x0, w0	// D.6047, D.6044
	lsl	x0, x0, 3	// D.6047, D.6047,
	ldr	x1, [x29, 40]	// tmp260, a
	add	x0, x1, x0	// D.6046, tmp260, D.6047
	ldr	x1, [x29, 72]	// tmp261, t
	str	x1, [x0]	// tmp261, *_125
.L78:
	ldr	w1, [x29, 32]	// tmp262, n
	ldr	w0, [x29, 64]	// tmp263, k
	sub	w5, w1, w0	// D.6044, tmp262, tmp263
	ldrsw	x1, [x29, 64]	// D.6045, k
	ldr	w0, [x29, 64]	// tmp264, k
	sub	w2, w0, #1	// D.6044, tmp264,
	ldr	w0, [x29, 36]	// tmp265, lda
	mul	w0, w2, w0	// D.6044, D.6044, tmp265
	sxtw	x0, w0	// D.6045, D.6044
	add	x0, x1, x0	// D.6045, D.6045, D.6045
	lsl	x0, x0, 3	// D.6045, D.6045,
	ldr	x1, [x29, 40]	// tmp266, a
	add	x6, x1, x0	// D.6046, tmp266, D.6045
	ldrsw	x1, [x29, 64]	// D.6045, k
	ldr	w0, [x29, 60]	// tmp267, j
	sub	w2, w0, #1	// D.6044, tmp267,
	ldr	w0, [x29, 36]	// tmp268, lda
	mul	w0, w2, w0	// D.6044, D.6044, tmp268
	sxtw	x0, w0	// D.6045, D.6044
	add	x0, x1, x0	// D.6045, D.6045, D.6045
	lsl	x0, x0, 3	// D.6045, D.6045,
	ldr	x1, [x29, 40]	// tmp269, a
	add	x0, x1, x0	// D.6046, tmp269, D.6045
	mov	w4, 1	//,
	mov	x3, x0	//, D.6046
	mov	w2, 1	//,
	mov	x1, x6	//, D.6046
	ldr	d0, [x29, 72]	//, t
	mov	w0, w5	//, D.6044
	bl	daxpy	//
	ldr	w0, [x29, 60]	// tmp271, j
	add	w0, w0, 1	// tmp270, tmp271,
	str	w0, [x29, 60]	// tmp270, j
.L77:
	ldr	w1, [x29, 60]	// tmp272, j
	ldr	w0, [x29, 32]	// tmp273, n
	cmp	w1, w0	// tmp272, tmp273
	ble	.L79	//,
.L75:
	ldr	w0, [x29, 64]	// tmp275, k
	add	w0, w0, 1	// tmp274, tmp275,
	str	w0, [x29, 64]	// tmp274, k
.L73:
	ldr	w0, [x29, 32]	// tmp276, n
	sub	w1, w0, #1	// D.6044, tmp276,
	ldr	w0, [x29, 64]	// tmp277, k
	cmp	w1, w0	// D.6044, tmp277
	bge	.L80	//,
	ldrsw	x0, [x29, 32]	// D.6047, n
	lsl	x0, x0, 2	// D.6047, D.6047,
	sub	x0, x0, #4	// D.6045, D.6047,
	ldr	x1, [x29, 24]	// tmp278, ipvt
	add	x0, x1, x0	// D.6048, tmp278, D.6045
	ldr	w1, [x29, 32]	// tmp279, n
	str	w1, [x0]	// tmp279, *_148
	ldr	w0, [x29, 36]	// tmp280, lda
	add	w1, w0, 1	// D.6044, tmp280,
	ldr	w0, [x29, 32]	// tmp281, n
	sub	w0, w0, #1	// D.6044, tmp281,
	mul	w0, w1, w0	// D.6044, D.6044, D.6044
	sxtw	x0, w0	// D.6047, D.6044
	lsl	x0, x0, 3	// D.6047, D.6047,
	ldr	x1, [x29, 40]	// tmp282, a
	add	x0, x1, x0	// D.6046, tmp282, D.6047
	ldr	d0, [x0]	// D.6049, *_155
	fcmp	d0, #0.0	// D.6049
	bne	.L81	//,
	ldr	w0, [x29, 32]	// tmp283, n
	str	w0, [x29, 56]	// tmp283, info
.L81:
	ldr	w0, [x29, 56]	// D.6044, info
	ldp	x29, x30, [sp], 80	//,,,
	ret
	.size	dgefa, .-dgefa
	.align	2
	.global	dgesl
	.type	dgesl, %function
dgesl:
	stp	x29, x30, [sp, -96]!	//,,,
	add	x29, sp, 0	//,,
	str	x19, [sp, 16]	//,
	str	d8, [sp, 24]	//,
	str	x0, [x29, 72]	// a, a
	str	w1, [x29, 68]	// lda, lda
	str	w2, [x29, 64]	// n, n
	str	x3, [x29, 56]	// ipvt, ipvt
	str	x4, [x29, 48]	// b, b
	str	w5, [x29, 44]	// job, job
	ldr	w0, [x29, 44]	// tmp201, job
	cmp	w0, 0	// tmp201,
	bne	.L84	//,
	mov	w0, 1	// tmp202,
	str	w0, [x29, 80]	// tmp202, k
	b	.L85	//
.L87:
	ldrsw	x0, [x29, 80]	// D.6051, k
	lsl	x0, x0, 2	// D.6051, D.6051,
	sub	x0, x0, #4	// D.6052, D.6051,
	ldr	x1, [x29, 56]	// tmp203, ipvt
	add	x0, x1, x0	// D.6053, tmp203, D.6052
	ldr	w0, [x0]	// tmp204, *_21
	str	w0, [x29, 84]	// tmp204, l
	ldrsw	x0, [x29, 84]	// D.6051, l
	lsl	x0, x0, 3	// D.6051, D.6051,
	sub	x0, x0, #8	// D.6052, D.6051,
	ldr	x1, [x29, 48]	// tmp205, b
	add	x0, x1, x0	// D.6054, tmp205, D.6052
	ldr	x0, [x0]	// tmp206, *_27
	str	x0, [x29, 88]	// tmp206, t
	ldr	w1, [x29, 84]	// tmp207, l
	ldr	w0, [x29, 80]	// tmp208, k
	cmp	w1, w0	// tmp207, tmp208
	beq	.L86	//,
	ldrsw	x0, [x29, 84]	// D.6051, l
	lsl	x0, x0, 3	// D.6051, D.6051,
	sub	x0, x0, #8	// D.6052, D.6051,
	ldr	x1, [x29, 48]	// tmp209, b
	add	x0, x1, x0	// D.6054, tmp209, D.6052
	ldrsw	x1, [x29, 80]	// D.6051, k
	lsl	x1, x1, 3	// D.6051, D.6051,
	sub	x1, x1, #8	// D.6052, D.6051,
	ldr	x2, [x29, 48]	// tmp210, b
	add	x1, x2, x1	// D.6054, tmp210, D.6052
	ldr	x1, [x1]	// D.6055, *_36
	str	x1, [x0]	// D.6055, *_32
	ldrsw	x0, [x29, 80]	// D.6051, k
	lsl	x0, x0, 3	// D.6051, D.6051,
	sub	x0, x0, #8	// D.6052, D.6051,
	ldr	x1, [x29, 48]	// tmp211, b
	add	x0, x1, x0	// D.6054, tmp211, D.6052
	ldr	x1, [x29, 88]	// tmp212, t
	str	x1, [x0]	// tmp212, *_42
.L86:
	ldr	w1, [x29, 64]	// tmp213, n
	ldr	w0, [x29, 80]	// tmp214, k
	sub	w5, w1, w0	// D.6050, tmp213, tmp214
	ldrsw	x1, [x29, 80]	// D.6052, k
	ldr	w0, [x29, 80]	// tmp215, k
	sub	w2, w0, #1	// D.6050, tmp215,
	ldr	w0, [x29, 68]	// tmp216, lda
	mul	w0, w2, w0	// D.6050, D.6050, tmp216
	sxtw	x0, w0	// D.6052, D.6050
	add	x0, x1, x0	// D.6052, D.6052, D.6052
	lsl	x0, x0, 3	// D.6052, D.6052,
	ldr	x1, [x29, 72]	// tmp217, a
	add	x6, x1, x0	// D.6054, tmp217, D.6052
	ldrsw	x0, [x29, 80]	// D.6051, k
	lsl	x0, x0, 3	// D.6051, D.6051,
	ldr	x1, [x29, 48]	// tmp218, b
	add	x0, x1, x0	// D.6054, tmp218, D.6051
	mov	w4, 1	//,
	mov	x3, x0	//, D.6054
	mov	w2, 1	//,
	mov	x1, x6	//, D.6054
	ldr	d0, [x29, 88]	//, t
	mov	w0, w5	//, D.6050
	bl	daxpy	//
	ldr	w0, [x29, 80]	// tmp220, k
	add	w0, w0, 1	// tmp219, tmp220,
	str	w0, [x29, 80]	// tmp219, k
.L85:
	ldr	w0, [x29, 64]	// tmp221, n
	sub	w1, w0, #1	// D.6050, tmp221,
	ldr	w0, [x29, 80]	// tmp222, k
	cmp	w1, w0	// D.6050, tmp222
	bge	.L87	//,
	ldr	w0, [x29, 64]	// tmp223, n
	str	w0, [x29, 80]	// tmp223, k
	b	.L88	//
.L89:
	ldrsw	x0, [x29, 80]	// D.6051, k
	lsl	x0, x0, 3	// D.6051, D.6051,
	sub	x0, x0, #8	// D.6052, D.6051,
	ldr	x1, [x29, 48]	// tmp224, b
	add	x0, x1, x0	// D.6054, tmp224, D.6052
	ldrsw	x1, [x29, 80]	// D.6051, k
	lsl	x1, x1, 3	// D.6051, D.6051,
	sub	x1, x1, #8	// D.6052, D.6051,
	ldr	x2, [x29, 48]	// tmp225, b
	add	x1, x2, x1	// D.6054, tmp225, D.6052
	ldr	d1, [x1]	// D.6055, *_67
	ldr	w1, [x29, 68]	// tmp226, lda
	add	w2, w1, 1	// D.6050, tmp226,
	ldr	w1, [x29, 80]	// tmp227, k
	sub	w1, w1, #1	// D.6050, tmp227,
	mul	w1, w2, w1	// D.6050, D.6050, D.6050
	sxtw	x1, w1	// D.6051, D.6050
	lsl	x1, x1, 3	// D.6051, D.6051,
	ldr	x2, [x29, 72]	// tmp228, a
	add	x1, x2, x1	// D.6054, tmp228, D.6051
	ldr	d0, [x1]	// D.6055, *_74
	fdiv	d0, d1, d0	// D.6055, D.6055, D.6055
	str	d0, [x0]	// D.6055, *_63
	ldrsw	x0, [x29, 80]	// D.6051, k
	lsl	x0, x0, 3	// D.6051, D.6051,
	sub	x0, x0, #8	// D.6052, D.6051,
	ldr	x1, [x29, 48]	// tmp229, b
	add	x0, x1, x0	// D.6054, tmp229, D.6052
	ldr	d0, [x0]	// D.6055, *_81
	fneg	d0, d0	// tmp230, D.6055
	str	d0, [x29, 88]	// tmp230, t
	ldr	w0, [x29, 80]	// tmp231, k
	sub	w5, w0, #1	// D.6050, tmp231,
	ldr	w0, [x29, 80]	// tmp232, k
	sub	w1, w0, #1	// D.6050, tmp232,
	ldr	w0, [x29, 68]	// tmp233, lda
	mul	w0, w1, w0	// D.6050, D.6050, tmp233
	sxtw	x0, w0	// D.6051, D.6050
	lsl	x0, x0, 3	// D.6051, D.6051,
	ldr	x1, [x29, 72]	// tmp234, a
	add	x0, x1, x0	// D.6054, tmp234, D.6051
	mov	w4, 1	//,
	ldr	x3, [x29, 48]	//, b
	mov	w2, 1	//,
	mov	x1, x0	//, D.6054
	ldr	d0, [x29, 88]	//, t
	mov	w0, w5	//, D.6050
	bl	daxpy	//
	ldr	w0, [x29, 80]	// tmp236, k
	sub	w0, w0, #1	// tmp235, tmp236,
	str	w0, [x29, 80]	// tmp235, k
.L88:
	ldr	w0, [x29, 80]	// tmp237, k
	cmp	w0, 0	// tmp237,
	bgt	.L89	//,
	b	.L83	//
.L84:
	mov	w0, 1	// tmp238,
	str	w0, [x29, 80]	// tmp238, k
	b	.L91	//
.L92:
	ldr	w0, [x29, 80]	// tmp239, k
	sub	w5, w0, #1	// D.6050, tmp239,
	ldr	w0, [x29, 80]	// tmp240, k
	sub	w1, w0, #1	// D.6050, tmp240,
	ldr	w0, [x29, 68]	// tmp241, lda
	mul	w0, w1, w0	// D.6050, D.6050, tmp241
	sxtw	x0, w0	// D.6051, D.6050
	lsl	x0, x0, 3	// D.6051, D.6051,
	ldr	x1, [x29, 72]	// tmp242, a
	add	x0, x1, x0	// D.6054, tmp242, D.6051
	mov	w4, 1	//,
	ldr	x3, [x29, 48]	//, b
	mov	w2, 1	//,
	mov	x1, x0	//, D.6054
	mov	w0, w5	//, D.6050
	bl	ddot	//
	str	d0, [x29, 88]	//, t
	ldrsw	x0, [x29, 80]	// D.6051, k
	lsl	x0, x0, 3	// D.6051, D.6051,
	sub	x0, x0, #8	// D.6052, D.6051,
	ldr	x1, [x29, 48]	// tmp243, b
	add	x0, x1, x0	// D.6054, tmp243, D.6052
	ldrsw	x1, [x29, 80]	// D.6051, k
	lsl	x1, x1, 3	// D.6051, D.6051,
	sub	x1, x1, #8	// D.6052, D.6051,
	ldr	x2, [x29, 48]	// tmp244, b
	add	x1, x2, x1	// D.6054, tmp244, D.6052
	ldr	d1, [x1]	// D.6055, *_108
	ldr	d0, [x29, 88]	// tmp245, t
	fsub	d1, d1, d0	// D.6055, D.6055, tmp245
	ldr	w1, [x29, 68]	// tmp246, lda
	add	w2, w1, 1	// D.6050, tmp246,
	ldr	w1, [x29, 80]	// tmp247, k
	sub	w1, w1, #1	// D.6050, tmp247,
	mul	w1, w2, w1	// D.6050, D.6050, D.6050
	sxtw	x1, w1	// D.6051, D.6050
	lsl	x1, x1, 3	// D.6051, D.6051,
	ldr	x2, [x29, 72]	// tmp248, a
	add	x1, x2, x1	// D.6054, tmp248, D.6051
	ldr	d0, [x1]	// D.6055, *_116
	fdiv	d0, d1, d0	// D.6055, D.6055, D.6055
	str	d0, [x0]	// D.6055, *_104
	ldr	w0, [x29, 80]	// tmp250, k
	add	w0, w0, 1	// tmp249, tmp250,
	str	w0, [x29, 80]	// tmp249, k
.L91:
	ldr	w1, [x29, 80]	// tmp251, k
	ldr	w0, [x29, 64]	// tmp252, n
	cmp	w1, w0	// tmp251, tmp252
	ble	.L92	//,
	ldr	w0, [x29, 64]	// tmp254, n
	sub	w0, w0, #1	// tmp253, tmp254,
	str	w0, [x29, 80]	// tmp253, k
	b	.L93	//
.L95:
	ldrsw	x0, [x29, 80]	// D.6051, k
	lsl	x0, x0, 3	// D.6051, D.6051,
	sub	x0, x0, #8	// D.6052, D.6051,
	ldr	x1, [x29, 48]	// tmp255, b
	add	x19, x1, x0	// D.6054, tmp255, D.6052
	ldrsw	x0, [x29, 80]	// D.6051, k
	lsl	x0, x0, 3	// D.6051, D.6051,
	sub	x0, x0, #8	// D.6052, D.6051,
	ldr	x1, [x29, 48]	// tmp256, b
	add	x0, x1, x0	// D.6054, tmp256, D.6052
	ldr	d8, [x0]	// D.6055, *_129
	ldr	w1, [x29, 64]	// tmp257, n
	ldr	w0, [x29, 80]	// tmp258, k
	sub	w5, w1, w0	// D.6050, tmp257, tmp258
	ldrsw	x1, [x29, 80]	// D.6052, k
	ldr	w0, [x29, 80]	// tmp259, k
	sub	w2, w0, #1	// D.6050, tmp259,
	ldr	w0, [x29, 68]	// tmp260, lda
	mul	w0, w2, w0	// D.6050, D.6050, tmp260
	sxtw	x0, w0	// D.6052, D.6050
	add	x0, x1, x0	// D.6052, D.6052, D.6052
	lsl	x0, x0, 3	// D.6052, D.6052,
	ldr	x1, [x29, 72]	// tmp261, a
	add	x6, x1, x0	// D.6054, tmp261, D.6052
	ldrsw	x0, [x29, 80]	// D.6051, k
	lsl	x0, x0, 3	// D.6051, D.6051,
	ldr	x1, [x29, 48]	// tmp262, b
	add	x0, x1, x0	// D.6054, tmp262, D.6051
	mov	w4, 1	//,
	mov	x3, x0	//, D.6054
	mov	w2, 1	//,
	mov	x1, x6	//, D.6054
	mov	w0, w5	//, D.6050
	bl	ddot	//
	fadd	d0, d8, d0	// D.6055, D.6055, D.6055
	str	d0, [x19]	// D.6055, *_125
	ldrsw	x0, [x29, 80]	// D.6051, k
	lsl	x0, x0, 2	// D.6051, D.6051,
	sub	x0, x0, #4	// D.6052, D.6051,
	ldr	x1, [x29, 56]	// tmp263, ipvt
	add	x0, x1, x0	// D.6053, tmp263, D.6052
	ldr	w0, [x0]	// tmp264, *_149
	str	w0, [x29, 84]	// tmp264, l
	ldr	w1, [x29, 84]	// tmp265, l
	ldr	w0, [x29, 80]	// tmp266, k
	cmp	w1, w0	// tmp265, tmp266
	beq	.L94	//,
	ldrsw	x0, [x29, 84]	// D.6051, l
	lsl	x0, x0, 3	// D.6051, D.6051,
	sub	x0, x0, #8	// D.6052, D.6051,
	ldr	x1, [x29, 48]	// tmp267, b
	add	x0, x1, x0	// D.6054, tmp267, D.6052
	ldr	x0, [x0]	// tmp268, *_154
	str	x0, [x29, 88]	// tmp268, t
	ldrsw	x0, [x29, 84]	// D.6051, l
	lsl	x0, x0, 3	// D.6051, D.6051,
	sub	x0, x0, #8	// D.6052, D.6051,
	ldr	x1, [x29, 48]	// tmp269, b
	add	x0, x1, x0	// D.6054, tmp269, D.6052
	ldrsw	x1, [x29, 80]	// D.6051, k
	lsl	x1, x1, 3	// D.6051, D.6051,
	sub	x1, x1, #8	// D.6052, D.6051,
	ldr	x2, [x29, 48]	// tmp270, b
	add	x1, x2, x1	// D.6054, tmp270, D.6052
	ldr	x1, [x1]	// D.6055, *_163
	str	x1, [x0]	// D.6055, *_159
	ldrsw	x0, [x29, 80]	// D.6051, k
	lsl	x0, x0, 3	// D.6051, D.6051,
	sub	x0, x0, #8	// D.6052, D.6051,
	ldr	x1, [x29, 48]	// tmp271, b
	add	x0, x1, x0	// D.6054, tmp271, D.6052
	ldr	x1, [x29, 88]	// tmp272, t
	str	x1, [x0]	// tmp272, *_169
.L94:
	ldr	w0, [x29, 80]	// tmp274, k
	sub	w0, w0, #1	// tmp273, tmp274,
	str	w0, [x29, 80]	// tmp273, k
.L93:
	ldr	w0, [x29, 80]	// tmp275, k
	cmp	w0, 0	// tmp275,
	bgt	.L95	//,
	nop
.L83:
	ldr	x19, [sp, 16]	//,
	ldr	d8, [sp, 24]	//,
	ldp	x29, x30, [sp], 96	//,,,
	ret
	.size	dgesl, .-dgesl
	.align	2
	.global	dscal
	.type	dscal, %function
dscal:
	sub	sp, sp, #48	//,,
	str	w0, [sp, 28]	// n, n
	str	d0, [sp, 16]	// sa, sa
	str	x1, [sp, 8]	// x, x
	str	w2, [sp, 24]	// incx, incx
	ldr	w0, [sp, 28]	// tmp138, n
	cmp	w0, 0	// tmp138,
	ble	.L109	//,
	ldr	w0, [sp, 24]	// tmp139, incx
	cmp	w0, 1	// tmp139,
	bne	.L99	//,
	ldr	w1, [sp, 28]	// tmp141, n
	mov	w0, 26215	// tmp143,
	movk	w0, 0x6666, lsl 16	// tmp143,,
	smull	x0, w1, w0	// tmp142, tmp141, tmp143
	lsr	x0, x0, 32	// tmp144, tmp142,
	asr	w2, w0, 1	// tmp145, tmp144,
	asr	w0, w1, 31	// tmp146, tmp141,
	sub	w2, w2, w0	// tmp140, tmp145, tmp146
	mov	w0, w2	// tmp147, tmp140
	lsl	w0, w0, 2	// tmp148, tmp147,
	add	w0, w0, w2	// tmp147, tmp147, tmp140
	sub	w0, w1, w0	// tmp149, tmp141, tmp147
	str	w0, [sp, 44]	// tmp149, m
	str	wzr, [sp, 36]	//, i
	b	.L100	//
.L101:
	ldrsw	x0, [sp, 36]	// D.6056, i
	lsl	x0, x0, 3	// D.6056, D.6056,
	ldr	x1, [sp, 8]	// tmp150, x
	add	x0, x1, x0	// D.6057, tmp150, D.6056
	ldrsw	x1, [sp, 36]	// D.6056, i
	lsl	x1, x1, 3	// D.6056, D.6056,
	ldr	x2, [sp, 8]	// tmp151, x
	add	x1, x2, x1	// D.6057, tmp151, D.6056
	ldr	d1, [x1]	// D.6058, *_21
	ldr	d0, [sp, 16]	// tmp152, sa
	fmul	d0, d1, d0	// D.6058, D.6058, tmp152
	str	d0, [x0]	// D.6058, *_18
	ldr	w0, [sp, 36]	// tmp154, i
	add	w0, w0, 1	// tmp153, tmp154,
	str	w0, [sp, 36]	// tmp153, i
.L100:
	ldr	w1, [sp, 36]	// tmp155, i
	ldr	w0, [sp, 44]	// tmp156, m
	cmp	w1, w0	// tmp155, tmp156
	blt	.L101	//,
	ldr	w0, [sp, 44]	// tmp157, m
	str	w0, [sp, 36]	// tmp157, i
	b	.L102	//
.L103:
	ldrsw	x0, [sp, 36]	// D.6056, i
	lsl	x0, x0, 3	// D.6056, D.6056,
	ldr	x1, [sp, 8]	// tmp158, x
	add	x0, x1, x0	// D.6057, tmp158, D.6056
	ldrsw	x1, [sp, 36]	// D.6056, i
	lsl	x1, x1, 3	// D.6056, D.6056,
	ldr	x2, [sp, 8]	// tmp159, x
	add	x1, x2, x1	// D.6057, tmp159, D.6056
	ldr	d1, [x1]	// D.6058, *_33
	ldr	d0, [sp, 16]	// tmp160, sa
	fmul	d0, d1, d0	// D.6058, D.6058, tmp160
	str	d0, [x0]	// D.6058, *_30
	ldrsw	x0, [sp, 36]	// D.6059, i
	add	x0, x0, 1	// D.6059, D.6059,
	lsl	x0, x0, 3	// D.6059, D.6059,
	ldr	x1, [sp, 8]	// tmp161, x
	add	x0, x1, x0	// D.6057, tmp161, D.6059
	ldrsw	x1, [sp, 36]	// D.6059, i
	add	x1, x1, 1	// D.6059, D.6059,
	lsl	x1, x1, 3	// D.6059, D.6059,
	ldr	x2, [sp, 8]	// tmp162, x
	add	x1, x2, x1	// D.6057, tmp162, D.6059
	ldr	d1, [x1]	// D.6058, *_44
	ldr	d0, [sp, 16]	// tmp163, sa
	fmul	d0, d1, d0	// D.6058, D.6058, tmp163
	str	d0, [x0]	// D.6058, *_40
	ldrsw	x0, [sp, 36]	// D.6059, i
	add	x0, x0, 2	// D.6059, D.6059,
	lsl	x0, x0, 3	// D.6059, D.6059,
	ldr	x1, [sp, 8]	// tmp164, x
	add	x0, x1, x0	// D.6057, tmp164, D.6059
	ldrsw	x1, [sp, 36]	// D.6059, i
	add	x1, x1, 2	// D.6059, D.6059,
	lsl	x1, x1, 3	// D.6059, D.6059,
	ldr	x2, [sp, 8]	// tmp165, x
	add	x1, x2, x1	// D.6057, tmp165, D.6059
	ldr	d1, [x1]	// D.6058, *_55
	ldr	d0, [sp, 16]	// tmp166, sa
	fmul	d0, d1, d0	// D.6058, D.6058, tmp166
	str	d0, [x0]	// D.6058, *_51
	ldrsw	x0, [sp, 36]	// D.6059, i
	add	x0, x0, 3	// D.6059, D.6059,
	lsl	x0, x0, 3	// D.6059, D.6059,
	ldr	x1, [sp, 8]	// tmp167, x
	add	x0, x1, x0	// D.6057, tmp167, D.6059
	ldrsw	x1, [sp, 36]	// D.6059, i
	add	x1, x1, 3	// D.6059, D.6059,
	lsl	x1, x1, 3	// D.6059, D.6059,
	ldr	x2, [sp, 8]	// tmp168, x
	add	x1, x2, x1	// D.6057, tmp168, D.6059
	ldr	d1, [x1]	// D.6058, *_66
	ldr	d0, [sp, 16]	// tmp169, sa
	fmul	d0, d1, d0	// D.6058, D.6058, tmp169
	str	d0, [x0]	// D.6058, *_62
	ldrsw	x0, [sp, 36]	// D.6059, i
	add	x0, x0, 4	// D.6059, D.6059,
	lsl	x0, x0, 3	// D.6059, D.6059,
	ldr	x1, [sp, 8]	// tmp170, x
	add	x0, x1, x0	// D.6057, tmp170, D.6059
	ldrsw	x1, [sp, 36]	// D.6059, i
	add	x1, x1, 4	// D.6059, D.6059,
	lsl	x1, x1, 3	// D.6059, D.6059,
	ldr	x2, [sp, 8]	// tmp171, x
	add	x1, x2, x1	// D.6057, tmp171, D.6059
	ldr	d1, [x1]	// D.6058, *_77
	ldr	d0, [sp, 16]	// tmp172, sa
	fmul	d0, d1, d0	// D.6058, D.6058, tmp172
	str	d0, [x0]	// D.6058, *_73
	ldr	w0, [sp, 36]	// tmp174, i
	add	w0, w0, 5	// tmp173, tmp174,
	str	w0, [sp, 36]	// tmp173, i
.L102:
	ldr	w1, [sp, 36]	// tmp175, i
	ldr	w0, [sp, 28]	// tmp176, n
	cmp	w1, w0	// tmp175, tmp176
	blt	.L103	//,
	b	.L109	//
.L99:
	ldr	w0, [sp, 24]	// tmp177, incx
	cmp	w0, 0	// tmp177,
	blt	.L104	//,
	str	wzr, [sp, 40]	//, ix
	b	.L105	//
.L104:
	mov	w1, 1	// tmp178,
	ldr	w0, [sp, 28]	// tmp179, n
	sub	w1, w1, w0	// D.6060, tmp178, tmp179
	ldr	w0, [sp, 24]	// tmp181, incx
	mul	w0, w1, w0	// tmp180, D.6060, tmp181
	str	w0, [sp, 40]	// tmp180, ix
.L105:
	str	wzr, [sp, 36]	//, i
	b	.L106	//
.L107:
	ldrsw	x0, [sp, 40]	// D.6056, ix
	lsl	x0, x0, 3	// D.6056, D.6056,
	ldr	x1, [sp, 8]	// tmp182, x
	add	x0, x1, x0	// D.6057, tmp182, D.6056
	ldrsw	x1, [sp, 40]	// D.6056, ix
	lsl	x1, x1, 3	// D.6056, D.6056,
	ldr	x2, [sp, 8]	// tmp183, x
	add	x1, x2, x1	// D.6057, tmp183, D.6056
	ldr	d1, [x1]	// D.6058, *_91
	ldr	d0, [sp, 16]	// tmp184, sa
	fmul	d0, d1, d0	// D.6058, D.6058, tmp184
	str	d0, [x0]	// D.6058, *_88
	ldr	w1, [sp, 40]	// tmp186, ix
	ldr	w0, [sp, 24]	// tmp187, incx
	add	w0, w1, w0	// tmp185, tmp186, tmp187
	str	w0, [sp, 40]	// tmp185, ix
	ldr	w0, [sp, 36]	// tmp189, i
	add	w0, w0, 1	// tmp188, tmp189,
	str	w0, [sp, 36]	// tmp188, i
.L106:
	ldr	w1, [sp, 36]	// tmp190, i
	ldr	w0, [sp, 28]	// tmp191, n
	cmp	w1, w0	// tmp190, tmp191
	blt	.L107	//,
	nop
.L109:
	nop
	add	sp, sp, 48	//,,
	ret
	.size	dscal, .-dscal
	.align	2
	.global	idamax
	.type	idamax, %function
idamax:
	stp	x29, x30, [sp, -64]!	//,,,
	add	x29, sp, 0	//,,
	str	w0, [x29, 28]	// n, n
	str	x1, [x29, 16]	// dx, dx
	str	w2, [x29, 24]	// incx, incx
	str	wzr, [x29, 52]	//, value
	ldr	w0, [x29, 28]	// tmp95, n
	cmp	w0, 0	// tmp95,
	ble	.L111	//,
	ldr	w0, [x29, 24]	// tmp96, incx
	cmp	w0, 0	// tmp96,
	bgt	.L112	//,
.L111:
	ldr	w0, [x29, 52]	// D.6061, value
	b	.L113	//
.L112:
	mov	w0, 1	// tmp97,
	str	w0, [x29, 52]	// tmp97, value
	ldr	w0, [x29, 28]	// tmp98, n
	cmp	w0, 1	// tmp98,
	bne	.L114	//,
	ldr	w0, [x29, 52]	// D.6061, value
	b	.L113	//
.L114:
	ldr	w0, [x29, 24]	// tmp99, incx
	cmp	w0, 1	// tmp99,
	bne	.L115	//,
	ldr	x0, [x29, 16]	// tmp100, dx
	ldr	d0, [x0]	// D.6062, *dx_26(D)
	bl	r8_abs	//
	str	d0, [x29, 56]	//, dmax
	mov	w0, 1	// tmp101,
	str	w0, [x29, 44]	// tmp101, i
	b	.L116	//
.L119:
	ldrsw	x0, [x29, 44]	// D.6063, i
	lsl	x0, x0, 3	// D.6063, D.6063,
	ldr	x1, [x29, 16]	// tmp102, dx
	add	x0, x1, x0	// D.6064, tmp102, D.6063
	ldr	d0, [x0]	// D.6062, *_33
	bl	r8_abs	//
	fmov	d1, d0	// D.6062,
	ldr	d0, [x29, 56]	// tmp103, dmax
	fcmpe	d1, d0	// D.6062, tmp103
	ble	.L117	//,
	ldr	w0, [x29, 44]	// tmp105, i
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [x29, 52]	// tmp104, value
	ldrsw	x0, [x29, 44]	// D.6063, i
	lsl	x0, x0, 3	// D.6063, D.6063,
	ldr	x1, [x29, 16]	// tmp106, dx
	add	x0, x1, x0	// D.6064, tmp106, D.6063
	ldr	d0, [x0]	// D.6062, *_40
	bl	r8_abs	//
	str	d0, [x29, 56]	//, dmax
.L117:
	ldr	w0, [x29, 44]	// tmp108, i
	add	w0, w0, 1	// tmp107, tmp108,
	str	w0, [x29, 44]	// tmp107, i
.L116:
	ldr	w1, [x29, 44]	// tmp109, i
	ldr	w0, [x29, 28]	// tmp110, n
	cmp	w1, w0	// tmp109, tmp110
	blt	.L119	//,
	b	.L120	//
.L115:
	str	wzr, [x29, 48]	//, ix
	ldr	x0, [x29, 16]	// tmp111, dx
	ldr	d0, [x0]	// D.6062, *dx_26(D)
	bl	r8_abs	//
	str	d0, [x29, 56]	//, dmax
	ldr	w1, [x29, 48]	// tmp113, ix
	ldr	w0, [x29, 24]	// tmp114, incx
	add	w0, w1, w0	// tmp112, tmp113, tmp114
	str	w0, [x29, 48]	// tmp112, ix
	mov	w0, 1	// tmp115,
	str	w0, [x29, 44]	// tmp115, i
	b	.L121	//
.L124:
	ldrsw	x0, [x29, 48]	// D.6063, ix
	lsl	x0, x0, 3	// D.6063, D.6063,
	ldr	x1, [x29, 16]	// tmp116, dx
	add	x0, x1, x0	// D.6064, tmp116, D.6063
	ldr	d0, [x0]	// D.6062, *_53
	bl	r8_abs	//
	fmov	d1, d0	// D.6062,
	ldr	d0, [x29, 56]	// tmp117, dmax
	fcmpe	d1, d0	// D.6062, tmp117
	ble	.L122	//,
	ldr	w0, [x29, 44]	// tmp119, i
	add	w0, w0, 1	// tmp118, tmp119,
	str	w0, [x29, 52]	// tmp118, value
	ldrsw	x0, [x29, 48]	// D.6063, ix
	lsl	x0, x0, 3	// D.6063, D.6063,
	ldr	x1, [x29, 16]	// tmp120, dx
	add	x0, x1, x0	// D.6064, tmp120, D.6063
	ldr	d0, [x0]	// D.6062, *_60
	bl	r8_abs	//
	str	d0, [x29, 56]	//, dmax
.L122:
	ldr	w1, [x29, 48]	// tmp122, ix
	ldr	w0, [x29, 24]	// tmp123, incx
	add	w0, w1, w0	// tmp121, tmp122, tmp123
	str	w0, [x29, 48]	// tmp121, ix
	ldr	w0, [x29, 44]	// tmp125, i
	add	w0, w0, 1	// tmp124, tmp125,
	str	w0, [x29, 44]	// tmp124, i
.L121:
	ldr	w1, [x29, 44]	// tmp126, i
	ldr	w0, [x29, 28]	// tmp127, n
	cmp	w1, w0	// tmp126, tmp127
	blt	.L124	//,
.L120:
	ldr	w0, [x29, 52]	// D.6061, value
.L113:
	ldp	x29, x30, [sp], 64	//,,,
	ret
	.size	idamax, .-idamax
	.align	2
	.global	r8_abs
	.type	r8_abs, %function
r8_abs:
	sub	sp, sp, #32	//,,
	str	d0, [sp, 8]	// x, x
	ldr	d0, [sp, 8]	// tmp75, x
	fcmpe	d0, #0.0	// tmp75
	blt	.L133	//,
	ldr	x0, [sp, 8]	// tmp76, x
	str	x0, [sp, 24]	// tmp76, value
	b	.L130	//
.L133:
	ldr	d0, [sp, 8]	// tmp78, x
	fneg	d0, d0	// tmp77, tmp78
	str	d0, [sp, 24]	// tmp77, value
.L130:
	ldr	x0, [sp, 24]	// D.6065, value
	fmov	d0, x0	// <retval>, D.6065
	add	sp, sp, 32	//,,
	ret
	.size	r8_abs, .-r8_abs
	.align	2
	.global	r8_epsilon
	.type	r8_epsilon, %function
r8_epsilon:
	sub	sp, sp, #16	//,,
	fmov	d0, 1.0e+0	// tmp76,
	str	d0, [sp, 8]	// tmp76, r
	b	.L135	//
.L136:
	ldr	d1, [sp, 8]	// tmp78, r
	fmov	d0, 2.0e+0	// tmp79,
	fdiv	d0, d1, d0	// tmp77, tmp78, tmp79
	str	d0, [sp, 8]	// tmp77, r
.L135:
	ldr	d1, [sp, 8]	// tmp80, r
	fmov	d0, 1.0e+0	// tmp81,
	fadd	d1, d1, d0	// D.6066, tmp80, tmp81
	fmov	d0, 1.0e+0	// tmp82,
	fcmpe	d1, d0	// D.6066, tmp82
	bgt	.L136	//,
	ldr	d0, [sp, 8]	// tmp83, r
	fadd	d0, d0, d0	// tmp84, tmp83, tmp83
	str	d0, [sp, 8]	// tmp84, r
	ldr	x0, [sp, 8]	// D.6066, r
	fmov	d0, x0	// <retval>, D.6066
	add	sp, sp, 16	//,,
	ret
	.size	r8_epsilon, .-r8_epsilon
	.align	2
	.global	r8_max
	.type	r8_max, %function
r8_max:
	sub	sp, sp, #32	//,,
	str	d0, [sp, 8]	// x, x
	str	d1, [sp]	// y, y
	ldr	d1, [sp]	// tmp75, y
	ldr	d0, [sp, 8]	// tmp76, x
	fcmpe	d1, d0	// tmp75, tmp76
	bpl	.L144	//,
	ldr	x0, [sp, 8]	// tmp77, x
	str	x0, [sp, 24]	// tmp77, value
	b	.L141	//
.L144:
	ldr	x0, [sp]	// tmp78, y
	str	x0, [sp, 24]	// tmp78, value
.L141:
	ldr	x0, [sp, 24]	// D.6067, value
	fmov	d0, x0	// <retval>, D.6067
	add	sp, sp, 32	//,,
	ret
	.size	r8_max, .-r8_max
	.align	2
	.global	r8_random
	.type	r8_random, %function
r8_random:
	sub	sp, sp, #80	//,,
	str	x0, [sp, 8]	// iseed, iseed
	mov	w0, 4096	// tmp125,
	str	w0, [sp, 20]	// tmp125, ipw2
	mov	w0, 494	// tmp126,
	str	w0, [sp, 24]	// tmp126, m1
	mov	w0, 322	// tmp127,
	str	w0, [sp, 28]	// tmp127, m2
	mov	w0, 2508	// tmp128,
	str	w0, [sp, 32]	// tmp128, m3
	mov	w0, 2549	// tmp129,
	str	w0, [sp, 36]	// tmp129, m4
	fmov	d0, 1.0e+0	// tmp130,
	str	d0, [sp, 56]	// tmp130, one
	ldr	x0, .LC20	// tmp131,
	str	x0, [sp, 64]	// tmp131, r
	ldr	x0, [sp, 8]	// tmp132, iseed
	add	x0, x0, 12	// D.6068, tmp132,
	ldr	w1, [x0]	// D.6069, *_9
	ldr	w0, [sp, 36]	// tmp134, m4
	mul	w0, w1, w0	// tmp133, D.6069, tmp134
	str	w0, [sp, 40]	// tmp133, it4
	ldr	w1, [sp, 40]	// tmp137, it4
	ldr	w0, [sp, 20]	// tmp138, ipw2
	sdiv	w0, w1, w0	// tmp136, tmp137, tmp138
	str	w0, [sp, 44]	// tmp136, it3
	ldr	w1, [sp, 20]	// tmp139, ipw2
	ldr	w0, [sp, 44]	// tmp140, it3
	mul	w0, w1, w0	// D.6069, tmp139, tmp140
	ldr	w1, [sp, 40]	// tmp142, it4
	sub	w0, w1, w0	// tmp141, tmp142, D.6069
	str	w0, [sp, 40]	// tmp141, it4
	ldr	x0, [sp, 8]	// tmp143, iseed
	add	x0, x0, 8	// D.6068, tmp143,
	ldr	w1, [x0]	// D.6069, *_16
	ldr	w0, [sp, 36]	// tmp144, m4
	mul	w1, w1, w0	// D.6069, D.6069, tmp144
	ldr	w0, [sp, 44]	// tmp145, it3
	add	w1, w1, w0	// D.6069, D.6069, tmp145
	ldr	x0, [sp, 8]	// tmp146, iseed
	add	x0, x0, 12	// D.6068, tmp146,
	ldr	w2, [x0]	// D.6069, *_20
	ldr	w0, [sp, 32]	// tmp147, m3
	mul	w0, w2, w0	// D.6069, D.6069, tmp147
	add	w0, w1, w0	// tmp148, D.6069, D.6069
	str	w0, [sp, 44]	// tmp148, it3
	ldr	w1, [sp, 44]	// tmp151, it3
	ldr	w0, [sp, 20]	// tmp152, ipw2
	sdiv	w0, w1, w0	// tmp150, tmp151, tmp152
	str	w0, [sp, 48]	// tmp150, it2
	ldr	w1, [sp, 20]	// tmp153, ipw2
	ldr	w0, [sp, 48]	// tmp154, it2
	mul	w0, w1, w0	// D.6069, tmp153, tmp154
	ldr	w1, [sp, 44]	// tmp156, it3
	sub	w0, w1, w0	// tmp155, tmp156, D.6069
	str	w0, [sp, 44]	// tmp155, it3
	ldr	x0, [sp, 8]	// tmp157, iseed
	add	x0, x0, 4	// D.6068, tmp157,
	ldr	w1, [x0]	// D.6069, *_27
	ldr	w0, [sp, 36]	// tmp158, m4
	mul	w1, w1, w0	// D.6069, D.6069, tmp158
	ldr	w0, [sp, 48]	// tmp159, it2
	add	w1, w1, w0	// D.6069, D.6069, tmp159
	ldr	x0, [sp, 8]	// tmp160, iseed
	add	x0, x0, 8	// D.6068, tmp160,
	ldr	w2, [x0]	// D.6069, *_31
	ldr	w0, [sp, 32]	// tmp161, m3
	mul	w0, w2, w0	// D.6069, D.6069, tmp161
	add	w1, w1, w0	// D.6069, D.6069, D.6069
	ldr	x0, [sp, 8]	// tmp162, iseed
	add	x0, x0, 12	// D.6068, tmp162,
	ldr	w2, [x0]	// D.6069, *_35
	ldr	w0, [sp, 28]	// tmp163, m2
	mul	w0, w2, w0	// D.6069, D.6069, tmp163
	add	w0, w1, w0	// tmp164, D.6069, D.6069
	str	w0, [sp, 48]	// tmp164, it2
	ldr	w1, [sp, 48]	// tmp167, it2
	ldr	w0, [sp, 20]	// tmp168, ipw2
	sdiv	w0, w1, w0	// tmp166, tmp167, tmp168
	str	w0, [sp, 52]	// tmp166, it1
	ldr	w1, [sp, 20]	// tmp169, ipw2
	ldr	w0, [sp, 52]	// tmp170, it1
	mul	w0, w1, w0	// D.6069, tmp169, tmp170
	ldr	w1, [sp, 48]	// tmp172, it2
	sub	w0, w1, w0	// tmp171, tmp172, D.6069
	str	w0, [sp, 48]	// tmp171, it2
	ldr	x0, [sp, 8]	// tmp173, iseed
	ldr	w1, [x0]	// D.6069, *iseed_8(D)
	ldr	w0, [sp, 36]	// tmp174, m4
	mul	w1, w1, w0	// D.6069, D.6069, tmp174
	ldr	w0, [sp, 52]	// tmp175, it1
	add	w1, w1, w0	// D.6069, D.6069, tmp175
	ldr	x0, [sp, 8]	// tmp176, iseed
	add	x0, x0, 4	// D.6068, tmp176,
	ldr	w2, [x0]	// D.6069, *_45
	ldr	w0, [sp, 32]	// tmp177, m3
	mul	w0, w2, w0	// D.6069, D.6069, tmp177
	add	w1, w1, w0	// D.6069, D.6069, D.6069
	ldr	x0, [sp, 8]	// tmp178, iseed
	add	x0, x0, 8	// D.6068, tmp178,
	ldr	w2, [x0]	// D.6069, *_49
	ldr	w0, [sp, 28]	// tmp179, m2
	mul	w0, w2, w0	// D.6069, D.6069, tmp179
	add	w1, w1, w0	// D.6069, D.6069, D.6069
	ldr	x0, [sp, 8]	// tmp180, iseed
	add	x0, x0, 12	// D.6068, tmp180,
	ldr	w2, [x0]	// D.6069, *_53
	ldr	w0, [sp, 24]	// tmp181, m1
	mul	w0, w2, w0	// D.6069, D.6069, tmp181
	add	w0, w1, w0	// tmp182, D.6069, D.6069
	str	w0, [sp, 52]	// tmp182, it1
	ldr	w0, [sp, 52]	// tmp184, it1
	ldr	w1, [sp, 20]	// tmp198, ipw2
	sdiv	w2, w0, w1	// tmp197, tmp184, tmp198
	ldr	w1, [sp, 20]	// tmp200, ipw2
	mul	w1, w2, w1	// tmp199, tmp197, tmp200
	sub	w0, w0, w1	// tmp201, tmp184, tmp199
	str	w0, [sp, 52]	// tmp201, it1
	ldr	x0, [sp, 8]	// tmp202, iseed
	ldr	w1, [sp, 52]	// tmp203, it1
	str	w1, [x0]	// tmp203, *iseed_8(D)
	ldr	x0, [sp, 8]	// tmp204, iseed
	add	x0, x0, 4	// D.6068, tmp204,
	ldr	w1, [sp, 48]	// tmp205, it2
	str	w1, [x0]	// tmp205, *_59
	ldr	x0, [sp, 8]	// tmp206, iseed
	add	x0, x0, 8	// D.6068, tmp206,
	ldr	w1, [sp, 44]	// tmp207, it3
	str	w1, [x0]	// tmp207, *_61
	ldr	x0, [sp, 8]	// tmp208, iseed
	add	x0, x0, 12	// D.6068, tmp208,
	ldr	w1, [sp, 40]	// tmp209, it4
	str	w1, [x0]	// tmp209, *_63
	ldr	w0, [sp, 52]	// tmp210, it1
	scvtf	d1, w0	// D.6070, tmp210
	ldr	w0, [sp, 48]	// tmp211, it2
	scvtf	d2, w0	// D.6070, tmp211
	ldr	w0, [sp, 44]	// tmp212, it3
	scvtf	d3, w0	// D.6070, tmp212
	ldr	w0, [sp, 40]	// tmp213, it4
	scvtf	d4, w0	// D.6070, tmp213
	ldr	d0, [sp, 64]	// tmp214, r
	fmul	d0, d4, d0	// D.6070, D.6070, tmp214
	fadd	d3, d3, d0	// D.6070, D.6070, D.6070
	ldr	d0, [sp, 64]	// tmp215, r
	fmul	d0, d3, d0	// D.6070, D.6070, tmp215
	fadd	d2, d2, d0	// D.6070, D.6070, D.6070
	ldr	d0, [sp, 64]	// tmp216, r
	fmul	d0, d2, d0	// D.6070, D.6070, tmp216
	fadd	d1, d1, d0	// D.6070, D.6070, D.6070
	ldr	d0, [sp, 64]	// tmp218, r
	fmul	d0, d1, d0	// tmp217, D.6070, tmp218
	str	d0, [sp, 72]	// tmp217, value
	ldr	x0, [sp, 72]	// D.6070, value
	fmov	d0, x0	// <retval>, D.6070
	add	sp, sp, 80	//,,
	ret
	.size	r8_random, .-r8_random
	.align	3
.LC20:
	.word	0
	.word	1060110336
	.align	2
	.global	r8mat_gen
	.type	r8mat_gen, %function
r8mat_gen:
	stp	x29, x30, [sp, -96]!	//,,,
	add	x29, sp, 0	//,,
	str	x19, [sp, 16]	//,
	str	w0, [x29, 44]	// lda, lda
	str	w1, [x29, 40]	// n, n
	adrp	x0, __stack_chk_guard	// tmp88,
	add	x0, x0, :lo12:__stack_chk_guard	// tmp87, tmp88,
	ldr	x1, [x0]	// tmp116, __stack_chk_guard
	str	x1, [x29, 88]	// tmp116, D.6076
	mov	x1,0	// tmp116
	mov	w0, 1	// tmp89,
	str	w0, [x29, 72]	// tmp89, init
	mov	w0, 2	// tmp90,
	str	w0, [x29, 76]	// tmp90, init
	mov	w0, 3	// tmp91,
	str	w0, [x29, 80]	// tmp91, init
	mov	w0, 1325	// tmp92,
	str	w0, [x29, 84]	// tmp92, init
	ldr	w1, [x29, 44]	// tmp93, lda
	ldr	w0, [x29, 40]	// tmp94, n
	mul	w0, w1, w0	// D.6072, tmp93, tmp94
	sxtw	x0, w0	// D.6073, D.6072
	lsl	x0, x0, 3	// D.6073, D.6073,
	bl	malloc	//
	str	x0, [x29, 64]	// tmp95, a
	mov	w0, 1	// tmp96,
	str	w0, [x29, 60]	// tmp96, j
	b	.L148	//
.L151:
	mov	w0, 1	// tmp97,
	str	w0, [x29, 56]	// tmp97, i
	b	.L149	//
.L150:
	ldr	w0, [x29, 56]	// tmp98, i
	sub	w1, w0, #1	// D.6072, tmp98,
	ldr	w0, [x29, 60]	// tmp99, j
	sub	w2, w0, #1	// D.6072, tmp99,
	ldr	w0, [x29, 44]	// tmp100, lda
	mul	w0, w2, w0	// D.6072, D.6072, tmp100
	add	w0, w1, w0	// D.6072, D.6072, D.6072
	sxtw	x0, w0	// D.6073, D.6072
	lsl	x0, x0, 3	// D.6073, D.6073,
	ldr	x1, [x29, 64]	// tmp101, a
	add	x19, x1, x0	// D.6074, tmp101, D.6073
	add	x0, x29, 72	// tmp102,,
	bl	r8_random	//
	fmov	d1, d0	// D.6075,
	fmov	d0, 5.0e-1	// tmp103,
	fsub	d0, d1, d0	// D.6075, D.6075, tmp103
	str	d0, [x19]	// D.6075, *_25
	ldr	w0, [x29, 56]	// tmp105, i
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [x29, 56]	// tmp104, i
.L149:
	ldr	w1, [x29, 56]	// tmp106, i
	ldr	w0, [x29, 40]	// tmp107, n
	cmp	w1, w0	// tmp106, tmp107
	ble	.L150	//,
	ldr	w0, [x29, 60]	// tmp109, j
	add	w0, w0, 1	// tmp108, tmp109,
	str	w0, [x29, 60]	// tmp108, j
.L148:
	ldr	w1, [x29, 60]	// tmp110, j
	ldr	w0, [x29, 40]	// tmp111, n
	cmp	w1, w0	// tmp110, tmp111
	ble	.L151	//,
	ldr	x0, [x29, 64]	// D.6074, a
	adrp	x1, __stack_chk_guard	// tmp114,
	add	x1, x1, :lo12:__stack_chk_guard	// tmp113, tmp114,
	ldr	x2, [x29, 88]	// tmp117, D.6076
	ldr	x1, [x1]	// tmp115, __stack_chk_guard
	eor	x1, x2, x1	// tmp115, tmp117
	cmp	x1, 0	// tmp115,
	beq	.L153	//,
	bl	__stack_chk_fail	//
.L153:
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	ret
	.size	r8mat_gen, .-r8mat_gen
	.section	.rodata
	.align	3
.LC21:
	.string	"%d %B %Y %I:%M:%S %p"
	.text
	.align	2
	.global	timestamp
	.type	timestamp, %function
timestamp:
	stp	x29, x30, [sp, -48]!	//,,,
	add	x29, sp, 0	//,,
	adrp	x0, __stack_chk_guard	// tmp75,
	add	x0, x0, :lo12:__stack_chk_guard	// tmp74, tmp75,
	ldr	x1, [x0]	// tmp86, __stack_chk_guard
	str	x1, [x29, 40]	// tmp86, D.6078
	mov	x1,0	// tmp86
	mov	x0, 0	//,
	bl	time	//
	str	x0, [x29, 16]	// D.6077, now
	add	x0, x29, 16	// tmp76,,
	bl	localtime	//
	str	x0, [x29, 24]	//, tm
	adrp	x0, .LC21	// tmp78,
	add	x1, x0, :lo12:.LC21	// tmp77, tmp78,
	adrp	x0, time_buffer.5212	// tmp80,
	add	x0, x0, :lo12:time_buffer.5212	// tmp79, tmp80,
	ldr	x3, [x29, 24]	//, tm
	mov	x2, x1	//, tmp77
	mov	x1, 40	//,
	bl	strftime	//
	str	x0, [x29, 32]	//, len
	adrp	x0, time_buffer.5212	// tmp82,
	add	x0, x0, :lo12:time_buffer.5212	// tmp81, tmp82,
	bl	puts	//
	nop
	adrp	x0, __stack_chk_guard	// tmp84,
	add	x0, x0, :lo12:__stack_chk_guard	// tmp83, tmp84,
	ldr	x1, [x29, 40]	// tmp87, D.6078
	ldr	x0, [x0]	// tmp85, __stack_chk_guard
	eor	x0, x1, x0	// tmp85, tmp87
	cmp	x0, 0	// tmp85,
	beq	.L156	//,
	bl	__stack_chk_fail	//
.L156:
	ldp	x29, x30, [sp], 48	//,,,
	ret
	.size	timestamp, .-timestamp
	.local	time_buffer.5212
	.comm	time_buffer.5212,40,8
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
