vals:                       ; values
DB 0x00
DB 0x02
DB 0x03
DB 0x04
DB 0x05
DB 0x07
DB 0x08


; Ayush Agarwal , ECE 
; Code for binary search algorithm in assembly

start:

CLC ; Setting up the values of 2 numbers
MOV BL,0x01 ; low
MOV BH,0x06 ; high 
MOV DL,BL
MOV DH,0x00
MOV SI,DX

MOV CH,0x05 ; number to search for 
L1:
MOV AL,BL
ADD AL,BH
SHR AL,0x01 ; AL=(low+high)/2
MOV SI,AX

CMP BH,BL ; in case low and high become equal and we havent found answer yet 
JZ finisher
CMP byte [SI],CH
JZ finisher ; if equal then we have found the answer 
JC low2mid
JNC high2mid

low2mid:
MOV BL,AL
JMP beyond

high2mid:
MOV BH,AL
JMP beyond

beyond:
JNZ L1

finisher: ; the final case when we have found that number 
MOV DL,AL ; DL stores the address where we found it 
MOV DH,byte [SI] ; DH stores the number we found 


