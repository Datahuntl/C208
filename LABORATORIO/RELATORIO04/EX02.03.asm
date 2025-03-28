.text

addi $t1,$t1,20 # valor de A
addi $t2,$t2,126 # valor de B
addi $t3,$t3,30 # valor de C

bgt $t1,$t2,maior
	sub $t2,$t1,$t3
	add $t3,$t2,$t3
	j fim

maior:
	sub $t3,$t1,$t2
	add $t1,$t2,$t3

fim:
