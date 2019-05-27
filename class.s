@Code with the ISA given by the professor. 

	mov r3, 0
	mov r4, 8
	mov r6, 2

med:	ld r5, [r0], 8
	add r0, r4	@increment index
	mov r7, 60
	sub r5, r7	
	bz con
	bmz con

	mov r4, 1
	sub r2, r4
	mov r4, 8
	bz end
	bmz med

con:	ld r5, [r1], 8
	add r1, r4	@increment index
	mov r7, 75
	sub r5, r7
	bz add
	bmz add

	mov r4, 1
	sub r2, r4
	mov r4, 8
	bz end
	bmz med

add:	mov r4, 1
	add r0, r4
	sub r2, r4
	mov r4, 8
	bz end
	bmz med
end:	mov r0, 0	@dummy command

