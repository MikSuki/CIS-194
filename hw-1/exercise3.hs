import MyModule (sumDigits)

main = do
    print (show (sumDigits [16, 7, 12, 5])) -- 22
    print (show (sumDigits [123456789, 4235, 5465, 13])) -- 83