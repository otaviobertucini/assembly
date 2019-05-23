@ Exercício de assembly ARM7TDMI:

@ Implementar código que calcula o resto da divisão inteira 
@ dos valores de 32 bits armazenados em R0 e R1 
@ e armazena o resultado em R0.

.text
b	inicio
.equ N1, 20	@ constante
.equ N2, 8	@ constante
inicio:
	ldr r0, =N1
	ldr r1, =N2
	
calculo:	sub r0, r0, r1
				cmp r0, #0
				bgt calculo				@ bgt -> pule se for maior que
				cmp r0, #0				@ se zerou, a divisão é exata
				beq	fim
				add r0, r0, r1
fim:			b fim				 
								
	
	
