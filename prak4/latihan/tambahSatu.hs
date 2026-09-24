module Tambah where

tambahSatu :: [Int] -> [Int]
tambahSatu [] = []
tambahSatu (x:xs) = x+1 : tambahSatu(xs)