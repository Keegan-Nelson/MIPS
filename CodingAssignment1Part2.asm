
.text 
li $t1, 10 #t1 value of 10 
addi $t2, $t1, 1 #add 1 to t1 making it 11 
addi $t3, $t1, 2 #add 2 to t1 and store it in t3 making it 12
add $t5, $t2, $t3 #add t2 and t4 together and store it in t5 making it 23 
li $t4, 1 #load the value of 1 into t4 
add $t4, $t4, $t5 #Add the value of t4 and the value of t5 and store it into t4

li $v0, 1 
add $a0, $t4, $zero   #print out the value of a0 which will ultimately be t4
syscall 