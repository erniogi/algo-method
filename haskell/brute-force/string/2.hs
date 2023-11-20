module Main where

main :: IO ()
main = do
  s <- getLine :: IO String
  putStrLn $ if s == reverse s then "Yes" else "No"
