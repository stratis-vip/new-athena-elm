module Components.RulesComponent exposing (..)

import Data.Rules exposing (rules)
import Html exposing (Html, button, div, h1, p, text)
import Html.Attributes exposing (class, id)
import Types exposing (Msg, Rule)


rulesComponent : Html Msg
rulesComponent =
    div [ class "sm:mx-20 text-lg" ]
        [ h1 [ class "mt-10 text-3xl text-center" ] [ text "General rules of our Guild" ]
        , div [ class "mx-5 accordion divide-neutral/20 divide-y" ]
            -- active
            (List.map makeItem rules)
        ]


setTitleClass : Rule -> Html.Attribute Msg
setTitleClass rule =
    if rule.id == 1 then
        class "accordion-item active"

    else
        class "accordion-item"


setExplanationClass : Rule -> Html.Attribute Msg
setExplanationClass rule =
    let
        base =
            "accordion-content w-full overflow-hidden transition-[height] duration-300"
    in
    if rule.id /= 1 then
        class (base ++ " hidden")

    else
        class base


setTitleID : Rule -> String
setTitleID rule =
    "id " ++ String.fromInt rule.id


makeItem : Rule -> Html Msg
makeItem rule =
    let
        itemClass =
            setTitleClass rule

        idText =
            setTitleID rule
    in
    div [ itemClass, id idText ]
        [ button [ class "accordion-toggle text-start" ] [ text rule.title ]
        , div [ id (idText ++ "-collapse"), setExplanationClass rule ]
            [ div [ class "px-5 pb-4" ]
                [ p [ class "text-base-content/80 font-normal" ] [ text rule.explanation ]
                ]
            ]
        ]
