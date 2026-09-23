module Ekspresi where

-- EKSPRESI ARITMATIKA
-- DEFINISI TYPE
data Expr = Val Int | Add Expr Expr | Mul Expr Expr deriving (Show, Read)

-- DEFINISI DAN SPESIFIKASI
evaluasi :: Expr -> Int
-- evaluasi e menghasilkan hasil perhitungan ekspresi e.

-- REALISASI
evaluasi (Val c) = c
evaluasi (Add x y) = evaluasi (x) + evaluasi (y)
evaluasi (Mul x y) = evaluasi (x) * evaluasi (y)

-- APLIKASI
-- evaluasi (Add (Val 3) (Mul (Val 2) (Val 4)))