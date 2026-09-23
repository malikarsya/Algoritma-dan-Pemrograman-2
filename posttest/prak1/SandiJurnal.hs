module SandiJurnal where

-- SANDI JURNAL
-- DEFINISI DAN SPESIFIKASI
isSandiValid :: Int -> Bool
isSandiValid sandi = (sandi >= 100 && sandi <= 999) && (d1 == d3) && (d2 /= d1) && ((d1 + d2 + d3) `mod` 3 == 0)

    where
        d1 = sandi `div` 100
        d2 = (sandi `div` 10) `mod` 10
        d3 = sandi `mod` 10
-- isSandiValid sandi benar jika sandi terdiri dari tiga digit,
-- digit pertama dan terakhir sama, digit tengah berbeda,
-- dan jumlah ketiga digit habis dibagi tiga



-- APLIKASI
-- isSandiValid 252

