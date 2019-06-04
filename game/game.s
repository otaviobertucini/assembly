.text
	M1: .asciz "left\n"
	M2: .asciz "right\n"
	M3: .asciz "down\n"
	M4: .asciz "up\n"
	M5: .asciz "right button\n"
b start
	mov r6, #0
	mov r0, #3
	mov r5, #0


start:	swi 0x206	@clean display
	mov r6, #0

loop:	mov r1, #0
	mov r0, r5
	mov r2, #'#
	@swi 0x207

	swi 0x203	@keyboard check
	cmp r0,#512
	beq dw_arr
	cmp r0,#2
	beq up_arr
	cmp r0, #16
	beq lf_arr
	cmp r0, #64
	beq rg_arr

	swi 0x202	@button check
	cmp r0, #1	
	beq left
	cmp r0, #2
	beq right
	b comp

dw_arr: ldr r2, =M3	@down arrow pressed
	mov r0, #6
	mov r1, #3
	swi 0x204
	b comp

up_arr: ldr r2, =M4	@up arrow pressed
	mov r0, #6
	mov r1, #4
	swi 0x204
	b comp

lf_arr: ldr r2, =M1	@left arrow pressed
	mov r0, #6
	mov r1, #2
	swi 0x204
	b comp

rg_arr: ldr r2, =M2	@right arrow pressed
	mov r0, #6
	mov r1, #1
	swi 0x204
	b comp

left: 	swi 0x206 	@left button pressed (clear display)
	b comp

right: 	b comp		@right button pressed

comp:	cmp r6, #0
	add r5, r5, #1
	beq loop

end: b end
