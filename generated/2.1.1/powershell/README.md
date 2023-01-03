# PSOpenAPITools - the PowerShell module for the CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry

CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.

This PowerShell module is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.1.1
- SDK version: 0.1.2
- Build package: org.openapitools.codegen.languages.PowerShellClientCodegen
    For more information, please visit [https://cryptocompare.zendesk.com/hc/en-gb/requests/new](https://cryptocompare.zendesk.com/hc/en-gb/requests/new)

<a name="frameworks-supported"></a>
## Frameworks supported
- PowerShell 6.2 or later

<a name="dependencies"></a>
## Dependencies

<a name="installation"></a>
## Installation


To install from the source, run the following command to build and install the PowerShell module locally:
```powershell
Build.ps1
Import-Module -Name '.\src\PSOpenAPITools' -Verbose
```

To avoid function name collision, one can use `-Prefix`, e.g. `Import-Module -Name '.\src\PSOpenAPITools' -Prefix prefix`

To uninstall the module, simply run:
```powershell
Remove-Module -FullyQualifiedName @{ModuleName = "PSOpenAPITools"; ModuleVersion = "0.1.2"}
```

<a name="tests"></a>
## Tests

To install and run `Pester`, please execute the following commands in the terminal:

```powershell
Install-module -name Pester -force

Invoke-Pester
```

For troubleshooting, please run `$DebugPreference = 'Continue'` to turn on debugging and disable it with `$DebugPreference = 'SilentlyContinue'` when done with the troubleshooting.

## Documentation for API Endpoints

All URIs are relative to *https://data-api.cryptocompare.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AssetApi* | [**Invoke-AssetV1DataByAddress**](docs/AssetApi.md#Invoke-AssetV1DataByAddress) | **GET** /asset/v1/data/by/address | 
*AssetApi* | [**Invoke-AssetV1DataById**](docs/AssetApi.md#Invoke-AssetV1DataById) | **GET** /asset/v1/data/by/id | 
*AssetApi* | [**Invoke-AssetV1DataBySymbol**](docs/AssetApi.md#Invoke-AssetV1DataBySymbol) | **GET** /asset/v1/data/by/symbol | 
*AssetApi* | [**Invoke-AssetV1TopList**](docs/AssetApi.md#Invoke-AssetV1TopList) | **GET** /asset/v1/top/list | 
*FuturesApi* | [**Invoke-FuturesV1HistoricalDays**](docs/FuturesApi.md#Invoke-FuturesV1HistoricalDays) | **GET** /futures/v1/historical/days | 
*FuturesApi* | [**Invoke-FuturesV1HistoricalFundingRateDays**](docs/FuturesApi.md#Invoke-FuturesV1HistoricalFundingRateDays) | **GET** /futures/v1/historical/funding-rate/days | 
*FuturesApi* | [**Invoke-FuturesV1HistoricalFundingRateHours**](docs/FuturesApi.md#Invoke-FuturesV1HistoricalFundingRateHours) | **GET** /futures/v1/historical/funding-rate/hours | 
*FuturesApi* | [**Invoke-FuturesV1HistoricalFundingRateMessages**](docs/FuturesApi.md#Invoke-FuturesV1HistoricalFundingRateMessages) | **GET** /futures/v1/historical/funding-rate-messages | 
*FuturesApi* | [**Invoke-FuturesV1HistoricalFundingRateMessagesHour**](docs/FuturesApi.md#Invoke-FuturesV1HistoricalFundingRateMessagesHour) | **GET** /futures/v1/historical/funding-rate-messages/hour | 
*FuturesApi* | [**Invoke-FuturesV1HistoricalFundingRateMinutes**](docs/FuturesApi.md#Invoke-FuturesV1HistoricalFundingRateMinutes) | **GET** /futures/v1/historical/funding-rate/minutes | 
*FuturesApi* | [**Invoke-FuturesV1HistoricalHours**](docs/FuturesApi.md#Invoke-FuturesV1HistoricalHours) | **GET** /futures/v1/historical/hours | 
*FuturesApi* | [**Invoke-FuturesV1HistoricalMinutes**](docs/FuturesApi.md#Invoke-FuturesV1HistoricalMinutes) | **GET** /futures/v1/historical/minutes | 
*FuturesApi* | [**Invoke-FuturesV1HistoricalOpenInterestDays**](docs/FuturesApi.md#Invoke-FuturesV1HistoricalOpenInterestDays) | **GET** /futures/v1/historical/open-interest/days | 
*FuturesApi* | [**Invoke-FuturesV1HistoricalOpenInterestHours**](docs/FuturesApi.md#Invoke-FuturesV1HistoricalOpenInterestHours) | **GET** /futures/v1/historical/open-interest/hours | 
*FuturesApi* | [**Invoke-FuturesV1HistoricalOpenInterestMessages**](docs/FuturesApi.md#Invoke-FuturesV1HistoricalOpenInterestMessages) | **GET** /futures/v1/historical/open-interest-messages | 
*FuturesApi* | [**Invoke-FuturesV1HistoricalOpenInterestMessagesHour**](docs/FuturesApi.md#Invoke-FuturesV1HistoricalOpenInterestMessagesHour) | **GET** /futures/v1/historical/open-interest-messages/hour | 
*FuturesApi* | [**Invoke-FuturesV1HistoricalOpenInterestMinutes**](docs/FuturesApi.md#Invoke-FuturesV1HistoricalOpenInterestMinutes) | **GET** /futures/v1/historical/open-interest/minutes | 
*FuturesApi* | [**Invoke-FuturesV1HistoricalTrades**](docs/FuturesApi.md#Invoke-FuturesV1HistoricalTrades) | **GET** /futures/v1/historical/trades | 
*FuturesApi* | [**Invoke-FuturesV1HistoricalTradesHour**](docs/FuturesApi.md#Invoke-FuturesV1HistoricalTradesHour) | **GET** /futures/v1/historical/trades/hour | 
*FuturesApi* | [**Invoke-FuturesV1LatestFundingRateTick**](docs/FuturesApi.md#Invoke-FuturesV1LatestFundingRateTick) | **GET** /futures/v1/latest/funding-rate/tick | 
*FuturesApi* | [**Invoke-FuturesV1LatestInstrumentMetadata**](docs/FuturesApi.md#Invoke-FuturesV1LatestInstrumentMetadata) | **GET** /futures/v1/latest/instrument/metadata | 
*FuturesApi* | [**Invoke-FuturesV1LatestOpenInterestTick**](docs/FuturesApi.md#Invoke-FuturesV1LatestOpenInterestTick) | **GET** /futures/v1/latest/open-interest/tick | 
*FuturesApi* | [**Invoke-FuturesV1LatestTick**](docs/FuturesApi.md#Invoke-FuturesV1LatestTick) | **GET** /futures/v1/latest/tick | 
*FuturesApi* | [**Invoke-FuturesV1Markets**](docs/FuturesApi.md#Invoke-FuturesV1Markets) | **GET** /futures/v1/markets | 
*FuturesApi* | [**Invoke-FuturesV1MarketsInstruments**](docs/FuturesApi.md#Invoke-FuturesV1MarketsInstruments) | **GET** /futures/v1/markets/instruments | 
*FuturesApi* | [**Invoke-FuturesV1MarketsInstrumentsUnmapped**](docs/FuturesApi.md#Invoke-FuturesV1MarketsInstrumentsUnmapped) | **GET** /futures/v1/markets/instruments/unmapped | 
*FuturesApi* | [**ConvertTo-dexV1HistoricalDays**](docs/FuturesApi.md#ConvertTo-dexV1HistoricalDays) | **GET** /index/v1/historical/days | 
*FuturesApi* | [**ConvertTo-dexV1HistoricalHours**](docs/FuturesApi.md#ConvertTo-dexV1HistoricalHours) | **GET** /index/v1/historical/hours | 
*FuturesApi* | [**ConvertTo-dexV1HistoricalMessages**](docs/FuturesApi.md#ConvertTo-dexV1HistoricalMessages) | **GET** /index/v1/historical/messages | 
*FuturesApi* | [**ConvertTo-dexV1HistoricalMessagesHour**](docs/FuturesApi.md#ConvertTo-dexV1HistoricalMessagesHour) | **GET** /index/v1/historical/messages/hour | 
*FuturesApi* | [**ConvertTo-dexV1HistoricalMinutes**](docs/FuturesApi.md#ConvertTo-dexV1HistoricalMinutes) | **GET** /index/v1/historical/minutes | 
*FuturesApi* | [**ConvertTo-dexV1LatestInstrumentMetadata**](docs/FuturesApi.md#ConvertTo-dexV1LatestInstrumentMetadata) | **GET** /index/v1/latest/instrument/metadata | 
*FuturesApi* | [**ConvertTo-dexV1LatestTick**](docs/FuturesApi.md#ConvertTo-dexV1LatestTick) | **GET** /index/v1/latest/tick | 
*FuturesApi* | [**ConvertTo-dexV1Markets**](docs/FuturesApi.md#ConvertTo-dexV1Markets) | **GET** /index/v1/markets | 
*FuturesApi* | [**ConvertTo-dexV1MarketsInstruments**](docs/FuturesApi.md#ConvertTo-dexV1MarketsInstruments) | **GET** /index/v1/markets/instruments | 
*FuturesApi* | [**ConvertTo-dexV1MarketsInstrumentsUnmapped**](docs/FuturesApi.md#ConvertTo-dexV1MarketsInstrumentsUnmapped) | **GET** /index/v1/markets/instruments/unmapped | 
*NewsApi* | [**New-sV1ArticleList**](docs/NewsApi.md#New-sV1ArticleList) | **GET** /news/v1/article/list | 
*NewsApi* | [**New-sV1CategoryList**](docs/NewsApi.md#New-sV1CategoryList) | **GET** /news/v1/category/list | 
*NewsApi* | [**New-sV1SourceList**](docs/NewsApi.md#New-sV1SourceList) | **GET** /news/v1/source/list | 
*OverviewApi* | [**Invoke-OverviewV1HistoricalMarketcapAllAssetsDays**](docs/OverviewApi.md#Invoke-OverviewV1HistoricalMarketcapAllAssetsDays) | **GET** /overview/v1/historical/marketcap/all/assets/days | 
*OverviewApi* | [**Invoke-OverviewV1HistoricalMarketcapAllAssetsHours**](docs/OverviewApi.md#Invoke-OverviewV1HistoricalMarketcapAllAssetsHours) | **GET** /overview/v1/historical/marketcap/all/assets/hours | 
*OverviewApi* | [**Invoke-OverviewV1HistoricalMarketcapFtwAssetsDays**](docs/OverviewApi.md#Invoke-OverviewV1HistoricalMarketcapFtwAssetsDays) | **GET** /overview/v1/historical/marketcap/ftw/assets/days | 
*OverviewApi* | [**Invoke-OverviewV1HistoricalMarketcapFtwAssetsHours**](docs/OverviewApi.md#Invoke-OverviewV1HistoricalMarketcapFtwAssetsHours) | **GET** /overview/v1/historical/marketcap/ftw/assets/hours | 
*OverviewApi* | [**Invoke-OverviewV1LatestMarketcapAllTick**](docs/OverviewApi.md#Invoke-OverviewV1LatestMarketcapAllTick) | **GET** /overview/v1/latest/marketcap/all/tick | 
*OverviewApi* | [**Invoke-OverviewV1LatestMarketcapFtwTick**](docs/OverviewApi.md#Invoke-OverviewV1LatestMarketcapFtwTick) | **GET** /overview/v1/latest/marketcap/ftw/tick | 
*ReferenceRatesApi* | [**ConvertTo-dexCcV1HistoricalDays**](docs/ReferenceRatesApi.md#ConvertTo-dexCcV1HistoricalDays) | **GET** /index/cc/v1/historical/days | 
*ReferenceRatesApi* | [**ConvertTo-dexCcV1HistoricalHours**](docs/ReferenceRatesApi.md#ConvertTo-dexCcV1HistoricalHours) | **GET** /index/cc/v1/historical/hours | 
*ReferenceRatesApi* | [**ConvertTo-dexCcV1HistoricalMessages**](docs/ReferenceRatesApi.md#ConvertTo-dexCcV1HistoricalMessages) | **GET** /index/cc/v1/historical/messages | 
*ReferenceRatesApi* | [**ConvertTo-dexCcV1HistoricalMessagesHour**](docs/ReferenceRatesApi.md#ConvertTo-dexCcV1HistoricalMessagesHour) | **GET** /index/cc/v1/historical/messages/hour | 
*ReferenceRatesApi* | [**ConvertTo-dexCcV1HistoricalMinutes**](docs/ReferenceRatesApi.md#ConvertTo-dexCcV1HistoricalMinutes) | **GET** /index/cc/v1/historical/minutes | 
*ReferenceRatesApi* | [**ConvertTo-dexCcV1LatestInstrumentMetadata**](docs/ReferenceRatesApi.md#ConvertTo-dexCcV1LatestInstrumentMetadata) | **GET** /index/cc/v1/latest/instrument/metadata | 
*ReferenceRatesApi* | [**ConvertTo-dexCcV1LatestTick**](docs/ReferenceRatesApi.md#ConvertTo-dexCcV1LatestTick) | **GET** /index/cc/v1/latest/tick | 
*ReferenceRatesApi* | [**ConvertTo-dexCcV1Markets**](docs/ReferenceRatesApi.md#ConvertTo-dexCcV1Markets) | **GET** /index/cc/v1/markets | 
*ReferenceRatesApi* | [**ConvertTo-dexCcV1MarketsInstruments**](docs/ReferenceRatesApi.md#ConvertTo-dexCcV1MarketsInstruments) | **GET** /index/cc/v1/markets/instruments | 
*ReferenceRatesApi* | [**ConvertTo-dexCcV1MarketsInstrumentsUnmapped**](docs/ReferenceRatesApi.md#ConvertTo-dexCcV1MarketsInstrumentsUnmapped) | **GET** /index/cc/v1/markets/instruments/unmapped | 
*SpotApi* | [**Invoke-SpotV1HistoricalDays**](docs/SpotApi.md#Invoke-SpotV1HistoricalDays) | **GET** /spot/v1/historical/days | 
*SpotApi* | [**Invoke-SpotV1HistoricalHours**](docs/SpotApi.md#Invoke-SpotV1HistoricalHours) | **GET** /spot/v1/historical/hours | 
*SpotApi* | [**Invoke-SpotV1HistoricalMinutes**](docs/SpotApi.md#Invoke-SpotV1HistoricalMinutes) | **GET** /spot/v1/historical/minutes | 
*SpotApi* | [**Invoke-SpotV1HistoricalOrderbookL2SnapshotMinute**](docs/SpotApi.md#Invoke-SpotV1HistoricalOrderbookL2SnapshotMinute) | **GET** /spot/v1/historical/orderbook/l2/snapshot/minute | 
*SpotApi* | [**Invoke-SpotV1HistoricalTrades**](docs/SpotApi.md#Invoke-SpotV1HistoricalTrades) | **GET** /spot/v1/historical/trades | 
*SpotApi* | [**Invoke-SpotV1HistoricalTradesHour**](docs/SpotApi.md#Invoke-SpotV1HistoricalTradesHour) | **GET** /spot/v1/historical/trades/hour | 
*SpotApi* | [**Invoke-SpotV1LatestInstrumentMetadata**](docs/SpotApi.md#Invoke-SpotV1LatestInstrumentMetadata) | **GET** /spot/v1/latest/instrument/metadata | 
*SpotApi* | [**Invoke-SpotV1LatestTick**](docs/SpotApi.md#Invoke-SpotV1LatestTick) | **GET** /spot/v1/latest/tick | 
*SpotApi* | [**Invoke-SpotV1Markets**](docs/SpotApi.md#Invoke-SpotV1Markets) | **GET** /spot/v1/markets | 
*SpotApi* | [**Invoke-SpotV1MarketsInstruments**](docs/SpotApi.md#Invoke-SpotV1MarketsInstruments) | **GET** /spot/v1/markets/instruments | 
*SpotApi* | [**Invoke-SpotV1MarketsInstrumentsUnmapped**](docs/SpotApi.md#Invoke-SpotV1MarketsInstrumentsUnmapped) | **GET** /spot/v1/markets/instruments/unmapped | 


## Documentation for Models

 - [PSOpenAPITools/Model.ErrorErr](docs/ErrorErr.md)
 - [PSOpenAPITools/Model.ErrorErrOtherInfo](docs/ErrorErrOtherInfo.md)
 - [PSOpenAPITools/Model.GENERICRESPONSE](docs/GENERICRESPONSE.md)
 - [PSOpenAPITools/Model.GENERICRESPONSEData](docs/GENERICRESPONSEData.md)
 - [PSOpenAPITools/Model.ModelError](docs/ModelError.md)
 - [PSOpenAPITools/Model.SPOTINSTRUMENTHISTODATA](docs/SPOTINSTRUMENTHISTODATA.md)
 - [PSOpenAPITools/Model.SPOTINSTRUMENTHISTODATARESPONSE](docs/SPOTINSTRUMENTHISTODATARESPONSE.md)
 - [PSOpenAPITools/Model.SPOTINSTRUMENTMARKETDATA](docs/SPOTINSTRUMENTMARKETDATA.md)
 - [PSOpenAPITools/Model.SPOTINSTRUMENTMARKETDATARESPONSE](docs/SPOTINSTRUMENTMARKETDATARESPONSE.md)
 - [PSOpenAPITools/Model.SPOTINSTRUMENTMARKETDATARESPONSEErr](docs/SPOTINSTRUMENTMARKETDATARESPONSEErr.md)
 - [PSOpenAPITools/Model.SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo](docs/SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo.md)
 - [PSOpenAPITools/Model.SPOTINSTRUMENTMETADATA](docs/SPOTINSTRUMENTMETADATA.md)
 - [PSOpenAPITools/Model.SPOTINSTRUMENTMETADATARESPONSE](docs/SPOTINSTRUMENTMETADATARESPONSE.md)
 - [PSOpenAPITools/Model.SPOTINSTRUMENTTRADE](docs/SPOTINSTRUMENTTRADE.md)
 - [PSOpenAPITools/Model.SPOTINSTRUMENTTRADERESPONSE](docs/SPOTINSTRUMENTTRADERESPONSE.md)


## Documentation for Authorization


### api_key_header

- **Type**: API key

- **API key parameter name**: authorization
- **Location**: HTTP header


### api_key_query

- **Type**: API key

- **API key parameter name**: api_key
- **Location**: URL query string
