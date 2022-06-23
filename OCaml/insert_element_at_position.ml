let rec insert_at a k li = match k, li with
  | _, [] -> [a]
  | 0, _ -> a :: li
  | _, x :: q -> x :: insert_at a (k - 1) q
;;

val insert_at : 'a -> int -> 'a list -> 'a list = <fun>