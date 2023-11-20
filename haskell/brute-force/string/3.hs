module Main where

main :: IO ()
main = do
  s <- getLine :: IO String
  print $ length $ filter (uncurry (==)) $ zip s (tail s)
