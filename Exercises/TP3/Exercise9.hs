myScanl :: (b -> a -> b) -> b -> [a] -> [b]
myScanl _ z [] = [z] 
myScanl f z (x:xs) = z : myScanl f (f z x) xs