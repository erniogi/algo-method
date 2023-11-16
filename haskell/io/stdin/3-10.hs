module Main where

import Control.Monad (replicateM)

compareCounts :: [String] -> String
compareCounts xs = 
    let count dir = length $ filter (== dir) xs
        leftCount = count "left"
        rightCount = count "right"
    in if leftCount > rightCount then "left" 
       else if rightCount > leftCount then "right" 
       else "same"

main :: IO ()
main = do
  n <- readLn :: IO Int
  xs <- replicateM n getLine :: IO [String]
  putStrLn $ compareCounts xs
