	.data 
	
mot : 	.dword 13 , 16

	.text
	la t0, mot
	ld t1, 0(t0)
	ld t2, 4(t0)
	
	ebreak