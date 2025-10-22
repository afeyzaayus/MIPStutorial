.data
input: .space 10

.text
main:
	li $v0, 8 #read string
	la $a0, input
	li $a1, 10
	syscall
	
	li $v0, 4
	la $a0, input 
	syscall
	
	li $v0, 10
	syscall