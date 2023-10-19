.data 

array: .word 1, 0, 3, 0, 0, 1, 5, 0, 7, 0, 6, 0 # 12 elements long 
output: .asciiz "The count of zero elements is: \n"
#askInput1: .asciiz "Input the value of the base: \n"
.text 

main: 
li $s0, 0 #loop counter
li $s1, 0 # element counter
li $s2, 0 # array incrementer
li $s4, 1 # array replacer



loop:
bgt $s0, 12 done 
lw $s3, array($s2)
beq $s3, 0 zeroFound
add $s0, $s0, 1
add $s2, $s2, 4
j loop 

zeroFound: 
sw $s4, array($s2)
add $s1, $s1, 1 
add $s2, $s2, 4
j loop

done:
la $a0, output
li $v0, 4
syscall

move $a0, $s1
li $v0, 1
syscall

li $v0, 10 
syscall 