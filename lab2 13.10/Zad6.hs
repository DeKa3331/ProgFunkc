nextTerm :: Double -> Double -> Int -> Double
nextTerm prev x n = prev * x / fromIntegral n

expAcc :: Int -> Double -> Int -> Double -> Double -> Double
expAcc n x i s el
  | i > n = s
  | otherwise = expAcc n x (i + 1) (s + el) (nextTerm el x (i + 1))

expApprox :: Int -> Double -> Double
expApprox n x = expAcc n x 0 0 1

--nextTerm 1 2 1
--expApprox 3 2
--expApprox 20 1
