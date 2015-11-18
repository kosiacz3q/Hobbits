(define
	(domain hobbits)
	(:requirements :adl)
	(:types platform hobbit line)
	(:predicates
		(BushOnPlatform ?p - platform)
		
		(Horizontal ?p1 ?p2 - platform)
		(Vertical ?bottom ?up - platform)
		
		(HobbitOnPlatform ?h - hobbit ?p - platform)
		
		(HaveLine ?h - hobbit ?l - line)
		
		(ConnectedWithLine ?p1 ?p2 ?l)
		
		
	)
	
	(:action UseLine
		:parameters(?up ?bottom - platform ?h - hobbit ?l - line)
		:precondition
		(and
			(not (= ?up ?bottom))
			(HobbitOnPlatform ?h ?up)
			(Vertical ?bottom ?up)
			(HaveLine ?h ?l)
			(BushOnPlatform ?up)
			(not (ConnectedWithLine ?up ?bottom ?l))
		)
		:effect
		(and
			(ConnectedWithLine ?up ?bottom ?l)
			(not (HaveLine ?h ?l))
		)
	)
	
	(:action GoVertical
		:parameters(?from ?to - platform ?h - hobbit)
		:precondition
		(and
			(not (= ?from ?to))
			(exists (?l - line) 
				(or
					(ConnectedWithLine ?from ?to ?l)
					(ConnectedWithLine ?to ?from ?l)
				)
			)
			(HobbitOnPlatform ?h ?from)
		)
		:effect
		(and
			(not (HobbitOnPlatform ?h ?from))
			(HobbitOnPlatform ?h ?to)
		)
	)
	
	(:action RecoverLine
		:parameters(?from ?src - platform ?h - hobbit ?l - line)
		:precondition
		(and
			(not (= ?from ?src))
			(HobbitOnPlatform ?from ?h)
			(or
				(ConnectedWithLine ?src ?from ?l)
				(ConnectedWithLine ?from ?src ?l)
			)	
		)
		:effect
		(and
			(not (ConnectedWithLine ?src ?from ?l))
			(not (ConnectedWithLine ?from ?src ?l))
			(HaveLine ?h ?l)
		)
	)
	
	(:action GoHorizontal
		:parameters (?from ?to - platform ?h - hobbit)
		:precondition
		(and
		
		)
		:effect
		(and
		
		)
	)
	
	
	
)