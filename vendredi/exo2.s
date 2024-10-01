	.eqv grains, 0xCAFE
	.data
hello:
	.half 42, -2, -0x0A, grains
world:
	.byte '*' 
salut: 
	.word 0x1EE7C0DE

	.text
	ebreak 
	la s0, hello # 10010000
	la s1, world # 10010008
	la s2, salut # 1001000c
	ebreak