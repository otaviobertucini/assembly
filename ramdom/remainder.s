@Code with the ISA given by the professor. 

div: 	sub r0, r1
	bz end
	bmz div
	add r0, r1	

end: mov r4, 0		@just to fill the label
	
