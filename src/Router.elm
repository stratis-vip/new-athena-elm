module Router exposing (..)

import Types exposing (Route(..))
import Url exposing (Url)
import Url.Parser exposing ((</>), Parser, map, oneOf, parse, s, string, top)



-- TODO to change the home page!!!!
{-
   routerParser : Parser (Route -> a) a
   routerParser =
       oneOf
           (List.map (\( parser, routeConstructor ) -> parser |> map routeConstructor) routes)
-}


extractFilename : String -> Route
extractFilename fullPath =
    let
        segments =
            String.split "/" fullPath

        filename =
            List.reverse segments |> List.head |> Maybe.withDefault ""
    in
    Image filename


routeParser : Parser (Route -> a) a
routeParser =
    oneOf
        [ map Guides top -- Temporary development root
        , map NewsPage (s "news")
        , map Guides (s "guides")
        , map Rules (s "rules")
        , map Champions (s "champions")
        , map CounterTeams (s "c-teams")
        , map WarProgram (s "program")
        , map Users (s "users")
        , map Image (s "images" </> s "adventures" </> string) -- Captures filename after /image/
        ]



{- [ ( top, Guides ) -- <- for developing reasons! In production this will be Home!
   , ( s "news", NewsPage )
   , ( s "guides", Guides )
   , ( s "rules", Rules )
   , ( s "champions", Champions )
   , ( s "c-teams", CounterTeams )
   , ( s "program", WarProgram )
   , ( s "users", Users )
   , ( s "image", Image )
   ]
-}


parseRoute : Url -> Route
parseRoute url =
    case parse routeParser url of
        Just route ->
            route

        Nothing ->
            NotFound
