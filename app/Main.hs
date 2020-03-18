module Main where

import Lib

main :: IO ()
main = (print . filter (>5) . map' (*2) ) [1,2,3,4,5]

