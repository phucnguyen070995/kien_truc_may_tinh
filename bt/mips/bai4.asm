.data
	Greeting: .asciiz "\nDay la bai 4\n"
	str1: .asciiz "Nhap so nguyen thu 1\n"
	str2: .asciiz "Nhap so nguyen thu 2\n"
	str3: .asciiz "Nhap so nguyen thu 3\n"
	str4: .asciiz "Nhap so nguyen thu 4\n"
	str5: .asciiz "Nhap so nguyen thu 5\n"
	str6: .asciiz "Chuoi so ban dau:\n"
	str7: .asciiz "Chuoi so sau khi reverse:\n"
	str8: .asciiz "-"
	str9: .asciiz "\n"
.text 
main:
	#Greeting
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
	#str3
	li $v0, 4
	la $a0, str3
	syscall
	#nhap so nguyen 3
	li $v0, 5 
	syscall
	add $t2, $0, $v0
	#str4
	li $v0, 4
	la $a0, str4
	syscall
	#nhap so nguyen 4
	li $v0, 5 
	syscall
	add $t3, $0, $v0
	#str5
	li $v0, 4
	la $a0, str5
	syscall
	#nhap so nguyen 5
	li $v0, 5 
	syscall
	add $t4, $0, $v0

	#hien chuoi so ban dau
	li $v0, 4
	la $a0, str6
	syscall
	#hien thi so thu 1
	add $a0, $0, $t0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, str8
	syscall
	#hien thi so thu 2
	add $a0, $0, $t1
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, str8
	syscall
	#hien thi so thu 3
	add $a0, $0, $t2
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, str8
	syscall
	#hien thi so thu 4
	add $a0, $0, $t3
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, str8
	syscall
	#hien thi so thu 5
	add $a0, $0, $t4
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, str9
	syscall
	
	#hien chuoi so ban dau
	li $v0, 4
	la $a0, str7
	syscall
	#hien thi so thu 5
	add $a0, $0, $t4
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, str8
	syscall
	#hien thi so thu 4
	add $a0, $0, $t3
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, str8
	syscall
	#hien thi so thu 3
	add $a0, $0, $t2
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, str8
	syscall
	#hien thi so thu 2
	add $a0, $0, $t1
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, str8
	syscall
	#hien thi so thu 1
	add $a0, $0, $t0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, str9
	syscall
	
	