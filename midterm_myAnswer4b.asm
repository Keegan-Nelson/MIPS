.globl test


.text


test:
sub $t0,$a0,$a1		# a0 - a1 
addi $t0,$t0,10		# (a0 - a1) + 10
add $v0,$0,$t0	        # store result in $v0 for return

jr $ra			# return
