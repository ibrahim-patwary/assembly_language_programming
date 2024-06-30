.MODEL SMALL  ;program size
.STACK 100H   ;stack size
.DATA         ;variable store
.CODE         ;code section
;DEFINE WORD
;DEFINE BITE
;IBRAHIM PATWARY
MAIN PROC
    
     MOV AX,@DATA
     MOV DS,AX
       
    
    
    
    
    
;...ENDING PART...   
    MOV AH,4CH
    INT 21H              
    MAIN ENDP
END MAIN
 
;MOV A,B---> DESTINATION , SOURCE
; a= 3 , b=5 
;INT = interrupt  
;1---> Single digit/ character input
;2---> single digit/ character output
;9---> string output   
;4CH give command for end program.
;21H ager line exicute kore.
;ENDP command use for end proc
;END MAIN use for free spaces which is take system.