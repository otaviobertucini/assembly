.text
b	inicio
.equ N1, 1	@ constante
.equ N2, 1	@ constante
inicio:
	ldr r0, =N1
	ldr r1, =N2
	mov r3, #0
	
calculo:	add r3, r0, r1
		mov r1, r0
		mov r0, r3
		cmp r3, #5
		bgt calculo				@ bgt -> pule se for maior que				
		beq	fim
		add r0, r0, r1
fim:		b fim
