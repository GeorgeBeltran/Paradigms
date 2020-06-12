import Data.Char
import Data.Maybe
import Data.List

import qualified Data.Map hiding (Map)

data Student = Student {firstName :: String,

                        lastName :: String,

                        major :: String,

                        age :: Int

                        } deriving (Show)
george = Student {firstName = "George", lastName = "Beltran", major = "CS", age = 22}
john = Student {firstName = "John", lastName = "doe", major = "CS", age = 22}
bill = Student {firstName = "bill", lastName = "ash", major = "CS", age = 22}
scott = Student {firstName = "scott", lastName = "rod", major = "CS", age = 22}
jay = Student {firstName = "jay", lastName = "ummm", major = "CS", age = 22}




data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show)

freeTree :: Tree Student
freeTree = 
      Node george
           (Node john
                (Node bill Empty Empty) 
            )
            (Node scott
                 (Node jay Empty Empty)  
              )


data Direction = L | R deriving (Show)
type Directions = [Direction]

chnageTop :: Directions -> Tree Student -> Tree Student
chnageTop (L:ds) (Node x l r) = Node x (chnageTop ds l) r
chnageTop (R:ds) (Node x l r) = Node x (chnageTop ds r)
chnageTop [] (Node _ l r) = Node john l r 

newTree = chnageTop [R, L] freeTree

elemAt :: Directions -> Tree a -> a
elemAt (L:ds) (Node _ l _) = elemAt ds l
elemAt (R:ds) (Node _ _ r) = elemAt ds r
elemAt [] (Node x _ _) = x