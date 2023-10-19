.data 
#str3: .asciiz "This is sub function!\n"
str1: .asciiz "This is main function!\n"
str2: .asciiz "This is main function again!\n"

.text 

main: 
li $v0, 4
la $a0, str1
syscall 

jal subfunc #pc << subfunc & $ra << addr of next line "li $v0, 4"

li $v0, 4 
la $a0, str2 
syscall 

li $v0, 10 
syscall 
