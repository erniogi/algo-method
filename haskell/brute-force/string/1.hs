module Main where

main :: IO ()
main = do
  s <- getLine :: IO String
  c <- getChar :: IO Char
  putStrLn $ if c `elem` s then "Yes" else "No"
