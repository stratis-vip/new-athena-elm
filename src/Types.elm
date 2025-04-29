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


type alias ID =
    Int


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
    { id : ID, text : String, link : Maybe String }


type alias Rule =
    { id : ID, title : String, explanation : String }


type TipCategory
    = GeneralCat -- from 0 - 999
    | HerosCat -- from 1000 - 1999
    | TitansCat -- from 2000 - 2999
    | SpookyFestivalCat -- from 3000 - 3999
    | VariousCat -- from 10000


type alias Tip =
    { id : ID, category : TipCategory, text : String }
