.data
d:	.dword 0x0123456789ABCDEF
.text
	la s0, d
	ld s1, 0(s0) # mot complet 
	lb s2, 0(s0) # ef, 0123
	lb s3, 1(s0) # ffff...ffcd
	lbu s4, 2(s0)# 0000.. 00ab
	lw s5, 0(s0) # FFFF...89ABCDEF
	lhu s6, 7(s0) # 0123, 4567, 89AB 
	lwu s7, 2(s0)