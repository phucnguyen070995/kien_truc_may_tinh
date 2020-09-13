.data
	elems: .word 0,1,-1,3,4,5,6,7,8,9,-2
	nums: .word 11
	str0: .asciiz "Day so ban dau la:\n"
	str1: .asciiz "\nNhap so can tim kiem: "
	str2: .asciiz "\nDay so sau khi sap xep giam dan theo giai thuat quick sort:\n"
	str3: .asciiz "***"
.text 
main:
	la $s0, elems
	lw $s1, nums
	#day ban dau
	li $v0, 4
	la $a0, str0
	syscall
	li $s3, 0
	jal printArr
	li $a0, 0
	subi $a1, $s1, 1
	jal quickSort
	#day sau khi sap xep
	li $v0, 4
	la $a0, str2
	syscall
	li $s3, 0
	jal printArr
	j exit
	
#procedure quickSort		
quickSort:
	addi $sp, $sp, -12
	sw $ra, 8($sp)
	sw $a0, 4($sp)
	sw $a1, 0($sp)
	slt $t0, $a0, $a1
	bne $t0, $zero, L1
	addi $sp, $sp, 12
	jr $ra
L1:
	sll $t0, $a0, 2
	add $t0, $t0, $s0 	#chon pivot la phan tu dau tien
	lw $s2, ($t0) 		#$t1 chua phan tu pivot
while_0:
	#while_do
	#so sanh elems[i] < pivot
	#tinh toan index 
while_1:
	sll $t0, $a0, 2
	add $t0, $t0, $s0
	lw $t2, ($t0)
	slt $t0, $s2, $t2
	beq $t0, $zero, exit_while_1
	addi $a0, $a0, 1
	j while_1
exit_while_1:
#tinh toan index 
while_2:
	sll $t0, $a1, 2
	add $t0, $t0, $s0
	lw $t2, ($t0)
	slt $t0, $t2, $s2
	beq $t0, $zero, exit_while_2
	subi $a1, $a1, 1
	j while_2
exit_while_2:
	slt $t0, $a1, $a0
	bne $t0, $zero, exit_if
	jal swap		#co the sinh loi, chu y
	addi $a0, $a0, 1
	addi $a1, $a1, -1
exit_if:
	#while_do
	slt $t0, $a0, $a1
	bne $t0, $zero, while_0
	
	#luu a0 moi vao sp
	addi $sp, $sp, -4
	sw $a0, 0($sp)
	#goi de quy
	lw $a0, 8($sp) #a1 oke
	jal quickSort
	lw $a0, 0($sp)
	lw $a1, 4($sp)
	jal quickSort
	lw $ra, 12($sp)
	addi $sp, $sp, 16
	jr $ra			

#procedure printArr	
printArr:
	#tinh index
	sll $t0, $s3, 2
	add $t0, $t0, $s0
	#in gia tri
	lw $a0, ($t0)
	li $v0, 1
	syscall
	#tang i
	addi $s3, $s3, 1
	#kiem tra bien i da la phan tu cuoi hay chua
	beq $s3, $s1, exitPrintArr
	li $v0, 4
	la $a0, str3
	syscall
	j printArr
exitPrintArr:
	jr $ra
		
swap:	
	sll $t0, $a0, 2
	add $t0, $t0, $s0
	lw $t1, ($t0)
	sll $t2, $a1, 2
	add $t2, $t2, $s0
	lw $t3, ($t2)
	sw $t3, ($t0)
	sw $t1, ($t2)
	jr $ra
exit:
