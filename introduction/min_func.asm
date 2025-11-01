.text
main:
	li $a0, 15
	li $a1, 7
	jal min
	
	move $t0, $v0
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 10
	syscall
	
min:
	ble $a0, $a1, return_a0 # if a0 <= a1 return a0
	move $v0, $a1
	jr $ra
	
	return_a0:
		move $v0, $a0
		jr $ra