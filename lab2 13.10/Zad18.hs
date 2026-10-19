zloty :: Int -> String
zloty x = odmiana x ("złoty", "złote", "złotych")

odmiana :: Int -> (String, String, String) -> String
odmiana x (pojedyncza, mnoga, dopelniacz)
  | x == 1 = pojedyncza
  | x `mod` 10 `elem` [2, 3, 4] && not (x `mod` 100 `elem` [12, 13, 14]) = mnoga
  | otherwise = dopelniacz

cena :: (Int, Int) -> String
cena (zl, gr)
  | zl == 0 && gr == 0 = "0 złotych"
  | gr == 0 = zlote
  | zl == 0 = grosze
  | otherwise = zlote ++ " i " ++ grosze
  where
    zlote = show zl ++ " " ++ zloty zl
    grosze = show gr ++ " " ++ odmiana gr ("grosz", "grosze", "groszy")

--putStrLn (zloty 22)
--putStrLn (odmiana 5 ("dom", "domy", "domów"))
--putStrLn (cena (3, 50))
--putStrLn (cena (12, 1))
--putStrLn (cena (0, 0))
