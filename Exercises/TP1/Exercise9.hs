classifica :: Int -> String
classifica x = 
    if x < 0 || x > 20 
        then "Nota Inválida"
        else if x <= 9 
            then "Reprovado"
            else if x <= 12 
                then "Suficiente"
                else if x <= 15 
                    then "Bom"
                    else if x <= 18 
                        then "Muito Bom"
                        else "Muito bom com distinção"

classifica' :: Int -> String
classifica' x 
            | x < 0 || x > 20 = "Nota inválida"
            | x <= 9 = "Reprovado"
            | x <= 12 = "Suficiente"
            | x <= 15 = "Bom"
            | x <= 18 = "Muito Bom"
            | otherwise = "Muito bom com distinção"