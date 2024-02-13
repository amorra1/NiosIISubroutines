.global _start
_start:
	
GenerateList:
	subi	sp, sp, 16
	stw		r3, 12(sp)
	stw		r4, 8(sp)
	stw		r8, 4(sp)
	stw		r9, 0(sp)
	
	mov		r7, r0
	
gl_loop:
	ldw		r8, 0(r2)
	mul		r8, r8, r5
	add		r8, r8, r6
	stw		r8, 0(r3)
gl_if:
	movi	r9, 10
	ble		r8, r9, gl_else
gl_then:
	addi	r7, r7, 1
	br		gl_end_if
gl_else:
	stw		r0, 0(r2)
gl_end_if:

	addi 	r2, r2, 4
	addi	r3, r3, 4
	subi 	r4, r4, 1
	bgt		r4, r0, gl_loop

	mov 	r2, r7

	ldw		r3, 12(sp)
	ldw		r4, 8(sp)
	ldw		r8, 4(sp)
	ldw		r9, 0(sp)	
	addi	sp, sp, 16
	ret
	
	
	