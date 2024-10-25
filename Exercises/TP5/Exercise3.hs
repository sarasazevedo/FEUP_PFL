import Data.Char

main :: IO ()
main = do
    input <- getContents  -- Lê a entrada-padrão
    putStrLn (map rot13 input)  -- Aplica a cifra de ROT13 e imprime

rot13 :: Char -> Char
rot13 c
    | isUpper c = chr (((ord c - ord 'A' + 13) `mod` 26) + ord 'A')  -- Letras maiúsculas
    | isLower c = chr (((ord c - ord 'a' + 13) `mod` 26) + ord 'a')  -- Letras minúsculas
    | otherwise = c  -- Qualquer outro caractere permanece o mesmo