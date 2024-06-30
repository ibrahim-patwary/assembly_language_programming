;****
;****
;****
;****
   
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.CODE

MAIN PROC
    

    MOV CX,4 ;LINE NUMBER
    MOV BX,4 ;STAR NUMBER
    
    L1: 
    MOV AH,2
    MOV DL,'*'
    INT 21H 
    DEC BX
    CMP BX,0
    JE  L2
    JMP L1
    
    
    
    
    
    L2: 
     PRINTN
     MOV BX,4
    
     LOOP L1
    
     
     
     
     EXIT:
     MOV AH,4CH
     INT 21H
     MAIN ENDP
END MAIN