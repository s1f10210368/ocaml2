正整数のリスト xs を引数にとり、その最大値を返す関数 amax : int list -> int を定義せよ

let rec amax xs =
  match xs with
    first::rest -> max first (amax rest)
  | [] -> 0

max first (amax rest)  ここでfirstと残りの(amax rest)を比較してその中から最大値を選ぶ