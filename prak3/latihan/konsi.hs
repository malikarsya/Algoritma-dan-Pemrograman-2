module Konsi where

konsi :: [Int] -> Int -> [Int]
konsi [] x = [x]
konsi (l:xs) x = l : konsi xs x


