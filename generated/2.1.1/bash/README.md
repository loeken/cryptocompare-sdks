# CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry Bash client

## Overview

This is a Bash client script for accessing CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$  --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image

You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash

The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X

On OSX you might need to install bash-completion using Homebrew:

```shell
brew install bash-completion
```

and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh

In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to **

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AssetApi* | [**assetV1DataByAddress**](docs/AssetApi.md#assetv1databyaddress) | **GET** /asset/v1/data/by/address | 
*AssetApi* | [**assetV1DataById**](docs/AssetApi.md#assetv1databyid) | **GET** /asset/v1/data/by/id | 
*AssetApi* | [**assetV1DataBySymbol**](docs/AssetApi.md#assetv1databysymbol) | **GET** /asset/v1/data/by/symbol | 
*AssetApi* | [**assetV1TopList**](docs/AssetApi.md#assetv1toplist) | **GET** /asset/v1/top/list | 
*FuturesApi* | [**futuresV1HistoricalDays**](docs/FuturesApi.md#futuresv1historicaldays) | **GET** /futures/v1/historical/days | 
*FuturesApi* | [**futuresV1HistoricalFundingRateDays**](docs/FuturesApi.md#futuresv1historicalfundingratedays) | **GET** /futures/v1/historical/funding-rate/days | 
*FuturesApi* | [**futuresV1HistoricalFundingRateHours**](docs/FuturesApi.md#futuresv1historicalfundingratehours) | **GET** /futures/v1/historical/funding-rate/hours | 
*FuturesApi* | [**futuresV1HistoricalFundingRateMessages**](docs/FuturesApi.md#futuresv1historicalfundingratemessages) | **GET** /futures/v1/historical/funding-rate-messages | 
*FuturesApi* | [**futuresV1HistoricalFundingRateMessagesHour**](docs/FuturesApi.md#futuresv1historicalfundingratemessageshour) | **GET** /futures/v1/historical/funding-rate-messages/hour | 
*FuturesApi* | [**futuresV1HistoricalFundingRateMinutes**](docs/FuturesApi.md#futuresv1historicalfundingrateminutes) | **GET** /futures/v1/historical/funding-rate/minutes | 
*FuturesApi* | [**futuresV1HistoricalHours**](docs/FuturesApi.md#futuresv1historicalhours) | **GET** /futures/v1/historical/hours | 
*FuturesApi* | [**futuresV1HistoricalMinutes**](docs/FuturesApi.md#futuresv1historicalminutes) | **GET** /futures/v1/historical/minutes | 
*FuturesApi* | [**futuresV1HistoricalOpenInterestDays**](docs/FuturesApi.md#futuresv1historicalopeninterestdays) | **GET** /futures/v1/historical/open-interest/days | 
*FuturesApi* | [**futuresV1HistoricalOpenInterestHours**](docs/FuturesApi.md#futuresv1historicalopeninteresthours) | **GET** /futures/v1/historical/open-interest/hours | 
*FuturesApi* | [**futuresV1HistoricalOpenInterestMessages**](docs/FuturesApi.md#futuresv1historicalopeninterestmessages) | **GET** /futures/v1/historical/open-interest-messages | 
*FuturesApi* | [**futuresV1HistoricalOpenInterestMessagesHour**](docs/FuturesApi.md#futuresv1historicalopeninterestmessageshour) | **GET** /futures/v1/historical/open-interest-messages/hour | 
*FuturesApi* | [**futuresV1HistoricalOpenInterestMinutes**](docs/FuturesApi.md#futuresv1historicalopeninterestminutes) | **GET** /futures/v1/historical/open-interest/minutes | 
*FuturesApi* | [**futuresV1HistoricalTrades**](docs/FuturesApi.md#futuresv1historicaltrades) | **GET** /futures/v1/historical/trades | 
*FuturesApi* | [**futuresV1HistoricalTradesHour**](docs/FuturesApi.md#futuresv1historicaltradeshour) | **GET** /futures/v1/historical/trades/hour | 
*FuturesApi* | [**futuresV1LatestFundingRateTick**](docs/FuturesApi.md#futuresv1latestfundingratetick) | **GET** /futures/v1/latest/funding-rate/tick | 
*FuturesApi* | [**futuresV1LatestInstrumentMetadata**](docs/FuturesApi.md#futuresv1latestinstrumentmetadata) | **GET** /futures/v1/latest/instrument/metadata | 
*FuturesApi* | [**futuresV1LatestOpenInterestTick**](docs/FuturesApi.md#futuresv1latestopeninteresttick) | **GET** /futures/v1/latest/open-interest/tick | 
*FuturesApi* | [**futuresV1LatestTick**](docs/FuturesApi.md#futuresv1latesttick) | **GET** /futures/v1/latest/tick | 
*FuturesApi* | [**futuresV1Markets**](docs/FuturesApi.md#futuresv1markets) | **GET** /futures/v1/markets | 
*FuturesApi* | [**futuresV1MarketsInstruments**](docs/FuturesApi.md#futuresv1marketsinstruments) | **GET** /futures/v1/markets/instruments | 
*FuturesApi* | [**futuresV1MarketsInstrumentsUnmapped**](docs/FuturesApi.md#futuresv1marketsinstrumentsunmapped) | **GET** /futures/v1/markets/instruments/unmapped | 
*FuturesApi* | [**indexV1HistoricalDays**](docs/FuturesApi.md#indexv1historicaldays) | **GET** /index/v1/historical/days | 
*FuturesApi* | [**indexV1HistoricalHours**](docs/FuturesApi.md#indexv1historicalhours) | **GET** /index/v1/historical/hours | 
*FuturesApi* | [**indexV1HistoricalMessages**](docs/FuturesApi.md#indexv1historicalmessages) | **GET** /index/v1/historical/messages | 
*FuturesApi* | [**indexV1HistoricalMessagesHour**](docs/FuturesApi.md#indexv1historicalmessageshour) | **GET** /index/v1/historical/messages/hour | 
*FuturesApi* | [**indexV1HistoricalMinutes**](docs/FuturesApi.md#indexv1historicalminutes) | **GET** /index/v1/historical/minutes | 
*FuturesApi* | [**indexV1LatestInstrumentMetadata**](docs/FuturesApi.md#indexv1latestinstrumentmetadata) | **GET** /index/v1/latest/instrument/metadata | 
*FuturesApi* | [**indexV1LatestTick**](docs/FuturesApi.md#indexv1latesttick) | **GET** /index/v1/latest/tick | 
*FuturesApi* | [**indexV1Markets**](docs/FuturesApi.md#indexv1markets) | **GET** /index/v1/markets | 
*FuturesApi* | [**indexV1MarketsInstruments**](docs/FuturesApi.md#indexv1marketsinstruments) | **GET** /index/v1/markets/instruments | 
*FuturesApi* | [**indexV1MarketsInstrumentsUnmapped**](docs/FuturesApi.md#indexv1marketsinstrumentsunmapped) | **GET** /index/v1/markets/instruments/unmapped | 
*NewsApi* | [**newsV1ArticleList**](docs/NewsApi.md#newsv1articlelist) | **GET** /news/v1/article/list | 
*NewsApi* | [**newsV1CategoryList**](docs/NewsApi.md#newsv1categorylist) | **GET** /news/v1/category/list | 
*NewsApi* | [**newsV1SourceList**](docs/NewsApi.md#newsv1sourcelist) | **GET** /news/v1/source/list | 
*OverviewApi* | [**overviewV1HistoricalMarketcapAllAssetsDays**](docs/OverviewApi.md#overviewv1historicalmarketcapallassetsdays) | **GET** /overview/v1/historical/marketcap/all/assets/days | 
*OverviewApi* | [**overviewV1HistoricalMarketcapAllAssetsHours**](docs/OverviewApi.md#overviewv1historicalmarketcapallassetshours) | **GET** /overview/v1/historical/marketcap/all/assets/hours | 
*OverviewApi* | [**overviewV1HistoricalMarketcapFtwAssetsDays**](docs/OverviewApi.md#overviewv1historicalmarketcapftwassetsdays) | **GET** /overview/v1/historical/marketcap/ftw/assets/days | 
*OverviewApi* | [**overviewV1HistoricalMarketcapFtwAssetsHours**](docs/OverviewApi.md#overviewv1historicalmarketcapftwassetshours) | **GET** /overview/v1/historical/marketcap/ftw/assets/hours | 
*OverviewApi* | [**overviewV1LatestMarketcapAllTick**](docs/OverviewApi.md#overviewv1latestmarketcapalltick) | **GET** /overview/v1/latest/marketcap/all/tick | 
*OverviewApi* | [**overviewV1LatestMarketcapFtwTick**](docs/OverviewApi.md#overviewv1latestmarketcapftwtick) | **GET** /overview/v1/latest/marketcap/ftw/tick | 
*ReferenceRatesApi* | [**indexCcV1HistoricalDays**](docs/ReferenceRatesApi.md#indexccv1historicaldays) | **GET** /index/cc/v1/historical/days | 
*ReferenceRatesApi* | [**indexCcV1HistoricalHours**](docs/ReferenceRatesApi.md#indexccv1historicalhours) | **GET** /index/cc/v1/historical/hours | 
*ReferenceRatesApi* | [**indexCcV1HistoricalMessages**](docs/ReferenceRatesApi.md#indexccv1historicalmessages) | **GET** /index/cc/v1/historical/messages | 
*ReferenceRatesApi* | [**indexCcV1HistoricalMessagesHour**](docs/ReferenceRatesApi.md#indexccv1historicalmessageshour) | **GET** /index/cc/v1/historical/messages/hour | 
*ReferenceRatesApi* | [**indexCcV1HistoricalMinutes**](docs/ReferenceRatesApi.md#indexccv1historicalminutes) | **GET** /index/cc/v1/historical/minutes | 
*ReferenceRatesApi* | [**indexCcV1LatestInstrumentMetadata**](docs/ReferenceRatesApi.md#indexccv1latestinstrumentmetadata) | **GET** /index/cc/v1/latest/instrument/metadata | 
*ReferenceRatesApi* | [**indexCcV1LatestTick**](docs/ReferenceRatesApi.md#indexccv1latesttick) | **GET** /index/cc/v1/latest/tick | 
*ReferenceRatesApi* | [**indexCcV1Markets**](docs/ReferenceRatesApi.md#indexccv1markets) | **GET** /index/cc/v1/markets | 
*ReferenceRatesApi* | [**indexCcV1MarketsInstruments**](docs/ReferenceRatesApi.md#indexccv1marketsinstruments) | **GET** /index/cc/v1/markets/instruments | 
*ReferenceRatesApi* | [**indexCcV1MarketsInstrumentsUnmapped**](docs/ReferenceRatesApi.md#indexccv1marketsinstrumentsunmapped) | **GET** /index/cc/v1/markets/instruments/unmapped | 
*SpotApi* | [**spotV1HistoricalDays**](docs/SpotApi.md#spotv1historicaldays) | **GET** /spot/v1/historical/days | 
*SpotApi* | [**spotV1HistoricalHours**](docs/SpotApi.md#spotv1historicalhours) | **GET** /spot/v1/historical/hours | 
*SpotApi* | [**spotV1HistoricalMinutes**](docs/SpotApi.md#spotv1historicalminutes) | **GET** /spot/v1/historical/minutes | 
*SpotApi* | [**spotV1HistoricalOrderbookL2SnapshotMinute**](docs/SpotApi.md#spotv1historicalorderbookl2snapshotminute) | **GET** /spot/v1/historical/orderbook/l2/snapshot/minute | 
*SpotApi* | [**spotV1HistoricalTrades**](docs/SpotApi.md#spotv1historicaltrades) | **GET** /spot/v1/historical/trades | 
*SpotApi* | [**spotV1HistoricalTradesHour**](docs/SpotApi.md#spotv1historicaltradeshour) | **GET** /spot/v1/historical/trades/hour | 
*SpotApi* | [**spotV1LatestInstrumentMetadata**](docs/SpotApi.md#spotv1latestinstrumentmetadata) | **GET** /spot/v1/latest/instrument/metadata | 
*SpotApi* | [**spotV1LatestTick**](docs/SpotApi.md#spotv1latesttick) | **GET** /spot/v1/latest/tick | 
*SpotApi* | [**spotV1Markets**](docs/SpotApi.md#spotv1markets) | **GET** /spot/v1/markets | 
*SpotApi* | [**spotV1MarketsInstruments**](docs/SpotApi.md#spotv1marketsinstruments) | **GET** /spot/v1/markets/instruments | 
*SpotApi* | [**spotV1MarketsInstrumentsUnmapped**](docs/SpotApi.md#spotv1marketsinstrumentsunmapped) | **GET** /spot/v1/markets/instruments/unmapped | 


## Documentation For Models

 - [Error](docs/Error.md)
 - [ErrorErr](docs/ErrorErr.md)
 - [ErrorErrOtherInfo](docs/ErrorErrOtherInfo.md)
 - [GENERICRESPONSE](docs/GENERICRESPONSE.md)
 - [GENERICRESPONSEData](docs/GENERICRESPONSEData.md)
 - [SPOTINSTRUMENTHISTODATA](docs/SPOTINSTRUMENTHISTODATA.md)
 - [SPOTINSTRUMENTHISTODATARESPONSE](docs/SPOTINSTRUMENTHISTODATARESPONSE.md)
 - [SPOTINSTRUMENTMARKETDATA](docs/SPOTINSTRUMENTMARKETDATA.md)
 - [SPOTINSTRUMENTMARKETDATARESPONSE](docs/SPOTINSTRUMENTMARKETDATARESPONSE.md)
 - [SPOTINSTRUMENTMARKETDATARESPONSEErr](docs/SPOTINSTRUMENTMARKETDATARESPONSEErr.md)
 - [SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo](docs/SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo.md)
 - [SPOTINSTRUMENTMETADATA](docs/SPOTINSTRUMENTMETADATA.md)
 - [SPOTINSTRUMENTMETADATARESPONSE](docs/SPOTINSTRUMENTMETADATARESPONSE.md)
 - [SPOTINSTRUMENTTRADE](docs/SPOTINSTRUMENTTRADE.md)
 - [SPOTINSTRUMENTTRADERESPONSE](docs/SPOTINSTRUMENTTRADERESPONSE.md)


## Documentation For Authorization


## api_key_header


- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

## api_key_query


- **Type**: API key
- **API key parameter name**: api_key
- **Location**: URL query string

