.data
arr: .word 13, 25, 87, 20
newline: .asciiz "\n"

.text
main:
	li $t0, 0
	
	
loop:
	bge $t0, 4, exit
	
	# $t0 = i
	# $t1 = arr
	# $t2 shifting 
	
	la $t1, arr
	sll $t2, $t0, 2
	add $t1, $t1, $t2
	lw $a0, 0($t1)
	
	li $v0, 1
	syscall
	
	add $t0, $t0, 1
	j loop
	
exit:
	li $v0, 10
	syscall