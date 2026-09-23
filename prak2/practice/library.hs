module Library where

data Anggota = Mahasiswa String Int
    | Dosen String Int
    | Umum String Int
    deriving(Show, Eq)


sisaKuota :: Anggota -> Int
sisaKuota(Mahasiswa _ dipinjam) = 5 - dipinjam
sisaKuota(Dosen _ dipinjam) = 10 - dipinjam
sisaKuota(Umum _ dipinjam) = 2- dipinjam

bolehPinjam :: Anggota -> Bool
bolehPinjam a = sisaKuota a > 0
