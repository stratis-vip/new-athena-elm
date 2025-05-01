module Components.AdvComponent exposing (..)

import Html exposing (Html, a, div, img, p, span, text)
import Html.Attributes exposing (alt, class, href, src)
import Types exposing (Adventure, Msg)


extractFilename : String -> String
extractFilename fullPath =
    fullPath
        |> String.split "/"
        |> List.reverse
        |> List.head
        |> Maybe.withDefault fullPath


advComponent : Adventure -> Html Msg
advComponent adv =
    div []
        [ div [ class "mb-3" ]
            [ p [ class "font-bold" ] [ text adv.name ]
            , div []
                [ div [ class "font-bold text-center" ] [ text "Recommended Solution" ]
                , div [ class "flex flex-row" ]
                    [ div [ class "flex flex-col sm:flex-row items-center" ]
                        [ div [ class "mr-2" ]
                            [ a [ href ("/images/adventures/" ++ extractFilename adv.images.solution) ]
                                -- ++ adv.images.solution) ]
                                [ img
                                    [ src adv.images.thumb
                                    , alt ("solution " ++ adv.name)
                                    ]
                                    []
                                ]
                            ]
                        , div []
                            (List.map
                                (\x ->
                                    div [ class "text-md" ]
                                        [ span [ class "font-bold" ] [ text <| x.colour ++ ": " ]
                                        , text x.path
                                        ]
                                )
                                adv.paths
                            )
                        ]
                    ]
                ]
            ]
        ]


test : Int
test =
    1
