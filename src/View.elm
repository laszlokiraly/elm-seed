module View exposing (..)

import Html exposing (Html, div, text, button, input, br)
import Messages exposing (Msg(..))
import Models exposing (Model, Player)
import Html.Events exposing (..)
import Html.Attributes exposing (..)

view : Model -> Html Msg
view model =
    div []
        [ input [placeholder "Enter Player number: ", onInput ChangePlayerNumber] []
        , button [onClick GetAllPlayers] [text "Get Player Name"]
        , br [] []
        , text (printGreeting model)]

printGreeting: Model -> String
printGreeting model =
  if model.player.id /= 0 then
    "Hello " ++ model.player.name ++ "!"
  else
    ""
