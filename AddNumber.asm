.data
	message: .asciiz "Enter first number want to add: "
	message2: .asciiz "Enter second number want to add: "
	message3: .asciiz "Sum of the given two numbers are: "
.text
	main:
		#first message
		li $v0, 4
		la $a0, message
		syscall
		
		#ask first number from user
		li $v0, 5
		syscall
		#first number moved to $a1
		move $a1, $v0
		
		#print message2
		li $v0, 4
		la $a0, message2
		syscall
		
		#ask second number from user
		li $v0, 5
		syscall
		#second number moved to $a2
		move $a2, $v0
	
		jal addTwoNumbers
		
		#Print message3
		li $v0, 4
		la $a0, message3
		syscall
		
		
		move $t1, $v1
		
		#print sum
		li $v0, 1
		move $a0, $t1
		syscall
		
		#end of main procedure
		li $v0, 10
		syscall
		
	
	addTwoNumbers:
		add $v1, $a2, $a1
		
 		jr $ra
		
	
		