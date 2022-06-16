let rec replicate li n = match li, n with
  | [], _ -> []
  | x :: q, 1 -> x :: replicate q 3
  | x :: _, _ -> x :: replicate li (n-1)
;;

val replicate : 'a list -> int -> 'a list = <fun>