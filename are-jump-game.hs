-- You are given an integer array nums.
-- You are initially positioned at the
-- array's first index, and each element
-- in the array represents your maximum
-- jump length at that position.

-- Return true if you can reach the last index, or false otherwise.

nums :: [Int]
nums = [2, 3, 1, 1, 4] -- True

nums2 :: [Int]
nums2 = [3, 2, 1, 0, 4] -- False

canJump :: [Int] -> Bool
canJump arr@(x : _)
  | x == 0 = False
  | x < len = canJump (drop x arr)
  | x == (arr !! (len - 1)) = True
  | otherwise = False
  where
    len = length arr
