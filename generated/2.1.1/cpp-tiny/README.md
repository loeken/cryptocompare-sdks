# Documentation for OpenAPI Petstore
This is a client generator for microcontrollers on the Espressif32 platform and the Arduino framework
After the client have been generated, you have to change these following variables:
- root.cert | Provide your service root certificate.
- src/main.cpp | Change wifi name
- src/main.cpp | Change wifi password
- lib/service/AbstractService.h | Change to your url

# Documentation for CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry 2.1.1 Tiny client cpp (Arduino) 

The project is structured like this:
```
samples/client/petstore/tiny/cpp/
├── lib
│   ├── Models
│   ├── service
│   └── TestFiles
├── platformio.ini
├── pre_compiling_bourne.py
├── README.md
├── root.cert
├── src
│   └── main.cpp
└── test
    └── RunTests.cpp
```

All URIs are relative to https://data-api.cryptocompare.comhttps://data-api.cryptocompare.com

### AssetApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*assetV1DataByAddress* | *GET* /asset/v1/data/by/address | .|
|*assetV1DataById* | *GET* /asset/v1/data/by/id | .|
|*assetV1DataBySymbol* | *GET* /asset/v1/data/by/symbol | .|
|*assetV1TopList* | *GET* /asset/v1/top/list | .|

### FuturesApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*futuresV1HistoricalDays* | *GET* /futures/v1/historical/days | .|
|*futuresV1HistoricalFundingRateDays* | *GET* /futures/v1/historical/funding-rate/days | .|
|*futuresV1HistoricalFundingRateHours* | *GET* /futures/v1/historical/funding-rate/hours | .|
|*futuresV1HistoricalFundingRateMessages* | *GET* /futures/v1/historical/funding-rate-messages | .|
|*futuresV1HistoricalFundingRateMessagesHour* | *GET* /futures/v1/historical/funding-rate-messages/hour | .|
|*futuresV1HistoricalFundingRateMinutes* | *GET* /futures/v1/historical/funding-rate/minutes | .|
|*futuresV1HistoricalHours* | *GET* /futures/v1/historical/hours | .|
|*futuresV1HistoricalMinutes* | *GET* /futures/v1/historical/minutes | .|
|*futuresV1HistoricalOpenInterestDays* | *GET* /futures/v1/historical/open-interest/days | .|
|*futuresV1HistoricalOpenInterestHours* | *GET* /futures/v1/historical/open-interest/hours | .|
|*futuresV1HistoricalOpenInterestMessages* | *GET* /futures/v1/historical/open-interest-messages | .|
|*futuresV1HistoricalOpenInterestMessagesHour* | *GET* /futures/v1/historical/open-interest-messages/hour | .|
|*futuresV1HistoricalOpenInterestMinutes* | *GET* /futures/v1/historical/open-interest/minutes | .|
|*futuresV1HistoricalTrades* | *GET* /futures/v1/historical/trades | .|
|*futuresV1HistoricalTradesHour* | *GET* /futures/v1/historical/trades/hour | .|
|*futuresV1LatestFundingRateTick* | *GET* /futures/v1/latest/funding-rate/tick | .|
|*futuresV1LatestInstrumentMetadata* | *GET* /futures/v1/latest/instrument/metadata | .|
|*futuresV1LatestOpenInterestTick* | *GET* /futures/v1/latest/open-interest/tick | .|
|*futuresV1LatestTick* | *GET* /futures/v1/latest/tick | .|
|*futuresV1Markets* | *GET* /futures/v1/markets | .|
|*futuresV1MarketsInstruments* | *GET* /futures/v1/markets/instruments | .|
|*futuresV1MarketsInstrumentsUnmapped* | *GET* /futures/v1/markets/instruments/unmapped | .|
|*indexV1HistoricalDays* | *GET* /index/v1/historical/days | .|
|*indexV1HistoricalHours* | *GET* /index/v1/historical/hours | .|
|*indexV1HistoricalMessages* | *GET* /index/v1/historical/messages | .|
|*indexV1HistoricalMessagesHour* | *GET* /index/v1/historical/messages/hour | .|
|*indexV1HistoricalMinutes* | *GET* /index/v1/historical/minutes | .|
|*indexV1LatestInstrumentMetadata* | *GET* /index/v1/latest/instrument/metadata | .|
|*indexV1LatestTick* | *GET* /index/v1/latest/tick | .|
|*indexV1Markets* | *GET* /index/v1/markets | .|
|*indexV1MarketsInstruments* | *GET* /index/v1/markets/instruments | .|
|*indexV1MarketsInstrumentsUnmapped* | *GET* /index/v1/markets/instruments/unmapped | .|

### NewsApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*newsV1ArticleList* | *GET* /news/v1/article/list | .|
|*newsV1CategoryList* | *GET* /news/v1/category/list | .|
|*newsV1SourceList* | *GET* /news/v1/source/list | .|

### OverviewApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*overviewV1HistoricalMarketcapAllAssetsDays* | *GET* /overview/v1/historical/marketcap/all/assets/days | .|
|*overviewV1HistoricalMarketcapAllAssetsHours* | *GET* /overview/v1/historical/marketcap/all/assets/hours | .|
|*overviewV1HistoricalMarketcapFtwAssetsDays* | *GET* /overview/v1/historical/marketcap/ftw/assets/days | .|
|*overviewV1HistoricalMarketcapFtwAssetsHours* | *GET* /overview/v1/historical/marketcap/ftw/assets/hours | .|
|*overviewV1LatestMarketcapAllTick* | *GET* /overview/v1/latest/marketcap/all/tick | .|
|*overviewV1LatestMarketcapFtwTick* | *GET* /overview/v1/latest/marketcap/ftw/tick | .|

### ReferenceRatesApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*indexCcV1HistoricalDays* | *GET* /index/cc/v1/historical/days | .|
|*indexCcV1HistoricalHours* | *GET* /index/cc/v1/historical/hours | .|
|*indexCcV1HistoricalMessages* | *GET* /index/cc/v1/historical/messages | .|
|*indexCcV1HistoricalMessagesHour* | *GET* /index/cc/v1/historical/messages/hour | .|
|*indexCcV1HistoricalMinutes* | *GET* /index/cc/v1/historical/minutes | .|
|*indexCcV1LatestInstrumentMetadata* | *GET* /index/cc/v1/latest/instrument/metadata | .|
|*indexCcV1LatestTick* | *GET* /index/cc/v1/latest/tick | .|
|*indexCcV1Markets* | *GET* /index/cc/v1/markets | .|
|*indexCcV1MarketsInstruments* | *GET* /index/cc/v1/markets/instruments | .|
|*indexCcV1MarketsInstrumentsUnmapped* | *GET* /index/cc/v1/markets/instruments/unmapped | .|

### SpotApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*spotV1HistoricalDays* | *GET* /spot/v1/historical/days | .|
|*spotV1HistoricalHours* | *GET* /spot/v1/historical/hours | .|
|*spotV1HistoricalMinutes* | *GET* /spot/v1/historical/minutes | .|
|*spotV1HistoricalOrderbookL2SnapshotMinute* | *GET* /spot/v1/historical/orderbook/l2/snapshot/minute | .|
|*spotV1HistoricalTrades* | *GET* /spot/v1/historical/trades | .|
|*spotV1HistoricalTradesHour* | *GET* /spot/v1/historical/trades/hour | .|
|*spotV1LatestInstrumentMetadata* | *GET* /spot/v1/latest/instrument/metadata | .|
|*spotV1LatestTick* | *GET* /spot/v1/latest/tick | .|
|*spotV1Markets* | *GET* /spot/v1/markets | .|
|*spotV1MarketsInstruments* | *GET* /spot/v1/markets/instruments | .|
|*spotV1MarketsInstrumentsUnmapped* | *GET* /spot/v1/markets/instruments/unmapped | .|


## What are the Model files for the data structures/objects?
|Class | Description|
|------------- | -------------|
|*Error* | |
|*Error_Err* | |
|*Error_Err_other_info* | |
|*GENERIC_RESPONSE* | |
|*GENERIC_RESPONSE_Data* | |
|*SPOT_INSTRUMENT_HISTO_DATA* | |
|*SPOT_INSTRUMENT_HISTO_DATA_RESPONSE* | |
|*SPOT_INSTRUMENT_MARKET_DATA* | |
|*SPOT_INSTRUMENT_MARKET_DATA_RESPONSE* | |
|*SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err* | |
|*SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info* | |
|*SPOT_INSTRUMENT_METADATA* | |
|*SPOT_INSTRUMENT_METADATA_RESPONSE* | |
|*SPOT_INSTRUMENT_TRADE* | |
|*SPOT_INSTRUMENT_TRADE_RESPONSE* | |

