.text
b	inicio

inicio:
	mov r0, #8
	mov r1, #0
	mov r3, #1
	
loop:	add r3, r3, #1
	
div:	mov r4, r0
	sub r4, r4, r3
	cmp r4, #0
	bne div
	
	cmp r3, r0
	beq loop	

ipri:	mov r1, #1
fim:	b fim
