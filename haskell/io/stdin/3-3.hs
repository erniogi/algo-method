module Main where

main :: IO ()
main = do
  n <- readLn :: IO Int
  as <- fmap (map read . words) getLine :: IO [Int]
  mapM_ (print . (`mod` 10)) as
