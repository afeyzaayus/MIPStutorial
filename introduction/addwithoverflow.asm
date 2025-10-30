.data
newline: .asciiz "\n"

.text
main:
	li $t2, 2
	li $t3, 3
	add $t1, $t2, $t3
	
	li $v0, 1 #print int
	move $a0, $t1
	syscall
	
	li $v0, 4 #print string
	la $a0, newline
	syscall
	
	li $v0, 10
	syscall