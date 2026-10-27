import Prelude hiding (elem, take, drop, replicate, zip)

firstThirdFifthList :: [a] -> [a]
firstThirdFifthList [] = []
firstThirdFifthList (el1:_:el3:_:el5:_) = [el1,el3,el5]
firstThirdFifthList (el1:_:el3:_) = [el1,el3]
firstThirdFifthList (el1:_) = [el1]


elem :: a -> [a] -> Bool
elem _ [] = False
elem el (h:t)
    -- | el == h = True -- nie dziala == xD
    | otherwise = elem el t

take :: Int -> [a] -> [a]
take 0 _ = []
take _ [] = []
take n (h:t) = h : take (n-1) t

drop :: Int -> [a] -> [a]
drop 0 lst = lst
drop _ [] = []
drop n (h:t) = drop (n-1) t

replicate :: Int -> a -> [a]
replicate 0 _ = []
replicate n el = el : replicate (n-1) el

zip :: [a] -> [b] -> [(a,b)]
zip [] _ = []
zip _ [] = []
zip (h1:t1) (h2:t2) = (h1,h2) : zip t1 t2