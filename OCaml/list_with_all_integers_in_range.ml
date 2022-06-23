let rec range a b = match a with
  | _ when a > b -> []
  | _ -> a :: range (a + 1) b
;;

val range : int -> int -> int list = <fun>