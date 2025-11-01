.data
value: .word 42

.text
main:
	li $t0, 100
	
	#store word $t0'da olanı value'ya yazar
	sw $t0, value # $t0 -> value yani artık value'da 42 değil 100 var
	
	
	#load word bellekteki bir adresten register'a yükler
	lw $t1, value # $t1 <- value yani artık $t1'de 100 var
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	li $v0, 10
	syscall