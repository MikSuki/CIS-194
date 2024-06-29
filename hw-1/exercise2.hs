import MyModule (doubleEveryOther)

main = do
    putStrLn ("The result of the list is: " ++ show (doubleEveryOther[8, 7, 6, 5]))
    putStrLn ("The result of the list is: " ++ show (doubleEveryOther[1, 2, 3]))
