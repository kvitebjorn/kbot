module Dict.Lookup where

import Control.Applicative ( (<$>) )
import Data.Char ( toLower )
import Data.List ( isPrefixOf )

import Dict.Entries

lookupEntry :: String -> IO [String]
lookupEntry str = case toLower $ head str of
  'a' -> filter (isPrefixOf str) <$> a
  'b' -> filter (isPrefixOf str) <$> b
  'c' -> filter (isPrefixOf str) <$> c
  'd' -> filter (isPrefixOf str) <$> d
  'e' -> filter (isPrefixOf str) <$> e
  'f' -> filter (isPrefixOf str) <$> f
  'g' -> filter (isPrefixOf str) <$> g
  'h' -> filter (isPrefixOf str) <$> h
  'i' -> filter (isPrefixOf str) <$> i
  'j' -> filter (isPrefixOf str) <$> j
  'k' -> filter (isPrefixOf str) <$> k
  'l' -> filter (isPrefixOf str) <$> l
  'm' -> filter (isPrefixOf str) <$> m
  'n' -> filter (isPrefixOf str) <$> n
  'o' -> filter (isPrefixOf str) <$> o
  'p' -> filter (isPrefixOf str) <$> p
  'q' -> filter (isPrefixOf str) <$> q
  'r' -> filter (isPrefixOf str) <$> r
  's' -> filter (isPrefixOf str) <$> s
  't' -> filter (isPrefixOf str) <$> t
  'u' -> filter (isPrefixOf str) <$> u
  'v' -> filter (isPrefixOf str) <$> v
  'w' -> filter (isPrefixOf str) <$> w
  'x' -> filter (isPrefixOf str) <$> x
  'y' -> filter (isPrefixOf str) <$> y
  'z' -> filter (isPrefixOf str) <$> z
  _   -> return []

