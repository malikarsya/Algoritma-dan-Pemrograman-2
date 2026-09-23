module Mins where

minList :: [Int] -> Int
minList [a] = a --prasyarat
minList (x:y:xs)
    | x < y = minList(x:xs)
    | otherwise = minList (y:xs)