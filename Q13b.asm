ORG 00H
	
	MOV R0, 30H
	LOOP:
	MOV A, R0
	JZ DONE
	DEC R0
	MOV A, R1
	INC A
	DA A
	MOV R1, A
	JNC LOOP
	INC R2
	CLR C
	SJMP LOOP
	
	DONE:
	MOV 32H, R1
	MOV 31H, R2
	
	HERE:
	SJMP HERE
	
END