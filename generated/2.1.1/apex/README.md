# CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry API Client


CryptoCompare is the world\'s leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)

If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```

## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
      sfdx force:source:push
   ```

3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

   ```bash
       sfdx sfdx force:apex:test:run
   ```

5. Retrieve the job id from the console and check the test results.

  ```bash
  sfdx force:apex:test:report -i theJobId
  ```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
OASAssetApi api = new OASAssetApi();

Map<String, Object> params = new Map<String, Object>{
    'address' => 'null',
    'chainSymbol' => 'null',
    'groups' => 'null'
};

try {
    // cross your fingers
    OASGENERICRESPONSE result = api.assetV1DataByAddress(params);
    System.debug(result);
} catch (OAS.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *https://data-api.cryptocompare.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OASAssetApi* | [**assetV1DataByAddress**](OASAssetApi.md#assetV1DataByAddress) | **GET** /asset/v1/data/by/address | 
*OASAssetApi* | [**assetV1DataById**](OASAssetApi.md#assetV1DataById) | **GET** /asset/v1/data/by/id | 
*OASAssetApi* | [**assetV1DataBySymbol**](OASAssetApi.md#assetV1DataBySymbol) | **GET** /asset/v1/data/by/symbol | 
*OASAssetApi* | [**assetV1TopList**](OASAssetApi.md#assetV1TopList) | **GET** /asset/v1/top/list | 
*OASFuturesApi* | [**futuresV1HistoricalDays**](OASFuturesApi.md#futuresV1HistoricalDays) | **GET** /futures/v1/historical/days | 
*OASFuturesApi* | [**futuresV1HistoricalFundingRateDays**](OASFuturesApi.md#futuresV1HistoricalFundingRateDays) | **GET** /futures/v1/historical/funding-rate/days | 
*OASFuturesApi* | [**futuresV1HistoricalFundingRateHours**](OASFuturesApi.md#futuresV1HistoricalFundingRateHours) | **GET** /futures/v1/historical/funding-rate/hours | 
*OASFuturesApi* | [**futuresV1HistoricalFundingRateMessages**](OASFuturesApi.md#futuresV1HistoricalFundingRateMessages) | **GET** /futures/v1/historical/funding-rate-messages | 
*OASFuturesApi* | [**futuresV1HistoricalFundingRateMessagesHour**](OASFuturesApi.md#futuresV1HistoricalFundingRateMessagesHour) | **GET** /futures/v1/historical/funding-rate-messages/hour | 
*OASFuturesApi* | [**futuresV1HistoricalFundingRateMinutes**](OASFuturesApi.md#futuresV1HistoricalFundingRateMinutes) | **GET** /futures/v1/historical/funding-rate/minutes | 
*OASFuturesApi* | [**futuresV1HistoricalHours**](OASFuturesApi.md#futuresV1HistoricalHours) | **GET** /futures/v1/historical/hours | 
*OASFuturesApi* | [**futuresV1HistoricalMinutes**](OASFuturesApi.md#futuresV1HistoricalMinutes) | **GET** /futures/v1/historical/minutes | 
*OASFuturesApi* | [**futuresV1HistoricalOpenInterestDays**](OASFuturesApi.md#futuresV1HistoricalOpenInterestDays) | **GET** /futures/v1/historical/open-interest/days | 
*OASFuturesApi* | [**futuresV1HistoricalOpenInterestHours**](OASFuturesApi.md#futuresV1HistoricalOpenInterestHours) | **GET** /futures/v1/historical/open-interest/hours | 
*OASFuturesApi* | [**futuresV1HistoricalOpenInterestMessages**](OASFuturesApi.md#futuresV1HistoricalOpenInterestMessages) | **GET** /futures/v1/historical/open-interest-messages | 
*OASFuturesApi* | [**futuresV1HistoricalOpenInterestMessagesHour**](OASFuturesApi.md#futuresV1HistoricalOpenInterestMessagesHour) | **GET** /futures/v1/historical/open-interest-messages/hour | 
*OASFuturesApi* | [**futuresV1HistoricalOpenInterestMinutes**](OASFuturesApi.md#futuresV1HistoricalOpenInterestMinutes) | **GET** /futures/v1/historical/open-interest/minutes | 
*OASFuturesApi* | [**futuresV1HistoricalTrades**](OASFuturesApi.md#futuresV1HistoricalTrades) | **GET** /futures/v1/historical/trades | 
*OASFuturesApi* | [**futuresV1HistoricalTradesHour**](OASFuturesApi.md#futuresV1HistoricalTradesHour) | **GET** /futures/v1/historical/trades/hour | 
*OASFuturesApi* | [**futuresV1LatestFundingRateTick**](OASFuturesApi.md#futuresV1LatestFundingRateTick) | **GET** /futures/v1/latest/funding-rate/tick | 
*OASFuturesApi* | [**futuresV1LatestInstrumentMetadata**](OASFuturesApi.md#futuresV1LatestInstrumentMetadata) | **GET** /futures/v1/latest/instrument/metadata | 
*OASFuturesApi* | [**futuresV1LatestOpenInterestTick**](OASFuturesApi.md#futuresV1LatestOpenInterestTick) | **GET** /futures/v1/latest/open-interest/tick | 
*OASFuturesApi* | [**futuresV1LatestTick**](OASFuturesApi.md#futuresV1LatestTick) | **GET** /futures/v1/latest/tick | 
*OASFuturesApi* | [**futuresV1Markets**](OASFuturesApi.md#futuresV1Markets) | **GET** /futures/v1/markets | 
*OASFuturesApi* | [**futuresV1MarketsInstruments**](OASFuturesApi.md#futuresV1MarketsInstruments) | **GET** /futures/v1/markets/instruments | 
*OASFuturesApi* | [**futuresV1MarketsInstrumentsUnmapped**](OASFuturesApi.md#futuresV1MarketsInstrumentsUnmapped) | **GET** /futures/v1/markets/instruments/unmapped | 
*OASFuturesApi* | [**indexV1HistoricalDays**](OASFuturesApi.md#indexV1HistoricalDays) | **GET** /index/v1/historical/days | 
*OASFuturesApi* | [**indexV1HistoricalHours**](OASFuturesApi.md#indexV1HistoricalHours) | **GET** /index/v1/historical/hours | 
*OASFuturesApi* | [**indexV1HistoricalMessages**](OASFuturesApi.md#indexV1HistoricalMessages) | **GET** /index/v1/historical/messages | 
*OASFuturesApi* | [**indexV1HistoricalMessagesHour**](OASFuturesApi.md#indexV1HistoricalMessagesHour) | **GET** /index/v1/historical/messages/hour | 
*OASFuturesApi* | [**indexV1HistoricalMinutes**](OASFuturesApi.md#indexV1HistoricalMinutes) | **GET** /index/v1/historical/minutes | 
*OASFuturesApi* | [**indexV1LatestInstrumentMetadata**](OASFuturesApi.md#indexV1LatestInstrumentMetadata) | **GET** /index/v1/latest/instrument/metadata | 
*OASFuturesApi* | [**indexV1LatestTick**](OASFuturesApi.md#indexV1LatestTick) | **GET** /index/v1/latest/tick | 
*OASFuturesApi* | [**indexV1Markets**](OASFuturesApi.md#indexV1Markets) | **GET** /index/v1/markets | 
*OASFuturesApi* | [**indexV1MarketsInstruments**](OASFuturesApi.md#indexV1MarketsInstruments) | **GET** /index/v1/markets/instruments | 
*OASFuturesApi* | [**indexV1MarketsInstrumentsUnmapped**](OASFuturesApi.md#indexV1MarketsInstrumentsUnmapped) | **GET** /index/v1/markets/instruments/unmapped | 
*OASNewsApi* | [**newsV1ArticleList**](OASNewsApi.md#newsV1ArticleList) | **GET** /news/v1/article/list | 
*OASNewsApi* | [**newsV1CategoryList**](OASNewsApi.md#newsV1CategoryList) | **GET** /news/v1/category/list | 
*OASNewsApi* | [**newsV1SourceList**](OASNewsApi.md#newsV1SourceList) | **GET** /news/v1/source/list | 
*OASOverviewApi* | [**overviewV1HistoricalMarketcapAllAssetsDays**](OASOverviewApi.md#overviewV1HistoricalMarketcapAllAssetsDays) | **GET** /overview/v1/historical/marketcap/all/assets/days | 
*OASOverviewApi* | [**overviewV1HistoricalMarketcapAllAssetsHours**](OASOverviewApi.md#overviewV1HistoricalMarketcapAllAssetsHours) | **GET** /overview/v1/historical/marketcap/all/assets/hours | 
*OASOverviewApi* | [**overviewV1HistoricalMarketcapFtwAssetsDays**](OASOverviewApi.md#overviewV1HistoricalMarketcapFtwAssetsDays) | **GET** /overview/v1/historical/marketcap/ftw/assets/days | 
*OASOverviewApi* | [**overviewV1HistoricalMarketcapFtwAssetsHours**](OASOverviewApi.md#overviewV1HistoricalMarketcapFtwAssetsHours) | **GET** /overview/v1/historical/marketcap/ftw/assets/hours | 
*OASOverviewApi* | [**overviewV1LatestMarketcapAllTick**](OASOverviewApi.md#overviewV1LatestMarketcapAllTick) | **GET** /overview/v1/latest/marketcap/all/tick | 
*OASOverviewApi* | [**overviewV1LatestMarketcapFtwTick**](OASOverviewApi.md#overviewV1LatestMarketcapFtwTick) | **GET** /overview/v1/latest/marketcap/ftw/tick | 
*OASReferenceRatesApi* | [**indexCcV1HistoricalDays**](OASReferenceRatesApi.md#indexCcV1HistoricalDays) | **GET** /index/cc/v1/historical/days | 
*OASReferenceRatesApi* | [**indexCcV1HistoricalHours**](OASReferenceRatesApi.md#indexCcV1HistoricalHours) | **GET** /index/cc/v1/historical/hours | 
*OASReferenceRatesApi* | [**indexCcV1HistoricalMessages**](OASReferenceRatesApi.md#indexCcV1HistoricalMessages) | **GET** /index/cc/v1/historical/messages | 
*OASReferenceRatesApi* | [**indexCcV1HistoricalMessagesHour**](OASReferenceRatesApi.md#indexCcV1HistoricalMessagesHour) | **GET** /index/cc/v1/historical/messages/hour | 
*OASReferenceRatesApi* | [**indexCcV1HistoricalMinutes**](OASReferenceRatesApi.md#indexCcV1HistoricalMinutes) | **GET** /index/cc/v1/historical/minutes | 
*OASReferenceRatesApi* | [**indexCcV1LatestInstrumentMetadata**](OASReferenceRatesApi.md#indexCcV1LatestInstrumentMetadata) | **GET** /index/cc/v1/latest/instrument/metadata | 
*OASReferenceRatesApi* | [**indexCcV1LatestTick**](OASReferenceRatesApi.md#indexCcV1LatestTick) | **GET** /index/cc/v1/latest/tick | 
*OASReferenceRatesApi* | [**indexCcV1Markets**](OASReferenceRatesApi.md#indexCcV1Markets) | **GET** /index/cc/v1/markets | 
*OASReferenceRatesApi* | [**indexCcV1MarketsInstruments**](OASReferenceRatesApi.md#indexCcV1MarketsInstruments) | **GET** /index/cc/v1/markets/instruments | 
*OASReferenceRatesApi* | [**indexCcV1MarketsInstrumentsUnmapped**](OASReferenceRatesApi.md#indexCcV1MarketsInstrumentsUnmapped) | **GET** /index/cc/v1/markets/instruments/unmapped | 
*OASSpotApi* | [**spotV1HistoricalDays**](OASSpotApi.md#spotV1HistoricalDays) | **GET** /spot/v1/historical/days | 
*OASSpotApi* | [**spotV1HistoricalHours**](OASSpotApi.md#spotV1HistoricalHours) | **GET** /spot/v1/historical/hours | 
*OASSpotApi* | [**spotV1HistoricalMinutes**](OASSpotApi.md#spotV1HistoricalMinutes) | **GET** /spot/v1/historical/minutes | 
*OASSpotApi* | [**spotV1HistoricalOrderbookL2SnapshotMinute**](OASSpotApi.md#spotV1HistoricalOrderbookL2SnapshotMinute) | **GET** /spot/v1/historical/orderbook/l2/snapshot/minute | 
*OASSpotApi* | [**spotV1HistoricalTrades**](OASSpotApi.md#spotV1HistoricalTrades) | **GET** /spot/v1/historical/trades | 
*OASSpotApi* | [**spotV1HistoricalTradesHour**](OASSpotApi.md#spotV1HistoricalTradesHour) | **GET** /spot/v1/historical/trades/hour | 
*OASSpotApi* | [**spotV1LatestInstrumentMetadata**](OASSpotApi.md#spotV1LatestInstrumentMetadata) | **GET** /spot/v1/latest/instrument/metadata | 
*OASSpotApi* | [**spotV1LatestTick**](OASSpotApi.md#spotV1LatestTick) | **GET** /spot/v1/latest/tick | 
*OASSpotApi* | [**spotV1Markets**](OASSpotApi.md#spotV1Markets) | **GET** /spot/v1/markets | 
*OASSpotApi* | [**spotV1MarketsInstruments**](OASSpotApi.md#spotV1MarketsInstruments) | **GET** /spot/v1/markets/instruments | 
*OASSpotApi* | [**spotV1MarketsInstrumentsUnmapped**](OASSpotApi.md#spotV1MarketsInstrumentsUnmapped) | **GET** /spot/v1/markets/instruments/unmapped | 


## Documentation for Models

 - [OASError](OASError.md)
 - [OASErrorErr](OASErrorErr.md)
 - [OASErrorErrOtherInfo](OASErrorErrOtherInfo.md)
 - [OASGENERICRESPONSE](OASGENERICRESPONSE.md)
 - [OASGENERICRESPONSEData](OASGENERICRESPONSEData.md)
 - [OASSPOTINSTRUMENTHISTODATA](OASSPOTINSTRUMENTHISTODATA.md)
 - [OASSPOTINSTRUMENTHISTODATARESPONSE](OASSPOTINSTRUMENTHISTODATARESPONSE.md)
 - [OASSPOTINSTRUMENTMARKETDATA](OASSPOTINSTRUMENTMARKETDATA.md)
 - [OASSPOTINSTRUMENTMARKETDATARESPONSE](OASSPOTINSTRUMENTMARKETDATARESPONSE.md)
 - [OASSPOTINSTRUMENTMARKETDATARESPONSEE](OASSPOTINSTRUMENTMARKETDATARESPONSEE.md)
 - [OASSPOTINSTRUMENTMETADATA](OASSPOTINSTRUMENTMETADATA.md)
 - [OASSPOTINSTRUMENTMETADATARESPONSE](OASSPOTINSTRUMENTMETADATARESPONSE.md)
 - [OASSPOTINSTRUMENTTRADE](OASSPOTINSTRUMENTTRADE.md)
 - [OASSPOTINSTRUMENTTRADERESPONSE](OASSPOTINSTRUMENTTRADERESPONSE.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### api_key_header


- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

### api_key_query


- **Type**: API key
- **API key parameter name**: api_key
- **Location**: URL query string


## Author

data@cryptocompare.com

