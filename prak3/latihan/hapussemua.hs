module Hapus where

hapusSemua :: Int -> [Int] -> [Int]
hapusSemua _ [] = []


hapusSemua a (b:xs)
    | a == b = hapusSemua a xs
    | otherwise = b : hapusSemua a xs

