.data
	list: .word 10, 2, 3, 4, 10 , 10, 7, 10, 10, 10
	
	str0: .asciiz "Day so ban dau la:\n"
	str1: .asciiz "\nNhap so nguyen can tim kiem trong list: "
	str2: .asciiz "Cac vi tri tim thay la: "
	str3: .asciiz "-"
	str4: .asciiz "Khong tim thay so nguyen trong list!"
.text 
main:
	la $t1, list  #the address of list[0] is in $t1
	li $t0, 0
#in mang ban dau
	li $v0, 4
	la $a0, str0
	syscall
loop:
	#tinh index
	sll $t3, $t0, 2
	add $t3, $t3, $t1
	#in gia tri
	lw $a0, ($t3)
	li $v0, 1
	syscall
	#tang i
	addi $t0, $t0, 1
	#kiem tra bien i da la phan tu cuoi hay chua
	slti $t2, $t0, 10
	bne $t2, $zero, print_
	j exit
print_:
	li $v0, 4
	la $a0, str3
	syscall
	j loop
exit:
#nhap gia tri can search
	li $v0, 4
	la $a0, str1
	syscall
	li $v0, 5
	syscall
	#$s0 luu gia tri input
	addi $s0, $v0, 0
	
#flag $t2 xem co thay gia tri hay chua
	li $t2, 0
	#bien i la index
	li $t0, 0
loop_search:
	#tinh index
	sll $t3, $t0, 2
	add $t3, $t3, $t1
	#so sanh gia tri voi input
	lw $t4, ($t3)
	beq $t4, $s0, check_flag
return_loop:	
	#tang i
	addi $t0, $t0, 1
	#kiem tra bien i da la phan tu cuoi hay chua
	beq $t0, 10, exit_search
	j loop_search
print_search:
	li $v0, 4
	la $a0, str3
	syscall
	j loop
check_flag:
	beq $t2, 0, print_str2	
	li $v0, 4
	la $a0, str3
	syscall
	addi $a0, $t0, 0
	li $v0, 1
	syscall
	j return_loop
print_str2:
	li $v0, 4
	la $a0, str2
	syscall
	addi $a0, $t0, 0
	li $v0, 1
	syscall
	li $t2, 1
	j return_loop
print_notfound:
	li $v0, 4
	la $a0, str4
	syscall
	j exit_program
exit_search:
	beq $t2, 0, print_notfound
exit_program:


	