module Components.NavBarComponent exposing (navBarComponent)

import Html exposing (Html, a, div, img, span, text)
import Html.Attributes exposing (alt, class, href, id, src, style)
import Html.Events exposing (onClick, onMouseLeave, onMouseOver)
import Types exposing (Model, Msg(..), membersCount, version)



-- | The NavBar


navBarComponent : Model -> Html Msg
navBarComponent model =
    -- div navMainStyle
    div
        [ id "navBar-top"
        , class "bg-accent p-1  my-0 text-white flex flex-col sm:flex-row sm:items-center"
        ]
        [ --div badgeStyle
          div [ id "navbar", class "flex justify-between" ]
            [ div [ id "badge-top", class "py-1 flex items-center" ]
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
                    [ src "require:src/images/burger.svg"
                    , onClick ToggleBurger
                    , style "width" "36px"
                    ]
                    []
                ]
            ]
        , div [ id "menuChoices", hideMenu model ] <|
            createMenu menuChoices
        ]


menuChoices : List ( String, String )
menuChoices =
    [ ( "/news", "News" )
    , ( "/rules", "Rules" )
    , ( "/champions", "Champions" )
    , ( "/guides", "Guides" )
    , ( "/c-teams", "Counters" )
    , ( "/program", "War Program" )
    , ( "/users", "Time Table" )
    ]


createMenu : List ( String, String ) -> List (Html Msg)
createMenu ms =
    List.map (\( x, y ) -> div [ class "pb-3 sm:pb-0 pl-2 sm:pl-0" ] [ a [ href x ] [ text y ] ]) ms


menuStyle : String
menuStyle =
    " sm:flex flex flex-col sm:justify-around sm:flex-1 sm:flex-row text-xl normal"


hideMenu : Model -> Html.Attribute msg
hideMenu model =
    if model.open then
        class menuStyle

    else
        class <| menuStyle ++ " hidden"


versionStyle : String
versionStyle =
    " ml-1 text-[10px]"


hideVersion : Model -> String
hideVersion model =
    if model.showVersion then
        versionStyle

    else
        versionStyle ++ " hidden"
