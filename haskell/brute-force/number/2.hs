module Main where

countDivisors :: Int -> Int
countDivisors n = length [x | x <- [1..n], n `mod` x == 0]

main :: IO ()
main = do
    n <- readLn :: IO Int
    print $ countDivisors n
