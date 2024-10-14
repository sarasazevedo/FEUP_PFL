pitagoricos :: Integer -> [(Integer, Integer, Integer)]
pitagoricos limit = [(x, y, z) | x <- [1..limit], y <- [1..limit], z <- [1..limit], x^2 + y^2 == z^2]