main = do
  contstant <- readFile "file.txt"
  write "leet.txt" (leetCode constant)