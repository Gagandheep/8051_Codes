ORG 00H

MOV A,#5
MOV A,30H
MOV R0,#30H
MOV R2,13H
MOV A,@R0
MOV B,R0
MOV R1,#5
MOV DPTR,#1000H
MOVX A,@DPTR
MOV A,R1
ADD A,B
MOV R0,#A0H
MOV A,10H

END
	