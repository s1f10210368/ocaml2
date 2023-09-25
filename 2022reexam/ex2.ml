整数のリストを引数にとり、その整数に 0 が含まれていれば true を、そうでなければ false を返す関数 haszero: int list -> int を定義せよ

let rec haszero lst = 
  match lst with
  [] -> false
  | first::rest -> if first = 0 then true else haszero rest
;;