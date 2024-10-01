	.text 
	## avec 64 bits ! 
	la s0, d
	ld s1, 0(s0)  # prends la valeur complete (0x0123456...EF) (bonne ordre)
	lb s2, 0(s0)  # byte toute a droite (+  garder le signe) 
	lb s3, 1(s0)  # byte toute a droite -1 (cd + garder le signe) 
	lbu s4, 2(s0) # byte toute a droite -2  (ab + pas garder le signe) 
	lw s5, 0(s0)  # 789ABCDEF + signe 
	lhu s6, 0(s0) # CDEF pas de signes
	ebreak 
	lhu s6, 2(s0) # 89AB pas de signes (alignement correct !)
	lhu s6, 4(s0) # 6->0123 4->4567  2->89ab 0->cdef !! alignement !! 
	lwu s7, 2(s0) # pb d'alignements

	# Pour du 64 bits
	# byte [] [] [] [] [] [] [] []
	# half [   ] [   ] [   ] [   ]
	# word [         ] [         ]
	# dwrd [                     ] 
	# aligments possibles pour byte -> 0 a 7 
	# aligments possibles pour half -> 0, 2, 4, 6 
	# aligments possbiles pour word -> 0, 4
.data
d:	.dword 0x0123456789ABCDEF
.text
