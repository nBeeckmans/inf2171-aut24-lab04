	.eqv PrintString	4
	.eqv ReadString  	8
	.eqv Exit		10
	.eqv PrintChar		11
	.eqv ReadInt		5
	.eqv PrintInt 		1
	.eqv Size 80 
	.data 
buffer : .space 80 
	.text
	
	li a7, ReadString
	la a0, buffer
	li a1, Size
	ecall
	
	# bonjour dans buffer 
	lbu t0, 0(a0) 
	mv s0, a0 
mini_strlen: 
	beqz t0, leave_mstr
	addi s0, s0, 1 
	lbu t0, 0(s0) 
	j mini_strlen 
leave_mstr: 
	# s0 -> pointeur sur bonjour'\0'
	li a7, PrintChar
	la s1, buffer
do_while : 
	addi s0, s0, -1 
	lbu a0,0(s0)
	ecall 
	beq s1, s0, end_dw
	j do_while
end_dw:
	
	
	li a7, Exit
	ecall 