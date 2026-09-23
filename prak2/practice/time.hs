module Time where

data Time = Time { hour :: Int, minute :: Int, second :: Int} deriving (Show, Eq)

isValid :: Int -> Int -> Int -> Bool
isValid h m s = h >= 0 && h <=23 && m >= 0 && m <= 59 && s >= 0 && s <= 59 

makeTime :: Int -> Int -> Int -> Time
makeTime h m s
    | isValid h m s = Time h m s
    | otherwise = error "waktu tidak valid"

