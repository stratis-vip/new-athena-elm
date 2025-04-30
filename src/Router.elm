module Router exposing (..)

import Types exposing (Route(..))
import Url exposing (Url)
import Url.Parser exposing (Parser, map, oneOf, parse, s, top)



-- TODO to change the home page!!!!


routerParser : Parser (Route -> a) a
routerParser =
    oneOf
        (List.map (\( parser, routeConstructor ) -> parser |> map routeConstructor) routes)


routes : List ( Parser a a, Route )
routes =
    [ ( top, Rules ) -- <- for developing reasons! In production this will be Home!
    , ( s "news", NewsPage )
    , ( s "guides", Guides )
    , ( s "rules", Rules )
    , ( s "champions", Champions )
    , ( s "c-teams", CounterTeams )
    , ( s "program", WarProgram )
    , ( s "users", Users )
    ]


parseRoute : Url -> Route
parseRoute url =
    case parse routerParser url of
        Just route ->
            route

        Nothing ->
            NotFound
