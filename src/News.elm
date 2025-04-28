module News exposing (news, years)

import Types exposing (News)


allYears : List (List String)
allYears =
    List.map (\x -> x.date) news
        |> List.map (\x -> String.split " " x)
        |> List.map (List.drop 2)


stringYears : List String
stringYears =
    List.concat <| getUnique allYears


years : List Int
years =
    List.map String.toInt stringYears
        |> List.filter (\maybeInt -> maybeInt /= Nothing)
        |> List.map
            (\maybeInt ->
                case maybeInt of
                    Just int ->
                        int

                    Nothing ->
                        -1
            )
        |> List.reverse


getUnique : List (List String) -> List (List String)
getUnique lists =
    case lists of
        [] ->
            []

        firstList :: restLists ->
            if List.member firstList restLists then
                getUnique restLists

            else
                firstList :: getUnique restLists


news : List News
news =
    List.reverse
        [ { date = "08 Aug 2022"
          , text = "We are for 4th week at Silver!"
          , place = Just 9
          , points = Just 3789
          }
        , { date = "13 Aug 2022"
          , text = "Transit team \"new athena\" created by stratis. 5 members left the team to staff new athena."
          , place = Nothing
          , points = Nothing
          }
        , { date = "14 Aug 2022"
          , text = "We are for 5th week at Silver!"
          , place = Just 7
          , points = Just 4164
          }
        , { date = "19 Aug 2022"
          , text = "Rules for the team are added. Check the menu item \"Rules\""
          , place = Nothing
          , points = Nothing
          }
        , { date = "21 Aug 2022"
          , text = "Paths for adventures added. Check the menu item \"Adventures\""
          , place = Nothing
          , points = Nothing
          }
        , { date = "21 Aug 2022"
          , text = "Merge with athena completed"
          , place = Nothing
          , points = Nothing
          }
        , { date = "21 Aug 2022"
          , text = "We start from 29th place at Bronze to promote to Silver!"
          , place = Nothing
          , points = Nothing
          }
        , { date = "28 Aug 2022"
          , text = "We promote to Silver!"
          , place = Nothing
          , points = Nothing
          }
        , { date = "4 Sep 2022"
          , text = "We are for 2nd week at Silver!"
          , place = Just 8
          , points = Just 4273
          }
        , { date = "11 Sep 2022"
          , text = "We are for 3rd week at Silver!"
          , place = Just 8
          , points = Just 3956
          }
        , { date = "18 Sep 2022"
          , text = "We are for 4th week at Silver!"
          , place = Just 8
          , points = Just 4415
          }
        , { date = "25 Sep 2022"
          , text = "We are for 5th week at Silver!"
          , place = Just 8
          , points = Just 3968
          }
        , { date = "1 Oct 2022"
          , text = "We are for 6th week at Silver!"
          , place = Just 8
          , points = Just 4398
          }
        , { date = "9 Oct 2022"
          , text = "We are for 7th week at Silver!"
          , place = Just 8
          , points = Just 4202
          }
        , { date = "15 Oct 2022"
          , text = "We are for 8th week at Silver!"
          , place = Just 8
          , points = Just 4202
          }
        , { date = "22 Oct 2022"
          , text = "We are for 9th week at Silver!"
          , place = Just 6
          , points = Just 4444
          }
        , { date = "30 Oct 2022"
          , text = "We are for 10th week at Silver!"
          , place = Just 9
          , points = Just 3800
          }
        , { date = "5 Nov 2022"
          , text = "We are for 11th week at Silver!"
          , place = Just 6
          , points = Just 4749
          }
        , { date = "13 Nov 2022"
          , text = "We are for 12th week at Silver!"
          , place = Just 9
          , points = Just 3928
          }
        , { date = "20 Nov 2022"
          , text = "We are for 13th week at Silver!"
          , place = Just 6
          , points = Just 4731
          }
        , { date = "27 Nov 2022"
          , text = "We are for 14th week at Silver!"
          , place = Just 8
          , points = Just 4276
          }
        , { date = "4 Dec 2022"
          , text = "We are for 15th week at Silver!"
          , place = Just 5
          , points = Just 4696
          }
        , { date = "11 Dec 2022"
          , text = "We are for 16th week at Silver!"
          , place = Just 5
          , points = Just 4783
          }
        , { date = "18 Dec 2022"
          , text = "We are for 17th week at Silver!"
          , place = Just 4
          , points = Just 4978
          }
        , { date = "25 Dec 2022"
          , text = "We are for 18th week at Silver!"
          , place = Just 4
          , points = Just 4955
          }
        , { date = "31 Dec 2022"
          , text = "Happy new Year!! We are for 19th week at Silver! Even though we get more points from any other time, we ranked 5th!"
          , place = Just 5
          , points = Just 5113
          }
        , { date = "8 Jan 2023"
          , text = "We are for 20th week at Silver! Even though we get over 5000 points we ranked 6th!"
          , place = Just 6
          , points = Just 5044
          }
        , { date = "15 Jan 2023"
          , text = "We are for 21th week at Silver! A very hard week!"
          , place = Just 8
          , points = Just 4646
          }
        , { date = "22 Jan 2023"
          , text = "We are for 22th week at Silver!"
          , place = Just 7
          , points = Just 4698
          }
        , { date = "29 Jan 2023"
          , text = "We are for 23th week at Silver!"
          , place = Just 5
          , points = Just 4957
          }
        , { date = "5 Feb 2023"
          , text = "We are for 24th week at Silver!"
          , place = Just 6
          , points = Just 4907
          }
        , { date = "12 Feb 2023"
          , text = "We are for 25th week at Silver!"
          , place = Just 6
          , points = Just 5072
          }
        , { date = "19 Feb 2023"
          , text = "We are for 26th week at Silver!"
          , place = Just 5
          , points = Just 4907
          }
        , { date = "26 Feb 2023"
          , text = "We are for 27th week at Silver!"
          , place = Just 5
          , points = Just 4724
          }
        , { date = "5 Mar 2023"
          , text = "We are for 28th week at Silver!"
          , place = Just 6
          , points = Just 4790
          }
        , { date = "12 Mar 2023"
          , text = "We are for 29th week at Silver!"
          , place = Just 6
          , points = Just 4487
          }
        , { date = "19 Mar 2023"
          , text = "We are for 30th week at Silver!"
          , place = Just 8
          , points = Just 4367
          }
        , { date = "26 Mar 2023"
          , text = "We are for 31th week at Silver!"
          , place = Just 6
          , points = Just 4902
          }
        , { date = "2 April 2023"
          , text = "We are for 32th week at Silver!"
          , place = Just 6
          , points = Just 4290
          }
        , { date = "3 April 2023"
          , text = "A new section about communication added"
          , points = Nothing
          , place = Nothing
          }
        , { date = "9 April 2023"
          , text = "We are for 33th week at Silver! 5090 is the 2nd best performance so far! "
          , place = Just 5
          , points = Just 5090
          }
        , { date = "16 April 2023"
          , text = "We are for 34th week at Silver! "
          , place = Just 5
          , points = Just 4983
          }
        , { date = "23 April 2023"
          , text = "We are for 35th week at Silver! "
          , place = Just 5
          , points = Just 4713
          }
        , { date = "30 April 2023"
          , text = "We are for 36th week at Silver! "
          , place = Just 2
          , points = Nothing
          }
        , { date = "30 April 2023"
          , text = "We are for 37th week at Silver! First time we fought (with ohhoo) for promotion to Gold League. "
          , place = Just 2
          , points = Just 5198
          }
        , { date = "7 May 2023"
          , text = "We are for 38th week at Silver! "
          , place = Just 6
          , points = Just 4637
          }
        , { date = "14 May 2023"
          , text = "We are for 39th week at Silver! "
          , place = Just 5
          , points = Just 4964
          }
        , { date = "21 May 2023"
          , text = "We are for 40th week at Silver! "
          , place = Just 5
          , points = Just 4942
          }
        , { date = "28 May 2023"
          , text = "We are for 41th week at Silver! "
          , place = Just 4
          , points = Just 5099
          }
        , { date = "4 June 2023"
          , text = "We are for 42th week at Silver! "
          , place = Just 4
          , points = Just 4749
          }
        , { date = "7 June 2023"
          , text = "Rules about GM presents are changed! Go to Menu->Rules for details."
          , place = Nothing
          , points = Nothing
          }
        , { date = "10 June 2023"
          , text = "GM gifts sent, based on activities! "
          , place = Nothing
          , points = Nothing
          }
        , { date = "11 June 2023"
          , text = "We are for 43th week at Silver! Promotion war with ohhoo (903 - 1038)"
          , place = Just 3
          , points = Just 5107
          }
        , { date = "17 June 2023"
          , text = "GM gifts sent, based on titanites! "
          , place = Nothing
          , points = Nothing
          }
        , { date = "18 June 2023"
          , text = "We are for 44th week at Silver! First time ranked 1st and first win at level 150 boss of Asgard. Promotion war with Сами по себе! (838 - 1137)"
          , place = Just 1
          , points = Just 5555
          }
        , { date = "24 June 2023"
          , text = "GM gifts sent, based on activities! "
          , place = Nothing
          , points = Nothing
          }
        , { date = "25 June 2023"
          , text = "We are for 45th week at Silver! Promotion war with Сами по себе! (995 - 1120)"
          , place = Just 2
          , points = Just 5351
          }
        , { date = "2 July 2023"
          , text = "GM gifts sent, based on titanites! "
          , place = Nothing
          , points = Nothing
          }
        , { date = "2 July 2023"
          , text = "\"Mothership\" athena, is again at new athena's competence, as Moppy is the new GM. "
          , place = Nothing
          , points = Nothing
          }
        , { date = "2 July 2023"
          , text = "We are for 46th week at Silver!"
          , place = Just 5
          , points = Just 4750
          }
        , { date = "8 July 2023"
          , text = "GM gifts sent, based on activities! "
          , place = Nothing
          , points = Nothing
          }
        , { date = "8 July 2023"
          , text = "We are for 47th week at Silver!"
          , place = Just 4
          , points = Just 5192
          }
        , { date = "15 July 2023"
          , text = "GM gifts sent, based on titanites! "
          , place = Nothing
          , points = Nothing
          }
        , { date = "15 July 2023"
          , text = "We are for 48th week at Silver!"
          , place = Just 5
          , points = Just 4799
          }
        , { date = "23 July 2023"
          , text = "GM gifts sent, based on activities! "
          , place = Nothing
          , points = Nothing
          }
        , { date = "23 July 2023"
          , text = "We are for 49th week at Silver!"
          , place = Just 5
          , points = Just 4824
          }
        , { date = "30 July 2023"
          , text = "GM gifts sent, based on titanites! "
          , place = Nothing
          , points = Nothing
          }
        , { date = "30 July 2023"
          , text = "We are for 50th week at Silver!"
          , place = Just 4
          , points = Just 5043
          }
        , { date = "05 Aug 2023"
          , text = "No GM sent, because are not enough! "
          , place = Nothing
          , points = Nothing
          }
        , { date = "06 Aug 2023"
          , text = "We are for 51th week at Silver!"
          , place = Just 6
          , points = Just 4749
          }
        , { date = "13 Aug 2023"
          , text = "GM gifts sent, based on activities! "
          , place = Nothing
          , points = Nothing
          }
        , { date = "13 Aug 2023"
          , text = "We are for 52th week at Silver!"
          , place = Just 5
          , points = Just 4890
          }
        , { date = "20 Aug 2023"
          , text = "GM gifts sent, based on Titanites! "
          , place = Nothing
          , points = Nothing
          }
        , { date = "20 Aug 2023"
          , text = "We are for 53th week at Silver!"
          , place = Just 4
          , points = Just 5185
          }
        , { date = "27 Aug 2023"
          , text = "GM gifts sent, based on Activities! "
          , place = Nothing
          , points = Nothing
          }
        , { date = "27 Aug 2023"
          , text = "We are for 54th week at Silver!"
          , place = Just 4
          , points = Just 4808
          }
        , { date = "03 Sep 2023"
          , text = "GM gifts not sent! Next week double gifts!)"
          , place = Nothing
          , points = Nothing
          }
        , { date = "03 Sep 2023"
          , text = "We are for 55th week at Silver!"
          , place = Just 3
          , points = Just 5425
          }
        , { date = "08 Sep 2023"
          , text = "GM gifts sent(double) based on Titanites!)"
          , place = Nothing
          , points = Nothing
          }
        , { date = "10 Sep 2023"
          , text = "We are for 56th week at Silver!"
          , place = Just 3
          , points = Just 5391
          }
        , { date = "17 Sep 2023"
          , text = "GM gifts not sent! Next week double gifts!)"
          , place = Nothing
          , points = Nothing
          }
        , { date = "17 Sep 2023"
          , text = "We are for 57th week at Silver!"
          , place = Just 4
          , points = Just 5110
          }
        , { date = "20 Sep 2023"
          , text = "GM gifts sent(double) based on Titanites!)"
          , place = Nothing
          , points = Nothing
          }
        , { date = "24 Sep 2023"
          , text = "We are for 58th week at Silver!"
          , place = Just 4
          , points = Just 4345
          }
        , { date = "30 Sep 2023"
          , text = "GM gifts sent(double) based on Activities!)"
          , place = Nothing
          , points = Nothing
          }
        , { date = "30 Sep 2023"
          , text = "We are for 59th week at Silver!"
          , place = Just 3
          , points = Just 5349
          }
        , { date = "08 Oct 2023"
          , text = "We are for 60th week at Silver!"
          , place = Just 5
          , points = Just 5036
          }
        , { date = "15 Oct 2023"
          , text = "We are for 61th week at Silver!"
          , place = Just 5
          , points = Just 4814
          }
        , { date = "22 Oct 2023"
          , text = "We are for 62th week at Silver!"
          , place = Just 5
          , points = Just 5103
          }
        , { date = "29 Oct 2023"
          , text = "We are for 63th week at Silver!"
          , place = Just 4
          , points = Just 5173
          }
        , { date = "05 Nov 2023"
          , text = "We are for 64th week at Silver!"
          , place = Just 3
          , points = Just 5195
          }
        , { date = "12 Nov 2023"
          , text = "We are for 65th week at Silver!"
          , place = Just 3
          , points = Just 4860
          }
        , { date = "19 Nov 2023"
          , text = "We are for 66th week at Silver!"
          , place = Just 6
          , points = Just 4638
          }
        , { date = "26 Nov 2023"
          , text = "We are for 67th week at Silver!"
          , place = Nothing
          , points = Nothing
          }
        , { date = "03 Dec 2023"
          , text = "We are for 68th week at Silver!"
          , place = Nothing
          , points = Nothing
          }
        , { date = "10 Dec 2023"
          , text = "Server at texnopraksis.com is no more available"
          , place = Nothing
          , points = Nothing
          }
        , { date = "14 Jan 2024"
          , text = "A free hosting used to host our site. We are for 73 weeks at Silver"
          , place = Just 5
          , points = Just 4991
          }
        , { date = "21 Jan 2024"
          , text = "Links with adventure are now in guides page! We are for 74 weeks at Silver"
          , place = Just 6
          , points = Just 4452
          }
        , { date = "28 Jan 2024"
          , text = "We are for 75 weeks at Silver"
          , place = Just 5
          , points = Just 4733
          }
        , { date = "4 Feb 2024"
          , text = "We are for 76 weeks at Silver"
          , place = Just 3
          , points = Just 5317
          }
        , { date = "11 Feb 2024"
          , text = "We are for 77 weeks at Silver"
          , place = Just 5
          , points = Just 5174
          }
        , { date = "18 Feb 2024"
          , text = "We are for 78 weeks at Silver"
          , place = Just 5
          , points = Just 4830
          }
        , { date = "25 Feb 2024"
          , text = "We are for 79 weeks at Silver"
          , place = Just 5
          , points = Just 4498
          }
        , { date = "03 Mar 2024"
          , text = "We are for 80 weeks at Silver"
          , place = Just 5
          , points = Just 5406
          }
        , { date = "10 Mar 2024"
          , text = "We are for 81 weeks at Silver"
          , place = Just 4
          , points = Just 4903
          }
        , { date = "17 Mar 2024"
          , text = "We are for 82 weeks at Silver"
          , place = Just 6
          , points = Just 4542
          }
        , { date = "24 Mar 2024"
          , text = "We are for 83 weeks at Silver. Athena, promoted to Silver again after long time!"
          , place = Just 4
          , points = Just 5076
          }
        , { date = "31 Mar 2024"
          , text = "We are for 84 weeks at Silver. Athena, demoted to Bronze…"
          , place = Just 4
          , points = Just 5076
          }
        , { date = "7 Apr 2024"
          , text = "We are for 85 weeks at Silver."
          , place = Just 4
          , points = Just 5076
          }
        , { date = "14 Apr 2024"
          , text = "We are for 86 weeks at Silver."
          , place = Just 6
          , points = Just 4523
          }
        , { date = "21 Apr 2024"
          , text = "We are for 87 weeks at Silver."
          , place = Just 3
          , points = Just 5418
          }
        , { date = "28 Apr 2024"
          , text = "We are for 88 weeks at Silver."
          , place = Just 5
          , points = Just 4548
          }
        , { date = "05 May 2024"
          , text = "We are for 89 weeks at Silver."
          , place = Just 3
          , points = Just 5440
          }
        , { date = "12 May 2024"
          , text = "We are for 90 weeks at Silver."
          , place = Just 5
          , points = Just 4918
          }
        , { date = "19 May 2024"
          , text = "We are for 91 weeks at Silver."
          , place = Just 3
          , points = Just 5238
          }
        , { date = "26 May 2024"
          , text = "We are for 92 weeks at Silver."
          , place = Just 4
          , points = Just 5025
          }
        , { date = "2 Jun 2024"
          , text = "We are for 93 weeks at Silver."
          , place = Just 4
          , points = Just 5039
          }
        , { date = "9 Jun 2024"
          , text = "We are for 94 weeks at Silver."
          , place = Just 5
          , points = Just 4652
          }
        , { date = "16 Jun 2024"
          , text = "We are for 95 weeks at Silver."
          , place = Just 6
          , points = Just 4681
          }
        , { date = "23 Jun 2024"
          , text = "We are for 96 weeks at Silver."
          , place = Just 4
          , points = Just 4762
          }
        , { date = "30 Jun 2024"
          , text = "We are for 97 weeks at Silver."
          , place = Just 6
          , points = Just 4532
          }
        , { date = "7 Jul 2024"
          , text = "We are for 98 weeks at Silver."
          , place = Just 6
          , points = Just 4441
          }
        , { date = "14 Jul 2024"
          , text = "We are for 99 weeks at Silver."
          , place = Nothing
          , points = Nothing
          }
        , { date = "21 Jul 2024"
          , text = "We are for 100 weeks at Silver."
          , place = Just 4
          , points = Just 4825
          }
        , { date = "28 Jul 2024"
          , text = "We are for 101 weeks at Silver."
          , place = Just 2
          , points = Just 5051
          }
        , { date = "04 Aug 2024"
          , text = "We are for 102 weeks at Silver."
          , place = Just 4
          , points = Just 4658
          }
        , { date = "11 Aug 2024"
          , text = "We are for 103 weeks at Silver."
          , place = Just 3
          , points = Just 5050
          }
        , { date = "18 Aug 2024"
          , text = "We are for 104 weeks at Silver."
          , place = Just 2
          , points = Just 5382
          }
        , { date = "25 Aug 2024"
          , text = "We are for 105 weeks at Silver."
          , place = Just 3
          , points = Just 5127
          }
        , { date = "01 Sep 2024"
          , text = "We are for 106 weeks at Silver."
          , place = Just 5
          , points = Just 4872
          }
        , { date = "08 Sep 2024"
          , text = "We are for 107 weeks at Silver."
          , place = Just 4
          , points = Just 5049
          }
        , { date = "15 Sep 2024"
          , text = "We are for 108 weeks at Silver."
          , place = Just 3
          , points = Just 5180
          }
        , { date = "22 Sep 2024"
          , text = "We are for 109 weeks at Silver."
          , place = Just 3
          , points = Just 5127
          }
        , { date = "29 Sep 2024"
          , text = "We are for 110 weeks at Silver."
          , place = Just 4
          , points = Just 4865
          }
        , { date = "06 Oct 2024"
          , text = "We are for 111 weeks at Silver."
          , place = Just 3
          , points = Just 5127
          }
        , { date = "13 Oct 2024"
          , text = "We are for 112 weeks at Silver."
          , place = Just 3
          , points = Just 5522
          }
        , { date = "20 Oct 2024"
          , text = "We are for 113 weeks at Silver."
          , place = Just 3
          , points = Just 5130
          }
        , { date = "27 Oct 2024"
          , text = "We are for 114 weeks at Silver."
          , place = Just 3
          , points = Just 5211
          }
        , { date = "03 Nov 2024"
          , text = "We are for 114 weeks at Silver."
          , place = Just 4
          , points = Just 4787
          }
        , { date = "10 Nov 2024"
          , text = "We are for 115 weeks at Silver."
          , place = Just 3
          , points = Just 5025
          }
        , { date = "17 Nov 2024"
          , text = "We are for 116 weeks at Silver."
          , place = Just 3
          , points = Just 5039
          }
        , { date = "24 Nov 2024"
          , text = "We are for 117 weeks at Silver. First time we were silver Champions!"
          , place = Just 1
          , points = Just 5041
          }
        , { date = "01 Dec 2024"
          , text = "We are for 118 weeks at Silver. 5541 is the 2nd best score we get at Silver (best is 5555)"
          , place = Just 2
          , points = Just 5541
          }
        , { date = "08 Dec 2024"
          , text = "We are for 119 weeks at Silver. "
          , place = Just 3
          , points = Just 5092
          }
        , { date = "15 Dec 2024"
          , text = "We are for 120 weeks at Silver. 5612 is the best score we get at Silver so far! "
          , place = Just 2
          , points = Just 5612
          }
        , { date = "21 Dec 2024"
          , text = "We promoted to Gold League! "
          , place = Just 2
          , points = Just 5263
          }
        , { date = "28 Dec 2024"
          , text = "We demoted to Silver League… "
          , place = Just 6
          , points = Just 4331
          }
        , { date = "4 Jan 2025"
          , text = "We didn't manage to promote to Gold League! "
          , place = Just 1
          , points = Just 5443
          }
        , { date = "11 Jan 2025"
          , text = "We didn't manage to promote to Gold League! "
          , place = Just 2
          , points = Just 5426
          }
        , { date = "19 Jan 2025"
          , text = "We promoted to Gold League! "
          , place = Just 2
          , points = Just 5407
          }
        , { date = "26 Jan 2025"
          , text = "We demoted to Silver League…"
          , place = Just 5
          , points = Just 4875
          }
        , { date = "2 Feb 2025"
          , text = "We didn't manage to promote to Gold League! "
          , place = Just 2
          , points = Just 5276
          }
        , { date = "9 Feb 2025"
          , text = "We didn't manage to promote to Gold League! "
          , place = Just 1
          , points = Just 5752
          }
        , { date = "16 Feb 2025"
          , text = "We didn't manage to promote to Gold League! "
          , place = Just 2
          , points = Just 5650
          }
        , { date = "23 Feb 2025"
          , text = "We promoted to Gold League! "
          , place = Just 2
          , points = Just 5420
          }
        , { date = "2 Mar 2025"
          , text = "We demoted to Silver League…"
          , place = Just 5
          , points = Just 5242
          }
        , { date = "9 Mar 2025"
          , text = "We promoted to Gold League! "
          , place = Just 1
          , points = Just 5658
          }
        , { date = "16 Mar 2025"
          , text = "We demoted to Silver League…"
          , place = Just 5
          , points = Just 5396
          }
        , { date = "23 Mar 2025"
          , text = "We didn't manage to promote to Gold League! "
          , place = Just 1
          , points = Just 5523
          }
        , { date = "30 Mar 2025"
          , text = "We promoted to Gold League! "
          , place = Just 1
          , points = Just 5720
          }
        , { date = "06 Apr 2025"
          , text = "We demoted to Silver League…"
          , place = Just 6
          , points = Just 4966
          }
        , { date = "13 Apr 2025"
          , text = "We didn't manage to promote to Gold League…"
          , place = Just 1
          , points = Just 5588
          }
        , { date = "20 Apr 2025"
          , text = "We didn't manage to promote to Gold League…"
          , place = Just 1
          , points = Just 5452
          }
        , { date = "27 Apr 2025"
          , text = "We didn't manage to promote to Gold League…"
          , place = Just 1
          , points = Just 5511
          }
        ]



-- .reverse();
