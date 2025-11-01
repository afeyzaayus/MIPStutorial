.data
newline: .asciiz "\n"

.text
main:
	li $t0, 1 # initialize counter (i = 1)
	
for_loop:
	bgt $t0, 5 end_loop # exit loop if i > 5
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	addi $t0, $t0, 1
	j for_loop
	
end_loop:
	li $v0, 10
	syscall