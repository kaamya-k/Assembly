

	ORG 0H

	BACK: MOV TMOD, #00000001B
	MOV TL0, #33H
	MOV TH0, #0FEH

	DELAY: SETB TR0
	CPL P2.1

	HERE: JNB TF0, HERE
	CLR TR0
	CLR TF0
	SJMP BACK

	END