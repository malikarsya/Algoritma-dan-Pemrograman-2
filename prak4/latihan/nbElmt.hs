module Nelement where

nbElmt :: [Int] -> Int
nbElmt [] =  0
nbElmt (x:xs) = 1 + nbElmt xs