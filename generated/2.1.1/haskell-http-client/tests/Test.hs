{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE PartialTypeSignatures #-}

module Main where

import Data.Typeable (Proxy(..))
import Test.Hspec
import Test.Hspec.QuickCheck

import PropMime
import Instances ()

import CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model
import CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 10) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy Error)
      propMimeEq MimeJSON (Proxy :: Proxy ErrorErr)
      propMimeEq MimeJSON (Proxy :: Proxy ErrorErrOtherInfo)
      propMimeEq MimeJSON (Proxy :: Proxy GENERICRESPONSE)
      propMimeEq MimeJSON (Proxy :: Proxy GENERICRESPONSEData)
      propMimeEq MimeJSON (Proxy :: Proxy SPOTINSTRUMENTHISTODATA)
      propMimeEq MimeJSON (Proxy :: Proxy SPOTINSTRUMENTHISTODATARESPONSE)
      propMimeEq MimeJSON (Proxy :: Proxy SPOTINSTRUMENTMARKETDATA)
      propMimeEq MimeJSON (Proxy :: Proxy SPOTINSTRUMENTMARKETDATARESPONSE)
      propMimeEq MimeJSON (Proxy :: Proxy SPOTINSTRUMENTMARKETDATARESPONSEErr)
      propMimeEq MimeJSON (Proxy :: Proxy SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo)
      propMimeEq MimeJSON (Proxy :: Proxy SPOTINSTRUMENTMETADATA)
      propMimeEq MimeJSON (Proxy :: Proxy SPOTINSTRUMENTMETADATARESPONSE)
      propMimeEq MimeJSON (Proxy :: Proxy SPOTINSTRUMENTTRADE)
      propMimeEq MimeJSON (Proxy :: Proxy SPOTINSTRUMENTTRADERESPONSE)
      
