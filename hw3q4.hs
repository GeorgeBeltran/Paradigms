import Data.Char
import Data.Maybe
import Data.List
import qualified Data.Map hiding (map)
import Text.Printf

main = do

    src <- readFile "students.csv"
    let pairs = map (split . words) (lines src)
  where
      insert (s) = Data.Map.insertWith (++) s
      split [name, student] = (name, read student)
draw s = printf "%s\t%s\tStudent list is as follows: %f\n" s (show student)
  where
     student = Data.Map.findWithDefault (error "No such student") s


main = do

data Tree Student = Emptytree | Node StudentAge (Tree StudentAge) (Tree StudentAge) deriving(Show)
singleton :: StudentAge -> Tree StudentAge
singleton age_x :: Node age_x Emptytree Emptytree
treeInsert :: (Ord StudentAge) ==> StudentAge -> Tree StudentAge -> Tree StudentAge
treeInsert age_x Emptytree = singleton age_x
treeInsert age_x (Node StudentAge = left right)
           | age_x == StudentAge = Node age_x left right
           | age_x < StudentAge = Node StudentAge (treeInsert age_x left) right
           | age_x > StudentAge = Node StudentAge left (treeInsert age_x right)



treeElem :: (Ord StudentAge) => StudentAge -> Tree StudentAge -> Bool
treeElem age_x Emptytree = false
treeElem age (Node age_x left right)
        | age_x == StudentAge = True
        | age_x < StudentAge = treeElem age_x left
        | age_x > StudentAge =treeElem age_x right



typeEdge = (vertex, vertex)
edges :: Graph -> [Edges]
edges g = [(v,w) | v <- vertices g, w <- g !v]
mapT :: (vertex -> a -> b) -> T able a -> T able b
mapT f t = array (bounds t)
      [(v, fv(t!v))|V <- index t]
graph = Studentfirstlastname('a','j')
         [('a','j'), ('a','g'),('b','i'),('b','a'),('c','h'),('c','e'),('e','f')]