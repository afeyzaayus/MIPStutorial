.data
msg: .asciiz "jump register executed\n"
test: .asciiz "test\n"

.text
main:
	la $t0, foo
	jr $t0 # jump to function stored in register
	
	# this will be skipped
	li $v0, 4
	la $a0, test
	syscall
	
	li $v0, 10
	syscall
	
foo:
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 10
	syscall