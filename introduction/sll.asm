.text
main:
	li $t3, 3 #11
	
	#shift left logical
	sll $t1, $t3, 2 # 00000011 << 2 = 1100 (dec: 12)
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	li $v0, 10
	syscall
	