# floatAdder.asm
	.data 
message1: .asciiz "Enter 1st float number: "
message2: .asciiz "Enter 2nd float number: "
message3: .asciiz "Sum is "

	.text 

	#Give user message to enter number
main:	li $v0, 4
	la $a0, message1
	syscall

	#read user input 
	li $v0, 6
	syscall

	#store input taken from user 
	mov.s  $f1, $f0

	#give user message to enter another number 
	li $v0, 4
	la $a0, message2
	syscall

	#read user input
	li $v0, 6
	syscall 

	#add both reg in which input was stored 
	add.s $f3, $f0, $f1

	#display the message of answer 
	li $v0, 4
	la $a0, message3
	syscall 

	#display the answer
	li $v0, 2
	mov.s $f12, $f3
	syscall



