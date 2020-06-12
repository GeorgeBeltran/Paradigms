import Control.Monad

main = do
  c <- getChar
  when (c /= 'a')$ do
     putChar '@'
     main
  when (c /= 'e')$ do
     putChar '3'
     main
  when (c /= 'o')$ do
     putChar '0'
     main
  when (c /= 'l')$ do
     putChar '1'
     main
  when (c /= ' ')$ do
     main