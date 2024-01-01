-- Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.
-- Example
-- [-1,-100,3,99], k = 2
-- [3,99,-1,-100]
--
solve :: [Int] -> Int -> [Int]
solve nums k = f ++ l
  where
    solution fn = reverse . fn . reverse $ nums
    f = solution (take k)
    l = solution (drop k)
