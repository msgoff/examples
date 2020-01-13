let split_on_space s = Astring.String.cuts ~sep:" " s

module Tokens = Map.Make(String)

let tokenise s =
  let tokens = split_on_space s in
  let m = Tokens.empty in
  let f acc s =
    let count =
      match
        try
          Some (Tokens.find s acc)
        with Not_found -> None
      with
      | None -> 0
      | Some x -> x
    in
    Tokens.add s (count+1) acc in
  List.fold_left (fun acc s -> f acc s) m tokens
