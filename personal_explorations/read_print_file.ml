(* https://stackoverflow.com/a/32738922 *)
open Core
open Printf
  
let l = String.split_on_char ':' s ;;

let handle_line line =
        printf "%s \n" line ;; 

let () =
  let file_to_read = Sys.argv.(1) in
    let lines = In_channel.read_lines file_to_read in
      List.iter ~f: handle_line lines
