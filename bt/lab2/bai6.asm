.data
	list: .word 1, 2, 3, 4, 5 , 6, 7, 8, 9, 10
	str1: .asciiz "Tong cac phan tu cua mang co index chan la:\n"
	str2: .asciiz "\nTong cac phan tu cua mang co index le la:\n"
.text 
main:
	li $t0, 0  #initialize a loop counter to $t0
	li $t3, 0  #this will hold our final sum of even
	li $t4, 0  #this will hold our final sum of old
	la $t6, list  #the address of list[0] is in $t1

	#tinh tong index chan
     	lw $t2, 0($t6)   #load list[index] into $t2
     	add $t3, $t3, $t2 #$t3 = $t3 + $t2
     	lw $t2, 8($t6)   #load list[index] into $t2
     	add $t3, $t3, $t2 #$t3 = $t3 + $t2
     	lw $t2, 16($t6)   #load list[index] into $t2
     	add $t3, $t3, $t2 #$t3 = $t3 + $t2
     	lw $t2, 24($t6)   #load list[index] into $t2
     	add $t3, $t3, $t2 #$t3 = $t3 + $t2
     	lw $t2, 32($t6)   #load list[index] into $t2
     	add $t3, $t3, $t2 #$t3 = $t3 + $t2
     	
     	#tinh tong index le
     	lw $t2, 4($t6)   #load list[index] into $t2
     	add $t4, $t4, $t2 #$t3 = $t3 + $t2
     	lw $t2, 12($t6)   #load list[index] into $t2
     	add $t4, $t4, $t2 #$t3 = $t3 + $t2
     	lw $t2, 20($t6)   #load list[index] into $t2
     	add $t4, $t4, $t2 #$t3 = $t3 + $t2
     	lw $t2, 28($t6)   #load list[index] into $t2
     	add $t4, $t4, $t2 #$t3 = $t3 + $t2
     	lw $t2, 36($t6)   #load list[index] into $t2
     	add $t4, $t4, $t2 #$t3 = $t3 + $t2

	li $v0, 4
	la $a0, str1
	syscall
	
	add $a0, $0, $t3
	li $v0, 1
	syscall
	
	li $v0, 4
	la $a0, str2
	syscall
	
	add $a0, $0, $t4
	li $v0, 1
	syscall
	
	
	