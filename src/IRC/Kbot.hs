module IRC.Kbot where

import Control.Monad ( forever )
import Network
import System.IO 

import IRC.Parse ( handleMsg )

host :: HostName
host = "irc.freenode.org"

port :: PortNumber
port = 6667

nick :: String
nick = "kvitebot"

channel :: String
channel = "##norsk"

runKbot :: IO ()
runKbot = withSocketsDo $ do
  putStrLn "Enter bot pass: "
  pass <- getLine 
  putStrLn $ "Connecting to " ++ host ++ " on port " ++ show port
  h <- connectTo host $ PortNumber port
  hPutStrLn h $ "USER " ++ nick ++ " " ++ nick ++ " " ++ nick ++ " :" ++ nick
  hPutStrLn h $ "NICK " ++ nick 
  hPutStrLn h $ "PRIVMSG nickserv :identify " ++ pass

  msg001 <- hGetLine h
  msg002 <- hGetLine h
  msg003 <- hGetLine h
  msg004 <- hGetLine h

  hPutStrLn h $ "JOIN " ++ channel 

  forever $ do
    msg <- hGetLine h
    handleMsg h msg
