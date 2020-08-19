.data
	list: .word 1, 2, 3, 4, 5 , 6, 7, 8, 9, 10
.text 
main:
	li $t0, 0  #initialize a loop counter to $t0
	li $t4, 10  #last index of array
	li $t3, 0  #this will hold our final sum
	la $t1, list  #the address of list[0] is in $t1

	loop: 
     		add $t5, $t0, $t0 #array index X2
     		add $t5, $t5, $t5 #array index X2 again
     		add $t6, $t5, $t1 #4x array index in $t6
     		lw $t2, 0($t6)   #load list[index] into $t2
     		add $t3, $t3, $t2 #$t3 = $t3 + $t2
     		addi $t0, $t0, 1 #index++
     		beq $t0, $t4, end
     		j loop
	end:
	
	add $a0, $0, $t3
	li $v0, 1
	syscall
	
	
	