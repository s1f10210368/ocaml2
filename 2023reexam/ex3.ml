let rec find xs v = 
  match xs with
  first::rest -> if first = v then true else find rest v
  | [] -> false
;;

