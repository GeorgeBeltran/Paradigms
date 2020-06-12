 --Q1

--generation1 :: Int -> String  
generation1 born 
    | born > 1995 = "Generation Z"  
    | born > 1980 = "Millennial"  
    | born > 1965 = "Generation X"  
    | born > 1945 = "Baby Boomer"  
    | born > 1933 = "The Silent Generation"  
    | otherwise   = "The Greatest Generation"

--Q2
generation2 :: Int -> String  
generation2 bmiage 
    | age > 1995 = "Generation Z"  
    | age > 1980 = "Millennial"  
    | age > 1965 = "Generation X"  
    | age > 1945 = "Baby Boomer"  
    | age > 1933 = "The Silent Generation"  
    | otherwise   = "The Greatest Generation"
    where age = 2019 - bmiage

--Q3
tuple :: Floating a => a -> a -> a 
tuple x y = sqrt $ x^2 + y^2


--Q4 
pifunction :: (RealFloat b) => [b] -> [b]
pifunction wz = [w | x <- wz, let w = x * pi]

--Q5
multcases :: (Num c) => [c] -> c 
multcases [] = 1  
multcases (w:wz) = w * mult wz 