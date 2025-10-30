.text
main:
	li $v0, 12 #read char
	syscall
	
	move $t0, $v0
	
	li $v0, 11 #print char
	move $a0, $t0
	syscall
	
	li $v0, 10
	syscall