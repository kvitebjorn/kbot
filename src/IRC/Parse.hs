module IRC.Parse where

import Data.List ( isPrefixOf, isInfixOf )
import System.IO

import IRC.Connection
import Dict.Lookup

handleMsg :: Handle -> String -> IO ()
handleMsg h msg 
  | "PING" `isPrefixOf` msg    = pong h msg
  | "PRIVMSG" `isInfixOf` msg = translate h msg -- refine this
  | otherwise = putStrLn msg

pong :: Handle -> String -> IO ()
pong h msg = do hPutStrLn h $ "PONG " ++ xs
                putStrLn    $ "PONG " ++ xs
                  where xs = drop 5 msg

translate :: Handle -> String -> IO ()
translate h msg = do 
  putStrLn msg 
  let ord = getWordToTranslate msg
  case ord of
    Just ord -> do 
      putStrLn ord
      translation <- lookupEntry ord
      print translation
      hPutStrLn h $ "PRIVMSG " ++ channel ++ " :" ++ (concat translation)
      putStrLn    $ "PRIVMSG " ++ channel ++ " :" ++ (concat translation)
    Nothing  -> return ()

getWordToTranslate :: String -> Maybe String
getWordToTranslate "" = Nothing
getWordToTranslate msg = Just $ drop 1 $ dropWhile (/= ':') $ tail msg

