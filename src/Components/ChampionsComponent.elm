module Components.ChampionsComponent exposing (..)

import Html exposing (Html, div, text)
import Html.Attributes exposing (class)
import Types exposing (Msg(..))


championsComponent : Html Msg
championsComponent =
    div [ class "flex flex-col items-center mt-5 sm:mt-10 text-xl" ]
        [ div
            [ class "container" ]
            [ text "Champions will be here!" ]
        ]
