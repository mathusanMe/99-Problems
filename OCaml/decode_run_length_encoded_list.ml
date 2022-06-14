type 'a rle = 
  | One of 'a
  | Many of int * 'a
;;

type 'a rle = One of 'a | Many of int * 'a

let rec kElmts x k = match k with
  | 0 -> []
  | _ -> x :: kElmts x (k - 1)
;;

val kElmts : 'a -> int -> 'a list = <fun>

let rec decode = function
  | [] -> []
  | One x :: q -> [x] @ decode q
  | Many(k, x) :: q -> kElmts x k @ decode q
;;

val decode : 'a rle list -> 'a list = <fun>
