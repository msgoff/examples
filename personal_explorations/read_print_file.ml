(* https://stackoverflow.com/a/32738922 *)
open Core

let handle_line line =
  printf "Your line: %s \n" line

let () =
  let file_to_read = "./file_to_read.txt" in
    let lines = In_channel.read_lines file_to_read in
      List.iter ~f: handle_line lines
