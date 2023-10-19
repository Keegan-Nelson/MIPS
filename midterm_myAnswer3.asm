.data 

output: .asciiz "k's value is: "
.text 

main: 
li $s0, 1 # value of i 
li $s1, 2 # value of j
li $s2, 3 # value of k

blt $s0, $s1 if
add $s2, $s2, $s1 
j done

if: 
add $s2, $s2, $s0 


done:
la $a0, output
li $v0, 4
syscall

move $a0, $s2
li $v0, 1
syscall

li $v0, 10 
syscall 