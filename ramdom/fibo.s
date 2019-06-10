; Ex 36 - s�rie de Fibonacci em um array 
.section .data

array:
	.space 120			
.section .text

		ldr r0, =array		
		mov r1, #1
		mov r2, #1
		str r1, [r0], #4	
								
		str r2, [r0], #4	
		mov r4, #28		
loop:					
		add r3, r1, r2
		mov r1, r2
		mov r2, r3
		str r3, [r0], #4	
		sub r4, r4, #1
		cmp r4, #0
		bne loop			
fim:
		b fim
		

