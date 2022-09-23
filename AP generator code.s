; vals:                       ; values
; DB 0x00

; Ayush Agarwal , ECE 
; Code to generate and store an Arithmetic progression in memory 

start:

CLC
MOV SI , 00000
MOV AL,00 ; denotes the strating term of the AP 
MOV BL,02 ; denotes the common difference of the AP 
MOV CL,09 ; denotes the number of terms in the AP 
L1:
INC SI ; moving one ahead in the memory 
ADD AL,BL ; incrementing the past value by the common difference 
; INC AL : in case we needed difference of 1 only 
MOV byte [SI] , AL ; storing the value 
DEC CL ; decreasing the term counter variable 
CMP CL,00
JNZ L1 ; repeat till term counter becomes 0 

