;Display BC2   

S SEGMENT PARA PUBLIC 'CODE'
ASSUME CS:S
ORG 1000H

START: 

    MOV AL,080H
    OUT 1FH,AL 
    
    MOV AL,080H
    OUT 19H,AL 
    
    MOV CX,0FFFFH
    L0:LOOP L0
    
    MOV AL,0C6H 
    OUT 19H,AL
    
    MOV CX,0FFFFH
    L1:LOOP L1
    
    MOV AL,0A4H
    OUT 19H,AL
        
    
S ENDS
END START