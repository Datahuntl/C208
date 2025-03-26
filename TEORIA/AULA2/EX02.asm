.data

f1: .asciiz "Insira o primeiro número: "
f2: .asciiz "\nInsira o segundo número: "
f3: .asciiz "\nInsira o terceiro número: "

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

#------------ IMPRIME A TERCEIRA FRASE --------------

la $a0,f3 # carrega a variavel f1 no $a0
li $v0,4 # syscall para fazer print string 
syscall

#------------ LÊ O TERCEIRO NÚMERO ----------------

li $v0,5 # syscall para fazer read int
syscall
add $t3,$v0,0 # coloca o valor recebido em $v0 para $t1

#------------ PROCESSAMENTO ------------------

# A FAZER

# T1, T2, T3
# T1, T3, T2
# T2, T1, T3
# T2, T3, T1
# T3, T1, T2
# T3, T2, T1

# tem que se fazer o bgt para todos os casos
