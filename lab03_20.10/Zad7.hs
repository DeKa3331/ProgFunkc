type Position = (Int, Int)

ruch :: Integer -> Position -> Position
ruch 0 (x, y) = (x + 1, y)
ruch 1 (x, y) = (x, y - 1)
ruch 2 (x, y) = (x - 1, y)
ruch _ (x, y) = (x, y + 1)

decodeMoves :: Integer -> Position
decodeMoves n
  | n <= 1 = (0, 0)
  | otherwise = ruch (n `mod` 4) (decodeMoves (n `div` 4))

--decodeMoves 4715905
--decodeMoves 1
--decodeMoves 7
