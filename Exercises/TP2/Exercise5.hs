-- a
myminimum :: Ord a => [a] -> a
myminimum [x] = x
myminimum (x:xs) = min x (myminimum xs)

-- b
mydelete :: Eq a => a -> [a] -> [a]
mydelete _ [] = []
mydelete y (x:xs)
    | y == x    = xs
    | otherwise = x : mydelete y xs

-- c
ssort :: Ord a => [a] -> [a]
ssort [] = []
ssort xs = let m = myminimum xs
           in m : ssort (mydelete m xs)