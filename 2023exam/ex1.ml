文字列のリスト words を受け取り、その中に含まれる各文字列を順に標準出力に表示する関数 plist : string list -> unit を定義せよ


let rec plist words = 
  match words with
  | [] -> ()
    first::rest -> print_endline first; plist rest

| [] -> ()  リストが空の場合に何も返さない
  first::rest -> ...   リストの先頭要素firstと残りのリストrestを分解
print_endline first; plist rest
firstをprint_endlineで表示、残りのrestに再帰を用いている
;はその前の処理を終了してからその後ろの処理を行う