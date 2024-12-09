.data
text : .asciiz "Veuillez entrer un entier\n"
ln: .asciiz "\n"

.text
main:	li $v0, 4
	la $a0, text
	syscall
	li $v0, 5
	syscall
	move $t1, $v0
	li $t0, 1
for:	bgt $t0, $t1, end
	li $v0, 4
	la $a0, ln
	syscall
	move $a0, $t0
	li $v0, 1
	syscall
	addi $t0, $t0, 1
	j for
end:    
