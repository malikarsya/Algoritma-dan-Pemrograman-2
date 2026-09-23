module Element where

nbElmt :: [Int] -> Int
nbElmt [] = 0 
nbElmt (_:xs) = 1 + nbElmt xs