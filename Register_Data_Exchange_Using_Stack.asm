ORG 00H
	MOV R0, #01H
	MOV R1, #02H
	
	PUSH 0
	PUSH 1
	POP 0
	POP 1
	
	HERE:
	SJMP HERE
END