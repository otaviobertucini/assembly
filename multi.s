.text
b	inicio
inicio:
	mov r0, #8
	mov r1, #4
	mov r3, #0
	
calculo:	sub r1, r1, #1
		add r3, r3, r0
		cmp r1, #0
		bne calculo
fim:	b fim
