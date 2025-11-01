.data
val1: .word 5
val2: .word 7
msg: .asciiz "after swap\n"

.text
main:
	lw $t0, val1 # $t0 = 5
	lw $t1, val2 # $t1 = 7
	
	sw $t1, val1 # val1 = 7
	sw $t0, val2 # val2 = 5
	
	#print message
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 1
	lw $a0, val1 # $a0 = val1 = 7
	syscall
	
	li $v0, 11 #print space
	li $a0, 32
	syscall
	
	lw $a0, val2
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
	
	