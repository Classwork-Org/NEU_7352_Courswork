main:
	li a0,0 
	li a1,0 
	li a2,0 
	li a3,0x63
loop:
	bgt a2,a3,done
	add a0,a2,zero
	add a1,a1,a0
	addi a2,a2,0x1
	j loop
done:
