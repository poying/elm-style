import Html exposing ( text )
import Style


main = text style


style : String
style =
  Style.rules
    [ ( "body, html", [("color", "#333")])
    , ("a", [("color", "red")])
    ]
