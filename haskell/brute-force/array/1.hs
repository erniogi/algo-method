module Main where

import Control.Monad (replicateM)

main :: IO ()
main = do
  [n, v] <- map read . words <$> getLine :: IO [Int]
  ns <- map read . words <$> getLine :: IO [Int]
  putStrLn $ if v `elem` ns then "Yes" else "No"
