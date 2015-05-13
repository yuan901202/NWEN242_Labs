.data 0x10000000
Array_A:
.word 1,1,1,1,2,2,2,2
Array_B:
.word 3,3,3,3,4,4,4,4
.text
.globl __start
__start:
li $8, 1 # $8 = iterations of external loop
li $3, 1 # $3 = stride in elements
li $6, 0 # $6 = sum
sll $9, $3, 2 # $9 = stride in bytes = $3x4
ext_loop:
li $5, 8 # $5 = number of elements of Array_A
li $11, 8 # $11 = number of elements of Array_B
li $4, 0 # $4 = index
li $12, 0 # $12 = index
int_loop:
lw $7, Array_A($4)
lw $10, Array_B($12)
add $6, $6, $7 #sum=sum+Array_A[i]
add $6, $6, $10 #sum=sum+Array_B[i]
add $4, $4, $9 # address of next element
sub $5, $5, $3
bgt $5, $0, int_loop #for(j=0; j<N; j++)
addi $8, $8, -1 
bgt $8, $0, ext_loop #for(i=0; i<8; i++)
.end
