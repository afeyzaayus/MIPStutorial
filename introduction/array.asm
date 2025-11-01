.data 
arr: .word 3, 6, 9, 12, 15
msg: .asciiz "array values:\n"
newline: .asciiz "\n"

.text
main:
	li $t0, 0 # i = 0
	li $v0, 4
	la $a0, msg
	syscall
	
loop:
	bge $t0, 5, exit
	
	la $t1, arr # load base address of array
	sll $t2, $t0, 2 # multiply index by 4 (word size)
	add $t1, $t1, $t2 # compute address of arr[i]
	lw $a0, 0($t1) #load arr[i] into $a0
	
	li $v0, 1
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	addi $t0, $t0, 1 #i++
	j loop
	
exit:
	li $v0, 10
	syscall
	
