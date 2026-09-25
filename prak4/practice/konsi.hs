module Konsi where

konsi :: [Int] -> Int -> [Int]
konsi [] x = [x]
konsi (x:xs) y = x : konsi xs y



-- `konso 0 [1,2,3]` → `[0,1,2,3]`