.data
text : .asciiz "Veuillez entrer un entier\n"

.text
main:	#Load dans $v0 le service de print String
	li $v0, 4
	#On met dans le tampon a0 la valeur de text
	la $a0, text
	syscall #Appel systeme
	#Load dans $v0 le service de lecture d'entier
	li $v0, 5 #Le résulat est suavegardé dans $v0
	syscall #Appel systeme
	#Je met 0 dans $t0
	li $t0, 0
	#On verifie si $v0 est plus petit que $t0
	bge $v0, $t0, show
	neg $v0, $v0
show:	#On met la valeur de $v0 dans $a0
	move $a0, $v0
	#On met dans $v0 le service de print Integer
	li $v0, 1
	syscall	