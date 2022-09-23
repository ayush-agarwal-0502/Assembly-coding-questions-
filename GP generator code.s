; vals:                       ; values
; DB 0x00

; Ayush Agarwal , ECE 
; Code to generate and store an Geometric progression in memory 

start:

CLC
MOV SI , 00000
MOV AL,01 ; denotes the staring term of the GP
MOV byte [SI], AL
MOV BL,02 ; denotes the common ratio of the GP
MOV CL,08 ; denotes the number of terms in the GP
L1:
INC SI ; moving one ahead in the memory 
MUL BL ; increasing the past value
MOV byte [SI] , AL ; storing the value 
DEC CL ; decreasing the term counter variable 
CMP CL,00
JNZ L1 ; repeat till term counter becomes 0 

