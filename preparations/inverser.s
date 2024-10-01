	.data 
	.eqv 	Lire 		8
	.eqv 	Ecrire		11	
	.eqv 	Exit 		10 
	.eqv   	Espace_reserve	80
String:
	.space 	Espace_reserve
	.text 
	
	la a0, String			 	# adresse
	li a1, Espace_reserve		# Espace max
	li a7, Lire 		
		
	ecall
	
## proche de strlen de sceance passee ! 

	la s0, String
	lbu s1, 0(s0)
loop_recherche_fin : 
	beqz s1,fin_recherche_fin
	addi s0, s0, 1 
	lb s1, 0(s0)	
	j loop_recherche_fin 
fin_recherche_fin : 

## do while() -> 

	la s2, String
	li a7, Ecrire 

loop_afficher : 				#
	addi s0, s0, -1
	lbu a0, 0(s0)
	ecall 
	beq s0, s2, fin_afficher
	j loop_afficher 
fin_afficher :
	
	li a7, Exit
	ecall