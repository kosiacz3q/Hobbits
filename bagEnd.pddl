(define
	(domain hobbits)
	(:requirements :adl)
	(:types platform hobbit line)
	(:predicates
		(SamOnPlatform ?p - platform)
		(FrodoOnPlatform ?p - platform)
		(BushOnPlatform ?p - platform)
		
		(Horizontal ?p1 ?p2 - platform)
		(Vertical ?bottom ?up - platform)
		
		(HobbitOnPlatform ?p - platform)
		
		(HaveLine ?h - hobbit ?l - line)
		
		(ConnectedWithLine ?p1 ?p2)
	)
	
	(:action UseLine
		:parameters(?up ?bottom ?)
		:precondition
		(and

		)
		:effect
		(and

		)
	)	
	
	
)