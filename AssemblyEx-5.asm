.data
	number1: .word 10
	number2: .word 5
.text

	lw $s0 number1($zero)
	lw $s1 number2($zero)
	
	sub $t0, $s0, $s1
	
	li $v0, 1 
	move $a0, $t0
	syscall