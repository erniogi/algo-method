module Main where

countDifferences :: String -> String -> Int
countDifferences s t = length $ filter id $ zipWith (/=) s t

main :: IO ()
main = do
    n <- readLn :: IO Int
    s <- getLine :: IO String
    t <- getLine :: IO String
    print $ countDifferences s t
