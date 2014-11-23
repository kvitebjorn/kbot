module IRC.Parse where

import Data.List ( isPrefixOf )
import System.IO
import Dict.Lookup

handleMsg :: Handle -> String -> IO ()
handleMsg h msg = 
  case "PING" `isPrefixOf` msg of
    True  -> pong      h msg 
    False -> translate h msg 

pong :: Handle -> String -> IO ()
pong h msg = do hPutStrLn h $ "PONG " ++ xs
                putStrLn    $ "PONG " ++ xs
                  where xs = drop 5 msg

translate :: Handle -> String -> IO ()
translate h str = return () --TODO

