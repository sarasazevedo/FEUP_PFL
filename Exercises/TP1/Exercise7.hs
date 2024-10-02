['a','b','c'] :: [Char]  -- == String

('a','b','c') :: (Char, Char, Char)

[(False, '0'), (True, '1')] :: [(Bool, Char)]

([(False, True), ('o', '1')]) :: ([Bool],[Char])

[tail, init, reverse] :: [[a]->[a]]

[id, not] :: [a->a] -- or [Bool->Bool]
