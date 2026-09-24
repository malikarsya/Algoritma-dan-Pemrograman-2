module One where

isOneElmt :: [Int] -> Bool
isOneElmt [] = False
isOneElmt (x:xs)
    | xs == [] = True
    | otherwise = False