nextDay0 :: Int -> Int
nextDay0 x = (x + 1) `mod` 7

previousDay0 :: Int -> Int
previousDay0 x = (x - 1) `mod` 7

nextDay1 :: Int -> Int
nextDay1 x = x `mod` 7 + 1

previousDay1 :: Int -> Int
previousDay1 x = (x - 2) `mod` 7 + 1

--nextDay0 6
--previousDay0 0
--nextDay1 7
--previousDay1 1
--nextDay0 3