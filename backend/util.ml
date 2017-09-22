let list_some lst =
  let accres =
    lst |> List.fold_left (fun acc opt ->
      match opt with
      | None    -> acc
      | Some(p) -> p :: acc
    ) []
  in
    List.rev accres


let option_map f opt =
  match opt with
  | None    -> None
  | Some(x) -> Some(f x)
