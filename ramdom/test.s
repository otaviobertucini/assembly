.data
addr: 	.word 1000

.text
entry: b inicio

inicio:
	
	mov r0, #0x1000
	mov r3, #1
	str r3, [r0]
	add r0, r0, #4
	mov r3, #0
	str r3, [r0]
	add r0, r0, #4
	mov r3, #1
	str r3, [r0]
	mov r0, #0x1000
	ldr r1, [r0]
	add r0, r0, #4
	ldr r2, [r0]
	add r0, r0, #4
	ldr r4, [r0]
	add r0, r0, #4
