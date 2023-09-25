浮動小数のリスト xs を引数にとり、その中に含まれる数値の正負を反転させたリストを返す関数 inv : float list -> float list を定義せよ

let rec float list = 
  match xs with
  first::rest -> (-.first)::(inv rest)
  | [] -> []

(-.first)::(inv rest)  リストで返さなければいけないため::で接続されている、浮動小数であるため.が必要