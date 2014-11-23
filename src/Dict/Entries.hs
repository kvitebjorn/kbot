module Dict.Entries where

import Control.Monad ( liftM )

-- One list per letter of the alphabet
a :: IO [String]
a = liftM lines $ readFile "Dictionary/A.txt"

b :: IO [String]
b = liftM lines $ readFile "Dictionary/B.txt"

c :: IO [String]
c = liftM lines $ readFile "Dictionary/C.txt"

d :: IO [String]
d = liftM lines $ readFile "Dictionary/D.txt"

e :: IO [String]
e = liftM lines $ readFile "Dictionary/E.txt"

f :: IO [String]
f = liftM lines $ readFile "Dictionary/F.txt"

g :: IO [String]
g = liftM lines $ readFile "Dictionary/G.txt"

h :: IO [String]
h = liftM lines $ readFile "Dictionary/H.txt"

i :: IO [String]
i = liftM lines $ readFile "Dictionary/I.txt"

j :: IO [String]
j = liftM lines $ readFile "Dictionary/J.txt"

k :: IO [String]
k = liftM lines $ readFile "Dictionary/K.txt"

l :: IO [String]
l = liftM lines $ readFile "Dictionary/L.txt"

m :: IO [String]
m = liftM lines $ readFile "Dictionary/M.txt"

n :: IO [String]
n = liftM lines $ readFile "Dictionary/N.txt"

o :: IO [String]
o = liftM lines $ readFile "Dictionary/O.txt"

p :: IO [String]
p = liftM lines $ readFile "Dictionary/P.txt"

q :: IO [String]
q = liftM lines $ readFile "Dictionary/Q.txt"

r :: IO [String]
r = liftM lines $ readFile "Dictionary/R.txt"

s :: IO [String]
s = liftM lines $ readFile "Dictionary/S.txt"

t :: IO [String]
t = liftM lines $ readFile "Dictionary/T.txt"

u :: IO [String]
u = liftM lines $ readFile "Dictionary/U.txt"

v :: IO [String]
v = liftM lines $ readFile "Dictionary/V.txt"

w :: IO [String]
w = liftM lines $ readFile "Dictionary/W.txt"

x :: IO [String]
x = liftM lines $ readFile "Dictionary/X.txt"

y :: IO [String]
y = liftM lines $ readFile "Dictionary/Y.txt"

z :: IO [String]
z = liftM lines $ readFile "Dictionary/Z.txt"

