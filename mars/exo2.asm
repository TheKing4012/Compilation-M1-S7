.data
array: .space 12 #Reserve un espece de 12 octet

.text
main:	#Load dans $v0 le service de print String
	la $t0, array
	li $t1, 1
	sw $t1, ($t0)
	li $t1, 2
	sw $t1, 4($t0)
	li $t1, 3
	sw $t1, 8($t0)
	lw $t1, ($t0)
	lw $t2, 8($t0)
	sw $t2, ($t0)
	sw $t1, 8($t0)