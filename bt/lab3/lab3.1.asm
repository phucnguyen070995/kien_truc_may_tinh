.data
	str1: .asciiz "Moi ban nhap phan tu (nhap so am de ket thuc): "
	str2: .asciiz "\nCam on ban da su dung phan mem!\n"
	str3: .asciiz "Tong cac phan tu la: "
.text 
main:
	#li $t0, 0  #initialize a loop counter to $t0
	li $t0, 0  #this will hold sum
	
loop_sum:
	li $v0, 4
	la $a0, str1
	syscall
	#nhap so nguyen
	li $v0, 5 
	syscall
	#kiem tra bien
	slt $t2, $v0, $zero
	bne $t2, $zero, exit
	add $t0, $t0, $v0
	j loop_sum
exit:
	li $v0, 4
	la $a0, str3
	syscall
	#in gia tri
	add $a0, $zero, $t0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, str2
	syscall