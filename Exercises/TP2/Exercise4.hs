-- a
insert :: Ord a =>  a -> [a] -> [a]
insert y [] = [y]
insert y (x:xs) | y <= x = y : x : xs
                | otherwise = x : insert y xs 

-- b
isort:: Ord a => [a] -> [a] 
isort [] = []
isort (x:xs) = insert x (isort xs)