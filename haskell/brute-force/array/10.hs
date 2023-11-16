module Main where

import Data.List (maximumBy)
import Data.Ord (comparing)

countOccurrences :: Eq a => a -> [a] -> Int
countOccurrences x = length . filter (== x)

findMostFrequent :: (Ord a, Eq a) => [a] -> a
findMostFrequent xs =
    let occurrences = map (\num -> (num, countOccurrences num xs)) xs
    in fst $ maximumBy (comparing snd) occurrences

main :: IO ()
main = do
    n <- readLn :: IO Int
    as <- map read . words <$> getLine :: IO [Int]
    print $ findMostFrequent as
