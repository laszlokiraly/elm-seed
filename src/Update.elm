module Update exposing (..)

import Messages exposing (Msg(..))
import Models exposing (Model, Player)
import Http exposing (Error)
import Json.Decode exposing (..)
import Task exposing (perform)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )
        GetAllPlayers ->
          ( model, fetchPlayerById model.inputNumber)
        FetchSucceed fetchedPlayer ->
          ( {model | player = fetchedPlayer}, Cmd.none )
        FetchFailed errorMessage ->
          ( {model | player = Player 0 "" 0}, Cmd.none )
        ChangePlayerNumber inputText ->
          ( {model | inputNumber = inputText}, Cmd.none)

fetchPlayerById : String -> Cmd Msg
fetchPlayerById name =
  let
    url = "//localhost:4000/players/" ++ name
  in
    Task.perform FetchFailed FetchSucceed
      (Http.get decodePlayer url)


decodePlayer : Decoder Player
decodePlayer =
  object3 Player
    ("id" := int)
    ("name" := string)
    ("level" := int)
