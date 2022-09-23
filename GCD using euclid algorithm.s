; vals:                       ; values
; DB 0x01

; Ayush Agarwal , ECE 
; Code to find the GCD of 2 numbers using Euclid Algorithm 

start:

CLC ; Setting up the values of 2 numbers
MOV SI,00000
MOV AL,0x13
MOV BL,0x05

base:
CMP AL,BL
JC exchanger ; keeping A bigger than B 
JNC gcd ; exchanging if A is not bigger otherwise moving ahead

exchanger:
XCHG AL,BL

gcd:
CMP AL,BL ; when equal , algorithm stops 
JZ ender
XCHG AL,BL ; when unequal , gcd(a,b)=gcd(b-a,a) 
SUB BL,AL
JMP base

ender:
MOV DX,AX ; saving final answer to D 


