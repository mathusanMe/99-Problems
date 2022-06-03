let pack li = 
  let rec aux curr acc = function
    | [] -> if acc = [] then [] else acc :: []
    | t :: q as li -> if t = curr 
                  then aux curr (curr :: acc) q 
                  else acc :: aux t [] li
  in
    if li = [] then []
    else aux (List.hd li) [] li 
;;

val pack : 'a list -> 'a list list = <fun>