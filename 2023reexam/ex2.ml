let rec len xs = 
  match xs with
    first::rest -> 1 + len rest
  | [] -> 0
;;