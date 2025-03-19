.data
imc: .byte 0
p: .byte 88
a: .byte 2

.text
lb $t1,p #carrega o peso em $t1
lb $t2,a #carrega a altura em $t2
mult $t2,$t2 # registrador low (lo) = altura ^ 2
mflo $t3 # move from low o valor da altura ^ 2 para $t3
div $t4,$t1,$t3 # salva a divisão entre peso pela altura ^ 2
sb $t4,imc # salva o valor que está em $t4 para aonde o imc está salvo na memória
