リスト xs を引数にとり、その先頭要素を除いたリストを返す関数 remove : 'a list -> 'a list を定義せよ

let rec remove xs =
  match xs with
  [] -> []
  | first::rest -> rest
;;