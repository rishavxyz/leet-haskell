{- Problem
 - Given the head of a linked list,
 - reverse the nodes of the list k at a time,
 - and return the modified list.
 -
 - k is a positive integer and is
 - less than or equal to the length
 - of the linked list. If the number
 - of nodes is not a multiple of k then
 - left-out nodes, in the end, should remain as it is.
 -
 - Example
 - Input: head = [1,2,3,4,5], k = 2
 - Output: [2,1,4,3,5]
 - -}

solve :: [Int] -> Int -> [Int]
solve a k = divisibles ++ non'divisibles
  where
    non'divisibles = concat $ filter (\x -> length x `div` k == 0) (solution a k)
    divisibles = concatMap reverse $ filter (\x -> length x `div` k /= 0) (solution a k)
    solution a k
      | null a = []
      | otherwise = take k a : solution (drop k a) k
