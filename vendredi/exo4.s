	.data
	
	# Appels système utilisés 
	.eqv PrintInt, 1
	.eqv PrintString, 4
	.eqv Exit, 10
ligne_repetee_debut : 	.string " bottles of beer on the wall, "
ligne_repetee_milieu :  .string " bottles of beer.\nTake one down and pass it around, "
ligne_repetee_fin : 	.string " bottles of beer on the wall.\n\n"
fin_texte :  		.string "1 bottle of beer on the wall.\n\n1 bottle of beer on the wall, 1 bottle of beer.\nTake one down and pass it around, no more bottles of beer on the wall.\n\nNo more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"

	.text
	li s0, 99	# Nombre de bouteille sur le mur
	li s1, 1 
	
while : 
	
	li a7, PrintInt 
	mv a0, s0 
	ecall 
	
	li a7, PrintString
	la a0, ligne_repetee_debut
	ecall
	
	li a7, PrintInt 
	mv a0, s0 
	ecall 
	
	li a7, PrintString
	la a0, ligne_repetee_milieu
	ecall
	
	addi s0, s0, -1
	beq s0, s1, end_while
	
	li a7, PrintInt 
	mv a0, s0 
	ecall 
	
	li a7, PrintString
	la a0, ligne_repetee_fin 
	ecall 
	
	j while 
end_while: 

	li a7, PrintString
	la a0, fin_texte
	ecall
	
	li a7, Exit 
	ecall