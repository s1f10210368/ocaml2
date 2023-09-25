与えられたリストlstの中で文字列の長さが2のものを取り出す関数をocamlで作成してください

let rec check2 lst = 
  match lst with
  first::rest -> if String.length first = 2 then print_endline first; check2 rest
  | [] -> []
;;

与えられたリストlstの中で文字列の長さが2のものの個数をカウントする関数を定義


let rec count_strings_of_length_2 lst =
  match lst with
  | [] -> 0
  | first::rest ->
      let count_rest = count_strings_of_length_2 rest in
      if String.length first = 2 then count_rest + 1 else count_rest
