(define (problem test)
	(:domain bagEnd)
	(:objects
		z1 z2 z3 z4 n1 n2 n3 n4 n5 c1 c2 p1 p2 r1 - key
		
		puz1 - puzzle
		pos1 pos2 pos3 pos4 pos5 pos6 pos7 pos8 pos9 - puzzleField
		br1 br2 br3 br4 br5 br6 br7 br8 - puzzleBrick
	)
	(:init
		
		;===============================
		;		PATHFINDING
		;===============================
		
		(keyInRoom z1 Hr)
		(keyInRoom z2 Er)
		(keyInRoom z3 Dr)
		(keyInRoom z4 Ar)
		
		(keyInRoom n1 Ir)
		(keyInRoom n2 Fr)
		(keyInRoom n3 Fr)
		(keyInRoom n4 Er)
		(keyInRoom n5 Cr)
		
		(keyInRoom c1 Hr)
		(keyInRoom c2 Dr)
		
		(keyInRoom p1 Ir)
		(keyInRoom p2 Cr)
		
		(keyInRoom r1 Br)
		
		(blueKey n1)
		(blueKey n2)
		(blueKey n3)
		(blueKey n4)
		(blueKey n5)
		
		(greenKey z1)
		(greenKey z2)
		(greenKey z3)
		(greenKey z4)
		
		(orangeKey p1)
		(orangeKey p2)
		
		(pinkKey r1)
		
		(redKey c1)
		(redKey c2)
		
		(blueLock Fr Ir)
		(greenLock Fr Dr)
		(pinkLock Fr Gr)
		(blueLock Fr Er)
		
		(blueLock Ir Hr)
		(blueLock Ir Fr)
		
		(redLock Hr Er)
		(blueLock Hr Ir)
		
		(redLock Er Hr)
		(blueLock Er Fr)
		(greenLock Er Cr)
		
		(greenLock Cr Er)
		(redLock Cr Ar)
		
		(redLock Ar Cr)
		(orangeLock Ar Br)
		
		(orangeLock Br Dr)
	
		(greenLock Dr Fr)
		
		(marryInRoom Fr)
		
		;==================================
		;			PUZZLE
		;==================================
		
		(brickInPos br5 pos1)
		(brickInPos br4 pos2) 
		(brickInPos br1 pos3) 
		(brickInPos br8 pos4) 
		(emptyField pos5)
		(brickInPos br3 pos6) 
		(brickInPos br7 pos7) 
		(brickInPos br2 pos8) 
		(brickInPos br6 pos9) 
		
		(adj pos1 pos2)
		(adj pos1 pos4)
		
		(adj pos2 pos3)
		(adj pos2 pos5)
		
		(adj pos3 pos6)
		
		(adj pos4 pos7)
		(adj pos4 pos5)
		
		(adj pos5 pos6)
		(adj pos5 pos8)
		
		(adj pos6 pos9)
		
		(adj pos7 pos8)
		
		(adj pos8 pos9)
		
	)
	(:goal
		(and
			(marryInRoom Gr)
			
			(brickInPos br1 pos1)
			(brickInPos br2 pos2) 
			(brickInPos br3 pos3) 
			(brickInPos br4 pos4) 
			(brickInPos br5 pos5) 
			(brickInPos br6 pos6) 
			(brickInPos br7 pos7) 
			(brickInPos br8 pos8) 
			;(emptyField pos9)
		)
	)
	
)