module Main where

divisors :: Int -> [Int]
divisors n = [i | i <- [1 .. n], n `mod` i == 0]

isprime :: Int -> [Char]
isprime n
    | (length . divisors) n == 2 = "Yes"
    | otherwise = "No"

main :: IO ()
main = do
       n <- readLn :: IO Int
       putStrLn $ isprime n
