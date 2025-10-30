.text
main:
	li $t1, 0xAA
	li $t2, 0xCC
	add $t3, $t1, $t2
	
	li $v0, 1 #print int
	move $a0, $t3
	syscall
	
	li $v0, 10
	syscall