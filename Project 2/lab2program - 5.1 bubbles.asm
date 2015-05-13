# NWEN 242 Lab 2
# Program: lab2program
# Author: Tianfu Yuan
# ID: 300228072

addi $2, $0, 3
sw $2, 0($0)
nop
nop
nop
addi $3, $0, 2
addi $9, $0, 12
sw $9, 12($0)
nop
nop
uncon:
add $1, $2, $3
lw $5, 12($0)
sw $1, 0($0)
nop
nop
nop
addi $4, $0, 100
slt $6, $1, $4
beq $6, $0, fin
nop
add $2, $2, $2
add $3, $3, $3
lw $8, 0($0)
beq $8, $0, fin
nop
lw $7, 0($5)
add $7, $3, $7
nop
nop
nop
beq $0, $0, uncon
nop
fin:
END
