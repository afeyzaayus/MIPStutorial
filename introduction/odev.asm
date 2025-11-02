.data
input: .space 500
total: .asciiz "\nTotal number of characters: "
vowels: .asciiz "\nnumber of vowels: "
consonants: .asciiz "\nnubmer of consonants: "
digit: .asciiz "\nnumber of digits: "
spaces: .asciiz "\nnumber of spaces"

.text
main:
	li $v0, 8
	la $a0, input
	li $a1, 500
	syscall
	
	jal strlen_func
	
	move $t1, $v0
	
	sub $t1, $t1, 1
	li $v0, 4
	la $a0, total
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	jal vowels_func
	
	move $t1, $v0
	
	li $v0, 4
	la $a0, vowels
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	
	
	jal consonants_func
	
	move $t1, $v0
	
	li $v0, 4
	la $a0, consonants
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	
	li $v0, 10
	syscall
	
	
strlen_func:
	li $v0, 0
	
strlen_loop:
	lb $t0, 0($a0)
	beq $t0, $zero, done_func
	add $v0, $v0, 1
	add $a0, $a0, 1
	j strlen_loop
	
done_func:
	jr $ra
	
	
vowels_func:
	li $v0, 0
	la $a0, input
	
number_of_vowels:
	lb $t0, 0($a0)
	beq $t0, $zero, done_func
	beq $t0, 97, increment_v0
	beq $t0, 101, increment_v0
	beq $t0, 105, increment_v0
	beq $t0, 111, increment_v0
	beq $t0, 117, increment_v0
	beq $t0, 65, increment_v0
	beq $t0, 69, increment_v0
	beq $t0, 73, increment_v0
	beq $t0, 79, increment_v0
	beq $t0, 85, increment_v0
	j next_char
	
next_char:
	add $a0, $a0, 1
	j number_of_vowels
	
increment_v0:
	add $v0, $v0, 1
	j next_char
	


consonants_func:
	li $v0, 0
	la $a0, input
	
consonant_loop:
	lb $t0, 0($a0)
	beq $t0, $zero, done_func
	
	blt $t0, 65, next_char_c
	
	bgt $t0, 122, next_char_c
	
	bgt $t0, 90, check_lowercase
	
check_lowercase:
	blt $t0, 97, next_char_c
	
	
check_vowel:
	
	
	beq $t0, 97, next_char_c
	beq $t0, 101, next_char_c
	beq $t0, 105, next_char_c
	beq $t0, 111, next_char_c
	beq $t0, 117, next_char_c
	beq $t0, 65, next_char_c
	beq $t0, 69, next_char_c
	beq $t0, 73, next_char_c
	beq $t0, 79, next_char_c
	beq $t0, 85, next_char_c
	add $v0, $v0, 1
	
next_char_c:
	add $a0, $a0, 1
	j consonant_loop
	

	
	
