	.eqv PrintString	4
	.eqv ReadString  	8
	.eqv Exit		10
	.eqv PrintChar		11
	.eqv ReadInt		5
	.eqv PrintInt 		1
	
	.data 
n1:	.word 0		# premier nombre (32 bits signé)
n2:	.word 0		# second nombre (32 bits signé)
	.text
	
	li a7, ReadInt 
	ecall 
	# a0 -> il ya une valeur 
	
	la s0, n1 
	sw a0, 0(s0)
	
	ecall 
	# a0 -> il ya une valeur 
	
	la s0, n2
	sw a0, 0(s0)
	
	lw a0, 0(s0)
	li a7, PrintInt 
	
	ecall # IMPRIME  n2 a utilisateur
	
	la s0, n1 
	
	lw a0, 0(s0) 
	ecall
	
	li a7, Exit
	ecall 