.data
	Greeting: .asciiz "\nDay la truong trinh tinh tong 2 so\n"
	str1: .asciiz "\nNhap so nguyen 1\n"
	str2: .asciiz "\nNhap so nguyen 2\n"
.text 
main:
	#str1
	li $v0, 4
	la $a0, Greeting
	syscall
	#str1
	la $a0, str1
	syscall
	#nhap so nguyen 1
	li $v0, 5 
	syscall
	add $a1, $0, $v0
	#str2
	li $v0, 4
	la $a0, str2
	syscall
	#nhap so nguyen 2
	li $v0, 5 
	syscall
	add $t0, $0, $v0

	#cong so nguyen voi 1
	add $a0, $a1, $t0
	#hien thi so nguyen ra man hinh
	li $v0, 1
	syscall