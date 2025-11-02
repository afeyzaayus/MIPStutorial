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
	
	li $v0, 4
	la $a0, total
	syscall
	
	li $v0, 1
	sub $a0, $t1, 1
	syscall
	
	li $v0, 10
	syscall 
    
strlen_func:
	li $v0, 0
	
strlen_loop:
	lb $t2, 0($a0)
	beq $t2, $0, done_strlen_func
	addi $v0, $v0, 1
	addi $a0, $a0, 1
	j strlen_loop 
	
done_strlen_func:
	jr $ra
    