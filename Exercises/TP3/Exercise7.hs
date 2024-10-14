-- a
(++) :: [a] -> [a] -> [a]
xs ++ ys = foldr (\x acc -> x : acc) ys xs

-- b
concat :: [[a]] -> [a]
concat xss = foldr (++) [] xss

--c
reverse :: [a] -> [a]
reverse xs = foldr (\x acc -> acc ++ [x]) [] xs

-- d
reverse :: [a] -> [a]
reverse xs = foldl (\acc x -> x : acc) [] xs

-- e
elem :: Eq a => a -> [a] -> Bool
elem x xs = any (== x) xs
