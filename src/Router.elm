module Router exposing (..)

import Types exposing (Route(..))
import Url exposing (Url)
import Url.Parser exposing (Parser, map, oneOf, parse, s, top)


routerParser : Parser (Route -> a) a
routerParser =
    oneOf
        [ top |> map Home
        , s "guides" |> map Guides
        , s "rules" |> map Rules
        , s "champions" |> map Champions
        , s "c-teams" |> map CounterTeams
        , s "program" |> map WarProgram
        , s "users" |> map Users
        ]


parseRoute : Url -> Route
parseRoute url =
    case parse routerParser url of
        Just route ->
            route

        Nothing ->
            NotFound
