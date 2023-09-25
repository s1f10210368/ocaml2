正の整数 n と文字列 s を引数にとり、文字列 s の内容を n 回繰り返してできる文字列を返す関数 mult n s :int -> string -> string を定義せよ

let rec mult n s = 
  if n <= 0 then ""
  else s ^ mult (n-1) s
;;

^ は文字列連結に使用する