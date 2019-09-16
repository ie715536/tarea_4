.data 
vector1: .word 1 2 3
vector2: .word 4 5 6
result:
.text
main:
     addi $t3, $zero, 8
     addi $t2, $t3, 5

     la $a1, vector1
     la $a2, vector2
     la $a0, result
     jal sum
     
     j exit

sum:
    addi $sp, $sp, -20
    sw $t0, 0($sp)
    sw $t1, 4($sp)
    sw $t2, 8($sp)
    sw $t3, 12($sp)
    sw $t4, 16($sp)
    
    addi $t0, $zero, 0
for:
    lw $t2,0($a1)
    lw $t3,0($a2)
    add $t4,$t2,$t3
    sw $t4,0($a0)
    
    addi $a1,$a1,4
    addi $a0,$a0,4
    addi $a2,$a2,4
    
    addi $t0, $t0, 1	
    slti $t1, $t0, 3
    bne $t1, $zero,  for
    
    lw $t0, 0($sp)
    lw $t1, 4($sp)
    lw $t2, 8($sp)
    lw $t3, 12($sp)
    lw $t4, 16($sp)
    addi $sp, $sp, +20
                      
    jr $ra
    
exit: