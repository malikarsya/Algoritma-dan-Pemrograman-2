module Parkir where

biayaParkir :: Int -> Int

biayaParkir m 
    | total > 20000 = 20000
    | otherwise = total
    where
        jam = (m+59) `div` 60
        total = 3000 + (2000 * (jam - 1))
