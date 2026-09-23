module Ekspedisi where


data Zona     = Jawa
    | Luarjawa
    | Internasional String
    deriving (Show, Eq)
data Layanan  = Reguler
    | Kilat
    | Sameday
    deriving (Show, Eq)

data Asuransi = Pakaisuransi Int --Int adalah nilai barang
    | Tidakasuransi
    deriving (Show, Eq)


data Paket    = Paket Int Zona Layanan Asuransi deriving (Show,Eq)


beratKg :: Paket -> Int
-- berat paket dalam kilogram, dibulatkan ke atas
beratKg(Paket gram _ _ _ ) = (gram + 999) `div` 1000

tarifPerKg :: Zona -> Int
-- tarif dasar per kilogram untuk zona tersebut
tarifPerKg Jawa = 8000
tarifPerKg Luarjawa = 15000
tarifPerKg (Internasional _) = 90000 

zonaDari :: Paket -> Zona
zonaDari(Paket _ z _ _) = z

ongkosDasar :: Paket -> Int
-- beratKg dikali tarif zonanya, belum kena layanan maupun asuransi
ongkosDasar p = beratKg(p) * tarifPerKg(zonaDari(p))

isValidPaket :: Paket -> Bool
-- sah bila beratnya positif, dan SameDay hanya dipakai untuk zona Jawa
isValidPaket (Paket berat wilayah service _) = berat > 0 && (service /= Sameday || wilayah == Jawa )

biayaAsuransi :: Paket -> Int
-- 1% dari nilai barang bila berasuransi, 0 bila tidak
biayaAsuransi(Paket _ _ _ (Pakaisuransi nilai)) = nilai `div` 100
biayaAsuransi(Paket _ _ _ Tidakasuransi) = 0x

ongkosTotal :: Paket -> Int
-- ongkos akhir yang dibayar pengirim
ongkosTotal p = ongkosDasar p + biayaAsuransi p