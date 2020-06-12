bmiTell :: IO Float
bmiTell = do
   putStrLn "Enter weight in pounds"
   weightInPounds <- getLine
   putStrLn "Enter height in inches:"
   weightInInches <- getLine
   let height = (read weightInInches :: Float)
   let weight = (read weightInPounds :: Float)
   let myBMI = (weight/(height)^2) * 703
   return myBMI
main = do
   solution <- bmiTell
   putStr $ "BMI: " ++ show solution
   if solution <= 18.5
      then putStrLn "\nYoure underweight"
   else if solution <= 25.0
      then putStrLn "\nYoure normal"
   else if solution <= 30.0
      then putStrLn "\nYoure overweight"
   else
      putStrLn "\nYoure obese" 