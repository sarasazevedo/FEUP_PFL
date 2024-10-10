-- a
segundo xs = head (tail xs) :: [a] -> a

-- b
trocar (x, y) = (y, x) :: (a, b) -> (b, a)

-- c
par x y = (x, y) :: a -> b -> (a, b)

-- d
dobro x = 2 ∗ x :: Num a => a -> a 

-- e
metade x = x/2 :: Fractional a => a -> a

-- f
minuscula x = x >= 'a' && x <= 'z' :: Char -> Bool

-- g
intervalo x a b = x >= a && x <= b :: Ord a => a -> a -> a -> Bool

-- h
palindromo xs = reverse xs == xs :: Eq a => [a] -> Bool

-- i
twice f x = f (f x) :: (a -> a) -> a -> a

