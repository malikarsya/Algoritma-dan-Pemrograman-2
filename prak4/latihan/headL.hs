module Head where

headL :: [Int] -> [Int]
headL [_] = []
headL (x:xs) = x : headL(xs)

--`headL [1,2,3]` → `[1,2]`