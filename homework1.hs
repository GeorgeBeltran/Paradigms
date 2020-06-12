--Q1
m :: Int -> Double
m i | i == 1 = 1
    | otherwise = 1/fromIntegral i + m(i-1)



--Q2
z :: Int -> Double
z i | i == 1 = 1/2
    |otherwise = fromIntegral i/(1 + fromIntegral i)



--Q3
maxRecursiveElement :: [Int] -> Int
maxRecursiveElement [_] = 0

maxRecursiveElement (n:ns) = maxPosition n 0 1 (ns) where
maxPosition max maxElements i [] = maxElements
maxPosition max maxElements i (n':ns) | max < n' = maxPosition n' i (i+1) ns
                                      | otherwise = maxPosition max maxElements (i+1) ns

removeMax :: [Int] -> [Int]
removeMax [_] = []
removeMax z = take i z ++ drop (i+1) z where
    i = maxRecursiveElement z 



--Q4
--same as Q3 just added the sort
maxElement :: [Int] -> Int
maxElement [_] = 0

maxElement (n:ns) = maxPositionSort n 0 1 (ns) where
maxPositionSort maxx maxElementSort j [] = maxElementSort
maxPositionSort maxx maxElementSort j (n':ns) | maxx < n' = maxPositionSort n' j (j+1) ns
                                              | otherwise = maxPositionSort maxx maxElementSort (j+1) ns

removeMaxSort :: [Int] -> [Int]
removeMaxSort [_] = []
removeMaxSort k = take j k ++ drop (j+1) k where
    j = maxElement k

sort :: [Int] -> [Int]
sort [] = []
sort [n] = [n]
sort ns = sorting ns where
sorting [] = []
sorting ns' = sorting (removeMaxSort ns') ++ [ns' !! maxElement ns']