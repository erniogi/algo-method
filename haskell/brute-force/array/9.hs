module Main where

countOccurrences :: Eq a => a -> [a] -> Int
countOccurrences x = length . filter (== x)

main :: IO ()
main = do
    n <- readLn :: IO Int
    numbers <- map read . words <$> getLine :: IO [Int]
    mapM_ (print . (`countOccurrences` numbers)) [1..9]
