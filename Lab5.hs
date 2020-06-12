--Q1
findNext :: Int -> [Int] -> Int
findNext _ [] = -1
findNext n (n1:ns)
    | n == n1 = head ns
    | otherwise = findNext n ns
  
--Q2
findPrev :: Int -> [Int] -> Int
findPrev _ [_] = -1
findPrev _ [] = -1
findPrev n (n1:n2:ns) = if n == n2 then n1 else findPrev n (n2:ns) 
    

--Q3
digitSum :: Integral a => a -> a
digitSum 0 = 0
digitSum n = (n 'mod' 10) + digitSum' (n 'div' 10)
