lcg :: Integer -> Integer -> Integer -> Integer -> Int -> Integer
lcg a c m s 0 = s
lcg a c m s n = (a * lcg a c m s (n - 1) + c) `mod` m

minstd :: Integer -> Int -> Integer
minstd seed n = lcg 16807 0 (2 ^ (31 :: Int) - 1) seed n

--lcg 3 5 16 7 0
--lcg 3 5 16 7 1
--lcg 3 5 16 7 3
--minstd 1 1
