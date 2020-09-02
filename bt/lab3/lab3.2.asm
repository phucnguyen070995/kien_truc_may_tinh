.data
	str1: .asciiz "Please input one integer: "
	str2: .asciiz "Sum of b + c: "
	str3: .asciiz "Sub of b - c: "
	str4: .asciiz "Sub of c - b: "
	str5: .asciiz "Please input an another integer number: "
	str6: .asciiz "\nCam on ban da su dung phan mem!\n"
.text 
main:
	#li $t0, 0  #initialize a loop counter to $t0
	li $t0, 0  #this will hold result
	li $s0, 10
	li $s1, 5
	li $v0, 4
	la $a0, str1
	syscall
loop:
	#nhap so nguyen
	li $v0, 5 
	syscall
	#kiem tra so nguyen
	beq $v0, 0, case_0
	beq $v0, 1, case_1
	beq $v0, 2, case_2
	j default
case_0:
	add $t0, $s0, $s1
	li $v0, 4
	la $a0, str2
	syscall
	j exit
case_1:
	sub $t0, $s0, $s1
	li $v0, 4
	la $a0, str3
	syscall
	j exit
case_2:
	sub $t0, $s1, $s0
	li $v0, 4
	la $a0, str4
	syscall
	j exit
default:
	li $v0, 4
	la $a0, str5
	syscall
	j loop
exit:
	#in gia tri
	add $a0, $zero, $t0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, str6
	syscall