
main = do
    line <- getLine
    if null line
        then
            return()
        else do
            putStrLn $ reverseWord line
            main

reverseWord :: String -> String
reverseWord = unwords.map reverse.words 