let rec nth li n = match li with
  | [] -> failwith "Index is out of bounds."
  | x :: _ when n = 0 -> x
  | _ :: q -> nth q (n - 1);;