import Html exposing (Html, div, h1, section, text)
import Html.App as App
import Html.Attributes exposing (class, id)
import Keyboard
import Firmname

main = App.program {
    init = init,
    view = view,
    update = update,
    subscriptions = subscriptions
  }


type alias AppModel = 
  {
    firmname : Firmname.Model
  }

model : AppModel
model = { 
    firmname = Firmname.model
  }


init : (AppModel, Cmd Msg)
init = (model, Cmd.none)


type Msg
  = FirmnameMsg Firmname.Msg
  | KeyMsg Keyboard.KeyCode


update : Msg -> AppModel -> (AppModel, Cmd Msg)
update msg model = 
  case msg of
    FirmnameMsg s -> ({ model | firmname = Firmname.update s model.firmname }, Cmd.none)
    KeyMsg code   -> (model, Cmd.none)


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
  

subscriptions : AppModel -> Sub Msg
subscriptions model = 
  Sub.batch
    [ Keyboard.downs KeyMsg ]
