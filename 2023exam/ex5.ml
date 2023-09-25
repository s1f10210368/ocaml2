以下の型 expression で数式を表現するとき、その数式を評価して得られる結果を返す関数 eval : expression -> int を定義せよ

type expression =
    Add of expression * expression    (* e1 + e2 *)
  | Sub of expression * expression    (* e1 - e2 *)
  | UMinus of expression              (* -e *)
  | Value of int

let rec eval e =
  match e with
    Add(e1, e2) -> eval e1 + eval e2
  | Sub(e1, e2) -> eval e1 - eval e2
  | UMinus(e) -> -(eval e)
  | Value(i) -> i