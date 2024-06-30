import MyModule (validate)

main = do
    print (show (validate 4012888888881881)) -- true
    print (show (validate 4012888888881882)) -- false