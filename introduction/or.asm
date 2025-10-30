.text
main:
	li $t1, 5 # 101
	or $t2, $t1, 2 
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 10
	syscall 
	