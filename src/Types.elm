module Types exposing (..)

import Browser exposing (UrlRequest)
import Browser.Navigation as Nav
import Html exposing (Attribute)
import Url exposing (Url)


version : String
version =
    "4.0.1"


membersCount : Int
membersCount =
    28


type Route
    = Home
    | NewsPage
    | Guides
    | Rules
    | Champions
    | CounterTeams
    | WarProgram
    | Users
    | NotFound


type alias Flags =
    ()


type Msg
    = Year String
    | ToggleBurger
    | SetShowVersion Bool
    | LinkClicked UrlRequest
    | UrlChanged Url


type alias Model =
    { year : Int
    , open : Bool
    , showVersion : Bool
    , key : Nav.Key
    , route : Route
    }


type alias News =
    { date : String
    , text : String
    , place : Maybe Int
    , points : Maybe Int
    }


type alias CSSList msg =
    List (Attribute msg)


type alias ChampionTips =
    { id : Int, text : String, link : Maybe String }


type alias Rule =
    { id : Int, title : String, explanation : String }
