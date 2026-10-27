expr1 x y = x ^ 2 + y ^ 2

expr2 x y = (x + y) ^ 2

expr3 x y z w = x * y + z * w

expr4 x y z w = (x - y) / (z + w)

expr5 x y z = x / y * z

expr6a x = floor (x / 4)

expr6b x = x `div` 4

expr6c x = floor (toRational x / 4)

expr7 x y = (x / y) ^ 3

expr8 x y = sqrt (abs (x - y))

--expr1 3 4
--expr2 3 4
--expr3 1 2 3 4
--expr4 10 4 1 2
--expr5 1 2 6
--expr6a 10.0
--expr6b 10
--expr6c (10 :: Int)
--expr6c (10 :: Double)
--expr7 1 2
--expr8 3 7


