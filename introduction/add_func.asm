.text
main:
	li $a0, 10 # first arg
	li $a1, 20 # second arg
	
	# Zıplamadan hemen önce, geri döneceği yerin adresini (yani bir sonraki komut olan move $t1, $v0 satırının adresini) 
	# $ra (Return Address) register'ına kaydeder. Fonksiyonun geri dönebilmesi için bu çok önemlidir.
	jal add_numbers
	
	# return'den gelen sonucu yedekle
	move $t1, $v0
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	li $v0, 10
	syscall
	
add_numbers:
	# return value'ları $v0'a yazarız
	add $v0, $a0, $a1 # v0 = a0 + a1
	jr $ra
	
	