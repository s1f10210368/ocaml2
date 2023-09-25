type 'a btree =
    Node of 'a * 'a btree * 'a btree
  | Leaf

let rec preorder_traversal tree = 行きがけ順
  match tree with
  | Leaf -> []
  | Node (value, left, right) ->
      value :: (preorder_traversal left @ preorder_traversal right)

let rec inorder_traversal tree = 通りがけ順
  match tree with
  | Leaf -> []
  | Node (value, left, right) ->
      inorder_traversal left @ [value] @ inorder_traversal right

let rec postorder_traversal tree = 帰りがけ順
  match tree with
  | Leaf -> []
  | Node (value, left, right) ->
      postorder_traversal left @ postorder_traversal right @ [value]

let breadth_first_traversal tree =  幅優先探索
  let rec bfs queue acc =
    match queue with
    | [] -> List.rev acc
    | Leaf :: rest -> bfs rest acc
    | Node (value, left, right) :: rest ->
        bfs (rest @ [left; right]) (value :: acc)
  in
  bfs [tree] []


