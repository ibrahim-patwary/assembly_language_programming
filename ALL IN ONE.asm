INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
NUM DB ?
NUM1 DB 2
NAM DW 'HEY ! BOSS!! $'
.CODE

MAIN PROC
    
    
    MOV AX,@DATA
    MOV DS,AX
    
    ;OUTPUT FOR INITIAL VALUE
    PRINT 'OUTPUT FOR INITIAL VALUE '
    MOV AH,2
    MOV DL,5
    ADD DL,48
    INT 21H 
    PRINTN 
    
    ;OUTPUT FOR ASSIGN VALUE 
    PRINT 'OUTPUT FOR ASSIGN VALUE '
    MOV AH,2
    MOV DL,NUM1
    ADD DL,48
    INT 21H
    PRINTN 
    
    ;INPUT INTEGER VALUE 
    PRINT 'ENTER A INTEGER NUMBER : '
    MOV AH,1
    INT 21H
    MOV NUM,AL
    SUB NUM,48
    PRINTN 
    
    ;OUTPUT
    PRINT 'OUTPUT OF LAST INPUT '
    MOV AH,2
    MOV DL,NUM
    ADD DL,48
    INT 21H
    PRINTN
    
    ;OUTPUT FOR STRING VALUE 
    PRINT 'STRING OUTPUT: '
    MOV AH,9
    LEA DX,NAM
    INT 21H
    
    
    
    
    
    
    
    
    
    
    
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN