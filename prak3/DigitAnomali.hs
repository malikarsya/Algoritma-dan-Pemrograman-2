module DigitAnomali where

-- DIGIT ANOMALI
-- DEFINISI DAN SPESIFIKASI
hitungDigit :: Int -> Int -> Int
-- hitungDigit n d menghasilkan banyak kemunculan digit d dalam bilangan n.

-- REALISASI
hitungDigit 0 0 = 1
hitungDigit n d = 
    if (n `mod` 10) == d && n >= 0 then (hitungDigit (n `div` 10) d) + 1
    else if n >= 10 then (hitungDigit (n `div` 10) d)
    else 0

-- APLIKASI
-- hitungDigit 707070 7