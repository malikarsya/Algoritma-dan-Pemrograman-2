module BilanganBulat where

-- KODE JURNAL
-- DEFINISI DAN SPESIFIKASI
-- Helper function untuk menentukan kondisi
func2 :: Int -> Int
func2 x = x - 5

func1 :: Int -> Int -> String
func1 x y
    | func2 x <= 0 = "tidak mungkin"
    | y `mod` x == 0 = "bulat"
    | otherwise = "tidak bulat"

-- APLIKASI
-- func1 10 20