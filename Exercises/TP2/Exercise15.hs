-- ord 'A' = 65 and chv 65 = 'A'
import Data.Char
cifrar :: Int -> String -> String
cifrar k cs = [rotateChar c | c <- cs]
  where letterToInt c = ord c - ord 'A'  
        intToLetter n = chr (n + ord 'A')  
        rotateChar c 
            | isUpper c = intToLetter ((letterToInt c + k) `mod` 26)  
            | otherwise = c 

--or 

-- Converte letras em inteiros 0..25 e vice-versa
letraInt :: Char -> Int
letraInt c = ord c - ord 'A'

intLetra :: Int -> Char
intLetra n = chr (n + ord 'A')

maiúscula :: Char -> Bool
maiúscula x = x>='A' && x<='Z'

-- Efectuar um deslocamento de k posições
desloca :: Int -> Char -> Char
desloca k x | maiúscula x = intLetra ((letraInt x + k)`mod`26)
            | otherwise   = x

-- Repetir o deslocamento para toda a cadeia de caracteres.
cifrar' :: Int -> String -> String
cifrar' k xs = [desloca k x | x<-xs]


