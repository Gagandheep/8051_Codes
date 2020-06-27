ORG 00H

	MOV R0, #30H // search start, element to be searched in 40H
	MOV R1, 40H
	MOV R2, #0AH

	LOOP:
	MOV A, @R0
	CJNE A, 40H, NEXT
	MOV R3, #01H
	MOV 05, R0
	RRC A		// R4 is 0 if even
	CLR A
	ADDC A, #00H
	MOV R4, A
	SJMP DONE
	
	NEXT:
	INC R0
	DJNZ R2, LOOP
	
	DONE:
	SJMP $

END
