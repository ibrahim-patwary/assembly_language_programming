INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
    
   
    
    MOV AX,1
   
   
    
    CMP AX,0
    JL NEGA
    JE ZERO
    JG POS
    
    
    
    
    ZERO:
    MOV BX,0
    JMP OUTPUT
    
    
    NEGA:
    MOV BX,-1
    JMP OUTPUT
    
    POS:
    MOV BX,1
    JMP OUTPUT
    
    OUTPUT:
    MOV AH,2
    MOV DX,BX
    ADD DX,48
    INT 21H
    JMP EXIT
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN