引数に与えたリスト xs から、先頭の n 個分の要素からなるリストを返す関数 limit xs n を定義せよ

let rec limit xs n =  
  match xs with
  first::rest -> if n <= 0 then [] else first::(limit rest (n - 1))
  | [] -> [];;

