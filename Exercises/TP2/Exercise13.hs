primo :: Int -> Bool
primo n
    | n < 2     = False
    | otherwise = null [x | x <- [2..(n-1)], n `mod` x == 0]

mersennes :: [Int]
mersennes = [2^n - 1 | n <- [2..30], primo (2^n - 1)]