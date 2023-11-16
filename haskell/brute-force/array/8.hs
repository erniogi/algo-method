module Main where

main :: IO ()
main = do
  n <- readLn :: IO Int
  as <- map read . words <$> getLine :: IO [Int]
  print $ minimum as
