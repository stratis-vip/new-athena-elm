module Main exposing (..)

import Browser exposing (UrlRequest(..))
import Browser.Navigation as Nav
import Components.ChampionsComponent exposing (championsComponent)
import Components.NavBarComponent exposing (navBarComponent)
import Components.NewsComponent exposing (newsComponent)
import Html exposing (Html, div, text)
import Html.Attributes exposing (..)
import News exposing (news, years)
import Router exposing (parseRoute)
import Types exposing (Flags, Model, Msg(..), Route(..))
import Url exposing (Url)
import Url.Parser exposing (..)



---- MODEL ----
-- type alias Model =
-- {}


init : Flags -> Url -> Nav.Key -> ( Model, Cmd Msg )
init _ url key =
    let
        route =
            parseRoute url
    in
    ( { year = 2025, open = False, showVersion = False, key = key, route = route }, Cmd.none )



---- UPDATE ----
-- type Msg
-- = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Year x ->
            case String.toInt x of
                Just y ->
                    ( { model | year = y }, Cmd.none )

                Nothing ->
                    ( model, Cmd.none )

        ToggleBurger ->
            ( { model | open = not model.open }, Cmd.none )

        SetShowVersion value ->
            ( { model | showVersion = value }, Cmd.none )

        LinkClicked urlRequest ->
            case urlRequest of
                Internal url ->
                    ( model, Nav.pushUrl model.key (Url.toString url) )

                External href ->
                    ( model, Nav.load href )

        UrlChanged url ->
            ( { model | route = parseRoute url }, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



---- VIEW ----


view : Model -> Browser.Document Msg
view model =
    { title = "This is new Athena! - Elm app"
    , body =
        [ div []
            [ navBarComponent model
            , viewContent model
            ]
        ]
    }


viewContent : Model -> Html Msg
viewContent model =
    div []
        [ case model.route of
            Home ->
                div [] [ newsComponent model years news ]

            Guides ->
                div [] [ text "This is the guides" ]

            Rules ->
                div [] [ text "rules" ]

            Champions ->
                div [] [ championsComponent ]

            Types.WarProgram ->
                div [] [ text "War PRogram" ]

            Types.CounterTeams ->
                div [] [ text "CounterTeams" ]

            Users ->
                div [] [ text "Users" ]

            _ ->
                div [] [ text "NotFound" ]
        ]



---- PROGRAM ----


main : Program Flags Model Msg
main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        , onUrlChange = UrlChanged
        , onUrlRequest = LinkClicked
        }



-- LOCAL CSS styles
----------------------------------------------


bodyStyle : List (Html.Attribute msg)
bodyStyle =
    [ id "root"

    -- , style "font-family" "ui-sans-serif, system-ui, sans-serif"
    ]
