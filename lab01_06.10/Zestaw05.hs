timeToSeconds :: Int -> Int -> Int -> Int
timeToSeconds h m s = h * 3600 + m * 60 + s

secondsToDays :: Int -> Int
secondsToDays x = x `div` 86400

--timeToSeconds 5 40 12
--secondsToDays 1000000
