.data 
vector1: .word 1 2 3
vector2: .word 6 7 8

.text
main:
    addi $s0, $zero, 0  #mulRes
    
    addi $t0, $zero, 0  #i
    addi $t1, $zero, 0  #acc
    addi $t2, $zero, 3  #k
    addi $t4, $zero, 0  #registro temporal vector1
    addi $t5, $zero, 0  #registro temporal vector2 
 
    la $a1, vector1  #guarda la primer dirección del vector1 en a1
    la $a2, vector2  #guarda la primer dirección del vector2 en a2
    
    jal for 
    
for:
    
    slt $t3, $t0, $t2  # $t4 comprueba si es i menor que k    
    beq $t3, $zero, exit  
    sll $t4, $t0, 2  #desplazas i y lo guardas en el registro temporal
    sll $t5, $t0, 2 
    addi $t0, $t0, 1  # avanzas i
    
    add $t4, $t4, $a1 #Posicionas el registro temporal en la posición deseada del vector1
    add $t5, $t5, $a2 #Posicionas el registro temporal en la posición deseada del vector2
    lw $t6, 0($t4)    #Obtienes el valor de la posición seleccionada
    lw $t7, 0($t5)    #Obtienes el valor de la posición seleccionada
    
    
    
    
multAndAcumulate: #multiplica $t5 * $t6 las posiciones del vector
        
    mul $s0, $t6, $t7
    
Acumulate: # sumas acc con la multiplicación actual
    
    add $t1, $t1, $s0
    jr $ra
        
exit: #El valor del producto punto se guarda en $t1
