.data
	elems: .word 1,2,3,4,5,6,7,8,9,10
	nums: .word 10
.text 
main:
	la $s0, elems
	lw $s1, nums
	li $a0, 0
	subi $a1, $s1, 1
	jal quickSort
	j exit
	
#procedure quickSort		
quickSort:
	addi $sp, $sp, -12
	sw $ra, 8($sp)
	sw $a0, 4($sp)
	sw $a1, 0($sp)
	slt $t0, $a0, $a1
	beq $t0, $zero, L1
	addi $sp, $sp, 12
	jr $ra
L1:
	sll $t0, $a0, 2
	add $t0, $t0, $s0 	#chon pivot la phan tu dau tien
	lw $t1, ($t0) 		#$t1 chua phan tu pivot
while_0:
	#while_do
	#so sanh elems[i] < pivot
	#tinh toan index 
while_1:
	sll $t0, $a0, 2
	add $t0, $t0, $s0
	lw $t2, ($t0)
	slt $t0, $t2, $t1
	beq $t0, $zero, exit_while_1
	addi $a0, $a0, 1
	j while_1
exit_while_1:
#tinh toan index 
while_2:
	sll $t0, $a1, 2
	add $t0, $t0, $s0
	lw $t2, ($t0)
	slt $t0, $t1, $t2
	beq $t0, $zero, exit_while_2
	subi $a1, $a1, 1
	j while_2
exit_while_2:
	slt $t0, $a1, $a0
	bne $t0, $zero, exit_if
	jal swap		#co the sinh loi, chu y
exit_if:
	#while_do
	slt $t0, $a0, $a1
	bne $t0, $zero, while_0
	#goi de quy
	#bien tam $t5m luu gia tri a0
	lw $a0, 4($sp)
	jal quickSort
	lw $a1, 0($sp)
	jal quickSort
	lw $ra, 8($sp)
	addi $sp, $sp, 12
	jr $ra			

#procedure printArr	
printArr:
	#tinh index
	sll $t0, $s1, 2
	add $t0, $t0, $s0
	#in gia tri
	lw $a0, ($t0)
	li $v0, 1
	syscall
	#tang i
	addi $s1, $s1, 1
	#kiem tra bien i da la phan tu cuoi hay chua
	beq $s1, 10, exitPrintArr
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