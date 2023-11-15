module Main where

double :: Int -> Int
double x = x + x

main :: IO ()
main = do
  x <- getLine
  print $ double (read x :: Int)
