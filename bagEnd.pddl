(define
	(domain bagEnd)
	(:requirements :adl)
	(:types room key puzzle puzzleField puzzleBrick)
	(:constants Ar Br Cr Dr Er Fr Gr Hr Ir Jr - room)
	(:predicates
		
		;PATHFINDING
		
		(marryInRoom ?x - room)
		(haveKey ?x - key)
	
		(keyInRoom ?k - key ?x - room)
		
		(greenLock ?x ?y - room)
		(redLock ?x ?y - room)
		(orangeLock ?x ?y - room)
		(pinkLock ?x ?y - room)
		(blueLock ?x ?y - room)
		
		(blueKey ?k - key)
		(pinkKey ?k - key)
		(redKey ?k - key)
		(orangeKey ?k - key)
		(greenKey ?k - key)
		
		;PUZZLE
		
		(brickInPos ?b - puzzleBrick ?f - puzzleField)
		(emptyField ?f - puzzleField)
		(adj ?f1 ?f2 - puzzleField)
	)
	
	(:action wez
		:parameters(?k - key ?from - room)
		:precondition
		(and
			(marryInRoom ?from)
			(keyInRoom ?k ?from)
		)
		:effect
		(and
			(haveKey ?k)
			(not (keyInRoom ?k ?from))
		)
	)		
	
	;blue
	(:action idz
		:parameters(?dest ?from - room ?k - key)
		:precondition
		(and
			(marryInRoom ?from)
			(not (= ?dest ?from))
			
			(blueLock ?dest ?from)
			(blueKey ?k)
			(haveKey ?k)
		)
		:effect
		(and
			(marryInRoom ?dest)
			(not (marryInRoom ?from))
			(not (haveKey ?k))
		)
	)	
	
	;green
	(:action idz
		:parameters(?dest ?from - room ?k - key)
		:precondition
		(and
			(marryInRoom ?from)
			(not (= ?dest ?from))

			(greenLock ?from ?dest)
			(greenKey ?k)
			(haveKey ?k)
		)
		:effect
		(and
			(marryInRoom ?dest)
			(not (marryInRoom ?from))
			(not (haveKey ?k))
		)
	)	
	
	;orange
	(:action idz
		:parameters(?dest ?from - room ?k - key)
		:precondition
		(and
			(marryInRoom ?from)
			(not (= ?dest ?from))
			
			(orangeLock ?from ?dest)
			(orangeKey ?k)
			(haveKey ?k)
		)
		:effect
		(and
			(marryInRoom ?dest)
			(not (marryInRoom ?from))
			(not (haveKey ?k))
		)
	)	
	
	;red
	(:action idz
		:parameters(?dest ?from - room ?k - key)
		:precondition
		(and
			(marryInRoom ?from)
			(not (= ?dest ?from))
			
			(redLock ?from ?dest)
			(redKey ?k)
			(haveKey ?k)
		)
		:effect
		(and
			(marryInRoom ?dest)
			(not (marryInRoom ?from))
			(not (haveKey ?k))
		)
	)
	
	;pink
	(:action idz
		:parameters(?dest ?from - room ?k - key)
		:precondition
		(and
			(marryInRoom ?from)
			(not (= ?dest ?from))
			
			(pinkLock ?from ?dest)
			(pinkKey ?k)
			(haveKey ?k)
		)
		:effect
		(and
			(marryInRoom ?dest)
			(not (marryInRoom ?from))
			(not (haveKey ?k))
		)
	)
	
	(:action przesun
		:parameters(?brick - puzzleBrick ?from ?to - puzzleField)
		:precondition
		(and
			(marryInRoom Ar)
			(not (= ?from ?to))
			(brickInPos ?brick ?from)
			(emptyField ?to)
			(or
				(adj ?from ?to)
				(adj ?to ?from)
			)
		)
		:effect
		(and
			(not (brickInPos ?brick ?from))
			(not (emptyField ?to))
			(brickInPos ?brick ?to)
			(emptyField ?from)
		)
	)
)