;R1(ON)-R1(OFF)-(Y+G(ON))-R2(ON)

L SEGMENT PARA PUBLIC 'CODE'
ASSUME CS:L
ORG 1000H

START: 

    MOV AL,80H
    OUT 1FH,AL  
    
    MOV AL,0FFH
    OUT 19H,AL
    
    MOV SI, OFFSET DATA 
    
    MOV BX,04H
    
    L1:MOV AL,BYTE PTR CS:[SI]
    OUT 1BH,AL
    
    MOV CX,0FFFFH
    L2:LOOP L2
    
    INC SI 
    DEC BX
    CMP BX,0000H
    JE EXIT
    JMP L1
    
    DATA:
    DB 01H
    DB 0H
    DB 06H  
    DB 0EH
    
    EXIT:
            
L ENDS
END START