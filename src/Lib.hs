module Lib
    ( map'
    , filter'
    ) where



map' :: (a -> b) -> [a] -> [b]
map' f xs = case xs of 
    [] -> [] 
    x:xs -> f x : map' f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
    | p x       = x : filter p xs
    | otherwise = filter p xs  
