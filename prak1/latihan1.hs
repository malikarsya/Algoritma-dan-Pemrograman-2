module Main where

kuadrat :: Int -> Int
kuadrat x = x * x

main :: IO ()
main = do
    x <- readLn :: IO Int
    print (kuadrat x)