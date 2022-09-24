vals:                       ; values
DB 0x07
DB 0x02
DB 0x05
DB 0x04
DB 0x06

; Ayush Agarwal , ECE 
; Code for bubble sort algorithm 

start:

CLC 
MOV SI,00000 ; setting the pointer at start 
MOV DL,0x04 ; last address till which we want to sort 
; first address by default I assumed as 00000
MOV CL,DL ; the 2 counter variables for the 2 "for" loops 
MOV CH,DL
L1: ; like the outer for loop 
MOV SI,00000
MOV CL,DL
DEC CH
CMP CH,0x00
JZ ender
L2: ; like the inner for loop 
MOV AH,byte [SI]
INC SI 
MOV AL,byte [SI]
CMP AH,AL
JNC exchanger
JC ahead
exchanger: ; exchanging if ascending 
XCHG AH,AL
MOV byte [SI],AL
DEC SI
MOV byte [SI],AH
INC SI
ahead: ; else dont exchange directly ahead 
DEC CL
CMP CL,0x00
JNZ L2
JZ L1
ender: ; ending part 
