module Main where

main :: IO ()
main = do
  s <- getLine :: IO String
  putStrLn $ concat $ replicate 3 s

