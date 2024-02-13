.global _start
_start:
	
ListCalcualtion:
	subi	sp, sp, 20
	stw		r3, 16(sp)
	stw		r4, 12(sp)
	stw		r6, 8(sp)
	stw		r7, 4(sp)
	stw		r8, 0(sp)
	
	mov		r6, r0

lc_loop:
lc_if:
	ldw		r7, 0(r2)
	ldw		r8, 0(r3)
	muli	r8, r8, 2
	blt		r7, r8, lc_else
lc_then:
	addi	r6, r6, 1
	br		lc_end_if
lc_else:
	stw		r5, 0(r2)
	stw		r0, 0(r3)
lc_end_if:
	addi 	r2, r2, 4
	addi	r3, r3, 4
	subi	r4, r4, 1
	bgt		r4, r0, lc_loop

	mov		r2, r6

	ldw 	r3, 16(sp)
	ldw		r4, 12(sp)
	ldw		r6, 8(sp)
	ldw		r7, 4(sp)
	ldw		r8, 0(sp)
	addi	sp, sp, 20	
	
	
	
	
	