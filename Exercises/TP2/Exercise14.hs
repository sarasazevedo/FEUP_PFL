binom :: Integer -> Integer -> Integer
binom n k 
    | k < 0 || k > n = 0  
    | k == 0 || k == n = 1  
    | k <= n - k = product [n-k+1..n] `div` product [1..k]  
    | otherwise = product [k+1..n] `div` product [1..(n-k)] 

pascal :: Integer -> [[Integer]]
pascal n = [[binom i k | k <- [0..i]] | i <- [0..n]]