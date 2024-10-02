xor :: Bool -> Bool -> Bool
xor True True = False
xor True False = True
xor False True = True
xor False False = False

-- or 
-- xor True True = False
-- xor False False = False
-- xor _ _ = True