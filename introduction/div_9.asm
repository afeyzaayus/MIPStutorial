.data
msg: .asciiz "Please enter a number:\n"
not_div:.asciiz "not divisible by 9"
yes_div: .asciiz "this is divisible by 9"
number: .word 

# mfhi
# mflo
# mthi
# mtlo

.text
main:
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5 # sonuç $v0'a gelecek
	syscall
	move $s0, $v0 # kullanıcıdan aldığımız sayımız $s0'da şimdi
	move $a0, $s0 # a0 -> foo'ya gönderilecek argüman
	
	jal foo
	
	move $s1, $v0 #s1 -> rakamlar toplamı
	move $a0, $s1 #a0 -> check_divisible'a gönderilecek argüman
	
	jal check_divisible
	
	li $v0, 10
	syscall
	
# a0'a gelen sayyının rakamları toplamını bulur
# sonucu $v0'a yazar
foo:
	li $t0, 0 #result (toplam)
	move $t1, $a0 # number
	li $t2, 10
	
sum_process:
	beq $t1, $zero, finish_sum #sayı 0 ise bitir
	div $t1, $t2 # number / 10
	mfhi $t3 # t3 = kalan
	mflo $t1 # t1 = bölüm
	add $t0 $t0 $t3 # toplam = toplam + son rakam
	j sum_process
	
finish_sum:
	move $v0, $t0 #sonucu $v0'a taşı
	jr $ra # çağıran yere dön
	
# a0'daki sayının 9'a bölünüp böünmediğini kontrol eder.
check_divisible:
	move $t5, $ra # geri dönüş adresini kaydet
	move $t1, $a0 # t1 = rakamlar toplamı
	li $t2, 9
	div $t1, $t2 # toplam / 9
	mfhi $t3 # t3 = kalan
	beq $t3, $0, yes_divisible  # kalan 0 ise yes'e git
	
	# bölünmeme durumu
	la $a0, not_div
	li $v0, 4
	la $a0, not_div
	syscall
	jr $t5
	
yes_divisible:
	li $v0, 4
	la $a0, yes_div
	syscall
	jr $t5