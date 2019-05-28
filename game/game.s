.text

	.equ SWI_SETSEG8, 0x201
	Message: .asciz "Hello world\n"
b start

start:	mov r0,#0
	mov r1,#0
	ldr r2,=Message
	swi 0x204

	swi 0x202
	cmp r0,#0x02
	beq left
	bal right
left:	swi 0x206
right:	b start
	
end: b end
	
