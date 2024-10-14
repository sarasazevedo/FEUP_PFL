-- a
maximum :: Ord a => [a] -> a
maximum = foldl1 max

minimum :: Ord a => [a] -> a
minimum = foldl1 min

maximum' :: Ord a => [a] -> a
maximum' = foldr1 max

minimum' :: Ord a => [a] -> a
minimum' = foldr1 min

-- b
foldl1 :: (a -> a -> a) -> [a] -> a
foldl1 f xs = foldl f (head xs) (tail xs)

foldr1 :: (a -> a -> a) -> [a] -> a
foldr1 f xs = foldr f (last xs) (init xs)
