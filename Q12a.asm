ORG 00
	
	MOV R3, #33H
	MOV R1, #54H
	MOV R2, #04H
	
	LOOP:
	MOV 00H, R3
	MOV 04H, @R0
	MOV A, #10H
	ADD A, R0
	MOV R0, A
	MOV A, @R0
	MOV C, F0
	ADDC A, R4
	MOV F0, C
	MOV @R1, A
	DEC R3
	DEC R1
	DJNZ R2, LOOP
	
	CLR A
	ADDC A, #00H
	MOV @R1, A
	
	SJMP $

END
	