let rec rec_length = function
  | [] -> 0
  | _ :: q -> 1 + length q;;

val rec_length : 'a list -> int = <fun>

let tail_rec_length li = 
  let rec aux acc = function
    | [] -> acc
    | _ :: q -> aux (1 + acc) q
  in aux 0 li;;

val tail_rec_length 'a list -> int = <fun>