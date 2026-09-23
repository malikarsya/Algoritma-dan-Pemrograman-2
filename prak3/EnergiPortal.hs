module EnergiPortal where

-- ENERGI PORTAL
-- DEFINISI DAN SPESIFIKASI
jumlahAktivasi :: Int -> Int
-- jumlahAktivasi e menghasilkan banyak aktivasi sampai energi e menjadi nol.

-- REALISASI
jumlahAktivasi 0 = 0
jumlahAktivasi e = jumlahAktivasi (e `div` 2) + 1

-- APLIKASI
-- jumlahAktivasi 13