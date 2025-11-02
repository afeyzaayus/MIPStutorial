.data
source: .asciiz "Hello World!\n"
dest: .space 20
msg_src: .asciiz "Source\n"
msg_dest: .asciiz "Dest\n"

.text
main:
	la $a0, source
	la $a1, dest
	
copy_loop:
	lb $t0, 0($a0)
	sb $t0, 0($a1)
	beq $t0, $zero, done
	addi $a0, $a0, 1
	addi $a1, $a1, 1
	j copy_loop
	
done:
	li $v0, 4
	la $a0, msg_src
	syscall
	
	li $v0, 4
	la $a0, source
	syscall
	
	li $v0, 4
	la $a0, msg_dest
	syscall
	
	li $v0, 4
	la $a0, dest
	syscall
	
	li $v0, 10
	syscall