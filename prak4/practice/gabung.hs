module Gabung where

gabung :: [Int] -> [Int] -> [Int]
gabung [] l = l
gabung (x:xs) l = x : gabung xs l