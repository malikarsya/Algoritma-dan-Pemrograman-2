module Balik where

konsi :: [Int] -> Int -> [Int]
konsi [] i = [i]
konsi (x:xs) e = x : konsi xs e

balik :: [Int] -> [Int]
balik [] = []
balik (x:xs) = konsi (balik xs) x