.text

main:
	li $v0, 7 #read double, $f0'a yazar
	syscall
	
	li $v0, 3 # print double, sayıyı $f12'de bekler
	mov.d $f12, $f0
	syscall
	
	li $v0, 10
	syscall
	