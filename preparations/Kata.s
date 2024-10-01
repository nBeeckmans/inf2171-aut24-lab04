	.eqv LireInt    5
	.eqv EcrireInt  1
	.eqv Exit 10 
## debut programme
	.text
	li t0, 0 
	li a7, LireInt
	ecall 
	
	la s0, n1
	la s1, n2 
	
	sw a0, 0(s0)
	
	ecall 
	sw a0, 0(s1)
	
	li a7, EcrireInt 
	lw a0, 0(s1) 
	ecall 
	
	lw a0, 0(s0)
	ecall 
	
	li a7, Exit
	ecall
		
	.data
n1:	.word 0		
n2:	.word 0	
