; Exemplo -> 
; programa em assembly ARM7TDMI para multiplicar os números contidos em r0 e r1 e guardar o resultado em r2

.text
inicio:		mov r0, #7		; constante 7
				mov r1, #2		; constante 2
				mov r2, #0		; para acumular a soma
loop:		cmp r1, #0		; o r1 já iniciou com zero?
				beq fim			; pula para o fim
				add r2, r2, r0		; soma r0 no r2
				sub r1, r1, #1		; somou mais uma vez, decrementa
				b loop
fim:			b fim				; r2 deve conter o resultado da multiplicação