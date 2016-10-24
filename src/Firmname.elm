module Firmname exposing (..)

import Html exposing (Html, Attribute, div, input, label, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import String


-- MODEL

type alias Model = { content : String }

model : Model 
model = Model ""


-- UPDATE

type Msg 
  = Change String

update : Msg -> Model -> Model
update msg model =
  case msg of
    Change newContent -> { model | content = newContent }


-- VIEW

view : Model -> Html Msg
view model =
  div [] [ 
    label [for "firmname"] [
      text "Taipan, what will you name your firm: ",
      input [id "firmname", type' "text", onInput Change] []
    ]
  ]
