module Main where

import Data.List (elemIndex)

maxIndex :: [Int] -> Int
maxIndex xs = case elemIndex (maximum xs) xs of
    Just n -> n
    Nothing -> -1

main :: IO ()
main = do
    n <- map read . words <$> getLine :: IO [Int]
    ns <- map read . words <$> getLine :: IO [Int]
    print $ maxIndex ns
