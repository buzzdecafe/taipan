module Goods exposing (..)


type t = Opium | Silk | Arms | General

let string_of_t = function
  | Opium   -> "Opium"
  | Silk    -> "Silk"
  | Arms    -> "Arms"
  | General -> "General"


let eq (a: t) (b: t) = (a = b)

let compare = Pervasives.compare

let all = [Opium; Silk; Arms; General] 
