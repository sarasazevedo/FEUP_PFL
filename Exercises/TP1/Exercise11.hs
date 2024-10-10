-- a
max3 :: Ord a => a -> a -> a -> a
max3 x y z = max (max x y) z

min3 :: Ord a => a -> a -> a -> a
min3 x y z = min (min x y) z

-- b
max3' :: Ord a => a -> a -> a -> a
max3' x y z = max x (max y z)   

min3' :: Ord a => a -> a -> a -> a
min3' x y z = min x (min y z)   