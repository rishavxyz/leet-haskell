{- Problem
 - Given an array nums of size n, return the majority element.
 - The majority element is the element that
 - appears more than ⌊n / 2⌋ times.
 - You may assume that the majority
 - element always exists in the array.
 -
 - Example
 - [3,2,3]
 - 3
 - [2,2,1,1,1,2,2]
 - 2
 - -}

import Data.List (group, sort)

solve :: [Int] -> Int
solve arr = head $ head $ filter (\x -> length x == maxlen) sorted
  where
    sorted = group $ sort arr
    maxlen = maximum $ map length sorted
