classifica :: Float -> Float -> String
classifica x y 
            | imc < 18.5 = "Baixo peso"
            | imc >= 18.5 && imc < 25 = "Peso Normal"
            | imc >= 25 && imc < 30 = "Excesso de peso"
            | otherwise = "Obesidade"
            where imc = x / (y^2)