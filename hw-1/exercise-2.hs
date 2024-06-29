{-# LANGUAGE ViewPatterns #-}

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther  (reverse -> (x : y : rs)) = doubleEveryOther (reverse rs) ++ [2 * y, x]
doubleEveryOther [x] = [x]
doubleEveryOther _ = []

main = do
    putStrLn ("The result of the list is: " ++ show (doubleEveryOther[8, 7, 6, 5]))
    putStrLn ("The result of the list is: " ++ show (doubleEveryOther[1, 2, 3]))
