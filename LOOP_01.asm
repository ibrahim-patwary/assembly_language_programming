INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.CODE

MAIN PROC
    
    MOV CX,20
    MOV AH,2
    MOV DL, '*'
    
    
    L1:
     INT 21H 
     ;PRINTN
     CMP CX,0
     JE EXIT
     LOOP L1
     
     
     
     
     
     
     
     EXIT:
     MOV AH,4CH
     INT 21H
     MAIN ENDP
END MAIN