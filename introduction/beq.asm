.data
msg: .asciiz "equal\n"
greq: .asciiz "greater or equal to zero\n"
msg2: .asciiz "not equal\n"
greq2: .asciiz "nor greq\n"

.text
main:
	li $t1, -5
	li $t2, 6
	
	# branch'e sağlanırsa branch'lerin altındaki hiçbir satır çalışmaz. Yani labelin gösterdiği yola sapar.
	# branch sağlanmazsa main'de gitmeye devam eder
	
	beq $t1, $t2, equal_label
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	bgez $t1, greater_equal_label #greater than or equal to zero
	
	#bgtz -> greater than zero
	#blez -> less than or equal to zero
	#bltz -> less than zero
	#bne -> branch if NOT equal
	
	li $v0, 4
	la $a0, greq2
	syscall
	
	li $v0, 10
	syscall
	
equal_label:
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 10
	syscall
	
greater_equal_label:
	li $v0, 4
	la $a0, greq
	syscall