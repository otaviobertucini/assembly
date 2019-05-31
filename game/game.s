.text

	.equ SWI_SETSEG8, 0x201
	M1: .asciz "Mensagem esq\n"
	M2: .asciz "Mensagem dir\n"
b start
	mov r6, #0
	mov r0, #3
	mov r5, #0	

start:	mov r1, #0
	mov r0, r5
	mov r2, #'#
	swi 0x207
	
	swi 0x202
	cmp r0, #1	
	beq left
	cmp r0, #2
	beq right
	bal comp		

left:	mov r7, #0
	ldr r2, =M1
	mov r0, #4
	mov r1, #1
	swi 0x204
	b comp
right:	mov r7, #1
	ldr r2, =M2
	mov r0, #4
	mov r1, #1
	swi 0x204

comp:	cmp r6, #0
	add r5, r5, #1
	beq start
	
end: b end
	
