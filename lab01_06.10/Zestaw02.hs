onesDigit :: Integer -> Int
onesDigit x = fromIntegral (x `mod` 10)

tensDigit :: Integer -> Integer
tensDigit x = (x `div` 10) `mod` 10

--onesDigit 123
--tensDigit 123
