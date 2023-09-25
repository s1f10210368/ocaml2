type pyval =
    PyInt of int      (* Pythonのint型 *)
  | PyFloat of float  (* Pythonのfloat型 *)


let rec add e = 
  match e with