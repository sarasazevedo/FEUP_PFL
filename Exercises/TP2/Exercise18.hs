-- a
mindiv :: Int -> Int
mindiv n = mindivAux n 2

mindivAux :: Int -> Int -> Int
mindivAux n d
    | d * d > n       = n         
    | n `mod` d == 0  = d         
    | otherwise       = mindivAux n (d + 1)  
-- b
primo :: Int -> Bool
primo n
    | n <= 1    = False
    | mindiv n == n = True
    | otherwise = False
