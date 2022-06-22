let rec length = function
  | [] -> 0
  | _ :: q -> 1 + length q
;;

let rec split li n = match li, n with
  | [], _ -> [], []
  | x :: q, 1 -> [x], q
  | x :: q, _ -> let sub = split q (n-1) in
                  x :: fst sub, snd sub
;;

val split : 'a list -> int -> 'a list * 'a list = <fun>

let rotate li rk = 
  let n = length li in
  if n = 0 then []
  else begin
    let rk' = rk mod n in
    let rli, lli = split li rk' in
    lli @ rli
  end
;;

val rotate : 'a list -> int -> 'a list = <fun>

