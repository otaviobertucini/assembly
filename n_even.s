@Code with the ISA given by the professor. 

	mov r2, 0
	mov r4, 32
	mov r5, 1
	mov r6, 0
evn: 	ld r3, [r0], 32	
	add r0, r4
	and r3, r5	@check if is even
	sub r3, r6	@if == 0, number is even. else is odd
	bz acr
	bmz dec
acr:	add r2, r5
dec:	sub r1, r5
	bz end
	bmz even
end: 	mov r0, 1	@dummy command
