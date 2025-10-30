.text
main:
	li $t2, 0xFF # dec: 255 bin: 11111111
	
	#and immediate (andi)
	andi $t1, $t2, 100 # $t1 = $t2 & 100 
	
	li $v0, 1 #print int ($a0'da arayacak)
	move $a0, $t1
	syscall
	
	li $v0, 10
	syscall
	