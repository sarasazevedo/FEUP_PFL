-- a
binom :: Integer -> Integer -> Integer
binom n k = product [1..n] `div` (product [1..k] * (product [1..(n-k)]))

--b 
binom' :: Integer -> Integer -> Integer
binom' n k 
    | k < 0 || k > n = 0  
    | k == 0 || k == n = 1  
    | k <= n - k = product [n-k+1..n] `div` product [1..k]  
    | otherwise = product [k+1..n] `div` product [1..(n-k)]  