module IRC.Kbot where

import Control.Monad ( forever )
import Network
import System.IO 

import IRC.Connection
import IRC.Parse ( handleMsg )

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
  putStrLn msg001
  msg002 <- hGetLine h
  putStrLn msg002
  msg003 <- hGetLine h
  putStrLn msg003
  msg004 <- hGetLine h
  putStrLn msg004

  hPutStrLn h $ "JOIN " ++ channel 

  forever $ do
    msg <- hGetLine h
    handleMsg h msg

