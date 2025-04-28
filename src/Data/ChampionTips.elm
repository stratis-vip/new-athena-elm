module Data.ChampionTips exposing (..)

import Types exposing (ChampionTips)


champTips : List ChampionTips
champTips =
    [ { id = 1
      , text = "At the moment and while we are in the edge of Gold/Silver league, we need members with strong Titans and Heros (over 1M)."
      , link = Nothing
      }
    , { id = 2
      , text = "The minimum threshold for someone to be eligible as a champion is to exceed the team average power (AP) or to be above the Titans threshold (TT). "
      , link = Just "https://docs.google.com/spreadsheets/d/1iGFwC4uUa6-oG6I7NZQcBMWU7dLWwpL5BSEX-G0CM6k/edit?usp=sharing"
      }
    , { id = 3
      , text = "At above link, all mates with any kind of green color at AVG POW column are eligible for champions."
      , link = Nothing
      }
    , { id = 5
      , text = "At the current momment, we are at the pleasant situation to have over 20 eligible champions for 15 places. So some selection must be applied. Here are the rules for this:"
      , link = Nothing
      }
    , { id = 6
      , text = "1. Obviously, guild master and generals, are always champions too, as they are crusial for the planning and directing of war. After all, they usually meet the minimum requirements."
      , link = Nothing
      }
    , { id = 7
      , text = "2. Needs for special Titans. For example one day we may need more Fire Titans."
      , link = Nothing
      }
    , { id = 8
      , text = "3. Stronger Titan is better than a very strong hero."
      , link = Nothing
      }
    , { id = 9
      , text = "4. Personal reasons of the Champion that make him not available."
      , link = Nothing
      }
    ]
