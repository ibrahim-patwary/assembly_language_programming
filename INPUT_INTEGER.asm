INCLUDE 'EMU8086.INC'
.MODEL SMALL

.STACK 100H

.DATA

.CODE


MAIN PROC
        
        
  PRINT 'ENTER A INTEGER NUMBER : '
  
  MOV AH,1
  INT 21H
  SUB AL,48
  
  PRINTN
  PRINT 'OUTPUT: '
  MOV AH,2
  MOV DL ,AL
  ADD DL,48
  INT 21H     
        
        
        
        
        
        
        
        
        
        
        
        
        
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN