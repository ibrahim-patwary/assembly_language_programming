INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA

N DB ?
.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
   
    MOV AH,1
    INT 21H
    SUB AL,48
    MOV N,AL
    
    CMP N,7
    JG L1
     
    CMP N,4
    JG L2 
    
    CMP N,4
    JL L3
     
    L1:
    PRINTN
    PRINT 'COUNTER :1'
    JMP EXIT
    

    
    L2:
    PRINTN
    PRINT 'COUNTER:2' 
    JMP EXIT
    
    CMP BX,4
    JL L3
    
    L3:
    PRINTN
    PRINT 'COUNTER:3'
    JMP EXIT
    
   
     
     
     EXIT:
     MOV AH,4CH
     INT 21H
     MAIN ENDP
END MAIN