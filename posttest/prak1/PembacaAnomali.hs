module PembacaAnomali where

-- PEMBACA ANOMALI
-- DEFINISI DAN SPESIFIKASI

maks2 :: Int -> Int -> Int
-- maks2 a b menghasilkan nilai terbesar di antara a dan b
maks2 a b = div (a + b + abs (a - b)) 2

min2 :: Int -> Int -> Int
-- min2 a b menghasilkan nilai terkecil di antara a dan b
min2 a b = div (a + b - abs (a - b)) 2

maks4 :: Int -> Int -> Int -> Int -> Int
-- maks4 a b c d menghasilkan nilai terbesar di antara a, b, c, dan d
maks4 a b c d = maks2 d (maks2 c (maks2 a b))

min4 :: Int -> Int -> Int -> Int -> Int
-- min4 a b c d menghasilkan nilai terkecil di antara a, b, c, dan d
min4 a b c d = min2 d (min2 c (min2 a b))

skorAnomali :: Int -> Int -> Int -> Int -> Float
-- skorAnomali a b c d menghasilkan rata-rata dua nilai tengah
-- setelah satu nilai terbesar dan satu nilai terkecil diabaikan
skorAnomali a b c d = fromIntegral((a + b + c + d) - (maks4 a b c d)- (min4 a b c d)) / 2
-- REALISASI


-- APLIKASI
-- skorAnomali 7 9 6 9