.text

addi $t1,$t1,20 # valor de A
addi $t2,$t2,126 # valor de B
addi $t3,$t3,30 # valor de C

beq $t1,$t2,igual
	add $t2,$t1,$t3
	sub $t3,$t2,$t3
	j fim

igual:
	add $t3,$t1,$t2
	sub $t1,$t2,$t3

fim:
