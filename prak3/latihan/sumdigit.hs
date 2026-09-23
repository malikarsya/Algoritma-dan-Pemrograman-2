module Sum where

sumDigit :: Int -> Int
sumDigit n
    | n < 10 = n
    | otherwise = (n `mod` 10) + sumDigit(n `div` 10)