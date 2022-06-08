type 'a rle = 
  | One of 'a
  | Many of int * 'a
;;

let encode li =
  let rec aux curr acc li = match acc, li with
    | 0, [] -> []
    | 1, [] -> One(curr) :: []
    | _, [] -> Many(acc, curr) :: []
    | _, x :: q -> if curr = x
                  then aux curr (acc + 1) q
                  else if acc = 1 
                        then One(curr) :: aux x 1 q
                        else Many(acc, curr) :: aux x 1 q
  in
    if li = []
      then []
      else aux (List.hd li) 1 (List.tl li)
;;