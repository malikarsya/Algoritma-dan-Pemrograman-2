module Money where

data Money = Money Int Int deriving (Show, Eq)

isValidMoney :: Int -> Int -> Bool
isValidMoney r s = s >= 0 && s <= 99

makeMoney :: Int -> Int -> Money
makeMoney r s
    | isValidMoney r s = Money r s
    | otherwise = error "sen harus bernilai 0-99"

addMoney :: Money -> Money -> Money
addMoney (Money r1 s1) (Money r2 s2) = makeMoney (r1 + r2 + kelebihan) sisasen
    where
        sisasen = (s1 + s2) `mod` 100
        kelebihan = (s1 + s2) `div` 100



