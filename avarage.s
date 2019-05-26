@Code with the ISA given by the professor. 

	mov r3, r1	@counter
	mov r4, 1
	mov r5, 0	@sum
	mov r7, 32	@adder
	mov r2, 0	@result
sum: 	ld r6, [r0], 32
	add r0, r7
	add r5, r6
	sub r3, r4
	bz div		@if sub == 0, go to next step
	bmz sum
div:	add r2, r4
	sub r5, r1	
	bmz div
	bz avr
	sub r2, r4
avr:	mov r3, r1	@just to fill the label
	
	
