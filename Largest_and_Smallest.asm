ORG 00H
	
	MOV R0, #30H
	MOV R1, #09H
	MOV 02, @R0
	MOV 03, R0
	MOV 04, @R0
	MOV 05, R0
	
	lARGEST:
	INC R0
	// Greatest
	MOV A, R2
	SUBB A, @R0
	JNC SMALLEST
	MOV 02, @R0
	MOV 03, R0
	
	SMALLEST:
	MOV A, R4
	SUBB A, @R0
	JC NEXT
	MOV 04, @R0
	MOV 05, R0
	
	NEXT:
	DJNZ R1, LARGEST
	
	HERE:
	SJMP HERE
	
END