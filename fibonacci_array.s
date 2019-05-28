@Code with the ISA given by the professor. 

	mov r1, 0
	mov r2, 1
	mov r3, 8
	st r1, [r0], 8
	add r0, r3
	st r2, [r0], 8	
	add r0, r3
	mov r6, 1
loop:	mov r5, r2
	add r1, r2
	st r1, [r0], 8
	mov r2, r1
	mov r1, r5	
	add r0, r3
	sub r7, r6
	bz end
	bmz loop
end: 	mov r1, 0	@dummy command
