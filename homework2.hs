--Q1 WORKS
divby5 :: Int -> Int -> Bool
divby5 x y = y `mod` x == 0
isDivisibleByFive = divby5 5

--Q2 WORKS
letterCheck :: String -> Bool
letterCheck str = and $ partial str

partial :: String-> [Bool]
partial = zipWith (\x y -> if (rem x 2 == 1)
      then elem y['a'..'f']
      else True)[1..]

--Q3 WORKS
twoListSum :: [Integer] -> [Integer] -> [Integer]
twoListSum listA listB = do
    let listZip = zip listA listB
        addList = map (\(lA,lB) -> lA+lB) listZip
    addList


--Q4 WORKS
firstWord :: [String] -> [String]
firstWord mapIt = map head $ map words mapIt


--Q5
twoDime :: [[String]] -> [[String]]
twoDime twoDmatrix = map (\x -> map(\y -> if y == "" then "0" else y)x) twoDmatrix

--Q6 WORKS MUST PUT QUOTATIONS FOR LETTERS 
makeTuple :: [a] -> [(a,a)]
makeTuple [] = []
makeTuple [a] = []
makeTuple (x:y:xs) = (x,y):(makeTuple xs)

--Q7 WORKS
tupleToProduct :: Num a => [a] -> [a]
tupleToProduct lst = foldl (\b(a1,a2) -> b ++ [a1*a2]) [] $ makeTuple lst


--Q8 WORKS
sumUpCumulatively :: [Int] -> [Int]
sumUpCumulatively [] = []
sumUpCumulatively args = tail $ scanl (\b a -> a+b)0 args


--Q9 WORKS
applyThrice :: (Int -> Int) -> Int -> Int
applyThrice f x = (f.f) $ f x


--Q10 WORKS
isLowerCase :: Char -> Bool
isLowerCase = flip elem ['a'..'z']

--Q11 WORKS EACH WORD NEED QUOTES
firstWordLengthSort :: [String] -> [String] 
firstWordLengthSort args = sortWords(map(\x -> (length(head x),x))(map words args))[] 0

sortWords ::[(Int,[String])]->[(Int,[String])]->Int->[String]
sortWords [] st i = map (\(x,y)->unwords y)st
sortWords lst st i = sortWords ((filter(\(x,y)->x/=i))lst)(st++(filter(\(x,y)-> x==i)lst))(i+1)


--Q12 WORKS
separateCharToList :: [Char] -> [String]
separateCharToList args = filter (\str -> str/="")$ zipWith(\x alphabet -> filter(\char -> char == alphabet)x)(repeat args) ['a'..'z']