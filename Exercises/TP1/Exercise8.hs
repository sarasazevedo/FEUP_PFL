segundo xs = head (tail xs) :: [a] -> a

trocar (x, y) = (y, x) :: (a, b) -> (b, a)

par x y = (x, y) :: a -> b -> (a, b)

dobro x = 2 ∗ x :: Num a => a -> a 

metade x = x/2 :: Fractional a => a -> a

minuscula x = x >= 'a' && x <= 'z' :: Char -> Bool

intervalo x a b = x >= a && x <= b :: Ord a => a -> a -> a -> Bool

palindromo xs = reverse xs == xs :: Eq a => [a] -> Bool

twice f x = f (f x) :: (a -> a) -> a -> a

