.data 

output: .asciiz " is the output of the function."

.text 

main: 
li $a0,43 #
li $a1, 1 # 

jal test

move $a0, $v0 #gets the return value/output of the function
li $v0, 1
syscall

la $a0, output
li $v0, 4
syscall

li $v0, 10 
syscall 
