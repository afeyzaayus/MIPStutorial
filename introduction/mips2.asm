.data
float_val: .float 3.14

.text
main:
	li $v0, 2
	la $a0, float_val
	l.s $f12, 0($a0)
	syscall
	
	li $v0, 10
	syscall