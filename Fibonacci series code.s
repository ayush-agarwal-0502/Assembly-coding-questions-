; vals:                       ; values
; DB 0x01

; Ayush Agarwal , ECE 
; Code to store Fibonacci number series 

start:

CLC
MOV SI,0000
MOV AL,0x01
MOV byte [SI],AL
INC SI 
MOV byte [SI],AL ; storing the first 2 numbers as 1
INC SI ; memory pointer points to the 3rd space
MOV CL,0x08 ;number of terms in fibonacci series we want
SUB CL,0x02 ;since we aready put 2 1s hence loop runs 2 less times

L1:
SUB SI,0x02 ;assembly dosent allow us to acces value at SI-2 by writing SI-2
ADD AL,byte [SI] ;so we had to substract 2 then access value then add again
ADD SI,0x02
MOV byte [SI],AL ;storing the value 
INC SI ;moving ahead in the memory 
DEC CL ;decreasing the counter variable 
CMP CL,00 ;checking loop conditions
JNZ L1


