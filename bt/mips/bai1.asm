.data
	Greeting: .asciiz "\nMoi nhap so nguyen\n"
.text 
main:
	li $v0, 4
	la $a0, Greeting
	syscall
	#nhap so nguyen
	li $v0, 5 
	syscall
	add $a0, $0, $v0

	#cong so nguyen voi 1
	addi $a0, $a0, 1
	#hien thi so nguyen ra man hinh
	li $v0, 1
	syscall