.data

f1: .asciiz "Insira um número qualquer em Reais: "
fcem: .asciiz "\nQuantidade de notas de CEM: "
fcinq: .asciiz "\nQuantidade de notas de CINQUENTA: "
fdez: .asciiz "\nQuantidade de notas de DEZ: "
fum: .asciiz "\nQuantidade de notas de UM: "

.text

add $t2,$t2,100 # $t2 está com o valor de 100
add $t3,$t3,50 # $t3 está com o valor de 50
add $t4,$t4,10 # $t4 está com o valor de 10

#------------ IMRPIME A FRASE -------------
la $a0,f1 # carrega a variavel f1 no $a0
li $v0,4 # syscall para fazer print string 
syscall

#------------ LÊ O NÚMERO -------------
li $v0,5 # syscall para fazer read int
syscall
add $t1,$v0,0 # coloca o valor recebido em $v0 para $t1

#------------ PROCESSAMENTO ------------------
processo:
	bge $t2,$t1,cinquenta
	cem:
		div $t1,$t2 # faz a divisão do número original por 100 ($t2)
		mflo $t5 # pega a parte inteira da divisão e move para $t5
		mfhi $t1 # pega o resto da divisão e move para $t1
	cinquenta:
		div $t1,$t3
		mflo $t6
		mfhi $t1
		bge $t4,$t1,dez
		dez:
			div $t1,$t4
			mflo $t7
			mfhi $t1
			j fim

fim:
	li $v0,4 # syscall para fazer print string 
	la $a0,fcem # carrega a variavel fcem no $a0
	syscall
	li $v0,1 # carrega imediatamente (li) o syscall print int em $v0
	addi $a0,$t5,0 
	syscall
	
	li $v0,4 # syscall para fazer print string 
	la $a0,fcinq # carrega a variavel fcinq no $a0
	syscall
	li $v0,1 # carrega imediatamente (li) o syscall print int em $v0
	addi $a0,$t6,0 
	syscall
	
	li $v0,4 # syscall para fazer print string 
	la $a0,fdez # carrega a variavel fcem no $a0
	syscall
	li $v0,1 # carrega imediatamente (li) o syscall print int em $v0
	addi $a0,$t7,0 
	syscall
	
	li $v0,4 # syscall para fazer print string 
	la $a0,fum # carrega a variavel fcinq no $a0
	syscall
	li $v0,1 # carrega imediatamente (li) o syscall print int em $v0
	mfhi $a0
	syscall
