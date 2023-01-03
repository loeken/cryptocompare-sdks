# OpenAPIClient-php

CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.

For more information, please visit [https://cryptocompare.zendesk.com/hc/en-gb/requests/new](https://cryptocompare.zendesk.com/hc/en-gb/requests/new).

## Installation & Usage

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/OpenAPIClient-php/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');




$apiInstance = new OpenAPI\Client\Api\AssetApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$address = 'address_example'; // string
$chain_symbol = 'chain_symbol_example'; // string
$groups = ''; // string

try {
    $result = $apiInstance->assetV1DataByAddress($address, $chain_symbol, $groups);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AssetApi->assetV1DataByAddress: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://data-api.cryptocompare.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AssetApi* | [**assetV1DataByAddress**](docs/Api/AssetApi.md#assetv1databyaddress) | **GET** /asset/v1/data/by/address | 
*AssetApi* | [**assetV1DataById**](docs/Api/AssetApi.md#assetv1databyid) | **GET** /asset/v1/data/by/id | 
*AssetApi* | [**assetV1DataBySymbol**](docs/Api/AssetApi.md#assetv1databysymbol) | **GET** /asset/v1/data/by/symbol | 
*AssetApi* | [**assetV1TopList**](docs/Api/AssetApi.md#assetv1toplist) | **GET** /asset/v1/top/list | 
*FuturesApi* | [**futuresV1HistoricalDays**](docs/Api/FuturesApi.md#futuresv1historicaldays) | **GET** /futures/v1/historical/days | 
*FuturesApi* | [**futuresV1HistoricalFundingRateDays**](docs/Api/FuturesApi.md#futuresv1historicalfundingratedays) | **GET** /futures/v1/historical/funding-rate/days | 
*FuturesApi* | [**futuresV1HistoricalFundingRateHours**](docs/Api/FuturesApi.md#futuresv1historicalfundingratehours) | **GET** /futures/v1/historical/funding-rate/hours | 
*FuturesApi* | [**futuresV1HistoricalFundingRateMessages**](docs/Api/FuturesApi.md#futuresv1historicalfundingratemessages) | **GET** /futures/v1/historical/funding-rate-messages | 
*FuturesApi* | [**futuresV1HistoricalFundingRateMessagesHour**](docs/Api/FuturesApi.md#futuresv1historicalfundingratemessageshour) | **GET** /futures/v1/historical/funding-rate-messages/hour | 
*FuturesApi* | [**futuresV1HistoricalFundingRateMinutes**](docs/Api/FuturesApi.md#futuresv1historicalfundingrateminutes) | **GET** /futures/v1/historical/funding-rate/minutes | 
*FuturesApi* | [**futuresV1HistoricalHours**](docs/Api/FuturesApi.md#futuresv1historicalhours) | **GET** /futures/v1/historical/hours | 
*FuturesApi* | [**futuresV1HistoricalMinutes**](docs/Api/FuturesApi.md#futuresv1historicalminutes) | **GET** /futures/v1/historical/minutes | 
*FuturesApi* | [**futuresV1HistoricalOpenInterestDays**](docs/Api/FuturesApi.md#futuresv1historicalopeninterestdays) | **GET** /futures/v1/historical/open-interest/days | 
*FuturesApi* | [**futuresV1HistoricalOpenInterestHours**](docs/Api/FuturesApi.md#futuresv1historicalopeninteresthours) | **GET** /futures/v1/historical/open-interest/hours | 
*FuturesApi* | [**futuresV1HistoricalOpenInterestMessages**](docs/Api/FuturesApi.md#futuresv1historicalopeninterestmessages) | **GET** /futures/v1/historical/open-interest-messages | 
*FuturesApi* | [**futuresV1HistoricalOpenInterestMessagesHour**](docs/Api/FuturesApi.md#futuresv1historicalopeninterestmessageshour) | **GET** /futures/v1/historical/open-interest-messages/hour | 
*FuturesApi* | [**futuresV1HistoricalOpenInterestMinutes**](docs/Api/FuturesApi.md#futuresv1historicalopeninterestminutes) | **GET** /futures/v1/historical/open-interest/minutes | 
*FuturesApi* | [**futuresV1HistoricalTrades**](docs/Api/FuturesApi.md#futuresv1historicaltrades) | **GET** /futures/v1/historical/trades | 
*FuturesApi* | [**futuresV1HistoricalTradesHour**](docs/Api/FuturesApi.md#futuresv1historicaltradeshour) | **GET** /futures/v1/historical/trades/hour | 
*FuturesApi* | [**futuresV1LatestFundingRateTick**](docs/Api/FuturesApi.md#futuresv1latestfundingratetick) | **GET** /futures/v1/latest/funding-rate/tick | 
*FuturesApi* | [**futuresV1LatestInstrumentMetadata**](docs/Api/FuturesApi.md#futuresv1latestinstrumentmetadata) | **GET** /futures/v1/latest/instrument/metadata | 
*FuturesApi* | [**futuresV1LatestOpenInterestTick**](docs/Api/FuturesApi.md#futuresv1latestopeninteresttick) | **GET** /futures/v1/latest/open-interest/tick | 
*FuturesApi* | [**futuresV1LatestTick**](docs/Api/FuturesApi.md#futuresv1latesttick) | **GET** /futures/v1/latest/tick | 
*FuturesApi* | [**futuresV1Markets**](docs/Api/FuturesApi.md#futuresv1markets) | **GET** /futures/v1/markets | 
*FuturesApi* | [**futuresV1MarketsInstruments**](docs/Api/FuturesApi.md#futuresv1marketsinstruments) | **GET** /futures/v1/markets/instruments | 
*FuturesApi* | [**futuresV1MarketsInstrumentsUnmapped**](docs/Api/FuturesApi.md#futuresv1marketsinstrumentsunmapped) | **GET** /futures/v1/markets/instruments/unmapped | 
*FuturesApi* | [**indexV1HistoricalDays**](docs/Api/FuturesApi.md#indexv1historicaldays) | **GET** /index/v1/historical/days | 
*FuturesApi* | [**indexV1HistoricalHours**](docs/Api/FuturesApi.md#indexv1historicalhours) | **GET** /index/v1/historical/hours | 
*FuturesApi* | [**indexV1HistoricalMessages**](docs/Api/FuturesApi.md#indexv1historicalmessages) | **GET** /index/v1/historical/messages | 
*FuturesApi* | [**indexV1HistoricalMessagesHour**](docs/Api/FuturesApi.md#indexv1historicalmessageshour) | **GET** /index/v1/historical/messages/hour | 
*FuturesApi* | [**indexV1HistoricalMinutes**](docs/Api/FuturesApi.md#indexv1historicalminutes) | **GET** /index/v1/historical/minutes | 
*FuturesApi* | [**indexV1LatestInstrumentMetadata**](docs/Api/FuturesApi.md#indexv1latestinstrumentmetadata) | **GET** /index/v1/latest/instrument/metadata | 
*FuturesApi* | [**indexV1LatestTick**](docs/Api/FuturesApi.md#indexv1latesttick) | **GET** /index/v1/latest/tick | 
*FuturesApi* | [**indexV1Markets**](docs/Api/FuturesApi.md#indexv1markets) | **GET** /index/v1/markets | 
*FuturesApi* | [**indexV1MarketsInstruments**](docs/Api/FuturesApi.md#indexv1marketsinstruments) | **GET** /index/v1/markets/instruments | 
*FuturesApi* | [**indexV1MarketsInstrumentsUnmapped**](docs/Api/FuturesApi.md#indexv1marketsinstrumentsunmapped) | **GET** /index/v1/markets/instruments/unmapped | 
*NewsApi* | [**newsV1ArticleList**](docs/Api/NewsApi.md#newsv1articlelist) | **GET** /news/v1/article/list | 
*NewsApi* | [**newsV1CategoryList**](docs/Api/NewsApi.md#newsv1categorylist) | **GET** /news/v1/category/list | 
*NewsApi* | [**newsV1SourceList**](docs/Api/NewsApi.md#newsv1sourcelist) | **GET** /news/v1/source/list | 
*OverviewApi* | [**overviewV1HistoricalMarketcapAllAssetsDays**](docs/Api/OverviewApi.md#overviewv1historicalmarketcapallassetsdays) | **GET** /overview/v1/historical/marketcap/all/assets/days | 
*OverviewApi* | [**overviewV1HistoricalMarketcapAllAssetsHours**](docs/Api/OverviewApi.md#overviewv1historicalmarketcapallassetshours) | **GET** /overview/v1/historical/marketcap/all/assets/hours | 
*OverviewApi* | [**overviewV1HistoricalMarketcapFtwAssetsDays**](docs/Api/OverviewApi.md#overviewv1historicalmarketcapftwassetsdays) | **GET** /overview/v1/historical/marketcap/ftw/assets/days | 
*OverviewApi* | [**overviewV1HistoricalMarketcapFtwAssetsHours**](docs/Api/OverviewApi.md#overviewv1historicalmarketcapftwassetshours) | **GET** /overview/v1/historical/marketcap/ftw/assets/hours | 
*OverviewApi* | [**overviewV1LatestMarketcapAllTick**](docs/Api/OverviewApi.md#overviewv1latestmarketcapalltick) | **GET** /overview/v1/latest/marketcap/all/tick | 
*OverviewApi* | [**overviewV1LatestMarketcapFtwTick**](docs/Api/OverviewApi.md#overviewv1latestmarketcapftwtick) | **GET** /overview/v1/latest/marketcap/ftw/tick | 
*ReferenceRatesApi* | [**indexCcV1HistoricalDays**](docs/Api/ReferenceRatesApi.md#indexccv1historicaldays) | **GET** /index/cc/v1/historical/days | 
*ReferenceRatesApi* | [**indexCcV1HistoricalHours**](docs/Api/ReferenceRatesApi.md#indexccv1historicalhours) | **GET** /index/cc/v1/historical/hours | 
*ReferenceRatesApi* | [**indexCcV1HistoricalMessages**](docs/Api/ReferenceRatesApi.md#indexccv1historicalmessages) | **GET** /index/cc/v1/historical/messages | 
*ReferenceRatesApi* | [**indexCcV1HistoricalMessagesHour**](docs/Api/ReferenceRatesApi.md#indexccv1historicalmessageshour) | **GET** /index/cc/v1/historical/messages/hour | 
*ReferenceRatesApi* | [**indexCcV1HistoricalMinutes**](docs/Api/ReferenceRatesApi.md#indexccv1historicalminutes) | **GET** /index/cc/v1/historical/minutes | 
*ReferenceRatesApi* | [**indexCcV1LatestInstrumentMetadata**](docs/Api/ReferenceRatesApi.md#indexccv1latestinstrumentmetadata) | **GET** /index/cc/v1/latest/instrument/metadata | 
*ReferenceRatesApi* | [**indexCcV1LatestTick**](docs/Api/ReferenceRatesApi.md#indexccv1latesttick) | **GET** /index/cc/v1/latest/tick | 
*ReferenceRatesApi* | [**indexCcV1Markets**](docs/Api/ReferenceRatesApi.md#indexccv1markets) | **GET** /index/cc/v1/markets | 
*ReferenceRatesApi* | [**indexCcV1MarketsInstruments**](docs/Api/ReferenceRatesApi.md#indexccv1marketsinstruments) | **GET** /index/cc/v1/markets/instruments | 
*ReferenceRatesApi* | [**indexCcV1MarketsInstrumentsUnmapped**](docs/Api/ReferenceRatesApi.md#indexccv1marketsinstrumentsunmapped) | **GET** /index/cc/v1/markets/instruments/unmapped | 
*SpotApi* | [**spotV1HistoricalDays**](docs/Api/SpotApi.md#spotv1historicaldays) | **GET** /spot/v1/historical/days | 
*SpotApi* | [**spotV1HistoricalHours**](docs/Api/SpotApi.md#spotv1historicalhours) | **GET** /spot/v1/historical/hours | 
*SpotApi* | [**spotV1HistoricalMinutes**](docs/Api/SpotApi.md#spotv1historicalminutes) | **GET** /spot/v1/historical/minutes | 
*SpotApi* | [**spotV1HistoricalOrderbookL2SnapshotMinute**](docs/Api/SpotApi.md#spotv1historicalorderbookl2snapshotminute) | **GET** /spot/v1/historical/orderbook/l2/snapshot/minute | 
*SpotApi* | [**spotV1HistoricalTrades**](docs/Api/SpotApi.md#spotv1historicaltrades) | **GET** /spot/v1/historical/trades | 
*SpotApi* | [**spotV1HistoricalTradesHour**](docs/Api/SpotApi.md#spotv1historicaltradeshour) | **GET** /spot/v1/historical/trades/hour | 
*SpotApi* | [**spotV1LatestInstrumentMetadata**](docs/Api/SpotApi.md#spotv1latestinstrumentmetadata) | **GET** /spot/v1/latest/instrument/metadata | 
*SpotApi* | [**spotV1LatestTick**](docs/Api/SpotApi.md#spotv1latesttick) | **GET** /spot/v1/latest/tick | 
*SpotApi* | [**spotV1Markets**](docs/Api/SpotApi.md#spotv1markets) | **GET** /spot/v1/markets | 
*SpotApi* | [**spotV1MarketsInstruments**](docs/Api/SpotApi.md#spotv1marketsinstruments) | **GET** /spot/v1/markets/instruments | 
*SpotApi* | [**spotV1MarketsInstrumentsUnmapped**](docs/Api/SpotApi.md#spotv1marketsinstrumentsunmapped) | **GET** /spot/v1/markets/instruments/unmapped | 

## Models

- [Error](docs/Model/Error.md)
- [ErrorErr](docs/Model/ErrorErr.md)
- [ErrorErrOtherInfo](docs/Model/ErrorErrOtherInfo.md)
- [GENERICRESPONSE](docs/Model/GENERICRESPONSE.md)
- [GENERICRESPONSEData](docs/Model/GENERICRESPONSEData.md)
- [SPOTINSTRUMENTHISTODATA](docs/Model/SPOTINSTRUMENTHISTODATA.md)
- [SPOTINSTRUMENTHISTODATARESPONSE](docs/Model/SPOTINSTRUMENTHISTODATARESPONSE.md)
- [SPOTINSTRUMENTMARKETDATA](docs/Model/SPOTINSTRUMENTMARKETDATA.md)
- [SPOTINSTRUMENTMARKETDATARESPONSE](docs/Model/SPOTINSTRUMENTMARKETDATARESPONSE.md)
- [SPOTINSTRUMENTMARKETDATARESPONSEErr](docs/Model/SPOTINSTRUMENTMARKETDATARESPONSEErr.md)
- [SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo](docs/Model/SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo.md)
- [SPOTINSTRUMENTMETADATA](docs/Model/SPOTINSTRUMENTMETADATA.md)
- [SPOTINSTRUMENTMETADATARESPONSE](docs/Model/SPOTINSTRUMENTMETADATARESPONSE.md)
- [SPOTINSTRUMENTTRADE](docs/Model/SPOTINSTRUMENTTRADE.md)
- [SPOTINSTRUMENTTRADERESPONSE](docs/Model/SPOTINSTRUMENTTRADERESPONSE.md)

## Authorization

### api_key_header

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header



### api_key_query

- **Type**: API key
- **API key parameter name**: api_key
- **Location**: URL query string


## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

data@cryptocompare.com

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `2.1.1`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
