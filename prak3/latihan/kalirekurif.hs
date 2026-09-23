module Kalirekursif where


kaliRekursif :: Int -> Int -> Int
kaliRekursif a b
    | b == 0 = 0 
    | otherwise = a + kaliRekursif a (b-1)