hourToText :: Int -> Int -> String
hourToText h m
  | m == 0 = godzina h
  | m == 1 = "minuta po " ++ godzinaD h
  | m == 15 = "kwadrans po " ++ godzinaD h
  | m == 30 = "wpół do " ++ godzinaD nastepna
  | m == 45 = "za kwadrans " ++ godzina nastepna
  | m == 59 = "za minutę " ++ godzina nastepna
  | m < 30 = minuty m ++ " po " ++ godzinaD h
  | otherwise = "za " ++ minuty (60 - m) ++ " " ++ godzina nastepna
  where
    nastepna = (h + 1) `mod` 12

godzina :: Int -> String
godzina h = ["dwunasta", "pierwsza", "druga", "trzecia", "czwarta", "piąta", "szósta",
             "siódma", "ósma", "dziewiąta", "dziesiąta", "jedenasta"] !! h

godzinaD :: Int -> String
godzinaD h = ["dwunastej", "pierwszej", "drugiej", "trzeciej", "czwartej", "piątej", "szóstej",
              "siódmej", "ósmej", "dziewiątej", "dziesiątej", "jedenastej"] !! h

minuty :: Int -> String
minuty m
  | m < 20 = jednosci !! m
  | m == 20 = "dwadzieścia"
  | otherwise = "dwadzieścia " ++ jednosci !! (m - 20)
  where
    jednosci = ["zero", "jeden", "dwie", "trzy", "cztery", "pięć", "sześć", "siedem", "osiem",
                "dziewięć", "dziesięć", "jedenaście", "dwanaście", "trzynaście", "czternaście",
                "piętnaście", "szesnaście", "siedemnaście", "osiemnaście", "dziewiętnaście"]

--putStrLn (hourToText 0 0)
--putStrLn (hourToText 7 59)
--putStrLn (hourToText 0 30)
--putStrLn (hourToText 4 22)
--putStrLn (hourToText 4 39)
