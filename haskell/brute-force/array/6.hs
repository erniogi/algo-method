module Main where

import Data.List (elemIndex)

findLastOccurrence :: Int -> [Int] -> Maybe Int
findLastOccurrence v numbers = 
    let index = elemIndex v (reverse numbers)
    in fmap (\idx -> length numbers - idx - 1) index

main :: IO ()
main = do
    [n, v] <- map read . words <$> getLine :: IO [Int]
    ns <- map read . words <$> getLine :: IO [Int]
    case findLastOccurrence v ns of
        Just idx -> print idx
        Nothing  -> putStrLn "-1"
