module Min where

minList :: [Int] -> Int
minList [i] = i
minList (x:y:xs)
    | x < y = minList(x:xs)
    | otherwise = minList(y:xs)