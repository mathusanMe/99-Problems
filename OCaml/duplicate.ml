let rec duplicate = function
  | [] -> []
  | x :: q -> x :: x :: duplicate q
;;

val duplicate : 'a list -> 'a list = <fun>