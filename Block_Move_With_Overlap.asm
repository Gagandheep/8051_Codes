ORG 00H

	MOV R0,#39H		// SOURCE
	MOV R1,#3EH		// DESTINATION
	MOV R2,#0AH		// ITER


	// MOV R0,R1 NOT POSSIBLE
	LOOP:
		MOV A,@R0
		MOV @R1,A
		DEC R0
		DEC R1
		DJNZ R2,LOOP

	HERE:
		SJMP HERE

END
