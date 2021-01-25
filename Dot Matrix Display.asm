COMMENT *
   
   PRINT     -------
           /       /
          /       /
         /       /
         -------   
*

D SEGMENT PARA PUBLIC 'CODE'
ASSUME CS:D
ORG 1000H 
    
START:
    MOV AL,80H
    OUT 1EH,AL  
    
L1:
    MOV AL,FFH
    OUT 18H,AL
    MOV AL,FBH
    OUT 1AH,AL
    MOV AL,01H
    OUT 1CH,AL 
    
    MOV CX,0FFFFH
    L0:LOOP L0 
    MOV CX,0FFFFH
    L1:LOOP L1  
    
    MOV AL,FFH
    OUT 18H,AL
    MOV AL,FBH
    OUT 1AH,AL
    MOV AL,02H
    OUT 1CH,AL 
    
    MOV CX,0FFFFH
    L2:LOOP L2 
    MOV CX,0FFFFH
    L3:LOOP L3
    
    MOV AL,FFH
    OUT 18H,AL
    MOV AL,FBH
    OUT 1AH,AL
    MOV AL,04H
    OUT 1CH,AL 
    
    MOV CX,0FFFFH
    L4:LOOP L4 
    MOV CX,0FFFFH
    L5:LOOP L5
    
    MOV AL,FFH
    OUT 18H,AL
    MOV AL,FBH
    OUT 1AH,AL
    MOV AL,08H
    OUT 1CH,AL 
    
    MOV CX,0FFFFH
    L6:LOOP L6 
    MOV CX,0FFFFH
    L7:LOOP L7
    
    MOV AL,FFH
    OUT 18H,AL
    MOV AL,FBH
    OUT 1AH,AL
    MOV AL,10H
    OUT 1CH,AL 
    
    MOV CX,0FFFFH
    L8:LOOP L8 
    MOV CX,0FFFFH
    L9:LOOP L9
    
    MOV AL,FFH
    OUT 18H,AL
    MOV AL,F7H
    OUT 1AH,AL
    MOV AL,20H
    OUT 1CH,AL 
    
    MOV CX,0FFFFH
    L10:LOOP L10 
    MOV CX,0FFFFH
    L11:LOOP L11
    
    MOV AL,FFH
    OUT 18H,AL
    MOV AL,EFH
    OUT 1AH,AL
    MOV AL,40H
    OUT 1CH,AL 
    
    MOV CX,0FFFFH
    L12:LOOP L12 
    MOV CX,0FFFFH
    L13:LOOP L13
    
    MOV AL,FFH
    OUT 18H,AL
    MOV AL,DFH
    OUT 1AH,AL
    MOV AL,80H
    OUT 1CH,AL 
    
    MOV CX,0FFFFH
    L14:LOOP L14 
    MOV CX,0FFFFH
    L15:LOOP L15  
    
    MOV AL,FFH
    OUT 18H,AL
    MOV AL,DFH
    OUT 1AH,AL
    MOV AL,40H
    OUT 1CH,AL 
    
    MOV CX,0FFFFH
    L16:LOOP L16 
    MOV CX,0FFFFH
    L17:LOOP L17
    
    MOV AL,FFH
    OUT 18H,AL
    MOV AL,DFH
    OUT 1AH,AL
    MOV AL,20H
    OUT 1CH,AL 
    
    MOV CX,0FFFFH
    L18:LOOP L18 
    MOV CX,0FFFFH
    L19:LOOP L19
    
    MOV AL,FFH
    OUT 18H,AL
    MOV AL,DFH
    OUT 1AH,AL
    MOV AL,10H
    OUT 1CH,AL 
    
    MOV CX,0FFFFH
    L20:LOOP L20 
    MOV CX,0FFFFH
    L20:LOOP L20
    
    MOV AL,FFH
    OUT 18H,AL
    MOV AL,DFH
    OUT 1AH,AL
    MOV AL,08H
    OUT 1CH,AL 
    
    MOV CX,0FFFFH
    L21:LOOP L21 
    MOV CX,0FFFFH
    L22:LOOP L22
    
    MOV AL,FFH
    OUT 18H,AL
    MOV AL,EFH
    OUT 1AH,AL
    MOV AL,04H
    OUT 1CH,AL 
    
    MOV CX,0FFFFH
    L23:LOOP L23 
    MOV CX,0FFFFH
    L24:LOOP L24
        
    MOV AL,FFH
    OUT 18H,AL
    MOV AL,F7H
    OUT 1AH,AL
    MOV AL,02H
    OUT 1CH,AL
    
    MOV CX,0FFFFH
    L25:LOOP L25 
    MOV CX,0FFFFH
    L26:LOOP L26
    
    JMP L1
    
D ENDS
END START
    
    
