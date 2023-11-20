module Main where

isSubstring :: String -> String -> Bool
isSubstring s t = any (t `isPrefixOf`) (tails s)

tails :: [a] -> [[a]]
tails [] = [[]]
tails x@(_:xs) = x : tails xs

isPrefixOf :: Eq a => [a] -> [a] -> Bool
isPrefixOf [] _ = True
isPrefixOf _ [] = False
isPrefixOf (x:xs) (y:ys) = x == y && isPrefixOf xs ys

main :: IO ()
main = do
    s <- getLine :: IO String
    t <- getLine :: IO String
    putStrLn $ if isSubstring s t then "Yes" else "No"
