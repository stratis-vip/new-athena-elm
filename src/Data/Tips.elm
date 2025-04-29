module Data.Tips exposing (..)

import Types exposing (Tip, TipCategory(..))


tips : List Tip
tips =
    List.sortBy .id
        [ { id = 2001
          , category = HerosCat
          , text = "Get items for heros, only with raid (x10). Likewise, it is guaranteed that you get at least one item."
          }
        , { id = 3001
          , category = TitansCat
          , text = "With the fire titans, vulcan is the most weak. Upgrade all the others first."
          }
        , { id = 1
          , category = GeneralCat
          , text = "Do as many daily missions as you can. Hononary guardian Box, may surprise you."
          }
        , { id = 2
          , category = GeneralCat
          , text = "At the 28th day,  daily bonus is a Lesser Hero Soul Stone. If you are not developing an hero, keep this chests for special events wants to get hero stones."
          }
        , { id = 3
          , category = GeneralCat
          , text = "Avoid upgrading Heros or Titas before attacking. Leave at least an hour for game servers to update your new power."
          }
        , { id = 4000
          , category = SpookyFestivalCat
          , text = "To get easily 250+ minions at Furnace of souls, attack every time with any pet and ONLY one hero. Likewise you will get from 15-50 minions per attack. You can cancel the attack for speed."
          }
        ]
