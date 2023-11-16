module Main where

main :: IO ()
main = do
    n <- readLn :: IO Int
    print $ length $ [p | p <- [1 .. n], odd p, p `mod` 3 /= 0, p `mod` 5 /= 0]

