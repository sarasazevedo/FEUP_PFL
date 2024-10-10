-- a
curta :: [a] -> Bool
curta xs = length xs <= 2

-- b
curta' :: [a] -> Bool
curta' [] = True
curta' [_] = True
curta' [_,_] = True
curta' _ = False
