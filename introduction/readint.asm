.text

main:
	li $v0, 5 #read integer
	syscall
	
	move $t0, $v0
	
	li $v0, 1 # 1 numaralı hizmeti yaparken $a0'a bakar
	move $a0, $t0
	syscall
	
	li $v0, 10
	syscall