let rec remove_zero numbers = 
  match numbers with
    0::tl -> remove_zero tl
  | hd::tl -> hd::(remove_zero tl)
  | [] -> []

上記を末尾再帰に書き換える

let remove_zero numbers = 
  let rec remove_zero_iters result num = 
    match num with
    0::rest -> remove_zero_iters result rest;;