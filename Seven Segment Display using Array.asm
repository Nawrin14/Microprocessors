;Display BC2

S SEGMENT PARA PUBLIC 'CODE'
ASSUME CS:S
ORG 1000H

START: 

    MOV AL,80H
    OUT 1FH,AL 
    
    MOV SI, OFFSET DATA 
    
    MOV BX,03H
    
    L1:MOV AL,BYTE PTR CS:[SI]
    OUT 19H,AL
    
    MOV CX,0FFFFH
    L2:LOOP L2
    
    INC SI 
    DEC BX
    CMP BX,0000H
    JE EXIT
    JMP L1
    
    DATA:
    DB 080H
    DB 0C6H
    DB 0A4H 
    
    EXIT:
            
S ENDS
END START