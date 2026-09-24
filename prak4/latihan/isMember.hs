    module Member where
    isMember :: Int -> [Int] -> Bool
    isMember x [] = False
    isMember e (x:xs)
        | e == x = True
        | otherwise = isMember e xs
