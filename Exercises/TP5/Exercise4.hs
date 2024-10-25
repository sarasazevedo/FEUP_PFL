import Data.Char 
import Data.List

-- Main function 
main :: IO ()
main = do
    putStrLn "Welcome to the guessing game!"
    putStrLn "Enter the secret word: "
    word <- getLine
    putStrLn "\ESC[2J"  -- Esconde a palavra secreta
    guess word  -- Começa o jogo

-- Main function para jogar 
guess :: String -> IO ()
guess word = game word "" 0  -- Começa o jogo

-- Game loop
game :: String -> String -> Int -> IO ()
game word guessed attempts = do
    putStrLn (showWord word guessed)  -- Mostra a palavra com _
    if word == revealWord word guessed
        then putStrLn $ "Congratulations! You guessed the word in " ++ show attempts ++ " attempts!"
        else do
            putStr "Try a letter: "
            letter <- getLine
            let guessedLetter = toLower (head letter)  -- Le primeira letra e converte para minuscula 
            if guessedLetter `elem` guessed
                then putStrLn "You already tried that letter. Try another."
                else game word (guessedLetter : guessed) (attempts + 1)

-- Mostra a palavra, substituindo letras desconhecidas por _
showWord :: String -> String -> String
showWord word guessed = intersperse ' ' [if toLower letter `elem` guessed then letter else '_' | letter <- word]

-- Revela a palavra com as letras já acertadas
revealWord :: String -> String -> String
revealWord word guessed = [if toLower letter `elem` guessed then letter else '_' | letter <- word]
