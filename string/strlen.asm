.data
str: .asciiz "Hello world\n"
msg: .asciiz "String length: "

.text
main:
	la $a0, str
	li $t0, 0 # counter for string length i = 0
	
	loop:
		lb $t1, 0($a0) #load byte form string
		beq $t1, $zero, done
		addi $t0, $t0, 1 # i++
		addi $a0, $a0, 1 # str++
		j loop
		
	done:
		li $v0, 4 #print message
		la $a0, msg
		syscall
		
		li $v0, 1 # print string length
		move $a0, $t0
		syscall
		
		li $v0, 10
		syscall