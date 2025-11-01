.data
func_msg: .asciiz "function message\n"
ret_msg: .asciiz "returned from funciton\n"

.text
main:
	# jump and link
	# jal komutundan sonraki satırın adresini $ra'da tutuyor (return address)
	jal foo # jump to foo and store return address in $ra
	
	li $v0, 4
	la $a0, ret_msg
	syscall
	
	li $v0, 10
	syscall
	
foo:
	li $v0, 4
	la $a0, func_msg
	syscall
	
	jr $ra # $ra register'ına atla