-- ord 'A' = 65 and chv 65 = 'A'
import Data.Char
cifrar :: Int -> String -> String
cifrar k cs = [rotateChar c | c <- cs]
  where letterToInt c = ord c - ord 'A'  
        intToLetter n = chr (n + ord 'A')  
        rotateChar c 
            | isUpper c = intToLetter ((letterToInt c + k) `mod` 26)  
            | otherwise = c 