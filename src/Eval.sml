structure Eval =
struct
  (* val Hd : TM.S list -> TM.S *)
  fun Hd nil      = TM.B
    | Hd (h :: _) = h
  (* val Tl : TM.S list -> TM.S list *)
  fun Tl nil       = nil
    | Tl (_ :: tl) = tl
  (* val Cons : TM.S * TM.S list -> TM.S list *)
  fun Cons (TM.B, nil) = nil
    | Cons (hd, tl) = hd :: tl
  (* val moveL : TM.tape -> TM.tape *)
  fun moveL (LList, h, RList) =
    (Tl LList, Hd LList, Cons (h, RList))
  (* val moveR : TM.tape -> TM.tape *)
  fun moveR (LList, h, RList) =
      (Cons (h, LList), Hd RList, Tl RList)
  (* val move : TM.D -> TM.tape -> TM.tape *)
  fun move TM.L tape = moveL tape
    | move TM.R tape = moveR tape
  fun exec delta (q, tape as (LList, h, RList)) =
    case List.find (fn (x, y) => x = (q, h)) delta of
      NONE => (LList, h, RList)
    | SOME (x, (q', s, d)) =>
      exec delta (q', move d (LList, s, RList))
  fun eval (state, delta) tape = exec delta (state, tape)
end
