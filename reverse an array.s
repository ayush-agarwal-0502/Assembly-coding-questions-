vals:                       ; values
DB 0x01
DB 0x03
DB 0x02
DB 0x04
DB 0x08
DB 0x06

; Ayush Agarwal , ECE 
; Code to reverse an array 

start:

CLC
MOV SI,00000
MOV CL,0x06 ; taking array size 6 here 

L1: ; pushing the array values into the stack 
MOV BL, byte [SI]
PUSH BX
INC SI
DEC CL
CMP CL,0x00
JNZ L1

MOV CL,0x06 ; 6 here is array size 
MOV SI,00000

L2: ; poping the values out of stack and storing them 
POP BX
MOV byte [SI],BL
INC SI
DEC CL
CMP CL,0x00
JNZ L2
