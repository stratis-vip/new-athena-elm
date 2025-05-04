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
    | Guides
    | Rules
    | Champions
    | CounterTeams
    | WarProgram
    | Users
    | Image String
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


type alias ChampionRules =
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


type alias HasID a =
    { getId : a -> ID
    , getText : a -> String
    }


hasIdTips : HasID Tip
hasIdTips =
    { getId = .id
    , getText = .text
    }


sortByCat : List Tip -> List { category : TipCategory, tips : List String }
sortByCat tipList =
    let
        -- Group tips by category
        grouped =
            List.foldr
                (\tip acc ->
                    let
                        existing =
                            List.filter (\g -> g.category == tip.category) acc
                    in
                    case existing of
                        [] ->
                            { category = tip.category, tips = [ tip.text ] } :: acc

                        group :: _ ->
                            { group | tips = tip.text :: group.tips }
                                :: List.filter (\g -> g.category /= tip.category) acc
                )
                []
                tipList

        -- Sort categories according to their natural order
        categoryOrder cat =
            case cat of
                GeneralCat ->
                    0

                HerosCat ->
                    1

                TitansCat ->
                    2

                SpookyFestivalCat ->
                    3

                VariousCat ->
                    4
    in
    List.sortBy (\group -> categoryOrder group.category) grouped


type alias AdvImages =
    { thumb : String, solution : String }


type alias AdvPath =
    { colour : String, path : String }


type alias AdvNote =
    { id : Int, description : String }


type alias Adventure =
    { id : Int
    , name : String
    , images : AdvImages
    , paths : List AdvPath
    , notes : Maybe (List AdvNote)
    }
