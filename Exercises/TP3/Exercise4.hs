insert :: Ord a => a -> [a] -> [a]
insert x [] = [x]
insert x (y:ys)
    | x <= y    = x : y : ys
    | otherwise  = y : insert x ys

isort :: Ord a => [a] -> [a]
isort xs = foldr insert [] xs