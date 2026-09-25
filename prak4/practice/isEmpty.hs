module Empty where

isEmpty :: [Int] -> Bool
isEmpty l
    | l == [] = True
    | otherwise = False
