module Max where

maxList :: [Int] -> Int
maxList [i] = i 
maxList (x:y:xs)    
    | x > y = maxList(x:xs)
    | otherwise = maxList(y:xs)