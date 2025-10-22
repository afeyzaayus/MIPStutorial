.text

main:
	li $v0, 6 #read float
	syscall
	
	li $v0, 2 #write float
	mov.s $f12, $f0
	syscall
	
	li $v0, 10 #program finish
	syscall