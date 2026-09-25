module Palindrom where

lastElmt :: [Int] -> Int
lastElmt [x] = x
lastElmt (x:xs) = lastElmt(xs)

headList :: [Int] -> [Int]
headList [i] = []
headList (x:xs) = x : headList xs

isPalindrom :: [Int] -> Bool
isPalindrom [i] = True
isPalindrom (x:xs)
    | x == lastElmt(x:xs) = isPalindrom(headList xs)
    | otherwise = False