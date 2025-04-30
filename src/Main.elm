module Main exposing (..)

import Browser exposing (UrlRequest(..))
import Browser.Navigation as Nav
import Components.ChampionsComponent exposing (championsComponent)
import Components.GuidesComponent exposing (guidesComponent)
import Components.NavBarComponent exposing (navBarComponent)
import Components.NewsComponent exposing (newsComponent)
import Components.RulesComponent exposing (rulesComponent)
import Components.SectionComponent exposing (sectionComponent)
import Data.News exposing (news, years)
import Html exposing (Html, div, text)
import Html.Attributes exposing (..)
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



-- TODO corect the hompe page!!!


viewContent : Model -> Html Msg
viewContent model =
    div []
        [ case model.route of
            Home ->
                div [] [ sectionComponent "" championsComponent ]

            NewsPage ->
                div [] [ sectionComponent "News" <| newsComponent model years news ]

            Guides ->
                div [] [ sectionComponent "Guides" guidesComponent ]

            Rules ->
                div [] [ sectionComponent "General rules" rulesComponent ]

            Champions ->
                div [] [ sectionComponent "" championsComponent ]

            Types.WarProgram ->
                div [] [ sectionComponent "" <| text "War PRogram" ]

            Types.CounterTeams ->
                div [] [ sectionComponent "" <| text "CounterTeams" ]

            Users ->
                div [] [ sectionComponent "" <| text "Users" ]

            _ ->
                div [] [ sectionComponent "" <| text "NotFound" ]
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
