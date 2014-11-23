module Dict.Lookup where

import Control.Applicative ( (<$>) )
import Data.Char ( toLower )
import Data.List ( isPrefixOf )

import Dict.Entries

lookupEntry :: String -> IO [String]
lookupEntry ""  = return []
lookupEntry str = case toLower $ head str of
  'a' -> filter (str `isPrefixOf`) <$> a
  'b' -> filter (str `isPrefixOf`) <$> b
  'c' -> filter (str `isPrefixOf`) <$> c
  'd' -> filter (str `isPrefixOf`) <$> d
  'e' -> filter (str `isPrefixOf`) <$> e
  'f' -> filter (str `isPrefixOf`) <$> f
  'g' -> filter (str `isPrefixOf`) <$> g
  'h' -> filter (str `isPrefixOf`) <$> h
  'i' -> filter (str `isPrefixOf`) <$> i
  'j' -> filter (str `isPrefixOf`) <$> j
  'k' -> filter (str `isPrefixOf`) <$> k
  'l' -> filter (str `isPrefixOf`) <$> l
  'm' -> filter (str `isPrefixOf`) <$> m
  'n' -> filter (str `isPrefixOf`) <$> n
  'o' -> filter (str `isPrefixOf`) <$> o
  'p' -> filter (str `isPrefixOf`) <$> p
  'q' -> filter (str `isPrefixOf`) <$> q
  'r' -> filter (str `isPrefixOf`) <$> r
  's' -> filter (str `isPrefixOf`) <$> s
  't' -> filter (str `isPrefixOf`) <$> t
  'u' -> filter (str `isPrefixOf`) <$> u
  'v' -> filter (str `isPrefixOf`) <$> v
  'w' -> filter (str `isPrefixOf`) <$> w
  'x' -> filter (str `isPrefixOf`) <$> x
  'y' -> filter (str `isPrefixOf`) <$> y
  'z' -> filter (str `isPrefixOf`) <$> z
  _   -> return []

