perfeitos :: Integer -> [Integer]
perfeitos limit = [n | n <- [1..limit], sum (divprop n) == n]

-- Done in exercise before
divprop :: Integer -> [Integer]
divprop n = [x | x <- [1..n-1], n `mod` x == 0]