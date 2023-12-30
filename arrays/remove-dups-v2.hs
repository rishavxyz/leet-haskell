-- \| Problem
-- Given an integer array nums sorted in non-decreasing order,
-- remove some duplicates in-place such that
-- each unique element appears at most twice.
-- The relative order of the elements should be kept the same.
--
-- \| Example
-- [0,0,1,1,1,1,2,3,3] -> [0,0,1,1,2,3,3]
--
import Data.List (group)

solve :: [Int] -> [Int]
solve = concatMap (take 2) . group
