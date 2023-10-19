.data
array: .word 1, 2, 3, 4
space: .asciiz " and " 

.text
lw $t0, array($0) #This is the first element in the array
# lw $t1, array+4   #This is the second element in the array 
lw $t1, array+8 #This is the thrid element in the array  array[2]
sw $t1, array($0)  #Store value of t1 into array in the index 0 
sw $t0, array+8    #Store the value of t0 into array at index 2

#After swapping 
lw $t2, array($0) #This is the first element in the array
lw $t3, array+8 #This is the thrid element in the array  array[2]

li $v0, 1 
add $a0, $t2, $zero
syscall

la $a0, space
li $v0, 4 
syscall 

li $v0, 1 
add $a0, $t3, $zero
syscall

