module Main where

import Control.Monad ( forever, mzero )
import Data.List     ( isPrefixOf, isInfixOf )
import Network
import System.IO 

host :: HostName
host = "irc.freenode.org"

port :: PortNumber
port = 6667

nick :: String
nick = "kvitebot"

channel :: String
channel = "##norsk"

main :: IO ()
main = withSocketsDo $ do
  putStrLn "Enter bot pass: "
  pass <- getLine 
  putStrLn $ "Connecting to " ++ host ++ " on port " ++ show port

  -- Connect to freenode
  h <- connectTo host $ PortNumber port
  
  -- User authentication
  hPutStrLn h $ "USER " ++ nick ++ " " ++ nick ++ " " ++ nick ++ " :" ++ nick

  -- Set nick
  hPutStrLn h $ "NICK " ++ nick 

  -- Identify on nick
  hPutStrLn h $ "PRIVMSG nickserv :identify " ++ pass

  -- Receive welcome message
  msg001 <- hGetLine h
  msg002 <- hGetLine h
  msg003 <- hGetLine h
  msg004 <- hGetLine h

  -- Join channel
  hPutStrLn h $ "JOIN " ++ channel 

  -- Receive 
  forever $ do
    -- Receive msg
    msg <- hGetLine h
    putStrLn msg

    -- Handle messages/pings 
    handleMsg h msg

handleMsg :: Handle -> String -> IO ()
handleMsg h msg = 
  case "PING" `isPrefixOf` msg of
    True  -> pong h msg 
    False -> aqwis h msg 

pong :: Handle -> String -> IO ()
pong h msg = do hPutStrLn h $ "PONG " ++ xs
                putStrLn    $ "PONG " ++ xs
                  where xs = drop 5 msg

aqwis :: Handle -> String -> IO ()
aqwis h msg = 
  case "Aqwis" `isInfixOf` msg of
    True  -> do hPutStrLn h $ "PRIVMSG " ++ channel ++ " :jævla Aqwis"
                putStrLn    $ "PRIVMSG " ++ channel ++ " :jævla Aqwis"
    False -> hPutStrLn h ""

