.data

.text
main:
    addi $s0, $zero, 0  #selector
    addi $s1, $zero, 5  #a
    addi $s2, $zero, 3  #b
    addi $s3, $zero, 0  #c
    
    #switch case dependiendo del valor de $s0
case1:
    beq $s0, 1, suma
case2:
    beq $s0, 2, resta
case3:
    beq $s0, 3, multiplica
default:
    j andBitwise
    
suma: #se realiza la suma de $s1 con $s2 y se guarda en $s3
    add $s3, $s1, $s2
    j exit
resta:  #se realiza la resta de $s1 con $s2 y se guarda en $s3
    sub $s3, $s1, $s2
    j exit
multiplica:  #se realiza la multiplicación de $s1 con $s2 y se guarda en $s3
    mul $3, $s1, $s2
    j exit
andBitwise:  #se realiza un AND de $s1 con $s2 y se guarda en $s3 caso default
    and $s3, $s1, $s2
exit:

    