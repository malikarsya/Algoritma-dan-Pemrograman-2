module Hapus where

hapusSemua :: Int -> [Int] -> [Int]
hapusSemua _ [] = []
hapusSemua e (x:xs)
    | e == x = hapusSemua e xs
    | otherwise = x : hapusSemua e xs