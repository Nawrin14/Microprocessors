;SEVEN SEGMENT DISPLAY - BC2
;LED DISPLAY - R1(ON)-R1(OFF)-(Y+G(ON))-R2(ON)

SL SEGMENT PARA PUBLIC 'CODE' 
ASSUME CS:SL 
ORG 1000H

START:

    MOV AL, 80H 
    OUT 1FH, AL 
    MOV SI, OFFSET DATA 
    MOV BX, 010H

    TOP1:
    
        MOV AL, BYTE PTR CS:[SI] 
        OUT 19H, AL 
        MOV CX, 0FFFFH 
        L0: LOOP L0
        
        INC SI 
        DEC BX 
        CMP BX, 0000H 
        JNE TOP1      
        
        MOV DX, 04H 
    
    TOP2:  
    
        MOV AL, BYTE PTR CS:[SI] 
        OUT 1BH, AL 
        MOV CX, 0FFFFH 
        L1: LOOP L1  
        
        INC SI 
        DEC DX 
        CMP DX, 0000H 
        JE EXIT
        JMP TOP2
    
    DATA:       
    
        DB 0FEH 
        DB 0FDH 
        DB 0FBH 
        DB 0F7H
        DB 0EFH 
        DB 0DFH
        DB 0BFH
        DB 0FEH 
        DB 0DFH 
        DB 0EFH
        DB 0F7H
        DB 0FEH 
        DB 0FDH 
        DB 0F7H 
        DB 0EFH
        DB 0BFH 
        DB 01H 
        DB 00H 
        DB 06H 
        DB 0EH  
        
    EXIT: 
    
SL ENDS 
END START
