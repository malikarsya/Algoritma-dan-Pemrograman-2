module Main where

max2 :: Int -> Int -> Int
max2 x y  = (x + y + abs(x - y)) `div` 2

max3 :: Int -> Int -> Int -> Int
max3 x y z = max2 (max2 x y) z

main :: IO()
main = do
    line <- getLine
    let [x,y,z] = map read (words line) :: [Int]
    print(max3 x y z)