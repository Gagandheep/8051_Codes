ORG 00H
	
	MOV R0,#40H
	MOV DPTR,#30H
	MOV R2,#0AH

	LBL:
		MOV A,#00H
		MOVC A,@A+DPTR
		MOV @R0,A
		INC R0
		INC DPTR
		DJNZ R2,LBL

	HERE:
		SJMP HERE

END