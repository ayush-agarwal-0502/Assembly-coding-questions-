; vals:                       ; values
; DB 0x01

; Ayush Agarwal , ECE 
; Code to store factorial of numbers till 5
; cause 6 factorial is 720 which is too big for this processor 

start:

CLC
MOV SI,00000
MOV AL,0x01
MOV byte [SI],AL
MOV BL,AL
MOV CL,0x05 ; number of terms till which want answer  
DEC CL

L1:
INC BL ; BL is storing the term number
MOV AL,BL ; and then AL multiplies to it 
MUL byte [SI]
INC SI
MOV byte[SI],AL
DEC CL ; checking loop conditions 
CMP CL,0x00
JNZ L1
