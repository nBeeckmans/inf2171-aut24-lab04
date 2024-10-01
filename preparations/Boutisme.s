
	## Q2 
	.text
	la s0, hello # 10010000
	la s1, world # 10010000 + 4 * 2 (half == 2 octets)
	ebreak 
		
	.data
	.eqv grains, 0xCAFE
hello:
	.half 42, -2, -0x0A, grains
world:
	.byte '*' 
	.word 0x1EE7C0DE
	
	## Q1 
	# de haute en bas 
	# -2, 42   		| [[   -2   ][   42   ]]  	
	# CAFE, -0A  		| [[  CAFE  ][  -0A   ]]		
	# 0, 0, 0, '*' 		| [[ 0 ][ 0 ][ 0 ]['*']]
	####
	# basically ce qu'on ecrit et ce qui se passe en memoire 
	# ne sont pas egaux a cause du boutisme (petit sur r-v par defaut)
	
	
	## 
	# Leetcode est ecrit de la bonne maniere ! 
	
	
