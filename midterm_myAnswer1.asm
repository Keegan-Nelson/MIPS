.data 

askInput1: .asciiz "Input the value of the base: \n"
askInput2: .asciiz "Input the value of the exponent: \n"
result: .asciiz "The final result is: "

.text 

main: 

li $s0, 0 
li $s1, 0
li $s2, 1 # result variable 
li $s3, 0   #counter variable i 

la $a0, askInput1
li $v0, 4 
syscall 

li $v0, 5 
syscall       # contents in x
add $s0, $0, $v0 

la $a0, askInput2
li $v0, 4 
syscall 

li $v0, 5 
syscall      # contents in e 
add $s1, $0, $v0 

for:
bge $s3, $s1, end
mul $s2, $s0, $s2 
add $s3, $s3, 1
j for

#add  $a0, $0, $s0 
#li $v0, 1
#syscall 

end:
la $a0, result   #print out result string 
li $v0, 4 
syscall 

add $a0, $0, $s2  #store the result in r
li $v0, 1 
syscall #print it out 

li $v0, 10 
syscall 