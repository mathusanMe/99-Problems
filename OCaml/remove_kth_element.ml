let rec remove_at k li = match k, li with
  | _, [] -> []
  | 0, x :: q -> q
  | _, x :: q -> x :: remove_at (k - 1) q
;;

val remove_at : int -> 'a list -> 'a list = <fun>