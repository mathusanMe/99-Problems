type 'a node = 
  | One of 'a
  | Many of 'a node list
;;

type 'a node = One of 'a | Many of 'a node list

let rec flatten = function
  | [] -> []
  | One o :: q -> o :: flatten q
  | Many m :: q -> flatten m @ flatten q
;;

val flatten : 'a node list -> 'a list = <fun>