ORG 00H
	
	MOV A, 30H
	ORL A, #30H
	MOV 32H, A
	MOV A, 31H
	ORL A, #30H
	MOV 33H, A
	
	SJMP $
	
END