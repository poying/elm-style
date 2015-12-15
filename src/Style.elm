module Style (rules) where
{-| A tiny library for generating CSS. -}


import List
import String


type alias Rule =
  (String, String)


type alias RuleSet =
  (String, List Rule)


rules : List RuleSet -> String
rules sets =
  sets
    |> List.map setToString
    |> String.concat


setToString : RuleSet -> String
setToString (selector, rules) =
  let body = rules
    |> List.map (\(k, v) -> k ++ ":" ++ v ++ ";")
    |> String.concat
  in
    selector ++ "{" ++ body ++ "}"
