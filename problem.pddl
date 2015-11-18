(define (problem test)
  (:domain hobbits)
  (:objects
	a1 b1 b2 b3 - platform
	samLine frodoLine - line  
	frodo sam - hobbit
	)
  (:init
	(Vertical b2 b3)
	(Vertical b1 b2)
	(Horizontal a1 b1)
	(Horizontal b1 a1)
	(HobbitOnPlatform frodo b3)
	(BushOnPlatform b3)
	(BushOnPlatform b2)
	(HaveLine frodo frodoLine)
	(HaveLine sam samLine)
	)
  (:goal
	(and
	  (HobbitOnPlatform frodo b1)
	  (HaveLine frodo frodoLine)
	  )
	)

  )
