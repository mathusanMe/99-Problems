let encode li = 
  let rec aux curr acc = function
    | [] -> if acc = 0
              then []
              else (acc, curr) :: []
    | x :: q -> if curr = x
                      then aux curr (acc + 1) q
                      else (acc, curr) :: aux x 1 q
  in 
    if li = []
      then []
      else aux (List.hd li) 1 (List.tl li)
;;

val encode : 'a list -> (int * string) list = <fun>
              