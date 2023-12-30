-- \| Problem
-- Two [Int], sort 'em in increasing ord.
-- two values m and n representing how much elements from the array to take !!
--
-- \| Example
-- [1..5], m = 3, [2,5,6] n = 3 -> [1,2,2,3,5,6]
import Data.List (sort)

solution :: [Int] -> Int -> [Int] -> Int -> [Int]
solution nums1 m nums2 n = sort $ take m nums1 ++ take n nums2
