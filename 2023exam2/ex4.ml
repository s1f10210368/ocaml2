let rec amax xs = 
  match xs with
  first::rest -> max first (amax rest)
  | [] -> 0
;;