ORG 00H
	
	MOV R0, #2FH
	MOV R1, #0AH
	
	LOOP:
	INC R0
	MOV A, @R0
	CJNE A, 40H, LBL
	MOV 41H, R0
	SETB 00H
	LBL:
	DJNZ R1, LOOP
	
	HERE:
	SJMP HERE
	
END