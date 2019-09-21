.data

.text
main:
    addi $t0, $zero, 2  #sum
    addi $t1, $zero, 4  #n
    jal Pow
Pow:
    beq $t1, $zero, index0
    
    seq $t3, $t1, 1
    bne $t3, $zero, exit 

    mul $t0, $t0, 2
    subi $t1, $t1, 1
    jr $ra
    
index0:
    addi $t0, $zero, 1  #En caso de que el exponente sea cero 
    
exit: