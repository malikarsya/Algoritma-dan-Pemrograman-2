module Main where

mean :: Int -> Int -> Int -> Double
mean x y z = fromIntegral (x + y + z) / 3

main :: IO()
main = do
    line <- getLine
    let[x,y,z] = map read (words line) :: [Int]
    print(mean x y z)
