module Lastelement where

lastelement :: [Int] -> Int
lastelement (n:[]) = n  -- basis
lastelement (_:xs) = lastelement xs