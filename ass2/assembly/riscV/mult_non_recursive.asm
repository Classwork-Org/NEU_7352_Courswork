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
	addi sp, sp, -32
	sw ra, 28(sp)
	sw s0, 24(sp)
	addi s0, sp, 32
	li a1, 3
	li a2, -255
	sw a1, -12(s0)
	sw a2, -16(s0)
	call product
