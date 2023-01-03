# Documentation for CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry 2.1.1 Tizen Client SDK

## How do I get the doc files?
First generate source code by running `openapi-generator`
Then run `doc/generateDocumentation.sh` from the output folder. It will generate all the doc files and put them in the `doc/SDK` directory.
To successfully generate documentation it needs `Doxygen` installed in the path.
*Note* - Before generating the documentation, put the logo of the project as the file `doc/logo.png` before running `doxygen`.


## How do I use this?
This is the structure of the doc folder:

```
.
├── logo.png                  \\Logo of the project
├── Doxyfile                  \\Doxygen config files
├── generateDocumentation.sh  \\Script to run to generate documentation
├── README.md                 \\This file
├── SDK                       \\Documentation for all classes in CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry Tizen Client SDK. See ./html/index.html
│   └── html

```

## *tl;dr* run this:

```
doc/generateDocumentation.sh
```

The above SDK folder will be generated. See the index.html inside the SDK folder.


## What's Doxygen?
Doxygen is the de facto standard tool for generating/extracting documentation from annotated/unannotated C++ sources, but it also supports other popular programming languages such as C, Objective-C, C#, PHP, Java, Python, IDL (Corba, Microsoft, and UNO/OpenOffice flavors), Fortran, VHDL, Tcl, and to some extent D.

