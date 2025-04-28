module Components.NavBarComponent exposing (navBarComponent)

import Html exposing (Html, a, div, img, span, text)
import Html.Attributes exposing (alt, class, href, id, src, style)
import Html.Events exposing (onClick, onMouseLeave, onMouseOver)
import Types exposing (Model, Msg(..), membersCount, version)



navBarComponent : Model -> Html Msg
navBarComponent model =
    -- div navMainStyle
    div
        [ id "navBar-top"
        , class "bg-accent p-1  my-0 text-white flex flex-col sm:flex-row sm:items-center"
        ]
        [ --div badgeStyle
          div [ id "navbar", class "flex justify-between" ]
            [ --img (badgeImageStyle ++ [o src "images/athena.png", alt "new-athena" ])
              div [ id "badge-top", class "py-1 flex items-center" ]
                [ div [ id "badge", class "flex sm:justify-center sm:align-center" ]
                    [ img
                        [ class "my-0"
                        , style "width" "48px"
                        , style "height" "48px"
                        , src "require:src/images/athena.png"
                        , alt "new-athena flag"
                        ]
                        []
                    ]
                , div []
                    [ div [ onMouseOver (SetShowVersion True), onMouseLeave (SetShowVersion False), class "text-lg" ]
                        [ text "New Athena"
                        , span [ class (hideVersion model) ] [ text version ]
                        ]
                    , div [ class "block font-thin" ] [ text (String.fromInt membersCount ++ " members") ]
                    ]
                ]
            , div [ id "burger", class "sm:hidden self-center mr-1" ]
                [ img
                    [ src "/images/burger.svg"
                    , onClick ToggleBurger
                    , style "width" "36px"
                    ]
                    []
                ]
            ]
        , div [ id "menuChoices", class (hideMenu model) ]
            [ div [] [ a [ href "/" ] [ text "News" ] ]
            , div [] [ a [ href "/rules" ] [ text "Rules" ] ]
            , div [] [ a [ href "/champions" ] [ text "Champions" ] ]
            , div [] [ a [ href "/guides" ] [ text "Guides" ] ]
            , div [] [ a [ href "/c-teams" ] [ text "Counters" ] ]
            , div [] [ a [ href "/program" ] [ text "War Program" ] ]
            , div [] [ a [ href "/users" ] [ text "Time Table" ] ]
            ]
        ]


menuStyle : String
menuStyle =
    " sm:flex flex flex-col sm:justify-around sm:flex-1 sm:flex-row"


hideMenu : Model -> String
hideMenu model =
    if model.open then
        menuStyle

    else
        menuStyle ++ " hidden"


versionStyle : String
versionStyle =
    " ml-1 text-[10px]"


hideVersion : Model -> String
hideVersion model =
    if model.showVersion then
        versionStyle

    else
        versionStyle ++ " hidden"
