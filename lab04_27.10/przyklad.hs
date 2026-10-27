removeTrailingZeros :: (Num a, Eq a) => [a] -> [a]
removeTrailingZeros [] = []
removeTrailingZeros (h:t) =
    let 
        rl = removeTrailingZeros t
    in
        if h /= 0 then
            h:rl
        else
            if rl == [] then
                []
            else
                0 : rl

--removeTrailingZeros [1, 0, 2, 0, 0]
--removeTrailingZeros [0, 0, 0]
