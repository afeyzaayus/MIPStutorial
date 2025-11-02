.data
msg_add: .asciiz "addition:\n"
msg_sub: .asciiz "\nsubtraction:\n"
msg_mul: .asciiz "\nmultiplication:\n"
msg_div: .asciiz "\ndivision:\n"

.text
main:
	li $t0, 10
	li $t1, 3
	mtc1 $t0, $f0
	mtc1 $t1, $f1
	cvt.s.w $f0, $f0
	cvt.s.w $f1, $f1
	
	add.s $f2, $f0, $f1
	
	sub.s $f3, $f0, $f1
	
	mul.s $f4, $f0, $f1
	
	div.s $f5, $f0, $f1
	
	li $v0, 4
	la $a0, msg_add
	syscall
	
	li $v0, 2
	mov.s $f12, $f2
	syscall
	
	li $v0, 4
	la $a0, msg_sub
	syscall
	
	li $v0, 2
	mov.s $f12, $f3
	syscall
	
	li $v0, 4
	la $a0, msg_mul
	syscall
	
	li $v0, 2
	mov.s $f12, $f4
	syscall
	
	li $v0, 4
	la $a0, msg_div
	syscall
	
	li $v0, 2
	mov.s $f12, $f5
	syscall
	
	li $v0, 10
	syscall
