(define
	(domain hobbits)
	(:requirements :adl)
	(:types platform hobbit)
	(:predicates
		(SamOnPlatform ?p - platform)
		(FrodoOnPlatform ?p - platform)
		(BushOnPlatform ?p - platform)
		
		(Horizontal ?p1 ?p2 - platform)
		(Vertical ?bottom ?up - platform)
		
		(HobbitOnPlatform ?p - platform)
		
		(SamHaveLine)
		(FrodoHaveLine)
	)
	
	(:action wez
		:parameters(?k)
		:precondition
		(and

		)
		:effect
		(and

		)
	)	
	
	
)