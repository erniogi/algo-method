module Main where

main :: IO ()
main = do
  n <- readLn :: IO Int
  print $ abs (n - 24)
