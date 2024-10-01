	.eqv Ecrire 1
	.eqv Exit 10
	.eqv nombre_element 10 
	.eqv taille_element  4
	
	la s0, tab 	# pointeur sur premier element (on va le deplacer) 
	li s1, nombre_element  
	
	li t0, 0 	# increment
	lw a0, 0(s0) 	# premier element dans a0 
	
loop :  
	beq t0, s1, fin_loop 		## if (t0 == nombre elemens) on sort;
	addi s0, s0, taille_element	## on decale le pointeur vers la droite
	addi t0, t0, 1 			## t0++
	lw t1, 0(s0) 			## on lit prochain element dans t1 
	blt t1, a0, passer_update_max	## si t1 < a0 alors on met PAS a jour le max
	mv a0, t1
passer_update_max: 
	j loop
fin_loop:
	li a7, Ecrire 
	ecall 
	
	li a7, Exit
	ecall
	
.data
tab: .word 10, 10, -6, 20, 1, 1, 8, -800, -2, 800

