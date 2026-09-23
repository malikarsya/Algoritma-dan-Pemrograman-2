module Muncul where

nbKemunculan :: Int -> [Int] -> Int
nbKemunculan _ [] = 0  -- basis
nbKemunculan a (b:xs)
    | a == b = 1 + nbKemunculan a xs
    | otherwise = nbKemunculan a xs

