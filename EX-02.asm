INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA 
.CODE

MAIN PROC
    
   MOV CX,6
   MOV BX,6
   
   L1:
   
   MOV AH,2
   MOV DL,'*'
   INT 21H 
   DEC BX 
   CMP BX,0
   JE L2 
   JMP L1
   
   
   
   L2:
   PRINTN 
   MOV BX,CX
   LOOP L1
   
    
    
    
    
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN