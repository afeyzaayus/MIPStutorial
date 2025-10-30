.data
input: .space 10

.text
main:
	li $v0, 8 #read string
	la $a0, input #input'un başlangıç adresini $a0 register'ına yükle
	li $a1, 10 #okunabilecek max karakter sayısı
	syscall
	
	li $v0, 4 #print string
	la $a0, input 
	syscall
	
	li $v0, 10
	syscall
