module Last where

lastElement :: [Int] -> Int
lastElement [i] = i
lastElement (x:xs) = lastElement(xs)