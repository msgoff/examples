open Core

(*let v = int_of_string Sys.argv.(1);; 
let rec triangle x = 
        match x with 
        1 -> 1
        | _ -> x + triangle (x-1);;


let result = triangle v ;;
print_int result;;
print_char '\n' ;;

  List.iter ~f:(printf "%d\n") lst ;;             
*)

(* https://stackoverflow.com/a/32738922 *)
open Printf
  
let rec divisors x n lst = 
	match n with 
		1 -> []
		|_ -> if x mod n = 0 then (n:: divisors x (n-1) lst)  else divisors x (n-1) lst;;

let handle_line line =
  let v = int_of_string line in 
  let lst = divisors v ((v+1)/2) [] in  
  let lst_len = List.length lst in 
  if lst_len > 300 then  printf ("%d,%d\n") v lst_len   ;;

let () =
  let file_to_read = Sys.argv.(1) in
    let lines = In_channel.read_lines file_to_read in
      List.iter ~f: handle_line lines


