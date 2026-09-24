module Genap where
ambilGenap :: [Int] -> [Int]
ambilGenap [] = []
ambilGenap (x:xs)
    | (x `mod` 2) == 0 = x : ambilGenap(xs)
    | otherwise = ambilGenap xs