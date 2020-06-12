add :: Int -> Int -> Int
add x y = x + y

divide :: Double -> Double -> Double
divide w z = w / z

multiply :: Int -> Int -> Int
multiply i j = i * j



addTwo :: Num a => a -> a -> a 
addTwo r t = r + t



sayMe :: (Integral a) => a -> String  
sayMe 1 = "Once"  
sayMe 2 = "Twice"  
sayMe 3 = "Thrice"    
sayMe x = "Dont know how to say that in english" 


element1 :: (a, b, c, d) -> a;
element1 (x, _, _,_) = x
element2 :: (a, b, c, d) -> b;
element2 (_, y, _, _) = y
element3 :: (a, b, c, d) -> c;
element3 (_, _, z, _) = z
element4 ::(a, b, c, d) -> d;
element4 (_, _, _, g) = g


recur :: Int -> Int -> Int;
recur x 0 = 1;
recur x y = (x * x *(y-1))


