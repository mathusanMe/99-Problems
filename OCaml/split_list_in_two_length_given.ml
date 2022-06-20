let rec split li n = match li, n with
  | [], _ -> [], []
  | x :: q, 1 -> [x], q
  | x :: q, _ -> let sub = split q (n-1) in
                  x :: fst sub, snd sub
;;

val split : 'a list -> int -> 'a list * 'a list = <fun>