module Tariftol where
data Kendaraan = Motor Int
    | Mobil Int Int
    | Truk  Int Double
    deriving (Show, Eq)

tarifTol :: Kendaraan -> Int
tarifTol (Motor _) = 5000
tarifTol (Mobil _ penumpang)
    | penumpang > 4 = 12000
    | otherwise = 10000
tarifTol (Truk _ berat)
    | berat > 2 = 20000
    | otherwise = 15000
