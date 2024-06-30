INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.CODE

MAIN PROC
    
    MOV CX,0
    MOV AH,1
    INT 21H
    
    
    
    
    
    L1:
     CMP AL,0DH
     JE OUTPUT
     INC CX
     INT 21H
     JMP L1
     
    OUTPUT: 
    PRINTN
    MOV AH,2
    MOV DX,CX
    ADD DX,48
    INT 21H 
     
     
     
     
     
     EXIT:
     MOV AH,4CH
     INT 21H
     MAIN ENDP
END MAIN