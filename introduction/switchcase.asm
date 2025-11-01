.data
msg1: .asciiz "num: 1\n"
msg2: .asciiz "num: 2\n"
msg3: .asciiz "num: 3\n"
msg4: .asciiz "num: 4\n"
msg5: .asciiz "num: 5\n"
msg_default: .asciiz "defaulttt\n"

.text
main:
	li $t0, 42 # change this to differnt test cases
	
	beq $t0, 1, case1
	beq $t0, 2, case2
	beq $t0, 3, case3
	beq $t0, 4, case4
	beq $t0, 5, case5
	
	j default_case
	
case1:
	li $v0, 4
	la $a0, msg1
	syscall
	j end_program
	
case2:
	li $v0, 4
	la $a0, msg2
	syscall
	j end_program
	
case3:
	li $v0, 4
	la $a0, msg3
	syscall
	j end_program
	
case4:
	li $v0, 4
	la $a0, msg4
	syscall
	j end_program
	
case5:
	li $v0, 4
	la $a0, msg5
	syscall
	j end_program
	
default_case:
	li $v0, 4
	la $a0, msg_default
	syscall
	j end_program
	
end_program:
	li $v0, 10
	syscall
	