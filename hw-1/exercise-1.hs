toDigits ::  Integer -> [Integer]
toDigits n  
    | n > 0 = toDigits (n `div` 10) ++ [n `mod` 10]
    | otherwise = []

toDigitsRev :: Integer -> [Integer]
toDigitsRev n 
    | n > 0 = [n `mod` 10] ++ toDigitsRev(n `div` 10)
    | otherwise = []

main = do
    let result = toDigits(1234)
    putStrLn ("The result of the list is: " ++ show (toDigits(1234)))
    putStrLn ("The result of the list is: " ++ show (toDigitsRev(1234)))
    putStrLn ("The result of the list is: " ++ show (toDigits(0)))
    putStrLn ("The result of the list is: " ++ show (toDigits(-17)))
