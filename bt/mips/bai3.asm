.data
	Greeting: .asciiz "\nDay la bai 3\n"
	str1: .asciiz "\nNhap so nguyen a\n"
	str2: .asciiz "\nNhap so nguyen b\n"
	str3: .asciiz "\nNhap so nguyen c\n"
	str4: .asciiz "\nNhap so nguyen d\n"
	str5: .asciiz "\nTinh f:\n"
	str6: .asciiz "\nTinh g:\n"
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
	add $t0, $0, $v0
	#str2
	li $v0, 4
	la $a0, str2
	syscall
	#nhap so nguyen 2
	li $v0, 5 
	syscall
	add $t1, $0, $v0
	#str2
	li $v0, 4
	la $a0, str3
	syscall
	#nhap so nguyen 3
	li $v0, 5 
	syscall
	add $t2, $0, $v0
	#str2
	li $v0, 4
	la $a0, str4
	syscall
	#nhap so nguyen 4
	li $v0, 5 
	syscall
	add $t3, $0, $v0

	#tinh f
	li $v0, 4
	la $a0, str5
	syscall
	#thuc hien phep toan tinh f
	add $t4, $t0, $t1
	sub $t5, $t2, $t3
	subi $t5, $t5, 2
	sub $a0, $t4, $t5
	#hien thi so nguyen ra man hinh f
	li $v0, 1
	syscall
	#tinh g
	li $v0, 4
	la $a0, str6
	syscall
	#thuc hien phep toan tinh f
	add $t4, $t0, $t1
	add $t5, $t4, $t4
	add $t5, $t5, $t4
	add $t6, $t2, $t3
	add $t6, $t6, $t6
	sub $a0, $t5, $t6
	#hien thi so nguyen ra man hinh f
	li $v0, 1
	syscall
	