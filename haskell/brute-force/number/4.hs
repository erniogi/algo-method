module Main where

main :: IO ()
main = do
  [a, b] <- map read . words <$> getLine :: IO [Int]
  print $ gcd a b
