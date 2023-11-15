module Main where

import Data.List (elemIndex)

swapChars :: Int -> Int -> [Char] -> [Char]
swapChars i j xs = [getChar k | k <- [0..length xs - 1]]
    where getChar k
            | k == i = xs !! j
            | k == j = xs !! i
            | otherwise = xs !! k

main :: IO ()
main = do
    s <- getLine
    positions <- getLine
    let [n, m] = map read $ words positions :: [Int]
    putStrLn $ swapChars (n - 1) (m - 1) s
