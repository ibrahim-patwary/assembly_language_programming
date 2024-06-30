;1+2+3+.....+N

   
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
SUM DB 0
N DB ?
.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    SUB AL,48
    MOV N,AL
    
    MOV BL,1
    
    L1: 
    CMP BL,N
    JG OUTPUT
    ADD SUM,BL
    INC BL
    JMP L1   
    
    
    OUTPUT: 
     PRINTN
     PRINT 'THE SUM IS:'
     MOV AH,2
     MOV DL,SUM
     ADD DL,48
     INT 21H
    
     
     
     
     EXIT:
     MOV AH,4CH
     INT 21H
     MAIN ENDP
END MAIN