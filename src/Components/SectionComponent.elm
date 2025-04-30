module Components.SectionComponent exposing (..)

import Html exposing (Html, div, h1, text)
import Html.Attributes exposing (class)
import Types exposing (Msg)


sectionComponent : String -> Html Msg -> Html Msg
sectionComponent title children =
    div [ class "flex flex-col mt-5 sm:mt-10 text-lg font-bold mx-2 sm:mx-4 items-center" ]
        [ h1 [ class "text-3xl text-main mb-3" ] [ text title ]
        , div [] [ children ]
        ]
