module Main where

import Control.Monad (replicateM)

main :: IO ()
main = do
  n <- readLn :: IO Int
  ns <- map read . words <$> getLine :: IO [Int]
  print $ length $ filter (> 0) ns
