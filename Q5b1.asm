ORG 00H
	
	MOV A, 30H
	CPL A
	ADD A, #01H
	MOV 31H, A
	
	SJMP $
		
END