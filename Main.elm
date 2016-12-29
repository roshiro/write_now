import Html
import Html exposing (..)

main : Program Never Model Msg
main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = \_ -> Sub.none
    }

type alias Model =
  {}

init : ( Model, Cmd Msg )
init =
  (Model, Cmd.none)


type Msg
    = NoOp

-- How we update our Model on a given Msg?
update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    NoOp ->
      model ! []

view : Model -> Html Msg
view model =
  div [] [text "Hello World" ]
