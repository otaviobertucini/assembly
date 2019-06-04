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
	mov r5, #0	@x-axis cursor
	mov r6, #0	@y-axis cursor
	mov r0, r5
	mov r1, r6
	mov r2, #'-
	swi 0x207

loop:	swi 0x203	@keyboard check
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

dw_arr: mov r0, r5
	mov r1, r6
	mov r2, #' 
	swi 0x207
	add r6, r6, #1 	@down arrow pressed
	b move

up_arr: mov r0, r5
	mov r1, r6
	mov r2, #' 
	swi 0x207
	sub r6, r6, #1 	@down arrow pressed
	b move

lf_arr: mov r0, r5
	mov r1, r6
	mov r2, #' 
	swi 0x207
	sub r5, r5, #1 	@left arrow pressed
	b move

rg_arr: mov r0, r5
	mov r1, r6
	mov r2, #' 
	swi 0x207
	add r5, r5, #1 	@right arrow pressed
	b move

left: 	swi 0x206 	@left button pressed (clear display)
	b comp

right: 	b comp		@right button pressed

move: 	mov r0, r5
	mov r1, r6
	mov r2, #'-
	swi 0x207
	b comp

comp:	mov r7, #0
	cmp r7, #0
	beq loop

end: b end
