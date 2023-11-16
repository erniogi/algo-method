module Main where

main :: IO ()
main = do
  n <- readLn :: IO Int
  ns <-map read . words <$> getLine :: IO [Int]
  print $ length $ filter (uncurry (<)) $ zip ns (tail ns)
