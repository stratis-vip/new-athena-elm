module Components.GuidesComponent exposing (..)

import Components.AdvComponent exposing (advComponent)
import Components.SectionComponent exposing (sectionComponent)
import Data.Adventures exposing (adventures)
import Data.Tips exposing (tips)
import Html exposing (Html, div, li, p, text, ul)
import Html.Attributes exposing (class)
import Types exposing (Msg, Tip, TipCategory(..))


guidesComponent : Html Msg
guidesComponent =
    div []
        [ sectionComponent "Assorted Tips" (div [ class "sm: mx-10" ] (createTips <| sortByCat tips))
        , sectionComponent "Adventures"
            (div [] <|
                List.map advComponent adventures
            )
        ]


createTips : List TipsForComponentView -> List (Html Msg)
createTips tipList =
    let
        categoryToString tip =
            case tip.category of
                GeneralCat ->
                    "General tips"

                HerosCat ->
                    "Heroes tips"

                TitansCat ->
                    "Titans tips"

                SpookyFestivalCat ->
                    "Spooky Festival tips"

                _ ->
                    "Tips"

        tipItem tp =
            div [ class "mb-2" ]
                [ p [ class "font-bold" ]
                    [ text <| categoryToString tp
                    , ul [ class "font-weight-500" ]
                        (List.map (\x -> li [ class "ml-3 mb-2 font-normal list-disc" ] [ text x ]) tp.tips)
                    ]
                ]
    in
    List.map (\l -> tipItem l) tipList


type alias TipsForComponentView =
    { category : TipCategory, tips : List String }


sortByCat : List Tip -> List TipsForComponentView
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
