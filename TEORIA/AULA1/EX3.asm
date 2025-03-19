.text
li $t0,5 #carrega 5 em $t0
li $t1,0 #carrega 0 em $t1
li $t2,1 #carrega 1 em $t2

# for ($t2 = 1 to 5) then $t1+=1

volta:
ble $t2,$t0,repete #se o valor de $t2 for menor que $t0 vai para a proxima linha e pula para o final, se for, vamos para repete
j fim:

repete: # no repete adiciona +1 no $t1 e $t2 e volta para a comparação do branch
addi $t1,$t1,1
addi $t2,$t2,1
j volta:

fim:
