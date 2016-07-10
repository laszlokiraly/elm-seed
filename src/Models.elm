module Models exposing (..)

type alias Model =
  {
      player: Player
      , inputNumber: String
  }

type alias Player = {
  id: Int,
  name: String,
  level: Int
}
