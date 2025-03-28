.text
li $t0,0 # valor para CONT
li $t1,10 # valor para I

volta:
bgt $t1,0,maior
j fim

maior:
	sub $t1,$t1,2 
	add $t0,$t0,5
	j volta

fim:
