-- a
merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys  
merge xs [] = xs  
merge (x:xs) (y:ys)
    | x <= y    = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys 

-- b
-- Done in class before
halves :: [a] -> ([a], [a])
halves xs = (take half xs, drop half xs)
  where half = length xs `div` 2

msort :: Ord a => [a] -> [a]
msort [] = []  
msort [x] = [x]  
msort xs = merge (msort left) (msort right)
  where (left, right) = halves xs