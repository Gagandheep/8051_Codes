ORG 00H
	
	MOV R0, #30H
	MOV R2, #0AH
	
	LOOP:
	MOV A, @R0
	RRC A
	
	JC NEG
	INC R3
	SJMP DONE
	
	NEG:
	INC R4
	
	DONE:
	INC R0
	DJNZ R2, LOOP
	
	HERE:
	SJMP HERE

END
	