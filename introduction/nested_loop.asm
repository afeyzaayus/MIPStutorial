.data
star: .asciiz "*"
newline: .asciiz "\n"

.text
main:
	li $t0, 1 # i = 1
	
outer_loop:
	bgt $t0, 5, end_outer # if (i > 5)
	
	#else
	li $t1, 1 # j = 1
	
inner_loop:
	bgt $t1, 5, end_inner # if (j > 5)
	
	# print *
	li $v0, 4
	la $a0, star
	syscall
	
	add $t1, $t1, 1 # j++
	j inner_loop
	
end_inner:
	li $v0, 4
	la $a0, newline
	syscall
	
	addi $t0, $t0, 1 # i++
	j outer_loop
	
end_outer:
	li $v0, 10
	syscall
	