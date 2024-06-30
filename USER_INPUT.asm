INCLUDE 'EMU8086.INC'
.MODEL SMALL

.STACK 100H

.DATA

MSG DB 3
MSG1 DB ?

.CODE 

MAIN PROC
    
    MOV AX ,@DATA
    MOV DS ,AX
    PRINT 'VALUE OF MSG IS '
    MOV AH,2
    MOV DL,MSG
    ADD DL,48
    INT 21H
    PRINTN  
    PRINT 'ENTER A INTEGER : '
    MOV AH,1 
    INT 21H
    MOV MSG1,AL
    SUB MSG1,48
    
    PRINTN
    PRINT 'VALUE OF MSG1 IS '
    MOV AH,2
    MOV DL,MSG1
    ADD DL ,48
    INT 21H
    
    
    
    
    
    
    
    
    
    
    
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN