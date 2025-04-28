module Components.ChampionsComponent exposing (..)

import Data.ChampionTips exposing (champTips)
import Html exposing (Html, a, div, span, text)
import Html.Attributes exposing (class, href)
import Types exposing (ChampionTips, Msg(..))


championsComponent : Html Msg
championsComponent =
    div [ class "flex flex-col items-center mt-5 sm:mt-4 text-xl " ]
        [ span [ class "font-bold" ] [ text "How to be a Champion of New Athena" ]
        , div
            [ class "container mt-4  sm:text-lg sm:mx-4 mx-2 " ]
            (fillChampTips champTips)
        ]


fillChampTips : List ChampionTips -> List (Html Msg)
fillChampTips tips =
    List.map fillTip tips


fillTip : ChampionTips -> Html Msg
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
