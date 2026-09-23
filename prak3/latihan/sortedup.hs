module Sorted where

isSortedup :: [Int] -> Bool
isSortedup [] = True
isSortedup [_] = True
isSortedup (x:y:xs)
    | x <= y = isSortedup (y:xs)
    | otherwise = False