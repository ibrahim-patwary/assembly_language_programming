INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA 
NUM DB ?
.CODE

MAIN PROC
    
    
    MOV CX,10
    
    
    L1:
    PRINTN
    MOV AH,2
    MOV DL, "*"
    INT 21H
    LOOP L1
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN