以下の pyexpr 型で Python の式の一部を表現する。このとき、引数として与えられる式 e の中に足し算が含まれていれば true , そうでなければ false を返す関数checkplus e : pyexpr -> bool を定義せよ

type pyexpr =
 Add of pyexpr * pyexpr (* x + y *)
 | Sub of pyexpr * pyexpr (* x - y *)
 | Mul of pyexpr * pyexpr (* x * y *)
 | Div of pyexpr * pyexpr (* x // y *)
 | Value of int


let rec checkplus e =
  match e with
  Add(e1, e2) -> true
  | Sub(e1. e2) -> false
  | Mul(e1, e2) -> false
  | Div(e1, e2) -> false
  | Value(v) -> false
;; 