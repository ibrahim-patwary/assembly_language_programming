INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.CODE

MAIN PROC
    

    MOV AH,1

    
    
    
    
    
    L1: 
     INT 21H
     CMP AL,' '
     JE OUTPUT
     INC CX
     JMP L1
     
    OUTPUT: 
    PRINTN
    PRINT 'LOOP TERMINATED'
     
     
     
     
     
     EXIT:
     MOV AH,4CH
     INT 21H
     MAIN ENDP
END MAIN