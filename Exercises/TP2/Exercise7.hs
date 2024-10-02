-- a
aprox :: Int -> Double 
aprox n = 4 * sum [factor k | k <- [0..n-1]] 
    where factor k = ((-1) ^ k) / fromIntegral (2 * k + 1)

-- b
aprox' :: Int -> Double
aprox' n = sqrt (12 * sum [factor k | k <- [0..n-1]])
    where factor k = ((-1) ^ k) / fromIntegral ((k + 1) ^ 2)