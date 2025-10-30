.text
main:
	li $v0, 11 # print character
	li $a0, 97 #load acii value
	syscall
	
	li $v0, 10
	syscall