structure TM =
struct
  datatype D = R | L
  datatype S = B | I | O
  datatype Q = M | W | H
  datatype A = Move of D | Write of S
  type delta = ((Q * S) * (Q * A)) list
  type program = Q * delta
  type tape = S list * S * S list
  val P = (W, [((W, I), (M, Write O)),
	       ((W, O), (H, Write I)),
	       ((W, B), (H, Write I)),
	       ((M, I), (W, Move  L)),
	       ((M, O), (W, Move  L))
	      ]
	  )
end
