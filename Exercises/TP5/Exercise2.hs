import System.IO

main :: IO ()
main = do
    input <- getContents  -- Lê todas as linhas da entrada
    let linesOfInput = lines input  -- Divide a entrada em linhas
    let reversedLines = map reverse linesOfInput  -- Inverte cada linha
    putStr (unlines reversedLines)  -- Imprime as linhas invertidas