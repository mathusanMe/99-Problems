let rec slice li l r = match li, l, r with
  | [], _, _ -> []
  | x :: _, 0, 0 -> [x]
  | x :: q, 0, _ -> x :: slice q 0 (r - 1)
  | _ :: q, _, _ -> slice q (l - 1) (r - 1)
;;

val slice : 'a list -> int -> int -> 'a list = <fun>