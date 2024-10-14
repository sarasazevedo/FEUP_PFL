primos :: [Int]
primos = 2 : filter isPrime [3, 5..]
  where
    isPrime n = all (\p -> n `mod` p /= 0) (takeWhile (\p -> p * p <= n) primos)

factores :: Int -> [Int]
factores 1 = []
factores n = factorize n primos
  where
    factorize 1 _ = []
    factorize m (p:ps)
      | m `mod` p == 0 = p : factorize (m `div` p) (p:ps) 
      | otherwise = factorize m ps