module Messages exposing (..)

import Http exposing (Error)
import Models exposing (Player)

type Msg
    = NoOp
    | GetAllPlayers
    | FetchSucceed Player
    | FetchFailed Http.Error
    | ChangePlayerNumber String
