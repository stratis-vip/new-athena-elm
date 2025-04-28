module Components.NewsComponent exposing (newsComponent)

import Html exposing (Html, div, option, select, text)
import Html.Attributes exposing (class, id, selected, style, value)
import Html.Events exposing (onInput)
import Types exposing (Model, Msg(..), News)


newsComponent : Model -> List Int -> List News -> Html Msg
newsComponent model years news =
    div [ class "flex flex-col items-center mt-5 sm:mt-10 text-xl" ]
        [ div
            [ class "container" ]
            [ selectComponent model years ]
        , div
            []
            (createNews model news)
        ]


selectComponent : Model -> List Int -> Html Msg
selectComponent model years =
    div
        [ class "flex justify-center items-center mb-3" ]
        [ div [ class "text-3xl text-center" ]
            [ text "News for year" ]
        , div [ class "flex justify-center" ]
            [ select
                [ id "year"
                , class " select ml-2 w-max-lg text-2xl  cursor-pointer"
                , onInput Year
                ]
                (createSelect model years)
            ]
        ]


createSelect : Model -> List Int -> List (Html msg)
createSelect model years =
    List.map (createOption model) years


createOption : Model -> Int -> Html msg
createOption model x =
    option
        [ value (String.fromInt x)
        , selected (model.year == x)
        ]
        [ text (String.fromInt x) ]


createNews : Model -> List News -> List (Html msg)
createNews model lnews =
    List.map
        (\x ->
            div
                [ class "card mb-2 mx-5 text-lg"
                , style "background-color" "#d6e8f361"
                ]
                [ div [ class "text-center text-blue-300 font-bold text-2xl border-black border-b-2 pt-3 pb-1" ]
                    [ text <| x.date ]
                , div [ class "px-4 py-1 text-center" ]
                    [ text x.text ]
                , div [ class (hideClass (\y -> y.points == Nothing || y.place == Nothing) x "text-center pt-1 pb-3") ]
                    [ case x.place of
                        Just y ->
                            text <| " 🏅" ++ String.fromInt y

                        Nothing ->
                            text ""
                    , case x.points of
                        Just y ->
                            text <| " (" ++ String.fromInt y ++ " points)"

                        Nothing ->
                            text ""
                    ]
                ]
        )
    <|
        List.filter (\x -> getYearForDate x == Just (String.fromInt model.year)) lnews



-- hideClass : (a -> Bool) -> String -> String


hideClass : (b -> Bool) -> b -> String -> String
hideClass f x s =
    if f x then
        s ++ " d-none"

    else
        s ++ " border-t-2"


getYearForDate : News -> Maybe String
getYearForDate n =
    let
        list =
            String.split " " n.date
    in
    case list of
        _ :: _ :: a :: _ ->
            Just a

        _ ->
            Nothing
