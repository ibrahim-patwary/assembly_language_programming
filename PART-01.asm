INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    
   MOV CX,7
   MOV BX,1
   MOV DX,7

   L1:
   MOV AH,2
   MOV DL,'1'
   INT 21H
   L2:
   MOV AH,2
   MOV DL,'5'
   INT 21H
   DEC DX
   CMP DX,0
   JE L3
   JMP L2
   
   
  
  
   L3:
   MOV DX,CX
   LOOP L 
   
   L1: 
   MOV AH,2
   MOV DL,'1'
   INT 21H
    
    
   L2:
   MOV AH,2
   MOV DL,'5'
   INT 21H
   DEC DX 
    
    
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN