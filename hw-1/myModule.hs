{-# LANGUAGE ViewPatterns #-}

module MyModule (
    toDigits,
    toDigitsRev,
    doubleEveryOther,
    sumDigits,
    validate
) where

-- exercise 1
toDigits ::  Integer -> [Integer]
toDigits n  
    | n > 0 = toDigits (n `div` 10) ++ [n `mod` 10]
    | otherwise = []

toDigitsRev :: Integer -> [Integer]
toDigitsRev n 
    | n > 0 = [n `mod` 10] ++ toDigitsRev(n `div` 10)
    | otherwise = []

-- exercise 2
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther  (reverse -> (x : y : rs)) = doubleEveryOther (reverse rs) ++ [2 * y, x]
doubleEveryOther [x] = [x]
doubleEveryOther _ = []

-- exercise 3
sumDigits :: [ Integer ] -> Integer
sumDigits list = sum(map (sum . toDigits) list)

-- exercise 4
validate :: Integer -> Bool
validate value = (sumDigits . doubleEveryOther . toDigits) value `mod ` 10 == 0

-- exercise 5
-- exercise 6