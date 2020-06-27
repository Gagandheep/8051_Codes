  ORG 00H

	MOV R0,#035H	// Number to be cubed

	MOV A,@R0		// move number to A
	MOV B,@R0		// move number to B

	MUL AB			// multiply A and B

	MOV 31H,B		// move MSB to memory location 31H
	MOV B,@R0		// move number to B

	MUL AB			// multiply A and B

	MOV 32H,A		// move LSB to memory location 32H
	MOV R1,B		// move MSB to memory register R1
	MOV A,@R0		// move number to A
	MOV B,31H		// move data in 31H to B

	MUL AB			// multiply A and B

	MOV 30H,B		// move MSB to memory location 30H

	ADD A,R1		// add contents of A and R1

	MOV 31H,A		// move sum to memory location 31H

	MOV A,30H		// mov contents of 30H to A
	ADDC A,#00H		// add contents of A, 00H and C

	MOV 30H,A		// move sum to memory location 30H

	SJMP $
	
END