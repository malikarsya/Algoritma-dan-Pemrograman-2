module Balik where

konsi :: [Int] -> Int -> [Int]
konsi [] a = [a]
konsi (b : xs) a = b : konsi xs a 

balik :: [Int] -> [Int]
balik (x : xs) = konsi (balik xs) x
balik [] = []

