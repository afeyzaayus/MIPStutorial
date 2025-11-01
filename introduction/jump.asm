.data
msg: .asciiz "jump executed\n"

.text:
main:
	j jump_label
	
	li $v0, 10
	syscall
	
jump_label:
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 10
	syscall