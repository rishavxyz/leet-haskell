-- Remove duplicates from a sorted array
-- Reutrn the length of array and sorted elements
--
import Data.List (group, sort)

solve :: [Int] -> (Int, [Int])
solve arr = (length solution, solution)
  where
    solution :: [Int]
    solution = map head . group . sort $ arr
