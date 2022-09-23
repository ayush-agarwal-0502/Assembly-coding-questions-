; vals:                       ; values
; DB 0x01

; Ayush Agarwal , ECE 
; Code to keep first number bigger 

start:

CLC
MOV SI,00000
MOV AL,0x04
MOV BL,0x08

CMP AL,BL
JC exchanger 
JNC ahead

exchanger:
XCHG AL,BL

ahead:
MOV DL,0x05



