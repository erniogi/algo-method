module Main where

main :: IO ()
main = do
  n <- readLn :: IO Int
  as <- fmap (map read . words) getLine :: IO [Int]
  print $ sum as  
