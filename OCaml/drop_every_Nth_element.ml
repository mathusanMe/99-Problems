let rec drop li n = match li, n with
  | [], _ -> []
  | _ :: q, 1 -> drop q 3
  | x :: q, _ -> x :: drop q (n-1)
;;

val drop : 'a list -> int -> 'a list = <fun>