let rev li =
  let rec aux acc = function
    | [] -> acc
    | x :: q -> aux (x :: acc) q
  in aux [] li;;

val rev : 'a list -> 'a list = <fun>