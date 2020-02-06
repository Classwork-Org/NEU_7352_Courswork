product:
	addi sp, sp, -8
	sw ra, 4(sp)
	sw a2, 0(sp)
	beq a2,zero,.ret
	beq a1,zero,.ret
	blt a2,zero,.inc
	addi a2, a2, -1
	j .unroll
.inc:
	addi a2, a2, 1
.unroll:
	call product
	lw ra, 4(sp)
	lw a2, 0(sp)
	blt a2,zero,.neg
	add a0, a0, a1
	j .rollup
.neg:
	not t0,a1
	addi t0,t0,1
	add a0,a0,t0
.rollup:
	addi sp,sp, 8
	jr ra
.ret:
	li a0,0
	lw ra, 28(sp)
	addi sp,sp,8
	jr ra

main:
	addi sp, sp, -12
	
	li a1, 5
	li a2, 5

	sw ra, 8(sp)
	sw a1, 4(sp)
	sw a2, 0(sp)
	li a0, 0
	call product
	lw ra, 8(sp)
	lw a1, 4(sp)
	lw a2, 0(sp)
	addi sp, sp, 12
	jr ra