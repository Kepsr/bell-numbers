-- A few functions to generate Bell numbers.
-- The nth Bell number is how many different ways you can partition a set of n elements.

bellRow :: Int -> [Int]
bellRow 1 = [1]
bellRow n = helperFunction1 (last (bellRow (n - 1))) (bellRow (n - 1))

bellNumber :: Int -> Int
bellNumber = last . bellRow

helperFunction1 :: Int -> [Int] -> [Int]
helperFunction1 a xs = (+a) <$> (0 : (helperFunction2 xs))

helperFunction2 :: [Int] -> [Int]
helperFunction2 [] = []
helperFunction2 [x] = [x]
helperFunction2 (x:xs) = helperFunction1 x xs
