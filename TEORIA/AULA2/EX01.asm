.data

f1: .asciiz "Insira o primeiro número: "
f2: .asciiz "\nInsira o segundo número: "

.text

#------------ IMRPIME A PRIMEIRA FRASE -------------

la $a0,f1 # carrega a variavel f1 no $a0
li $v0,4 # syscall para fazer print string 
syscall

#------------ LÊ O PRIMEIRO NÚMERO ---------------

li $v0,5 # syscall para fazer read int
syscall
add $t1,$v0,0 # coloca o valor recebido em $v0 para $t1

#------------ IMPRIME A SEGUNDA FRASE --------------

la $a0,f2 # carrega a variavel f1 no $a0
li $v0,4 # syscall para fazer print string 
syscall

#------------ LÊ O SEGUNDO NÚMERO ----------------

li $v0,5 # syscall para fazer read int
syscall
add $t2,$v0,0 # coloca o valor recebido em $v0 para $t1

#------------ PROCESSAMENTO ------------------

addi $t2,$t1,0
addi $t1,$v0,0

li $v0,1 # syscall para fazer print string 
addi $a0,$t1,0 # carrega a variavel t1 no $a0
syscall

li $v0,1 # syscall para fazer print string 
addi $a0,$t2,0 # carrega a variavel t1 no $a0
syscall

li $v0,10
syscall
