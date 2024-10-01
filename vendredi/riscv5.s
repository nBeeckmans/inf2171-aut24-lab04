	.eqv PrintString	4
	.eqv ReadString  	8
	.eqv Exit		10
	.eqv PrintChar		11
	.eqv ReadInt		5
	.eqv PrintInt 		1
	
	.data 
tab: 	.word 10, 10, -6, 20, 1, 1, 8, 800, -800, -2, 10000
	.text
	
	li s1, 9 
	la s0, tab 
	lw a0, 0(s0) ## a0 == max 
	li t1, 0 
	
for: 
	beq t1, s1, fin_for
	addi s0, s0, 4 
	lw t0, 0(s0)
	blt t0, a0, passer_remplacement_max
	mv a0, t0 
passer_remplacement_max: 
	addi t1, t1, 1 
	j for 
fin_for: 

	li a7, PrintInt 
	ecall 
	
	li a7, Exit 
	ecall 	
	