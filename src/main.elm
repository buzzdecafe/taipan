import Html exposing (Html, div, h1, section, text)
import Html.App as App
import Html.Attributes exposing (class, id)

main = App.beginnerProgram {
    model = model, 
    view = view,
    update = update
  }


type alias Model = 
  { ship : Int, debt : Int, bank : Int, cash : Int }

model : Model
model = { ship = 0, debt = 0, bank = 0, cash = 0 }


type Msg = Char String | Noop

update : Msg -> Model -> Model
update msg model = 
  case msg of
    Noop   -> model 
    Char s -> model  -- do something later

view : Model -> Html Msg
view model = 
  div 
    [class "wrapper", id "maincontainer"]
    [
      h1 [] [text "Taipan"],
      section [class "mainsection"] [text "Imagine your ad here"]
    ]
  

