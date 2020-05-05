 .data
 	myMessage: .asciiz "Hello world!! \n"
 .text
 	li $v0, 4
 	la $a0, myMessage
 	syscall
 
 