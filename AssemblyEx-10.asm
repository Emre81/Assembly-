.data
	message: .asciiz "The numbers are equal."
	message2: .asciiz "Nothing happened"
.text
	main: 
		addi $t0, $zero, 5
		addi $t1, $zero, 20
	
		bne  $t0, $t1, numbersNotEqual
		
	
	#Syscall to end program
	li $v0, 10
	syscall
	
	numbersNotEqual:
		li $v0, 4
		la $a0, message2
		syscall
	
	