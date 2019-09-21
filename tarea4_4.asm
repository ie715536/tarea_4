.data

.text
main:
    addi $t0, $zero, 2  #sum
    addi $t1, $zero, 4  #n
    jal Pow
Pow:
    beq $t1, $zero, index0  #Se compara si el exponente es 0 desde un inicio
    
    seq $t3, $t1, 1  #Cuando el exponente sea igual a 1 se acaba el programa 
    bne $t3, $zero, exit 

    mul $t0, $t0, 2  #Función recursiva Pow, multiplica por dos y se repite reduciendo la n
    subi $t1, $t1, 1
    jr $ra
    
index0:
    addi $t0, $zero, 1  #En caso de que el exponente sea cero 
    
exit:
