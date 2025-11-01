.data
msg: .asciiz "operation:\n"

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
	la $a0, msg
	syscall
	
	li $v0, 2
	mov.s $f12, $f2
	syscall
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 2
	mov.s $f12, $f5 
	syscall