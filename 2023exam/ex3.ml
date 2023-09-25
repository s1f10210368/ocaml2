以下の 'a btree 型で示される2分木が与えられたとき、その中に含まれるすべての要素を行きがけ順に並べてできるリストを返す関数 dfs : 'a btree -> 'a list を定義せよ

type 'a btree =
    Node of 'a * 'a btree * 'a btree
  | Leaf

let rec dfs t =
  match t with
    Node(e, t1, t2) -> e :: ((dfs t1) @ (dfs t2))
  | Leaf -> []

Node(e, t1, t2)  ここで要素e、左部分木t1、右部分木t2に分解
(dfs t1) @ (dfs t2) は、左部分木 t1 と右部分木 t2 のそれぞれに対して再帰的に dfs 関数を呼び出し、
                    その結果を連結して新しいリストを生成します。@ はリストの連結演算子です


:: 演算子（コンス演算子）:

:: はコンス演算子と呼ばれ、新しい要素を既存のリストの先頭に追加するために使用します。
リストの要素を組み立てる際に使用されます。
構文: 要素 :: リスト
例: 1 :: [2; 3] は新しいリスト [1; 2; 3] を生成します。

@ 演算子（連結演算子）:
                    
@ は連結演算子と呼ばれ、二つのリストを連結して新しいリストを生成します。
リスト同士を結合する際に使用されます。
構文: リスト1 @ リスト2
例: [1; 2] @ [3; 4] は新しいリスト [1; 2; 3; 4] を生成します。
簡単に言うと、:: 演算子は単一の要素を既存のリストの先頭に追加するのに対して、@ 演算子は二つのリストを連結して新しいリストを作成します。