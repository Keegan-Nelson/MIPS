.data
strOne:    .asciiz "Hello everyone\n"
strTwo:    .asciiz "today is the \n"
strThree:   .asciiz "th of September"


.text
         
main:
        la $a0,strOne      # print()
        li $v0,4
        syscall
        
        la $a0,strTwo      # print()
        li $v0,4
        syscall

	li $v0, 1       # print()
	li $a0, 14
	syscall

	la $a0,strThree     # print()
        li $v0,4
        syscall

        li $v0,10    # exit()
        syscall         # exit
