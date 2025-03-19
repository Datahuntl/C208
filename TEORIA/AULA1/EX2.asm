.text
li $t0,35 #carrega 35 em $t0
li $t1,30 #carrega 30 em $t1

# while ($t0 > $t1) then $t2+=1

volta:
bgt $t0,$t1,maior #comparação com $t0 e $t1, se for verdade, vai para uma label igual 
j fim #se a comparação não for verdadeira após diminuir pula para a label fim

maior: addi $t1,$t1,1 #nessa label, quando usada adiciona +1 para o $t2
j volta #quando a comparação for verdadeira pulamos de volta para o inicio, criando um loop de repetição while

fim:
