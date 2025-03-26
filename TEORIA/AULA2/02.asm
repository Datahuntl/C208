# Escreva um código em Assembly MIPS que leia um número fornecido pelo usuário e mostre se o mesmo é par ou impar

.data

f1: .asciiz "Forneça um número inteiro: "
f2: .asciiz "O número é PAR!"
f3: .asciiz "O número é IMPAR!"

.text

#--------- IMPRIME A FRASE 1 -------------

la $a0,f1 # carrega a variavel f1 no $a0
li $v0,4 # syscall para fazer print string 
syscall

#--------- LEITURA DO VALOR DIGITADO ---------

li $v0,5 # syscall para fazer read int
syscall
add $t1,$v0,0 # coloca o valor recebido em $v0 para $t1

#--------- PROCESSAMENTO ---------------

div $t2,$t1,2 # faz a divisão de $t1 / 2 e salva o valor final em $t2
mfhi $t3 # salva o valor que esta em high (hi) ou seja o resto da divisão em $t3
beqz $t3,par
	# caso o $t3 (resto da divisão) não seja igual a 0 da print o numero é impar
	li $v0,4 # syscall para fazer print string 
	la $a0,f3 # carrega a variavel f3 no $a0
	syscall
	j fim # pula para o label fim

	# caso o $t3 (resto da divisão) seja igual a 0 da print o numero é par
par: 
	li $v0,4 # syscall para fazer print string 
	la $a0,f2 # carrega a variavel f2 no $a0
	syscall

fim: 
	li $v0,10
	syscall
