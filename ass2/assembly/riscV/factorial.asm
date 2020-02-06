factorial:
	addi sp, sp, -8
	sw ra, 4(sp)
	sw a1, 0(sp)
	beq a1,zero,.ret0
	li t0,1
	beq a1, t0, .ret1
	addi a1,a1,-1
	call factorial
	lw a1,0(sp)
	mv a2,a0
	li a0, 0
	call product
	j .roll
.ret1:
	li a0, 1
	j .roll
.ret0:
	li a0, 0
.roll:
	lw ra, 4(sp)
	addi sp,sp,8
	jr ra

product:
	beq a1, zero, .done
	beq a2, zero, .done
	blt a2,zero,.neg
.pos:
	addi t0, zero, -1
	j .compute
.neg:
	addi t0, zero, 1
	not a1,a1
	addi a1,a1,1
.compute:
	add a0, a0, a1
	add a2, a2, t0
	bne a2, zero, .compute
.done:
	jr ra

main:
	addi sp, sp, -8
	sw ra, 4(sp)
	li a1, 8
	call factorial
	nop