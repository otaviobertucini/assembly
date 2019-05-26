@Code with the ISA given by the professor. 

	mov r4, 8
	mov r5, r0
	mov r0, 0
comp:	ld r2, [r5], 8
	ld r3, [r1], 8
	sub r2, r3
	bz aad
	bmz isn		@case the bytes are not equal, go to end with r0 = 1
aad:	add r5, r4
	add r1, r4
	sub r3, r0	
	bz iss		@case last byte equals zero, go to end with r0 = 0
	bmz comp
isn:	mov r0, 1 
iis:	mov r0, 0
		

