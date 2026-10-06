avg :: Int -> Int -> Double
avg x y = fromIntegral (x + y) / 2

quotient :: (Real a, Real b) => a -> b -> Double
quotient x y = realToFrac x / realToFrac y

sqrtDigit :: Char -> Double
sqrtDigit x = sqrt (fromIntegral (fromEnum x - fromEnum '0'))

--avg 5 7
--quotient 5.5 (2 :: Int)
--sqrtDigit '9'
