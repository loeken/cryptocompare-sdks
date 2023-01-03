# SpotApi

All URIs are relative to *https://data-api.cryptocompare.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**spotV1HistoricalDays**](SpotApi.md#spotV1HistoricalDays) | **GET** /spot/v1/historical/days |  |
| [**spotV1HistoricalHours**](SpotApi.md#spotV1HistoricalHours) | **GET** /spot/v1/historical/hours |  |
| [**spotV1HistoricalMinutes**](SpotApi.md#spotV1HistoricalMinutes) | **GET** /spot/v1/historical/minutes |  |
| [**spotV1HistoricalOrderbookL2SnapshotMinute**](SpotApi.md#spotV1HistoricalOrderbookL2SnapshotMinute) | **GET** /spot/v1/historical/orderbook/l2/snapshot/minute |  |
| [**spotV1HistoricalTrades**](SpotApi.md#spotV1HistoricalTrades) | **GET** /spot/v1/historical/trades |  |
| [**spotV1HistoricalTradesHour**](SpotApi.md#spotV1HistoricalTradesHour) | **GET** /spot/v1/historical/trades/hour |  |
| [**spotV1LatestInstrumentMetadata**](SpotApi.md#spotV1LatestInstrumentMetadata) | **GET** /spot/v1/latest/instrument/metadata |  |
| [**spotV1LatestTick**](SpotApi.md#spotV1LatestTick) | **GET** /spot/v1/latest/tick |  |
| [**spotV1Markets**](SpotApi.md#spotV1Markets) | **GET** /spot/v1/markets |  |
| [**spotV1MarketsInstruments**](SpotApi.md#spotV1MarketsInstruments) | **GET** /spot/v1/markets/instruments |  |
| [**spotV1MarketsInstrumentsUnmapped**](SpotApi.md#spotV1MarketsInstrumentsUnmapped) | **GET** /spot/v1/markets/instruments/unmapped |  |


## Creating SpotApi

To initiate an instance of `SpotApi`, you can use micronaut's `ApplicationContext`:
```java
/* imports
import io.micronaut.runtime.Micronaut;
import io.micronaut.context.ApplicationContext;
import org.openapitools.api.SpotApi;
*/

ApplicationContext context = Micronaut.run(/* ... */);
PetApi apiInstance = context.getBean(SpotApi.class);
```

Or the `@Inject` annotation:
```java
@Singleton
class MyClass {
    @Inject
    SpotApi spotApi;

    /* ... use the injected variable */
}
```
Note that the class needs to be annotated with one of Micronaut's [scope annotations](https://docs.micronaut.io/latest/guide/#scopes) like `Singleton` in order to be processed.

More information can be found inside [Inversion of Control guide section](https://docs.micronaut.io/latest/guide/#ioc).

<a name="spotV1HistoricalDays"></a>
# **spotV1HistoricalDays**
```java
Mono<SPOTINSTRUMENTHISTODATARESPONSE> SpotApi.spotV1HistoricalDays(marketinstrumentgroupslimittoTsaggregatefillmappingPriorityresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional parameter] [default to ``] |
| **limit** | `Integer`| The number of data points to return | [optional parameter] [default to `30`] |
| **toTs** | `Integer`| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional parameter] |
| **aggregate** | `Integer`| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional parameter] [default to `1`] |
| **fill** | `Boolean`| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional parameter] [default to `true`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="spotV1HistoricalHours"></a>
# **spotV1HistoricalHours**
```java
Mono<SPOTINSTRUMENTHISTODATARESPONSE> SpotApi.spotV1HistoricalHours(marketinstrumentgroupslimittoTsaggregatefillmappingPriorityresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional parameter] [default to ``] |
| **limit** | `Integer`| The number of data points to return | [optional parameter] [default to `30`] |
| **toTs** | `Integer`| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional parameter] |
| **aggregate** | `Integer`| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional parameter] [default to `1`] |
| **fill** | `Boolean`| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional parameter] [default to `true`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="spotV1HistoricalMinutes"></a>
# **spotV1HistoricalMinutes**
```java
Mono<SPOTINSTRUMENTHISTODATARESPONSE> SpotApi.spotV1HistoricalMinutes(marketinstrumentgroupslimittoTsaggregatefillmappingPriorityresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional parameter] [default to ``] |
| **limit** | `Integer`| The number of data points to return | [optional parameter] [default to `30`] |
| **toTs** | `Integer`| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional parameter] |
| **aggregate** | `Integer`| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional parameter] [default to `1`] |
| **fill** | `Boolean`| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional parameter] [default to `true`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="spotV1HistoricalOrderbookL2SnapshotMinute"></a>
# **spotV1HistoricalOrderbookL2SnapshotMinute**
```java
Mono<GENERICRESPONSE> SpotApi.spotV1HistoricalOrderbookL2SnapshotMinute(marketinstrumentminuteTsdepthmappingPriorityresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **minuteTs** | `Integer`| Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute. | |
| **depth** | `Integer`| The number of top bids and asks to return. | [optional parameter] [default to `50`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization
* **[api_key_header](auth.md#api_key_header)**
* **[api_key_query](auth.md#api_key_query)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="spotV1HistoricalTrades"></a>
# **spotV1HistoricalTrades**
```java
Mono<SPOTINSTRUMENTTRADERESPONSE> SpotApi.spotV1HistoricalTrades(marketinstrumentafterTslastCcseqlimitmappingPriorityresponseFormatreturn404OnEmptyResponse)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **afterTs** | `Integer`| Unix timestamp in seconds of the earliest trade in the response. | [optional parameter] |
| **lastCcseq** | `Integer`| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional parameter] [default to `0`] |
| **limit** | `Integer`| The maximum number of trades to return | [optional parameter] [default to `100`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |
| **return404OnEmptyResponse** | `Boolean`| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional parameter] [default to `false`] |


### Return type
[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)

### Authorization
* **[api_key_header](auth.md#api_key_header)**
* **[api_key_query](auth.md#api_key_query)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="spotV1HistoricalTradesHour"></a>
# **spotV1HistoricalTradesHour**
```java
Mono<SPOTINSTRUMENTTRADERESPONSE> SpotApi.spotV1HistoricalTradesHour(marketinstrumenthourTsmappingPriorityresponseFormatreturn404OnEmptyResponse)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **hourTs** | `Integer`| Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. | [optional parameter] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |
| **return404OnEmptyResponse** | `Boolean`| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional parameter] [default to `false`] |


### Return type
[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)

### Authorization
* **[api_key_header](auth.md#api_key_header)**
* **[api_key_query](auth.md#api_key_query)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="spotV1LatestInstrumentMetadata"></a>
# **spotV1LatestInstrumentMetadata**
```java
Mono<SPOTINSTRUMENTMETADATARESPONSE> SpotApi.spotV1LatestInstrumentMetadata(marketinstrumentsgroupsmappingPriority)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instruments** | [**List&lt;String&gt;**](String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional parameter] [default to ``] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |


### Return type
[**SPOTINSTRUMENTMETADATARESPONSE**](SPOTINSTRUMENTMETADATARESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="spotV1LatestTick"></a>
# **spotV1LatestTick**
```java
Mono<SPOTINSTRUMENTMARKETDATARESPONSE> SpotApi.spotV1LatestTick(marketinstrumentsgroupsmappingPriority)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instruments** | [**List&lt;String&gt;**](String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional parameter] [default to ``] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |


### Return type
[**SPOTINSTRUMENTMARKETDATARESPONSE**](SPOTINSTRUMENTMARKETDATARESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="spotV1Markets"></a>
# **spotV1Markets**
```java
Mono<GENERICRESPONSE> SpotApi.spotV1Markets(market)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | [optional parameter] [default to ``] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="spotV1MarketsInstruments"></a>
# **spotV1MarketsInstruments**
```java
Mono<GENERICRESPONSE> SpotApi.spotV1MarketsInstruments(marketinstrumentinstrumentStatus)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | [optional parameter] [default to ``] |
| **instrument** | `String`| The mapped instrument to retrieve on a specific market. | [optional parameter] [default to ``] |
| **instrumentStatus** | [**List&lt;String&gt;**](String.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional parameter] [default to `ACTIVE,IGNORED,RETIRED,EXPIRED`] [enum: `ACTIVE`, `IGNORED`, `RETIRED`, `EXPIRED`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="spotV1MarketsInstrumentsUnmapped"></a>
# **spotV1MarketsInstrumentsUnmapped**
```java
Mono<GENERICRESPONSE> SpotApi.spotV1MarketsInstrumentsUnmapped(marketinstrumentinstrumentStatus)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | [optional parameter] [default to ``] |
| **instrument** | `String`| The unmapped instrument to retrieve on a specific market. | [optional parameter] [default to ``] |
| **instrumentStatus** | [**List&lt;String&gt;**](String.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional parameter] [default to `ACTIVE,IGNORED,RETIRED,EXPIRED`] [enum: `ACTIVE`, `IGNORED`, `RETIRED`, `EXPIRED`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

