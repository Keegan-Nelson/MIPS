.data
Database: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
message: .asciiz "Total numbers greater than 5: \n"

.text 
la $s0, Database
li $s1, 0  #set index to 0 so can see first element in Database

# addi $s0, $s0, $0
loop: 
lw $s2, Database($s1)
addi $s1, $s1, 4
addi $t2, $0, 5
addi $s4, $0, 10
bgt $s2, $t2, greater  # if t1 is greater than t2 
j loop
 
 
greater: 
#counter value for numbers greater than 5 $s3
addi $s3, $s3, 1
beq $s2, $s4, done
j loop


done: 

# Display the message string 
li $v0, 4          # syscall code for print string
la $a0, message    
syscall
#Printing out the total number of values greater than 5
move $a0, $s3  
li $v0, 1
syscall 

#Exit program
li $v0, 10
syscall
