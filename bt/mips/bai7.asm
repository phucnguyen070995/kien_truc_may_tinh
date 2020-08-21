.data
	list: .word 0:10 #khoi tao mang gom 10 phan tu 0
	str1: .asciiz "Nhap phan tu 1:\n"
	str2: .asciiz "Nhap phan tu 2\n"
	str3: .asciiz "Nhap phan tu 3\n"
	str4: .asciiz "Nhap phan tu 4\n"
	str5: .asciiz "Nhap phan tu 5\n"
	str6: .asciiz "Nhap phan tu 6\n"
	str7: .asciiz "Nhap phan tu 7\n"
	str8: .asciiz "Nhap phan tu 8\n"
	str9: .asciiz "Nhap phan tu 9\n"
	str10: .asciiz "Nhap phan tu 10\n"
	str11: .asciiz "Tong cua mang la: "
.text 
main:
	#li $t0, 0  #initialize a loop counter to $t0
	li $t0, 0  #this will hold sum
	la $t1, list  #the address of list[0] is in $t1
	
	#str1
	li $v0, 4
	la $a0, str1
	syscall
	#nhap so nguyen 1
	li $v0, 5 
	syscall
	sw $v0, ($t1)
	#str2
	li $v0, 4
	la $a0, str2
	syscall
	#nhap so nguyen 2
	li $v0, 5 
	syscall
	sw $v0, 4($t1)
	#str3
	li $v0, 4
	la $a0, str3
	syscall
	#nhap so nguyen 3
	li $v0, 5 
	syscall
	sw $v0, 8($t1)
	#str4
	li $v0, 4
	la $a0, str4
	syscall
	#nhap so nguyen 4
	li $v0, 5 
	syscall
	sw $v0, 12($t1)
	#str5
	li $v0, 4
	la $a0, str5
	syscall
	#nhap so nguyen 5
	li $v0, 5 
	syscall
	sw $v0, 16($t1)
	#str6
	li $v0, 4
	la $a0, str6
	syscall
	#nhap so nguyen 6
	li $v0, 5 
	syscall
	sw $v0, 20($t1)
	#str7
	li $v0, 4
	la $a0, str7
	syscall
	#nhap so nguyen 7
	li $v0, 5 
	syscall
	sw $v0, 24($t1)
	#str8
	li $v0, 4
	la $a0, str8
	syscall
	#nhap so nguyen 8
	li $v0, 5 
	syscall
	sw $v0, 28($t1)
	#str9
	li $v0, 4
	la $a0, str9
	syscall
	#nhap so nguyen 9
	li $v0, 5 
	syscall
	sw $v0, 32($t1)
	#str10
	li $v0, 4
	la $a0, str10
	syscall
	#nhap so nguyen 10
	li $v0, 5 
	syscall
	sw $v0, 36($t1)
	

	#tinh tong
     	lw $t2, 0($t1)   
     	add $t0, $t0, $t2 #$t0 = $t0 + $t2
     	lw $t2, 4($t1)   
     	add $t0, $t0, $t2 #$t0 = $t0 + $t2
     	lw $t2, 8($t1)   
     	add $t0, $t0, $t2 #$t0 = $t0 + $t2
     	lw $t2, 12($t1)   
     	add $t0, $t0, $t2 #$t0 = $t0 + $t2
     	lw $t2, 16($t1)   
     	add $t0, $t0, $t2 #$t0 = $t0 + $t2
     	lw $t2, 20($t1)   
     	add $t0, $t0, $t2 #$t0 = $t0 + $t2
     	lw $t2, 24($t1)   
     	add $t0, $t0, $t2 #$t0 = $t0 + $t2
     	lw $t2, 28($t1)   
     	add $t0, $t0, $t2 #$t0 = $t0 + $t2
     	lw $t2, 32($t1)   
     	add $t0, $t0, $t2 #$t0 = $t0 + $t2
     	lw $t2, 36($t1)   
     	add $t0, $t0, $t2 #$t0 = $t0 + $t2

	li $v0, 4
	la $a0, str11
	syscall
	
	add $a0, $0, $t0
	li $v0, 1
	syscall
	
	
