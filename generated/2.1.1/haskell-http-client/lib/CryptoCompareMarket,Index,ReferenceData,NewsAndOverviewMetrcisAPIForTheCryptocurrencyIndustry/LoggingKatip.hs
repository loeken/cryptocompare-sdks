{-
   CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry

   CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.

   OpenAPI Version: 3.0.3
   CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry API version: 2.1.1
   Contact: data@cryptocompare.com
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.LoggingKatip
Katip Logging functions
-}

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

module CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.LoggingKatip where

import qualified Control.Exception.Safe as E
import qualified Control.Monad.IO.Class as P
import qualified Control.Monad.Trans.Reader as P
import qualified Data.Text as T
import qualified Lens.Micro as L
import qualified System.IO as IO

import Data.Text (Text)
import GHC.Exts (IsString(..))

import qualified Katip as LG

-- * Type Aliases (for compatibility)

-- | Runs a Katip logging block with the Log environment
type LogExecWithContext = forall m a. P.MonadIO m =>
                                      LogContext -> LogExec m a

-- | A Katip logging block
type LogExec m a = LG.KatipT m a -> m a

-- | A Katip Log environment
type LogContext = LG.LogEnv

-- | A Katip Log severity
type LogLevel = LG.Severity

-- * default logger

-- | the default log environment
initLogContext :: IO LogContext
initLogContext = LG.initLogEnv "CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry" "dev"

-- | Runs a Katip logging block with the Log environment
runDefaultLogExecWithContext :: LogExecWithContext
runDefaultLogExecWithContext = LG.runKatipT

-- * stdout logger

-- | Runs a Katip logging block with the Log environment
stdoutLoggingExec :: LogExecWithContext
stdoutLoggingExec = runDefaultLogExecWithContext

-- | A Katip Log environment which targets stdout
stdoutLoggingContext :: LogContext -> IO LogContext
stdoutLoggingContext cxt = do
    handleScribe <- LG.mkHandleScribe LG.ColorIfTerminal IO.stdout (LG.permitItem LG.InfoS) LG.V2
    LG.registerScribe "stdout" handleScribe LG.defaultScribeSettings cxt

-- * stderr logger

-- | Runs a Katip logging block with the Log environment
stderrLoggingExec :: LogExecWithContext
stderrLoggingExec = runDefaultLogExecWithContext

-- | A Katip Log environment which targets stderr
stderrLoggingContext :: LogContext -> IO LogContext
stderrLoggingContext cxt = do
    handleScribe <- LG.mkHandleScribe LG.ColorIfTerminal IO.stderr (LG.permitItem LG.InfoS) LG.V2
    LG.registerScribe "stderr" handleScribe LG.defaultScribeSettings cxt

-- * Null logger

-- | Disables Katip logging
runNullLogExec :: LogExecWithContext
runNullLogExec le (LG.KatipT f) = P.runReaderT f (L.set LG.logEnvScribes mempty le)

-- * Log Msg

-- | Log a katip message
_log :: (Applicative m, LG.Katip m) => Text -> LogLevel -> Text -> m ()
_log src level msg = do
  LG.logMsg (fromString $ T.unpack src) level (LG.logStr msg)

-- * Log Exceptions

-- | re-throws exceptions after logging them
logExceptions
  :: (LG.Katip m, E.MonadCatch m, Applicative m)
  => Text -> m a -> m a
logExceptions src =
  E.handle
    (\(e :: E.SomeException) -> do
       _log src LG.ErrorS ((T.pack . show) e)
       E.throw e)

-- * Log Level

levelInfo :: LogLevel
levelInfo = LG.InfoS

levelError :: LogLevel
levelError = LG.ErrorS

levelDebug :: LogLevel
levelDebug = LG.DebugS
