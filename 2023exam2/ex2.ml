let rec inv xs = 
  match xs with
  first::rest -> (-.first)::(inv rest)
  | [] -> []
;;