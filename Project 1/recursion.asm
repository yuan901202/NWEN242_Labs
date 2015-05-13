# NWEN 242 Lab 1
# Program: recursion
# Author: Tianfu Yuan
# ID: 300228072

.data
	endl: .asciiz "\n"
.text
main: 	addi $a0, $zero, 32
	#TODO: jump to F1, making sure we return to the right address
	li $2, 10 # exit
	syscall
# F1 takes one parameter in $a0
F1:
	#TODO: handle the base case of the recursion
	#TODO: set the right parameters for the recursion
	#TODO: store relevant registers before jump
	#TODO: perform the recursive call
	#TODO: reset data after return from recursion
	li $2, 1 # print parameter, it's already in $a0
	syscall
	move $t0, $a0 # copy parameter
	la $a0, endl # print end of line
	li $2, 4
	syscall
	move $a0, $t0 # copy parameter back
BaseCase:
	jr $ra # return to the address given in register $ra