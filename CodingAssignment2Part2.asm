.data
#Database: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
firstQuestion: .asciiz "What is the result of 5+5?\n"
secondstatement: .asciiz "Type in your answer here: \n"
correct: .asciiz "Correct"
wrong: .asciiz "Wrong Answer\n"
tryAgain: .asciiz "Try again\n"
gameOver: .asciiz "Sorry, game over"

.text 
# Set value of the s0 register to 10 ANSWER
addi $s0, $0, 10
#Set s2 the value of zero amount of times user has gusssed 
li $s2, 0
#Max amount of attempts
li $s3, 3



loop: 

# Display the firstQuestion string 
li $v0, 4          # syscall code for print string
la $a0, firstQuestion    
syscall
    
# Display the secondstatement string 
li $v0, 4          # syscall code for print string
la $a0, secondstatement    
syscall
    
    
# Read integer from user
li $v0, 5          # syscall code for read integer
syscall
move $s1, $v0      # move user input to $s1

addi $s2, $s2, 1
beq $s0, $s1, equal
beq $s2, $s3, done
# Display the wrong string 
li $v0, 4          # syscall code for print string
la $a0, wrong 
syscall   
# Display the tryAgain string 
li $v0, 4          # syscall code for print string
la $a0, tryAgain    
syscall
j loop




equal: 
# Display the correct string 
li $v0, 4          # syscall code for print string
la $a0, correct    
syscall
#Exit program
li $v0, 10
syscall


done: 
# Display the gameOver string 
li $v0, 4          # syscall code for print string
la $a0, gameOver    
syscall
#Exit program
li $v0, 10
syscall
