harmonic :: Int -> Double
harmonic 1 = 1
harmonic n = 1 / fromIntegral n + harmonic (n - 1)

--harmonic 1
--harmonic 2
--harmonic 4
