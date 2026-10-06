dmsToDecimal :: Int -> Int -> Int -> Double
dmsToDecimal d m s = (fromIntegral (d * 60 + m) + fromIntegral s / 60) / 60

decimalToDms :: Double -> (Int, Int, Int)
decimalToDms x = (t `div` 3600, (t `div` 60) `mod` 60, t `mod` 60)
  where t = floor (x * 3600)

--dmsToDecimal 50 15 13
--decimalToDms 22.7386