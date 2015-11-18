(define (problem test)
  (:domain hobbits)
  (:objects
	a1 b1 b2 b3 b4 c3 d3 d2 e2 f2 f3 f4 f5 - platform
	samLine frodoLine - line  
	frodo sam - hobbit
	)
  (:init

	(Vertical b2 b3)
	(Vertical b1 b2)
	(Horizontal a1 b1)
	(Horizontal b1 a1)

	(Vertical b3 b4)

	(Horizontal b3 c3)
	(Horizontal c3 b3)
	(Horizontal d3 c3)
	(Horizontal c3 d3)

	(Vertical d2 d3)
	(Horizontal d2 e2)
	(Horizontal e2 d2)
	(Horizontal e2 f2)
	(Horizontal f2 e2)

	(Vertical f4 f5)
	(Vertical f3 f4)
	(Vertical f2 f3)

	(HobbitOnPlatform frodo b3)
	(HobbitOnPlatform sam f5)

	(BushOnPlatform b3)
	(BushOnPlatform b2)
	(BushOnPlatform d3)
	(BushOnPlatform f3)
	(BushOnPlatform f4)
	(BushOnPlatform f5)

	(HaveLine frodo frodoLine)
	(HaveLine sam samLine)

	)
  (:goal
	(and
	  (HobbitOnPlatform frodo d3)
	  (HaveLine frodo frodoLine)
	  ;(ConnectedWithLine b3 b2)
	  )
	)

  )
