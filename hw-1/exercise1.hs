import MyModule (toDigits, toDigitsRev)

main = do
    let result = toDigits(1234)
    putStrLn ("The result of the list is: " ++ show (toDigits(1234)))
    putStrLn ("The result of the list is: " ++ show (toDigitsRev(1234)))
    putStrLn ("The result of the list is: " ++ show (toDigits(0)))
    putStrLn ("The result of the list is: " ++ show (toDigits(-17)))
