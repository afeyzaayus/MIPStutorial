.text
main:
	li $a0, 2
	li $a1, 4
	jal multiply
	
	move $t0, $v0
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 10
	syscall
	
multiply:
	li $v0, 0
	li $t0, 0
	
	loop:
		bge $t0, $a1, end_loop
		add $v0, $v0, $a0
		addi $t0, $t0, 1
		j loop
		
	end_loop:
		jr $ra