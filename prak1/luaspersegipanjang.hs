module Main where


luas :: Int -> Int -> Int
luas x y = x * y

main :: IO ()
main = do
    line <- getLine
    let [x,y] = map read (words line) :: [Int]
    print (luas x y)




