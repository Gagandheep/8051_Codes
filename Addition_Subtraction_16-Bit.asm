ORG 00

	// NUM 1
	MOV R0, #000H	// MSB
	MOV R1, #0FFH	// LSB

	// NUM 2
	MOV R2, #001H	// MSB
	MOV R3, #045H	// LSB

	MOV A, R1
	ADD A, R3
	MOV 32H, A
	MOV A, R0
	ADDC A, R2
	MOV 31H, A

	JNC SKIP
	CLR C
	MOV 30H, #001H
	
	SKIP:
	MOV A, R1
	SUBB A, R3
	MOV 35H, A
	MOV A, R0
	SUBB A, R2
	MOV 34H, A
	
	JNC HERE
	MOV 33H, #0FFH

	HERE:
	SJMP HERE

END