.data
mes1: .asciiz "entrer un caractere: "
mes2: .asciiz "votre caractere est: "

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
move $t0, $v0

#espace
li $a0, 10
li $v0, 11
syscall

#afficher mes2
li $v0, 4
la $a0, mes2
syscall 

#afficher symbol
move $a0, $t0
li $v0, 11
syscall


li $v0, 10
syscall
.end main