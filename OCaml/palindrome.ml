let palindrome li =
  let rvsd = rev li in
  let rec aux l rl = match l, rl with
    | [], [] -> true
    | _, [] | [], _ -> false
    | x :: q, x' :: q' -> x = x' && aux q q'
  in aux li rvsd;;

val palindrome : 'a list -> bool = <fun>