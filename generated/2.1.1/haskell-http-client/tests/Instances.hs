{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model
import CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Core

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HM
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Time as TI
import qualified Data.Vector as V
import Data.String (fromString)

import Control.Monad
import Data.Char (isSpace)
import Data.List (sort)
import Test.QuickCheck

import ApproxEq

instance Arbitrary T.Text where
  arbitrary = T.pack <$> arbitrary

instance Arbitrary TI.Day where
  arbitrary = TI.ModifiedJulianDay . (2000 +) <$> arbitrary
  shrink = (TI.ModifiedJulianDay <$>) . shrink . TI.toModifiedJulianDay

instance Arbitrary TI.UTCTime where
  arbitrary =
    TI.UTCTime <$> arbitrary <*> (TI.secondsToDiffTime <$> choose (0, 86401))

instance Arbitrary BL.ByteString where
    arbitrary = BL.pack <$> arbitrary
    shrink xs = BL.pack <$> shrink (BL.unpack xs)

instance Arbitrary ByteArray where
    arbitrary = ByteArray <$> arbitrary
    shrink (ByteArray xs) = ByteArray <$> shrink xs

instance Arbitrary Binary where
    arbitrary = Binary <$> arbitrary
    shrink (Binary xs) = Binary <$> shrink xs

instance Arbitrary DateTime where
    arbitrary = DateTime <$> arbitrary
    shrink (DateTime xs) = DateTime <$> shrink xs

instance Arbitrary Date where
    arbitrary = Date <$> arbitrary
    shrink (Date xs) = Date <$> shrink xs

#if MIN_VERSION_aeson(2,0,0)
#else
-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = arbitraryValue
#endif

arbitraryValue :: Gen A.Value
arbitraryValue =
  frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (fromString k, v)
      simpleAndArrays = frequency [(1, sized sizedArray), (4, simpleTypes)]
      arrayTypes = sized sizedArray
      objectTypes = sized sizedObject
      sizedArray n = liftM (A.Array . V.fromList) $ replicateM n simpleTypes
      sizedObject n =
        liftM (A.object . map mapF) $
        replicateM n $ (,) <$> (arbitrary :: Gen String) <*> simpleAndArrays

-- | Checks if a given list has no duplicates in _O(n log n)_.
hasNoDups
  :: (Ord a)
  => [a] -> Bool
hasNoDups = go Set.empty
  where
    go _ [] = True
    go s (x:xs)
      | s' <- Set.insert x s
      , Set.size s' > Set.size s = go s' xs
      | otherwise = False

instance ApproxEq TI.Day where
  (=~) = (==)

arbitraryReduced :: Arbitrary a => Int -> Gen a
arbitraryReduced n = resize (n `div` 2) arbitrary

arbitraryReducedMaybe :: Arbitrary a => Int -> Gen (Maybe a)
arbitraryReducedMaybe 0 = elements [Nothing]
arbitraryReducedMaybe n = arbitraryReduced n

arbitraryReducedMaybeValue :: Int -> Gen (Maybe A.Value)
arbitraryReducedMaybeValue 0 = elements [Nothing]
arbitraryReducedMaybeValue n = do
  generated <- arbitraryReduced n
  if generated == Just A.Null
    then return Nothing
    else return generated

-- * Models

instance Arbitrary Error where
  arbitrary = sized genError

genError :: Int -> Gen Error
genError n =
  Error
    <$> arbitraryReducedMaybeValue n -- errorData :: Maybe A.Value
    <*> arbitraryReducedMaybe n -- errorErr :: Maybe ErrorErr
  
instance Arbitrary ErrorErr where
  arbitrary = sized genErrorErr

genErrorErr :: Int -> Gen ErrorErr
genErrorErr n =
  ErrorErr
    <$> arbitraryReducedMaybe n -- errorErrMessage :: Maybe Text
    <*> arbitraryReducedMaybe n -- errorErrOtherInfo :: Maybe ErrorErrOtherInfo
    <*> arbitraryReducedMaybe n -- errorErrType :: Maybe Int
  
instance Arbitrary ErrorErrOtherInfo where
  arbitrary = sized genErrorErrOtherInfo

genErrorErrOtherInfo :: Int -> Gen ErrorErrOtherInfo
genErrorErrOtherInfo n =
  ErrorErrOtherInfo
    <$> arbitraryReducedMaybe n -- errorErrOtherInfoParam :: Maybe Text
    <*> arbitraryReducedMaybe n -- errorErrOtherInfoValues :: Maybe [Text]
  
instance Arbitrary GENERICRESPONSE where
  arbitrary = sized genGENERICRESPONSE

genGENERICRESPONSE :: Int -> Gen GENERICRESPONSE
genGENERICRESPONSE n =
  GENERICRESPONSE
    <$> arbitraryReducedMaybe n -- gENERICRESPONSEData :: Maybe GENERICRESPONSEData
    <*> arbitraryReducedMaybeValue n -- gENERICRESPONSEErr :: Maybe A.Value
  
instance Arbitrary GENERICRESPONSEData where
  arbitrary = sized genGENERICRESPONSEData

genGENERICRESPONSEData :: Int -> Gen GENERICRESPONSEData
genGENERICRESPONSEData n =
  GENERICRESPONSEData
    <$> arbitraryReducedMaybe n -- gENERICRESPONSEDataNoData :: Maybe Text
  
instance Arbitrary SPOTINSTRUMENTHISTODATA where
  arbitrary = sized genSPOTINSTRUMENTHISTODATA

genSPOTINSTRUMENTHISTODATA :: Int -> Gen SPOTINSTRUMENTHISTODATA
genSPOTINSTRUMENTHISTODATA n =
  SPOTINSTRUMENTHISTODATA
    <$> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATABase :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAClose :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAFirstTradePrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAFirstTradeTimestamp :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAHigh :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAHighTradePrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAHighTradeTimestamp :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAInstrument :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATALastTradePrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATALastTradeTimestamp :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATALow :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATALowTradePrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATALowTradeTimestamp :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAMappedInstrument :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAMarket :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAOpen :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAQuote :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAQuoteVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAQuoteVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAQuoteVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAQuoteVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATATimestamp :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATATotalTrades :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATATotalTradesBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATATotalTradesSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATATotalTradesUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAType :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAUnit :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATAVolumeUnknown :: Maybe Int
  
instance Arbitrary SPOTINSTRUMENTHISTODATARESPONSE where
  arbitrary = sized genSPOTINSTRUMENTHISTODATARESPONSE

genSPOTINSTRUMENTHISTODATARESPONSE :: Int -> Gen SPOTINSTRUMENTHISTODATARESPONSE
genSPOTINSTRUMENTHISTODATARESPONSE n =
  SPOTINSTRUMENTHISTODATARESPONSE
    <$> arbitraryReducedMaybe n -- sPOTINSTRUMENTHISTODATARESPONSEData :: Maybe [SPOTINSTRUMENTHISTODATA]
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTHISTODATARESPONSEErr :: Maybe A.Value
  
instance Arbitrary SPOTINSTRUMENTMARKETDATA where
  arbitrary = sized genSPOTINSTRUMENTMARKETDATA

genSPOTINSTRUMENTMARKETDATA :: Int -> Gen SPOTINSTRUMENTMARKETDATA
genSPOTINSTRUMENTMARKETDATA n =
  SPOTINSTRUMENTMARKETDATA
    <$> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATABase :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACcseq :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentDayHigh :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentDayLow :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentDayOpen :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentDayQuoteVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentDayQuoteVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentDayQuoteVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentDayQuoteVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentDayTotalTrades :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentDayTotalTradesBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentDayTotalTradesSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentDayTotalTradesUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentDayVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentDayVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentDayVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentDayVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentHourHigh :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentHourLow :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentHourOpen :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentHourQuoteVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentHourQuoteVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentHourQuoteVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentHourQuoteVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentHourTotalTrades :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentHourTotalTradesBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentHourTotalTradesSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentHourTotalTradesUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentHourVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentHourVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentHourVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentHourVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentMonthHigh :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentMonthLow :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentMonthOpen :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentMonthQuoteVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentMonthQuoteVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentMonthQuoteVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentMonthQuoteVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentMonthTotalTrades :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentMonthTotalTradesBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentMonthTotalTradesSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentMonthTotalTradesUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentMonthVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentMonthVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentMonthVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentMonthVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentWeekHigh :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentWeekLow :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentWeekOpen :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentWeekQuoteVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentWeekQuoteVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentWeekQuoteVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentWeekQuoteVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentWeekTotalTrades :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentWeekTotalTradesBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentWeekTotalTradesSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentWeekTotalTradesUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentWeekVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentWeekVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentWeekVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentWeekVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentYearHigh :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentYearLow :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentYearOpen :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentYearQuoteVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentYearQuoteVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentYearQuoteVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentYearQuoteVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentYearTotalTrades :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentYearTotalTradesBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentYearTotalTradesSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentYearTotalTradesUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentYearVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentYearVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentYearVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATACurrentYearVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAInstrument :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALastProcessedTradeCcseq :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALastProcessedTradePrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALastProcessedTradeQuantity :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALastProcessedTradeQuoteQuantity :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALastProcessedTradeSide :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALastProcessedTradeTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALastTradeCcseq :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALastTradeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALastTradeQuantity :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALastTradeQuoteQuantity :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALastTradeSide :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALifetimeFirstTradeTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALifetimeHigh :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALifetimeHighTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALifetimeLow :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALifetimeLowTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALifetimeOpen :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALifetimeQuoteVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALifetimeQuoteVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALifetimeQuoteVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALifetimeQuoteVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALifetimeTotalTrades :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALifetimeTotalTradesBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALifetimeTotalTradesSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALifetimeTotalTradesUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALifetimeVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALifetimeVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALifetimeVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATALifetimeVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMappedInstrument :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMarket :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving180DayHigh :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving180DayLow :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving180DayOpen :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving180DayQuoteVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving180DayQuoteVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving180DayQuoteVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving180DayQuoteVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving180DayTotalTrades :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving180DayTotalTradesBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving180DayTotalTradesSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving180DayTotalTradesUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving180DayVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving180DayVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving180DayVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving180DayVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving24HourHigh :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving24HourLow :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving24HourOpen :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving24HourQuoteVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving24HourQuoteVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving24HourQuoteVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving24HourQuoteVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving24HourTotalTrades :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving24HourTotalTradesBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving24HourTotalTradesSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving24HourTotalTradesUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving24HourVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving24HourVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving24HourVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving24HourVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving30DayHigh :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving30DayLow :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving30DayOpen :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving30DayQuoteVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving30DayQuoteVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving30DayQuoteVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving30DayQuoteVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving30DayTotalTrades :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving30DayTotalTradesBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving30DayTotalTradesSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving30DayTotalTradesUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving30DayVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving30DayVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving30DayVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving30DayVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving365DayHigh :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving365DayLow :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving365DayOpen :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving365DayQuoteVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving365DayQuoteVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving365DayQuoteVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving365DayQuoteVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving365DayTotalTrades :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving365DayTotalTradesBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving365DayTotalTradesSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving365DayTotalTradesUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving365DayVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving365DayVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving365DayVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving365DayVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving7DayHigh :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving7DayLow :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving7DayOpen :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving7DayQuoteVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving7DayQuoteVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving7DayQuoteVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving7DayQuoteVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving7DayTotalTrades :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving7DayTotalTradesBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving7DayTotalTradesSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving7DayTotalTradesUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving7DayVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving7DayVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving7DayVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving7DayVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving90DayHigh :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving90DayLow :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving90DayOpen :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving90DayQuoteVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving90DayQuoteVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving90DayQuoteVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving90DayQuoteVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving90DayTotalTrades :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving90DayTotalTradesBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving90DayTotalTradesSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving90DayTotalTradesUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving90DayVolume :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving90DayVolumeBuy :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving90DayVolumeSell :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAMoving90DayVolumeUnknown :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAPrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAPriceFlag :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAPriceLastUpdateTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAQuote :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATATopAskLastUpdateTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATATopAskPrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATATopAskQuantity :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATATopBidLastUpdateTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATATopBidPrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATATopBidQuantity :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATAType :: Maybe Text
  
instance Arbitrary SPOTINSTRUMENTMARKETDATARESPONSE where
  arbitrary = sized genSPOTINSTRUMENTMARKETDATARESPONSE

genSPOTINSTRUMENTMARKETDATARESPONSE :: Int -> Gen SPOTINSTRUMENTMARKETDATARESPONSE
genSPOTINSTRUMENTMARKETDATARESPONSE n =
  SPOTINSTRUMENTMARKETDATARESPONSE
    <$> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATARESPONSEData :: Maybe (Map.Map String SPOTINSTRUMENTMARKETDATA)
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATARESPONSEErr :: Maybe SPOTINSTRUMENTMARKETDATARESPONSEErr
  
instance Arbitrary SPOTINSTRUMENTMARKETDATARESPONSEErr where
  arbitrary = sized genSPOTINSTRUMENTMARKETDATARESPONSEErr

genSPOTINSTRUMENTMARKETDATARESPONSEErr :: Int -> Gen SPOTINSTRUMENTMARKETDATARESPONSEErr
genSPOTINSTRUMENTMARKETDATARESPONSEErr n =
  SPOTINSTRUMENTMARKETDATARESPONSEErr
    <$> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATARESPONSEErrMessage :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo :: Maybe SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATARESPONSEErrType :: Maybe Int
  
instance Arbitrary SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo where
  arbitrary = sized genSPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo

genSPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo :: Int -> Gen SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo
genSPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo n =
  SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo
    <$> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfoParam :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfoValues :: Maybe [Text]
  
instance Arbitrary SPOTINSTRUMENTMETADATA where
  arbitrary = sized genSPOTINSTRUMENTMETADATA

genSPOTINSTRUMENTMETADATA :: Int -> Gen SPOTINSTRUMENTMETADATA
genSPOTINSTRUMENTMETADATA n =
  SPOTINSTRUMENTMETADATA
    <$> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAFirstSeenOnBlobTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAFirstSeenOnFixTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAFirstSeenOnHardcodedTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAFirstSeenOnIndexCompositionTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAFirstSeenOnNsqTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAFirstSeenOnPollingTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAFirstSeenOnStreamingTs :: Maybe Int
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAFirstTradeSpotFromBackfill :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAFirstTradeSpotFromBackfillExternal :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAFirstTradeSpotFromBlob :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAFirstTradeSpotFromBlobExternal :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAFirstTradeSpotFromCalculated :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAFirstTradeSpotFromCalculatedExternal :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAFirstTradeSpotFromFix :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAFirstTradeSpotFromFixExternal :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAFirstTradeSpotFromGo :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAFirstTradeSpotFromGoExternal :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAFirstTradeSpotFromPolling :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAFirstTradeSpotFromPollingExternal :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAFirstTradeSpotFromStreaming :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAFirstTradeSpotFromStreamingExternal :: Maybe A.Value
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAHostMigrationDestination :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAHostMigrationSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAHostMigrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrument :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentExternalData :: Maybe Text
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAInstrumentMapping :: Maybe A.Value
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentMappingHistory :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentSourceBackfill :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentSourceBlob :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentSourceCalculated :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentSourceFix :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentSourceGo :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentSourcePolling :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentSourceStreaming :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentStatus :: Maybe Text
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromBackfillLastProxiedRestRequest :: Maybe A.Value
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromBackfillRestUriLastRequestTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromBackfillRestUriLastResponseTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromBackfillRestUriNextRequestTs :: Maybe Int
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromBlobLastProxiedRestRequest :: Maybe A.Value
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromBlobRestUriLastRequestTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromBlobRestUriLastResponseTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromBlobRestUriNextRequestTs :: Maybe Int
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromCalculatedLastProxiedRestRequest :: Maybe A.Value
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromCalculatedRestUriLastRequestTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromCalculatedRestUriLastResponseTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromCalculatedRestUriNextRequestTs :: Maybe Int
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromFixLastProxiedRestRequest :: Maybe A.Value
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromFixRestUriLastRequestTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromFixRestUriLastResponseTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromFixRestUriNextRequestTs :: Maybe Int
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromGoLastProxiedRestRequest :: Maybe A.Value
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromGoRestUriLastRequestTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromGoRestUriLastResponseTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromGoRestUriNextRequestTs :: Maybe Int
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromPollingLastProxiedRestRequest :: Maybe A.Value
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromPollingRestUriLastRequestTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromPollingRestUriLastResponseTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromPollingRestUriNextRequestTs :: Maybe Int
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromStreamingLastProxiedRestRequest :: Maybe A.Value
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromStreamingRestUriLastRequestTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromStreamingRestUriLastResponseTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotFromStreamingRestUriNextRequestTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotIsReadyForStreamingIntegration :: Maybe Bool
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotRestUri :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotRestUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAInstrumentTradeSpotStreamingSubscription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATALastConcurrentBatchOfTradesSpotMs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATALastSeenOnBlobTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATALastSeenOnFixTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATALastSeenOnHardcodedTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATALastSeenOnIndexCompositionTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATALastSeenOnNsqTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATALastSeenOnPollingTs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATALastSeenOnStreamingTs :: Maybe Int
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATALastTradeSpotFromBackfill :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATALastTradeSpotFromBackfillExternal :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATALastTradeSpotFromBlob :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATALastTradeSpotFromBlobExternal :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATALastTradeSpotFromCalculated :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATALastTradeSpotFromCalculatedExternal :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATALastTradeSpotFromFix :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATALastTradeSpotFromFixExternal :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATALastTradeSpotFromGo :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATALastTradeSpotFromGoExternal :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATALastTradeSpotFromPolling :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATALastTradeSpotFromPollingExternal :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATALastTradeSpotFromStreaming :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATALastTradeSpotFromStreamingExternal :: Maybe A.Value
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAMetadataVersion :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATAProcessingTradesFromBlobStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATATotalTradesSpot :: Maybe Int
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAUnstructuredTradeSpotFromBackfillInternalData :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAUnstructuredTradeSpotFromBlobInternalData :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAUnstructuredTradeSpotFromCalculatedInternalData :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAUnstructuredTradeSpotFromFixInternalData :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAUnstructuredTradeSpotFromGoInternalData :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAUnstructuredTradeSpotFromPollingInternalData :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTMETADATAUnstructuredTradeSpotFromStreamingInternalData :: Maybe A.Value
  
instance Arbitrary SPOTINSTRUMENTMETADATARESPONSE where
  arbitrary = sized genSPOTINSTRUMENTMETADATARESPONSE

genSPOTINSTRUMENTMETADATARESPONSE :: Int -> Gen SPOTINSTRUMENTMETADATARESPONSE
genSPOTINSTRUMENTMETADATARESPONSE n =
  SPOTINSTRUMENTMETADATARESPONSE
    <$> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATARESPONSEData :: Maybe (Map.Map String SPOTINSTRUMENTMETADATA)
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTMETADATARESPONSEErr :: Maybe SPOTINSTRUMENTMARKETDATARESPONSEErr
  
instance Arbitrary SPOTINSTRUMENTTRADE where
  arbitrary = sized genSPOTINSTRUMENTTRADE

genSPOTINSTRUMENTTRADE :: Int -> Gen SPOTINSTRUMENTTRADE
genSPOTINSTRUMENTTRADE n =
  SPOTINSTRUMENTTRADE
    <$> arbitraryReducedMaybe n -- sPOTINSTRUMENTTRADEBase :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTTRADECcseq :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTTRADEId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTTRADEInstrument :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTTRADEMappedInstrument :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTTRADEMarket :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTTRADEPrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTTRADEQuantity :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTTRADEQuote :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTTRADEQuoteQuantity :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTTRADEReceivedTimestamp :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTTRADEReceivedTimestampNs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTTRADESide :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTTRADESource :: Maybe Text
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTTRADETimestamp :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTTRADETimestampNs :: Maybe Int
    <*> arbitraryReducedMaybe n -- sPOTINSTRUMENTTRADEType :: Maybe Text
  
instance Arbitrary SPOTINSTRUMENTTRADERESPONSE where
  arbitrary = sized genSPOTINSTRUMENTTRADERESPONSE

genSPOTINSTRUMENTTRADERESPONSE :: Int -> Gen SPOTINSTRUMENTTRADERESPONSE
genSPOTINSTRUMENTTRADERESPONSE n =
  SPOTINSTRUMENTTRADERESPONSE
    <$> arbitraryReducedMaybe n -- sPOTINSTRUMENTTRADERESPONSEData :: Maybe [SPOTINSTRUMENTTRADE]
    <*> arbitraryReducedMaybeValue n -- sPOTINSTRUMENTTRADERESPONSEErr :: Maybe A.Value
  



instance Arbitrary E'Categories where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'InstrumentStatus where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Lang where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'MappingPriority where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'ResponseFormat where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'SortBy where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'SortDirection where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Status where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Type where
  arbitrary = arbitraryBoundedEnum

