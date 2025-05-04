module Components.ChampionsComponent exposing (..)

import Data.ChampionRules exposing (championRules)
import Html exposing (Html, a, div, text)
import Html.Attributes exposing (class, href)
import Types exposing (ChampionRules, Msg(..), customWidth)


championsComponent : Html Msg
championsComponent =
    div
        [ class ("container mt-4  sm:text-lg sm:mx-4 mx-2 " ++ customWidth) ]
        (fillChampTips championRules)


fillChampTips : List ChampionRules -> List (Html Msg)
fillChampTips tips =
    List.map fillTip tips


fillTip : ChampionRules -> Html Msg
fillTip tip =
    let
        tx =
            text tip.text

        localClass : Html.Attribute Msg
        localClass =
            class "mb-2 mx-4 sm:mx-0"
    in
    case tip.link of
        Just lnk ->
            div [ localClass ] [ tx, a [ href lnk, class "text-red-500 cursor-pointer" ] [ text " here" ] ]

        Nothing ->
            div [ localClass ] [ tx ]
