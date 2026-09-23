module KonversiWaktu where

-- KONVERSI WAKTU
-- DEFINISI TYPE
-- Tuliskan definisi tipe Jam dengan konstruktor Jm untuk jam, menit, dan detik.
-- Tambahkan deriving (Show, Read).
-- Lengkapi definisi tipe terlebih dahulu agar file dapat dimuat di GHCi.
data Jam = Jm Int Int Int deriving (Show, Read)


-- DEFINISI DAN SPESIFIKASI
detikKeJam :: Int -> Jam
-- detikKeJam total mengonversi detik menjadi Jam dalam siklus 24 jam.

-- REALISASI
detikKeJam s = Jm jam menit detik
    where
        jam = (s `div` 3600 ) `mod` 24 -- ngebatesin biar jadi siklus dan ga jadi jamnya >= 24
        menit = (s `mod` 3600) `div` 60
        detik = s `mod` 60

-- s = 9000 -> Jm 1 0 0

-- APLIKASI
-- detikKeJam 3665