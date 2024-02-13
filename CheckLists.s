.global _start
_start:
	
CheckLists:
	subi 	sp, sp, 20
	stw		r3, 16(sp)
	stw		r4, 12(sp)
	stw		r6, 8(sp)
	stw		r7, 4(sp)
	stw		r8, 0(sp)
	
	mov		r6, r0
	
cl_loop:
cl_if:
	ldw		r7, 0(r2)
	ldw		r8, 0(r3)
	add		r7, r7, r8
	bge		r7, r5, cl_else
cl_then:
	addi	r6, r6, 1
	br		cl_end_if
cl_else:
	stw		r0, 0(r2)
	stw		r5, 0(r3)
cl_end_if:
	addi	r2, r2, 4
	addi 	r3, r3, 4
	subi	r4, r4, 1
	bgt		r4, r0, cl_loop
	
	mov 	r2, r6
	

	ldw		r3, 16(sp)
	ldw		r4, 12(sp)
	ldw		r5, 8(sp)
	ldw		r7, 4(sp)
	ldw		r8, 0(sp)
	addi 	sp, sp, 20
	ret
	
	
	
	