Check out [Doxygen](https://www.doxygen.org/) for additional information about the Doxygen project.

## I Don't want to run Doxygen. What are the API files for accessing the REST endpoints?
All URIs are relative to https://data-api.cryptocompare.comhttps://data-api.cryptocompare.com


### AssetManager
Method | HTTP request | Description
------------- | ------------- | -------------
*assetV1DataByAddressSync* | *GET* /asset/v1/data/by/address | .
*assetV1DataByAddressASync* | *GET* /asset/v1/data/by/address | .
*assetV1DataByIdSync* | *GET* /asset/v1/data/by/id | .
*assetV1DataByIdASync* | *GET* /asset/v1/data/by/id | .
*assetV1DataBySymbolSync* | *GET* /asset/v1/data/by/symbol | .
*assetV1DataBySymbolASync* | *GET* /asset/v1/data/by/symbol | .
*assetV1TopListSync* | *GET* /asset/v1/top/list | .
*assetV1TopListASync* | *GET* /asset/v1/top/list | .


### FuturesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*futuresV1HistoricalDaysSync* | *GET* /futures/v1/historical/days | .
*futuresV1HistoricalDaysASync* | *GET* /futures/v1/historical/days | .
*futuresV1HistoricalFundingRateDaysSync* | *GET* /futures/v1/historical/funding-rate/days | .
*futuresV1HistoricalFundingRateDaysASync* | *GET* /futures/v1/historical/funding-rate/days | .
*futuresV1HistoricalFundingRateHoursSync* | *GET* /futures/v1/historical/funding-rate/hours | .
*futuresV1HistoricalFundingRateHoursASync* | *GET* /futures/v1/historical/funding-rate/hours | .
*futuresV1HistoricalFundingRateMessagesSync* | *GET* /futures/v1/historical/funding-rate-messages | .
*futuresV1HistoricalFundingRateMessagesASync* | *GET* /futures/v1/historical/funding-rate-messages | .
*futuresV1HistoricalFundingRateMessagesHourSync* | *GET* /futures/v1/historical/funding-rate-messages/hour | .
*futuresV1HistoricalFundingRateMessagesHourASync* | *GET* /futures/v1/historical/funding-rate-messages/hour | .
*futuresV1HistoricalFundingRateMinutesSync* | *GET* /futures/v1/historical/funding-rate/minutes | .
*futuresV1HistoricalFundingRateMinutesASync* | *GET* /futures/v1/historical/funding-rate/minutes | .
*futuresV1HistoricalHoursSync* | *GET* /futures/v1/historical/hours | .
*futuresV1HistoricalHoursASync* | *GET* /futures/v1/historical/hours | .
*futuresV1HistoricalMinutesSync* | *GET* /futures/v1/historical/minutes | .
*futuresV1HistoricalMinutesASync* | *GET* /futures/v1/historical/minutes | .
*futuresV1HistoricalOpenInterestDaysSync* | *GET* /futures/v1/historical/open-interest/days | .
*futuresV1HistoricalOpenInterestDaysASync* | *GET* /futures/v1/historical/open-interest/days | .
*futuresV1HistoricalOpenInterestHoursSync* | *GET* /futures/v1/historical/open-interest/hours | .
*futuresV1HistoricalOpenInterestHoursASync* | *GET* /futures/v1/historical/open-interest/hours | .
*futuresV1HistoricalOpenInterestMessagesSync* | *GET* /futures/v1/historical/open-interest-messages | .
*futuresV1HistoricalOpenInterestMessagesASync* | *GET* /futures/v1/historical/open-interest-messages | .
*futuresV1HistoricalOpenInterestMessagesHourSync* | *GET* /futures/v1/historical/open-interest-messages/hour | .
*futuresV1HistoricalOpenInterestMessagesHourASync* | *GET* /futures/v1/historical/open-interest-messages/hour | .
*futuresV1HistoricalOpenInterestMinutesSync* | *GET* /futures/v1/historical/open-interest/minutes | .
*futuresV1HistoricalOpenInterestMinutesASync* | *GET* /futures/v1/historical/open-interest/minutes | .
*futuresV1HistoricalTradesSync* | *GET* /futures/v1/historical/trades | .
*futuresV1HistoricalTradesASync* | *GET* /futures/v1/historical/trades | .
*futuresV1HistoricalTradesHourSync* | *GET* /futures/v1/historical/trades/hour | .
*futuresV1HistoricalTradesHourASync* | *GET* /futures/v1/historical/trades/hour | .
*futuresV1LatestFundingRateTickSync* | *GET* /futures/v1/latest/funding-rate/tick | .
*futuresV1LatestFundingRateTickASync* | *GET* /futures/v1/latest/funding-rate/tick | .
*futuresV1LatestInstrumentMetadataSync* | *GET* /futures/v1/latest/instrument/metadata | .
*futuresV1LatestInstrumentMetadataASync* | *GET* /futures/v1/latest/instrument/metadata | .
*futuresV1LatestOpenInterestTickSync* | *GET* /futures/v1/latest/open-interest/tick | .
*futuresV1LatestOpenInterestTickASync* | *GET* /futures/v1/latest/open-interest/tick | .
*futuresV1LatestTickSync* | *GET* /futures/v1/latest/tick | .
*futuresV1LatestTickASync* | *GET* /futures/v1/latest/tick | .
*futuresV1MarketsSync* | *GET* /futures/v1/markets | .
*futuresV1MarketsASync* | *GET* /futures/v1/markets | .
*futuresV1MarketsInstrumentsSync* | *GET* /futures/v1/markets/instruments | .
*futuresV1MarketsInstrumentsASync* | *GET* /futures/v1/markets/instruments | .
*futuresV1MarketsInstrumentsUnmappedSync* | *GET* /futures/v1/markets/instruments/unmapped | .
*futuresV1MarketsInstrumentsUnmappedASync* | *GET* /futures/v1/markets/instruments/unmapped | .
*indexV1HistoricalDaysSync* | *GET* /index/v1/historical/days | .
*indexV1HistoricalDaysASync* | *GET* /index/v1/historical/days | .
*indexV1HistoricalHoursSync* | *GET* /index/v1/historical/hours | .
*indexV1HistoricalHoursASync* | *GET* /index/v1/historical/hours | .
*indexV1HistoricalMessagesSync* | *GET* /index/v1/historical/messages | .
*indexV1HistoricalMessagesASync* | *GET* /index/v1/historical/messages | .
*indexV1HistoricalMessagesHourSync* | *GET* /index/v1/historical/messages/hour | .
*indexV1HistoricalMessagesHourASync* | *GET* /index/v1/historical/messages/hour | .
*indexV1HistoricalMinutesSync* | *GET* /index/v1/historical/minutes | .
*indexV1HistoricalMinutesASync* | *GET* /index/v1/historical/minutes | .
*indexV1LatestInstrumentMetadataSync* | *GET* /index/v1/latest/instrument/metadata | .
*indexV1LatestInstrumentMetadataASync* | *GET* /index/v1/latest/instrument/metadata | .
*indexV1LatestTickSync* | *GET* /index/v1/latest/tick | .
*indexV1LatestTickASync* | *GET* /index/v1/latest/tick | .
*indexV1MarketsSync* | *GET* /index/v1/markets | .
*indexV1MarketsASync* | *GET* /index/v1/markets | .
*indexV1MarketsInstrumentsSync* | *GET* /index/v1/markets/instruments | .
*indexV1MarketsInstrumentsASync* | *GET* /index/v1/markets/instruments | .
*indexV1MarketsInstrumentsUnmappedSync* | *GET* /index/v1/markets/instruments/unmapped | .
*indexV1MarketsInstrumentsUnmappedASync* | *GET* /index/v1/markets/instruments/unmapped | .


### NewsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*newsV1ArticleListSync* | *GET* /news/v1/article/list | .
*newsV1ArticleListASync* | *GET* /news/v1/article/list | .
*newsV1CategoryListSync* | *GET* /news/v1/category/list | .
*newsV1CategoryListASync* | *GET* /news/v1/category/list | .
*newsV1SourceListSync* | *GET* /news/v1/source/list | .
*newsV1SourceListASync* | *GET* /news/v1/source/list | .


### OverviewManager
Method | HTTP request | Description
------------- | ------------- | -------------
*overviewV1HistoricalMarketcapAllAssetsDaysSync* | *GET* /overview/v1/historical/marketcap/all/assets/days | .
*overviewV1HistoricalMarketcapAllAssetsDaysASync* | *GET* /overview/v1/historical/marketcap/all/assets/days | .
*overviewV1HistoricalMarketcapAllAssetsHoursSync* | *GET* /overview/v1/historical/marketcap/all/assets/hours | .
*overviewV1HistoricalMarketcapAllAssetsHoursASync* | *GET* /overview/v1/historical/marketcap/all/assets/hours | .
*overviewV1HistoricalMarketcapFtwAssetsDaysSync* | *GET* /overview/v1/historical/marketcap/ftw/assets/days | .
*overviewV1HistoricalMarketcapFtwAssetsDaysASync* | *GET* /overview/v1/historical/marketcap/ftw/assets/days | .
*overviewV1HistoricalMarketcapFtwAssetsHoursSync* | *GET* /overview/v1/historical/marketcap/ftw/assets/hours | .
*overviewV1HistoricalMarketcapFtwAssetsHoursASync* | *GET* /overview/v1/historical/marketcap/ftw/assets/hours | .
*overviewV1LatestMarketcapAllTickSync* | *GET* /overview/v1/latest/marketcap/all/tick | .
*overviewV1LatestMarketcapAllTickASync* | *GET* /overview/v1/latest/marketcap/all/tick | .
*overviewV1LatestMarketcapFtwTickSync* | *GET* /overview/v1/latest/marketcap/ftw/tick | .
*overviewV1LatestMarketcapFtwTickASync* | *GET* /overview/v1/latest/marketcap/ftw/tick | .


### ReferenceRatesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*indexCcV1HistoricalDaysSync* | *GET* /index/cc/v1/historical/days | .
*indexCcV1HistoricalDaysASync* | *GET* /index/cc/v1/historical/days | .
*indexCcV1HistoricalHoursSync* | *GET* /index/cc/v1/historical/hours | .
*indexCcV1HistoricalHoursASync* | *GET* /index/cc/v1/historical/hours | .
*indexCcV1HistoricalMessagesSync* | *GET* /index/cc/v1/historical/messages | .
*indexCcV1HistoricalMessagesASync* | *GET* /index/cc/v1/historical/messages | .
*indexCcV1HistoricalMessagesHourSync* | *GET* /index/cc/v1/historical/messages/hour | .
*indexCcV1HistoricalMessagesHourASync* | *GET* /index/cc/v1/historical/messages/hour | .
*indexCcV1HistoricalMinutesSync* | *GET* /index/cc/v1/historical/minutes | .
*indexCcV1HistoricalMinutesASync* | *GET* /index/cc/v1/historical/minutes | .
*indexCcV1LatestInstrumentMetadataSync* | *GET* /index/cc/v1/latest/instrument/metadata | .
*indexCcV1LatestInstrumentMetadataASync* | *GET* /index/cc/v1/latest/instrument/metadata | .
*indexCcV1LatestTickSync* | *GET* /index/cc/v1/latest/tick | .
*indexCcV1LatestTickASync* | *GET* /index/cc/v1/latest/tick | .
*indexCcV1MarketsSync* | *GET* /index/cc/v1/markets | .
*indexCcV1MarketsASync* | *GET* /index/cc/v1/markets | .
*indexCcV1MarketsInstrumentsSync* | *GET* /index/cc/v1/markets/instruments | .
*indexCcV1MarketsInstrumentsASync* | *GET* /index/cc/v1/markets/instruments | .
*indexCcV1MarketsInstrumentsUnmappedSync* | *GET* /index/cc/v1/markets/instruments/unmapped | .
*indexCcV1MarketsInstrumentsUnmappedASync* | *GET* /index/cc/v1/markets/instruments/unmapped | .


### SpotManager
Method | HTTP request | Description
------------- | ------------- | -------------
*spotV1HistoricalDaysSync* | *GET* /spot/v1/historical/days | .
*spotV1HistoricalDaysASync* | *GET* /spot/v1/historical/days | .
*spotV1HistoricalHoursSync* | *GET* /spot/v1/historical/hours | .
*spotV1HistoricalHoursASync* | *GET* /spot/v1/historical/hours | .
*spotV1HistoricalMinutesSync* | *GET* /spot/v1/historical/minutes | .
*spotV1HistoricalMinutesASync* | *GET* /spot/v1/historical/minutes | .
*spotV1HistoricalOrderbookL2SnapshotMinuteSync* | *GET* /spot/v1/historical/orderbook/l2/snapshot/minute | .
*spotV1HistoricalOrderbookL2SnapshotMinuteASync* | *GET* /spot/v1/historical/orderbook/l2/snapshot/minute | .
*spotV1HistoricalTradesSync* | *GET* /spot/v1/historical/trades | .
*spotV1HistoricalTradesASync* | *GET* /spot/v1/historical/trades | .
*spotV1HistoricalTradesHourSync* | *GET* /spot/v1/historical/trades/hour | .
*spotV1HistoricalTradesHourASync* | *GET* /spot/v1/historical/trades/hour | .
*spotV1LatestInstrumentMetadataSync* | *GET* /spot/v1/latest/instrument/metadata | .
*spotV1LatestInstrumentMetadataASync* | *GET* /spot/v1/latest/instrument/metadata | .
*spotV1LatestTickSync* | *GET* /spot/v1/latest/tick | .
*spotV1LatestTickASync* | *GET* /spot/v1/latest/tick | .
*spotV1MarketsSync* | *GET* /spot/v1/markets | .
*spotV1MarketsASync* | *GET* /spot/v1/markets | .
*spotV1MarketsInstrumentsSync* | *GET* /spot/v1/markets/instruments | .
*spotV1MarketsInstrumentsASync* | *GET* /spot/v1/markets/instruments | .
*spotV1MarketsInstrumentsUnmappedSync* | *GET* /spot/v1/markets/instruments/unmapped | .
*spotV1MarketsInstrumentsUnmappedASync* | *GET* /spot/v1/markets/instruments/unmapped | .


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *Error* | 
 *Error_Err* | 
 *Error_Err_other_info* | 
 *GENERIC_RESPONSE* | 
 *GENERIC_RESPONSE_Data* | 
 *SPOT_INSTRUMENT_HISTO_DATA* | 
 *SPOT_INSTRUMENT_HISTO_DATA_RESPONSE* | 
 *SPOT_INSTRUMENT_MARKET_DATA* | 
 *SPOT_INSTRUMENT_MARKET_DATA_RESPONSE* | 
 *SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err* | 
 *SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info* | 
 *SPOT_INSTRUMENT_METADATA* | 
 *SPOT_INSTRUMENT_METADATA_RESPONSE* | 
 *SPOT_INSTRUMENT_TRADE* | 
 *SPOT_INSTRUMENT_TRADE_RESPONSE* | 

