.data
	list: .word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
	str1: .asciiz "Moi ban nhap index tu 0 den 9:\n"
	str2: .asciiz "Phan tu co index "
	str3: .asciiz " la: "
.text 
main:
	la $t0, list  #the address of list[0] is in $t1
	
	#str1
	li $v0, 4
	la $a0, str1
	syscall
	#nhap index
	li $v0, 5 
	syscall
	addi $t1, $v0, 0
	#str2
	li $v0, 4
	la $a0, str2
	syscall
	#in index
	add $a0, $0, $t1
	li $v0, 1
	syscall
	#str3
	li $v0, 4
	la $a0, str3
	syscall
	#lay phan tu thu i
	sll $t1, $t1, 2
	add $t1, $t1, $t0
	lw $t2, ($t1)
	
	add $a0, $0, $t2
	li $v0, 1
	syscall
	
	
	
