; vals:                       ; values
; DB 0x00

; Ayush Agarwal , ECE 
; Code for implementing traffic lights

start:

CLC ; in non simulator assembly , we would have used 
; NOP (no operation) and delay functions for stopping for some time 
; however I have implemented using counter variable 
; due to the nature of the simulator 

MOV CL,0x05 ; amount of time for red light
MOV AL,0x01 ; AL 0001 for red light indication
RED:
DEC CL ; CL shows the time left in real time :) 
CMP CL,0x00
JNZ RED

MOV CL,0x01 ; amount of time for yellow light
MOV AL,0x02 ; AL 0010 for yellow light indication
YELLOW:
DEC CL
CMP CL,0x00
JNZ YELLOW

MOV CL,0x05 ; amount of time for green light 
MOV AL,0x04 ; AL 0100 for green light indication
GREEN:
DEC CL
CMP CL,0x00
JNZ GREEN

JMP start ; loop goes on forever 


