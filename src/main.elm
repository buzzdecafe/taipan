import Html exposing (Html, div, h1, section, text)
import Html.App as App
import Html.Attributes exposing (class, id)
import Firmname

main = App.beginnerProgram {
    model = model, 
    view = view,
    update = update
  }


type alias AppModel = 
  {
    firmname : Firmname.Model
  }

model : AppModel
model = { 
    firmname = Firmname.model
  }


type Msg = 
  FirmnameMsg Firmname.Msg

update : Msg -> AppModel -> AppModel
update msg model = 
  case msg of
    FirmnameMsg s -> { model | firmname = Firmname.update s model.firmname }


view : AppModel -> Html Msg
view model = 
  div 
    [class "wrapper", id "maincontainer"]
    [
      h1 [] [text "Taipan"],
      section [class "mainsection"] [
        App.map FirmnameMsg (Firmname.view model.firmname)
      ]
    ]
  

