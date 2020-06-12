--Q1
add :: (Integral h) => h -> h -> h
add x y = x + y

partialApplication :: (Integral h) => h -> h 
partialApplication = (+10)


--Q2
checkChar :: Char -> Bool
checkChar = flip elem ['a'..'z']


--Q3
apply3 :: (Int -> Int -> Int) -> Int -> Int
apply3 f args = foldl1 f (take 3 $ repeat args) 


--Q4
function4' :: (b -> b) -> [b] -> [b]
function4' _ [] = []
function4' f (i:j:is) = f i : function4' f is


--Q5
myzipWith' :: (w -> x -> y -> z) -> [w] -> [x] -> [y] -> [z]
myzipWith' _ _ [] _ = []
myzipWith' _ _ _ [] = []
myzipWith' f (a:as) (b:bs) (c:cs) = f a b c : myzipWith' f as bs cs


--Q6
function6 :: (Int -> Int) -> Int -> (Int,Int)
function6 f z = (z,f z)


--Q7
function7 :: [Int] -> (Int -> Int) -> [(Int,Int)]
function7 list f = map (\z ->(z , f z)) list