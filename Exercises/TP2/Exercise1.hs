-- a
myand :: [Bool] -> Bool
myand [] = True
myand (x:xs) = x && myand xs

-- b
myor :: [Bool] -> Bool
myor [] = False
myor (x:xs) = x || myor xs

-- c
myconcat :: [[a]] -> [a]
myconcat [] = []
myconcat (x:xs) = x ++ myconcat xs

-- d
myreplicate :: Int -> a -> [a]
myreplicate 0 _ = []
myreplicate n x = x : myreplicate (n - 1) x

-- e
myindex :: [a] -> Int -> a
myindex (x:_) 0 = x
myindex (_:xs) n = myindex xs (n - 1)
myindex [] _ = error "Índice fora do intervalo"

-- f
myelem :: Eq a => a -> [a] -> Bool
myelem _ [] = False
myelem y (x:xs) = (y == x) || myelem y xs