ORG 00H
	
	LOOP:
	ACALL DELAY
	CPL P0^1
	SJMP LOOP
	
	
ORG 300H
	DELAY:
	MOV R2, #24H
	L1:
	MOV R3, #0FEH
	L2:
	DJNZ R3, L2
	DJNZ R2, L1
	RET

END