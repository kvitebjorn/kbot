module Main where

import Control.Monad ( forever )
import Data.List ( isInfixOf )
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
  putStrLn $ "Connecting to " ++ host ++ " on port " ++ show port

  -- Connect to freenode
  h <- connectTo host $ PortNumber port
  
  -- User authentication
  hPutStrLn h $ "USER " ++ nick ++ " " ++ nick ++ " " ++ nick ++ " :This is kbot"

  -- Set nick
  hPutStrLn h $ "NICK " ++ nick

  -- TODO: /msg nickserv for identify on nick

  -- Join channel
  hPutStrLn h $ "JOIN " ++ channel

  -- Receive 
  forever $ do
    -- Receive msg
    msg <- hGetLine h
    putStrLn msg

    -- TODO: Check for pings from server

