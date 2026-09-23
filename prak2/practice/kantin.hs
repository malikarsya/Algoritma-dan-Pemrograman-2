module Kantin where
import Data.Semigroup (Min)


data Item = Minuman String Int Bool
          | Makanan String Int Int
          | Paket   Item Item
          deriving (Show, Eq)

harga :: Item -> Int
harga(Minuman _ hargadasar dingin)
    | dingin = hargadasar + 2000
    | otherwise = hargadasar
harga(Makanan _ hargadasar level)
    | level >= 0 && level <=2 = hargadasar
    | otherwise = (level - 2) * 1000 + hargadasar
harga(Paket item1 item2) = (harga(item1) + harga(item2)) * 90 `div` 100



