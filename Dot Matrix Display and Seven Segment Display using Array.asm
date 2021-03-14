COMMENT *
   
   PRINT     -------
           /       / in the Dot Matrix Display and show the corresponding row 
          /       /  number in the Seven Segment Display.
         /       /
         -------   
*

D SEGMENT PARA PUBLIC 'CODE' 
ASSUME CS:D 
ORG 1000H 

START:        

    MOV AL, 080H 
    OUT 1FH, AL 

    TOP1: 
    
        MOV SI, OFFSET DATA
        MOV BX, 038H 
    
    TOP2:
    
        MOV AL, BYTE PTR CS:[SI] 
        OUT 18H, AL
        INC SI 
        DEC BX
    
        MOV AL, BYTE PTR CS:[SI] 
        OUT 1AH, AL
        INC SI 
        DEC BX     
        
        MOV AL, BYTE PTR CS:[SI] 
        OUT 1CH, AL 
        INC SI 
        DEC BX
        
        MOV AL, BYTE PTR CS:[SI] 
        OUT 19H, AL 
                   
        MOV CX, 0FFFFH 
        L0: LOOP L0                   
        MOV CX, 0FFFFH 
        L1: LOOP L1  
        
        INC SI 
        DEC BX 
        CMP BX, 0000H 
        JE TOP1 
        JMP TOP2
    
    DATA: 
    
        DB 0FFH 
        DB 0FBH 
        DB 01H      
        DB 0A4H
        DB 0FFH 
        DB 0FBH 
        DB 02H 
        DB 0A4H
        DB 0FFH 
        DB 0FBH
        DB 04H
        DB 0A4H
        DB 0FFH 
        DB 0FBH 
        DB 08H 
        DB 0A4H
        DB 0FFH 
        DB 0FBH 
        DB 010H 
        DB 0A4H
        DB 0FFH 
        DB 0F7H 
        DB 020H  
        DB 0B0H
        DB 0FFH 
        DB 0EFH 
        DB 040H  
        DB 099H
        DB 0FFH 
        DB 0DFH        
        DB 080H  
        DB 092H
        DB 0FFH 
        DB 0DFH 
        DB 040H  
        DB 092H
        DB 0FFH 
        DB 0DFH 
        DB 020H  
        DB 092H
        DB 0FFH 
        DB 0DFH 
        DB 010H
        DB 092H
        DB 0FFH
        DB 0DFH 
        DB 08H
        DB 092H 
        DB 0FFH 
        DB 0EFH 
        DB 04H    
        DB 099H
        DB 0FFH 
        DB 0F7H        
        DB 02H 
        DB 0B0H
        
D ENDS 
END START
