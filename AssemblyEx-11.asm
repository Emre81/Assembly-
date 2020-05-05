.data
	message: .asciiz "number1 is greater than number2"
	message2: .asciiz "number 1 is less than number2"
.text
	addi $t0, $zero, 10
	addi $t1, $zero, 11
	
	blt $t0, $t1, comparisonOfNumbers
	
	
	#Syscall to end program
	li $v0, 10
	syscall
	
	comparisonOfNumbers:
		li $v0, 4
		la $a0, message2
		syscall
	