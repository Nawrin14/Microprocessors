;R1(ON)-R1(OFF)-(Y+G(ON))-R2(ON)

L SEGMENT PARA PUBLIC 'CODE'
ASSUME CS:L
ORG 1000H

START:
    
    MOV AL,080H
    OUT 1FH,AL
    
    MOV AL,0FFH
    OUT 19H,AL  
    
    MOV AL,01H
    OUT 1BH,AL
    
    MOV CX,0FFFFH
    L0:LOOP L0  
    
    MOV AL,0H
    OUT 1BH,AL
    
    MOV CX,0FFFFH
    L1:LOOP L1
    
    MOV AL,06H
    OUT 1BH,AL
    
    MOV CX,0FFFFH
    L2:LOOP L2
    
    MOV AL,0EH
    OUT 1BH,AL   
    
L ENDS
END START
    
 
    
    
    
    