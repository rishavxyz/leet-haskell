-- \| Problem
-- Remove the given elements `val` from the [Int]
-- Lastly return the length and the array
--
-- \| Example
-- [3,2,2,3], val = 3 -> (5, [2,2])
--
-- \| Note
-- I used tuple so it look nice
--
solution :: [Int] -> Int -> (Int, [Int])
solution arr val = (length myArray, myArray)
  where
    myArray :: [Int]
    myArray = filter (/= val) arr
