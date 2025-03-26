.data
frase: .asciiz "\n Entre com um valor: " # \n é newline

.text

# print int
li $v0,1 # carrega imediatamente (li) o syscall print int em $v0
addi $a0,$0,10 # essa linha também pode ser representado por -> li $a0,10 em que é colocar 10 no $a0
syscall

# print string
la $a0,frase # carrega o endereço em $a0 da frase
li $v0,4 # carrega imediatamente (li) o syscall de print string em $v0
syscall

# read int
li $v0,5 # carrega imediatamente (li) o syscall de read i
add $t1,$v0,$0 # salva o valor digitado em $v0 para $t1
syscall
