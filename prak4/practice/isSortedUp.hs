module Sorted where

isSortedUp :: [Int] -> Bool
isSortedUp [] = True 
isSortedUp [_] = True
isSortedUp (x:y:xs)
    | x > y = False
    | otherwise = isSortedUp(y:xs)