vals:                       ; values
DB 0x01
DB 0x03
DB 0x00
DB 0x02
DB 0x07
DB 0x00
DB 0x00
DB 0x03
DB 0x00

; Ayush Agarwal , ECE 
; Code for implementing linked list and its sum 

start:

CLC ; we have assumed linked list starts at memory 0 for simulation purposes 
MOV SI,00000 ; setting the pointer at start 
MOV DL,00 ; DL storing the final sum 
L1:
MOV AL,byte [SI] ; AL storing the data value of present node 
ADD DL,AL ; which would be added 
INC SI ; then we see the address stored in the node 
MOV BL,byte [SI] 
MOV SI,BX ; storing the next address in the pointer
CMP SI,0x00 ; looping until we reach 0 again 
JNZ L1
HLT

