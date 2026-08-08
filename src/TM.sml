structure TM =
struct
  datatype D = R | L
  datatype S = B | I | O
  datatype Q = M | H | PI | PR
  type delta = ((Q * S) * (Q * S * D)) list
  type program = Q * delta
  type tape = S list * S * S list
  val P = (PI, [ ((PI, B), (PR, B, R))
	       , ((PR, O), (PR, O, R))
	       , ((PR, I), (PR, I, R))
	       , ((PR, B), (M, B, L))
	       , ((M, I), (M, O, L))
	       , ((M, O), (H, I, L))
	       , ((M, B), (H, I, L))
	       , ((H, I), (H, I, L))
	       , ((H, O), (H, O, L))
	       ]
	  )
end
