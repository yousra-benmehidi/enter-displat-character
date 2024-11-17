.data
mes1: .asciiz "entrer un caractere: "
saut: .ascii "\n"
mes2: .asciiz "votre caractere est: "
symbol: .space 1

.text
.globl main
.ent main
main:
#afficher mes1
li $v0, 4
la $a0, mes1
syscall

#saisir un symbole
li $v0, 12
syscall
sb $v0, symbol

#espace
lb $a0, saut
li $v0, 11
syscall

#afficher mes2
li $v0, 4
la $a0, mes2
syscall 

#afficher symbol
li $v0, 11
lb $a0, symbol
syscall


li $v0, 10
syscall
.end main