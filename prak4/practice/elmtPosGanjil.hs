module Ganjil where
elmtPosGanjil :: [Int] -> [Int]
elmtPosGanjil [] = []
elmtPosGanjil [i] = [i]
elmtPosGanjil (x:_:xs) = x : elmtPosGanjil(xs)