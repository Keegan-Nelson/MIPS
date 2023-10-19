.globl subfunc

.data
str3: .asciiz "This is sub function!\n"

.text

subfunc: 
li $v0, 4 
la $a0, str3 
syscall 
jr $ra 