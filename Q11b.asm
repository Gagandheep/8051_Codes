ORG 00H
	
	MOV DPTR, #8001H
	MOVX A, @DPTR
	MOV R0, A
	MOV DPTR, #8000H
	MOVX A, @DPTR
	
	SUBB A, R0
	
	JC SMALLER
	CJNE A, #00H, GREATER
	SJMP DONE
	GREATER:
	SETB 2FH.7
	SJMP DONE
	SMALLER:
	SETB 2FH.3
	
	DONE:
	
	SJMP $

END