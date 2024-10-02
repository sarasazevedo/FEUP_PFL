primo :: Integer -> Bool
primo n = length (divprop n) == 2
    where divprop m = [d | d <- [1..m], m `mod` d == 0]