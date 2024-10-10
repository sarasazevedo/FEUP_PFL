raizes :: Float -> Float -> Float -> (Float,Float)
raizes a b c = (x1,x2)
            where 
                discriminante = b^2 - 4 * a * c
                x1 = (-b + sqrt discriminante) / (2 * a)
                x2 = (-b - sqrt discriminante) / (2 * a)