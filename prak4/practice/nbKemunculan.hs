module Kemunculan where
import Control.Monad.Cont (label)


nbKemunculan :: Int -> [Int] -> Int
nbKemunculan e [] = 0
nbKemunculan e (x:xs)
    | e == x = 1 + nbKemunculan e xs
    | otherwise = nbKemunculan e xs

-- `nbKemunculan 2 [2,1,2,3]` → `2`