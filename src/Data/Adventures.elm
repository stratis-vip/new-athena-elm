module Data.Adventures exposing (..)

import Types exposing (Adventure)


adv11small : String
adv11small =
    "/images/adventures/Adventure11small.jpg"


adv11 : String
adv11 =
    "/images/adventures/Adventure11.jpg"


adv10small : String
adv10small =
    "/images/adventures/Adventure10small.jpg"


adv10 : String
adv10 =
    "/images/adventures/Adventure10.jpg"


adv12small : String
adv12small =
    "/images/adventures/Adventure12small.jpg"


adv12 : String
adv12 =
    "/images/adventures/Adventure12.jpg"


adv09small : String
adv09small =
    "/images/adventures/adv09small.jpg"


adv09 : String
adv09 =
    "/images/adventures/adv09.jpg"


adventures : List Adventure
adventures =
    [ { id = 9
      , name = "Adventure 09 - Valley of the Elements"
      , images =
            { thumb = adv09small
            , solution = adv09
            }
      , paths =
            [ { colour = "blue"
              , path = "02-06-10-15-20-14-24-29-25-36-39-42-44-45"
              }
            , { colour = "orange"
              , path = "03-08-12-11-07-16-21-26-30-31-32-35-37-40-45"
              }
            , { colour = "green"
              , path = "03-04-13-19-18-23-17-22-38-41-43-46-45"
              }
            ]
      , notes = Nothing
      }
    , { id = 10
      , name = "Adventure 10 - Valley of the Elements"
      , images =
            { thumb = adv10small
            , solution = adv10
            }
      , paths =
            [ { colour = "blue"
              , path = "03-02-06-11-17-25-30-35-29-34-33-38-43-44-52"
              }
            , { colour = "orange"
              , path = "04-08-13-18-22-26-31-36-40-46-45-39-33-28-20"
              }
            , { colour = "green"
              , path = "05-09-14-19-23-27-32-37-42-48-51-50-49-47-41"
              }
            ]
      , notes = Nothing
      }
    , { id = 11
      , name = "Adventure 11 - Ghirwil City Depths"
      , images =
            { thumb = adv11small
            , solution = adv11
            }
      , paths =
            [ { colour = "blue"
              , path = "02-03-06-07-12-11-15-21-27-36-39-40-41-37"
              }
            , { colour = "orange"
              , path = "02-04-06-08-12-17-16-22-28-29-30-31-25-19-18"
              }
            , { colour = "green"
              , path = "02-05-06-09-13-14-20-26-32-38-35-33-34-37"
              }
            ]
      , notes = Nothing
      }
    , { id = 12
      , name = "Adventure 12 - Fall of the Celestial City"
      , images =
            { thumb = adv12small
            , solution = adv12
            }
      , paths =
            [ { colour = "blue"
              , path = "05-01-09-03-06-10-22-31-36-35-29-30-21-13"
              }
            , { colour = "alternate blue"
              , path = "05-01-09-03-06-10-22-31-36-35-29-34-29-30-21"
              }
            , { colour = "red"
              , path = "08-11-17-24-14-12-15-28-20-19-18-27"
              }
            , { colour = "orange"
              , path =
                    "02-04-07-16-23-32-33-25-34-25-26-18-27"
              }
            , { colour = "alternate orange"
              , path =
                    "02-04-07-16-23-32-33-25-26-18-27"
              }
            ]
      , notes =
            Just
                [ { id = 1
                  , description = "Orange path, is better suited to mage teams."
                  }
                , { id = 2
                  , description = " Blue path can go to 34 (avoiding 13)"
                  }
                ]
      }
    , { id = 13
      , name = "Adventure 13 on 09 map - Maelstrom of Chaos"
      , images =
            { thumb = adv09small
            , solution = adv09
            }
      , notes =
            Just
                [ { id = 1
                  , description = "blue path is for mage teams."
                  }
                ]
      , paths =
            [ { colour = "blue"
              , path = "02-06-12-15-20-14-24-29-25-35-38-41-43-44"
              }
            , { colour = "orange"
              , path = "03-08-09-13-07-16-21-26-30-31-42-34-36-39-44"
              }
            , { colour = "green"
              , path = "03-04-10-19-18-23-17-22-37-40-32-45-44"
              }
            ]
      }
    , { id = 14
      , name = "Adventure 13 on 10 map - Maelstrom of Chaos"
      , images =
            { thumb = adv10small
            , solution = adv10
            }
      , paths =
            [ { colour = "blue"
              , path = "03-02-06-11-17-25-30-35-29-34-33-38-43-44-52"
              }
            , { colour = "orange"
              , path = "04-08-13-18-22-26-31-36-40-46-45-39-33-28-20"
              }
            , { colour = "green"
              , path = "05-09-14-19-23-27-32-37-42-48-51-50-49-47-41"
              }
            ]
      , notes = Nothing
      }
    , { id = 15
      , name = "Adventure 13 on 11 map - Maelstrom of Chaos"
      , images =
            { thumb = adv11small
            , solution = adv11
            }
      , paths =
            [ { colour = "blue"
              , path = "02-03-06-07-12-11-15-21-27-36-39-40-41-37"
              }
            , { colour = "orange"
              , path = "02-04-06-08-12-17-16-22-28-29-30-31-25-19-18"
              }
            , { colour = "green"
              , path =
                    "02-05-06-09-13-14-20-26-32-38-35-33-34-37 "
              }
            ]
      , notes = Nothing
      }
    , { id = 16
      , name = "Adventure 13 on 12 map - Maelstrom of Chaos"
      , images =
            { thumb = adv12small
            , solution = adv12
            }
      , paths =
            [ { colour = "blue"
              , path = "08-01-09-03-05-10-22-31-36-35-29-30-21-13"
              }
            , { colour = "red"
              , path = "07-11-17-24-14-12-15-28-20-19-18-27"
              }
            , { colour = "orange"
              , path =
                    "07-02-04-06-16-23-33-34-25-32-25-26-18-27"
              }
            ]
      , notes =
            Just
                [ { id = 1
                  , description = "Only map of adventure 12 is recommended!"
                  }
                , { id = 2
                  , description = "Yellow path, is better suited to mage teams."
                  }
                , { id = 3
                  , description =
                        "#24 is red path's responsibility but if it create problem yellow path can help"
                  }
                , { id = 4
                  , description = "Blue path starts with #8, but red path can clear it too (it can start with 09-01-08-01-07…) ."
                  }
                ]
      }
    ]
