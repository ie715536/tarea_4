.data

.text
main:
    addi $s0, $zero, 1  #counter
    addi $s1, $zero, 0  #variable
    addi $t0, $zero, 0  #bandera

doWhile:
suma:
    add $s0, $s0, $s0    #sumas counter mas counter a counter
    div $s1, $s0, 4      #divides counter entre 4 y lo guardas en variable
    slti $t0, $s1, 20    #se hará hasta que variable sea mayor que 20
    bne $t0, $zero, doWhile 
    
exit:
    
    
