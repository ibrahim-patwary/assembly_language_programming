INCLUDE 'EMU8086.INC' ;LIBRARY FUNCTION
.MODEL SMALL
.STACK 100H
.DATA 
VAR DB '5' ;Character type
 
VAR2 DB 5  ;Integer type 

TXT DW "Ibrahim $";String type   

TXT2 DW 'I LOVE YOU $';String type

A DB ? ;Extra Variable created
;Using Dollar sign($) for STOP print.
.CODE



MAIN PROC
;THIS CODE FOR INITIALATION BETWEEN DATA AND CODE SEGMETNS    

   MOV AX,@DATA     
   MOV DS,AX 
   
;THIS CODE FOR OUTPUT   
   MOV AH,2
   MOV DL,VAR 
   INT 21H 
   
   MOV AH,2
   MOV DL,VAR2
   ADD DL,48 
   INT 21H

;CREATE NEW LINE
   
   PRINTN
   PRINTN

;THIS CODE FOR OUTPUT            
   MOV AH,9
   LEA DX,TXT
   INT 21H

;CREATE NEW LINE
   
   MOV AH,2
   MOV DL,10
   INT 21H
   MOV DL,13
   INT 21H 
   
    
   MOV AH,9
   LEA DX,TXT2
   INT 21H
        
;THIS CODE FOR INPUT 
 PRINTN
 PRINT 'Enter a Integer:'
   MOV AH,1
   INT 21H
   MOV A,AL
   SUB A,48 
    
;THIS CODE FOR OUTPUT   
   MOV AH,2
   MOV DL,A
   ADD DL,48 
   INT 21H
   
     
;THIS CODE FOR END PROGRAM       
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN  
;DB= DEFINE BYTE(8bit)  
;DW=DEFINE WORD(16bit)    
;1-----> SINGLE KEY INPUT
;2-----> SINGLE KET OUTPUT
;9-----> STRING OUTPUT 
;LEA- LOAD EFFECTIVE ADDRESS 
;MERRORY BIT IS 20 BITS 
;AL register hold initially input data.
;TO INPUT---> SUB 48
;TO OUTPUT--> ADD 48 
;AX register use for exicute every token