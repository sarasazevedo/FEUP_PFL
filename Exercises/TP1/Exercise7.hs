-- a
['a','b','c'] :: [Char]  -- == String

-- b
('a','b','c') :: (Char, Char, Char)

-- c
[(False, '0'), (True, '1')] :: [(Bool, Char)]

-- d
([False, True], ['0', '1']) :: ([Bool],[Char])

-- e
[tail, init, reverse] :: [[a]->[a]]

-- f
[id, not] :: [a->a] -- or [Bool->Bool]
