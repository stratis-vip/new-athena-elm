module Data.Rules exposing (rules)

import Types exposing (Rule)


rules : List Rule
rules =
    [ { id = 1
      , title = "29/30 policy"
      , explanation = "Our goal is to getting stronger. So we need to have - at least - one place vacant all the time, for any player to join us if he meets our requirements! In case we are less than 29, new members can join BUT they will may be kicked if we need to empty their spot. "
      }
    , { id = 2
      , title = "Minimum power requirements to join for NEW members"
      , explanation = "New members need to be strong enough to join. So, any player who has less than 950K Titans and 1M Heroes is welcome only if we are less than 29 mates! Nothing personal but at this point we need only strongs new mates! This rule doesn't apply to old mates!"
      }
    , { id = 3
      , title = "Get the weekly activity level (11000Activity / 500 Titanite)"
      , explanation =
            "Everybody must get - at least - 11000 activity every week. This is about 1560 activity a day. If one day you can't get these points, you can get more the next day. Same, applies to Titanite. If you can't get those level of activity, you are at risk to be kicked if team has 30 members."
      }
    , { id = 4
      , title = "Do not attack guild mates at Arena / Grand Arena"
      , explanation =
            "There are so many other players to attack! Team mates don't need our competition!"
      }
    , { id = 5
      , title = "Answer to public chat or message by generals."
      , explanation =
            "Game is a team work! Especially on war, some communication is necessary. Everybody, especially champions, must watch public chat and their messages for instructions. it's preferred not to close your private messages."
      }
    , { id = 6
      , title = "Follow the route at adventures"
      , explanation =
            "Experienced users knows the path for adventures. When in doubt, the creator of adventure must provide paths to other members. Suggested paths are in our site!"
      }
    , { id = 7
      , title = "Follow the plan at war and make your attacks"
      , explanation =
            "War planners make a lot of research to find the best strategy for the team. If you have any suggestion or doubt, report it at chat or with pm. Attacking elsewhere is not desirable!"
      }
    , { id = 8
      , title = "Repeated abstinence from GWar lead to a ban for GWar"
      , explanation =
            "Every champion must make his attacks under normal circumstances. Exceptional reasons happens to anyone and they are expecte to happened."
      }
    , { id = 9
      , title = "Complete your weekly attacks at Asgard and boss attacks"
      , explanation =
            "Every win during the week increase team's morale and gives to the player more resources."
      }
    , { id = 10
      , title = "Get no more than 12M on Friday (or on 140lvl ) attacks to Asgard's boss"
      , explanation =
            "This rule is about leave room for all players to get the 10M prize on a weaker boss. We choose to start at 140lvl boss, because the rewards from Monday to Friday is way better than to choose 125lvl boss."
      }
    ]
