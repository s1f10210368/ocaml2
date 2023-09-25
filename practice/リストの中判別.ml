let rec check xs = 
  match xs with
  first::rest -> if first = 0 then true else false; check rest
  |[] -> false
;;

与えられた整数のリストに0が含まれているか判別する関数