let rec plist words = 
  match words with
  first::rest -> print_endline first; plist rest
  | [] -> ();;