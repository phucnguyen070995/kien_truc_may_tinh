.data
	list: .word 0,1,2,3,4,5,6,7,8,9
	
	str0: .asciiz "Day so ban dau la:\n"
	str1: .asciiz "\nNhap index can swap: "
	str2: .asciiz "\nDay so sau khi swap la:\n"
	str3: .asciiz "-"
	str4: .asciiz "Index nhap vao khong the swap!"
	str5: .asciiz "\nGia tri $ra truoc jal: "
	str6: .asciiz "\nGia tri $ra truoc jr: "
	str7: .asciiz "\nGia tri $ra sau jal: "
.text 
main:
	la $s0, list  #the address of list[0] is in $t1
	
#in mang ban dau
	li $v0, 4
	la $a0, str0
	syscall
	#bien i
	li $s1, 0
	jal printArr
#nhap index can swap
	li $v0, 4
	la $a0, str1
	syscall
	li $v0, 5
	syscall
	#$a1 luu gia tri input
	addi $a1, $v0, 0
	slt $t0, $a1, $zero
	slti $t1, $a1, 9
	bne $t0, $zero, exit_notfound
	beq $t1, $zero, exit_notfound
	#in $ra
	li $v0, 4
	la $a0, str5
	syscall
	addi $a0, $ra, 0
	li $v0, 1
	syscall
	#
	addi $a0, $s0, 0
	jal swap
	#in $ra
	li $v0, 4
	la $a0, str7
	syscall
	addi $a0, $ra, 0
	li $v0, 1
	syscall
	#
	li $v0, 4
	la $a0, str2
	syscall
	#bien i
	li $s1, 0
	jal printArr
	j exit	
	
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
	
#procedure swap	
swap:	
	sll $t0, $a1, 2
	add $t1, $t0, $a0
	lw $t2, ($t1)
	addi $t3, $a1, 1
	sll $t3, $t3, 2
	add $t3, $t3, $a0
	lw $t4, ($t3)
	sw $t4, ($t1)
	sw $t2, ($t3)
	#in $ra truoc lenh jal
	li $v0, 4
	la $a0, str6
	syscall
	addi $a0, $ra, 0
	li $v0, 1
	syscall
	jr $ra

exit_notfound:
	li $v0, 4
	la $a0, str4
	syscall
exit:
	



	
