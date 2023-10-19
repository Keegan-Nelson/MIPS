.data 
#printf(“Value of x before subfun is: %d”, x);  %d --> tells that x is INT
str1: .asciiz "Value of x before subfun is: \n"
#printf(“Value of x after subfun is: %d”, x)
str2: .asciiz "\nValue of x after subfun is: \n"

.text 
main: 
li $s0, 2

#string 
li $v0, 4 
la $a0, str1
syscall
#integer to print before
li $v0, 1 
move $a0, $s0 
syscall 

jal subfunc #pc << subfunc & $ra << addr of next line "li $v0, 4"

li $v0, 4 
la $a0, str2 
syscall 
#integer to print after
li $v0, 1 
move $a0, $v1 
syscall 

#Quit the program when done 
li $v0, 10 
syscall 
