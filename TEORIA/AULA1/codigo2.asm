.text
li $t0,10 #carrega 10 em $t0
li $t1,11 #carrega 10 em $t1
li $t3,5 #carrega 5 em $t3

# if ($t0 == $t1) then $t3+=1, else $t3-=1

beq $t0,$t1,igual #comparação com $t0 e $t1, se for verdade, vai para uma label igual 
addi $t3,$t3,-1 #se a comparação não for verdade diminui -1 para o $t3
j fim #se a comparação não for verdadeira após diminuir pula para a label fim

igual: addi $t3,$t3,1 #nessa label, quando usada adiciona +1 para o $t3

fim:
